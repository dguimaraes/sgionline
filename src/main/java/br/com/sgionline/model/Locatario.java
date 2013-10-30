package br.com.sgionline.model;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;

@javax.persistence.Entity
public class Locatario extends Entity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3740721294847486087L;
	@NotNull
	@Length(max=120)
	private String nome;
	@NotNull
	@Length(max=12)
	private String cpf;
	@NotNull
	@Length(max=10)
	private String rg;
	@NotNull
	@Length(max=12)
	private String telefone;

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getCpf() {
		return cpf;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public String getRg() {
		return rg;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getTelefone() {
		return telefone;
	}

}
