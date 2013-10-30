package br.com.sgionline.model;

@javax.persistence.Entity
public class TipoImovel extends Entity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8557511201249324595L;
	private String nome;
	private String descricao;
	private String sigla;
	private boolean temImovel;

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setSigla(String sigla) {
		this.sigla = sigla;
	}

	public String getSigla() {
		return sigla;
	}

	public void setTemImovel(boolean temImovel) {
		this.temImovel = temImovel;
	}

	public boolean isTemImovel() {
		return temImovel;
	}
	
	public String toString(){
		return this.sigla + " - " + this.nome;
	}

}
