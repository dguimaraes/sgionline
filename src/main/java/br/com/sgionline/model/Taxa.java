package br.com.sgionline.model;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;

@javax.persistence.Entity
public class Taxa extends Entity {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3570758155727419901L;

	@NotNull
	@Length(max=120)
	private String nome;
	
	@NotNull
	@Length(max=5)
	private String sigla;

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

	public void setSigla(String sigla) {
		this.sigla = sigla;
	}

	public String getSigla() {
		return sigla;
	}

}
