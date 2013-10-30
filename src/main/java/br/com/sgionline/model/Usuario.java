package br.com.sgionline.model;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;

@javax.persistence.Entity
public class Usuario extends Entity {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7277061623867619304L;
	@NotNull
	@Length(max=120)
	private String nome;
	@NotNull
	@Length(max=12)
	private String login;
	@NotNull
	@Length(max=30)
	private String senha;
	@NotNull
	@Length(max=120)
	private String email;

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getLogin() {
		return login;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getSenha() {
		return senha;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

}
