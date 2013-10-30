package br.com.sgionline.repository;

import java.util.List;

import br.com.sgionline.model.Locatario;

public interface LocatarioRepository {
	/*
	 * Delete the methods you don't want to expose
	 */
	 
	void create(Locatario entity);
	
	Locatario update(Locatario entity);
	
	void destroy(Locatario entity);
	
	Locatario find(Long id);
	
	List<Locatario> findAll();

}
