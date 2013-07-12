package br.com.sgionline.repository;

import java.util.List;

import br.com.sgionline.model.Taxa;

public interface TaxaRepository {
	/*
	 * Delete the methods you don't want to expose
	 */
	 
	void create(Taxa entity);
	
	Taxa update(Taxa entity);
	
	void destroy(Taxa entity);
	
	Taxa find(Long id);
	
	List<Taxa> findAll();

}
