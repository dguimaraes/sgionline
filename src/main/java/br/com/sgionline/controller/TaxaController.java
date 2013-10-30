package br.com.sgionline.controller;

import java.util.List;

import br.com.sgionline.annotation.BreadcrumbCheck;
import br.com.sgionline.model.Taxa;
import br.com.sgionline.repository.TaxaRepository;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;

@Resource
public class TaxaController {

	private final Result result;
	private final TaxaRepository repository;
	
	private final Validator validator;
	
	public TaxaController(Result result, TaxaRepository repository, 
	Validator validator) {
		this.result = result;
		this.repository = repository;
	
		this.validator = validator;
	}
	
	@Get("/taxas")
	@BreadcrumbCheck(label="taxa.index", level=1)
	public List<Taxa> index() {
		return repository.findAll();
	}
	
	@Post("/taxas")
	public void create(Taxa taxa) {
		validator.validate(taxa);
		validator.onErrorUsePageOf(this).newTaxa();
		repository.create(taxa);
		result.redirectTo(this).index();
	}
	
	@Get("/taxas/new")
	public Taxa newTaxa() {
		return new Taxa();
	}
	
	@Put("/taxas")
	public void update(Taxa taxa) {
		validator.validate(taxa);
		validator.onErrorUsePageOf(this).edit(taxa);
		repository.update(taxa);
		result.redirectTo(this).index();
	}
	
	@Get("/taxas/{taxa.id}/edit")
	@BreadcrumbCheck(label="taxa.edit", level=3)
	public Taxa edit(Taxa taxa) {
		
		return repository.find(taxa.getId());
	}

	@Get("/taxas/{taxa.id}")
	@BreadcrumbCheck(label="taxa.show", level=2)
	public Taxa show(Taxa taxa) {
		return repository.find(taxa.getId());
	}

	@Delete("/taxas/{taxa.id}")
	public void destroy(Taxa taxa) {
		repository.destroy(repository.find(taxa.getId()));
		result.redirectTo(this).index();  
	}
}