package br.com.sgionline.controller;

import java.util.List;

import br.com.sgionline.model.Locatario;
import br.com.sgionline.repository.LocatarioRepository;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;

@Resource
public class LocatarioController {

	private final Result result;
	private final LocatarioRepository repository;
	
	private final Validator validator;
	
	public LocatarioController(Result result, LocatarioRepository repository, 
	Validator validator) {
		this.result = result;
		this.repository = repository;
	
		this.validator = validator;
	}
	
	@Get("/locatarios")
	public List<Locatario> index() {
		return repository.findAll();
	}
	
	@Post("/locatarios")
	public void create(Locatario locatario) {
		validator.validate(locatario);
		validator.onErrorUsePageOf(this).newLocatario();
		repository.create(locatario);
		result.redirectTo(this).index();
	}
	
	@Get("/locatarios/new")
	public Locatario newLocatario() {
		return new Locatario();
	}
	
	@Put("/locatarios")
	public void update(Locatario locatario) {
		validator.validate(locatario);
		validator.onErrorUsePageOf(this).edit(locatario);
		repository.update(locatario);
		result.redirectTo(this).index();
	}
	
	@Get("/locatarios/{locatario.id}/edit")
	public Locatario edit(Locatario locatario) {
		
		return repository.find(locatario.getId());
	}

	@Get("/locatarios/{locatario.id}")
	public Locatario show(Locatario locatario) {
		return repository.find(locatario.getId());
	}

	@Delete("/locatarios/{locatario.id}")
	public void destroy(Locatario locatario) {
		repository.destroy(repository.find(locatario.getId()));
		result.redirectTo(this).index();  
	}
}