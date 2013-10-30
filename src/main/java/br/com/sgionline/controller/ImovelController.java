package br.com.sgionline.controller;

import java.util.List;

import br.com.sgionline.model.Imovel;
import br.com.sgionline.repository.ImovelRepository;
import br.com.sgionline.repository.TipoImovelRepository;		
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;

@Resource
public class ImovelController {

	private final Result result;
	private final ImovelRepository repository;
	private final TipoImovelRepository tipoImovelRepository;		
	private final ImovelRepository imovelRepository;		
	
	private final Validator validator;
	
	public ImovelController(Result result, ImovelRepository repository, 
	TipoImovelRepository tipoImovelRepository,	ImovelRepository imovelRepository,	Validator validator) {
		this.result = result;
		this.repository = repository;
		this.tipoImovelRepository = tipoImovelRepository;		this.imovelRepository = imovelRepository;	
		this.validator = validator;
	}
	
	@Get("/imoveis")
	public List<Imovel> index() {
		return repository.findAll();
	}
	
	@Post("/imoveis")
	public void create(Imovel imovel) {
		validator.validate(imovel);
		validator.onErrorUsePageOf(this).newImovel();
		repository.create(imovel);
		result.redirectTo(this).index();
	}
	
	@Get("/imoveis/new")
	public Imovel newImovel() {
		result.include("tipoImovelList", tipoImovelRepository.findAll());		
		result.include("imovelList", imovelRepository.findAll());		
		return new Imovel();
	}
	
	@Put("/imoveis")
	public void update(Imovel imovel) {
		validator.validate(imovel);
		validator.onErrorUsePageOf(this).edit(imovel);
		repository.update(imovel);
		result.redirectTo(this).index();
	}
	
	@Get("/imoveis/{imovel.id}/edit")
	public Imovel edit(Imovel imovel) {
		result.include("tipoImovelList", tipoImovelRepository.findAll());		
		result.include("imovelList", imovelRepository.findAll());		
		
		return repository.find(imovel.getId());
	}

	@Get("/imoveis/{imovel.id}")
	public Imovel show(Imovel imovel) {
		return repository.find(imovel.getId());
	}

	@Delete("/imoveis/{imovel.id}")
	public void destroy(Imovel imovel) {
		repository.destroy(repository.find(imovel.getId()));
		result.redirectTo(this).index();  
	}
}