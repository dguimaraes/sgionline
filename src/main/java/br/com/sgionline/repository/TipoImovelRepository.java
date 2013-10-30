package br.com.sgionline.repository;

import java.util.List;

import br.com.sgionline.model.TipoImovel;

public interface TipoImovelRepository {
	/*
	 * Delete the methods you don't want to expose
	 */
	 
	void create(TipoImovel entity);
	
	TipoImovel update(TipoImovel entity);
	
	void destroy(TipoImovel entity);
	
	TipoImovel find(Long id);
	
	List<TipoImovel> findAll();

}
