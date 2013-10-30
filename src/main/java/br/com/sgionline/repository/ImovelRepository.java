package br.com.sgionline.repository;

import java.util.List;

import br.com.sgionline.model.Imovel;

public interface ImovelRepository {
	/*
	 * Delete the methods you don't want to expose
	 */
	 
	void create(Imovel entity);
	
	Imovel update(Imovel entity);
	
	void destroy(Imovel entity);
	
	Imovel find(Long id);
	
	List<Imovel> findAll();

}
