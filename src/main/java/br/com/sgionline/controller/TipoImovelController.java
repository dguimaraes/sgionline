package br.com.sgionline.controller;

import java.util.List;

import br.com.sgionline.model.TipoImovel;
import br.com.sgionline.repository.TipoImovelRepository;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;

@Resource
public class TipoImovelController {

	private final Result result;
	private final TipoImovelRepository repository;
	
	private final Validator validator;
	
	public TipoImovelController(Result result, TipoImovelRepository repository, 
	Validator validator) {
		this.result = result;
		this.repository = repository;
	
		this.validator = validator;
	}
	
	@Get("/tipoImoveis")
	public List<TipoImovel> index() {
		return repository.findAll();
	}
	
	@Post("/tipoImoveis")
	public void create(TipoImovel tipoImovel) {
		validator.validate(tipoImovel);
		validator.onErrorUsePageOf(this).newTipoImovel();
		repository.create(tipoImovel);
		result.redirectTo(this).index();
	}
	
	@Get("/tipoImoveis/new")
	public TipoImovel newTipoImovel() {
		return new TipoImovel();
	}
	
	@Put("/tipoImoveis")
	public void update(TipoImovel tipoImovel) {
		validator.validate(tipoImovel);
		validator.onErrorUsePageOf(this).edit(tipoImovel);
		repository.update(tipoImovel);
		result.redirectTo(this).index();
	}
	
	@Get("/tipoImoveis/{tipoImovel.id}/edit")
	public TipoImovel edit(TipoImovel tipoImovel) {
		
		return repository.find(tipoImovel.getId());
	}

	@Get("/tipoImoveis/{tipoImovel.id}")
	public TipoImovel show(TipoImovel tipoImovel) {
		return repository.find(tipoImovel.getId());
	}

	@Delete("/tipoImoveis/{tipoImovel.id}")
	public void destroy(TipoImovel tipoImovel) {
		repository.destroy(repository.find(tipoImovel.getId()));
		result.redirectTo(this).index();  
	}
}