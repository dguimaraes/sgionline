package br.com.sgionline.model;

import javax.persistence.ManyToOne;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;

@javax.persistence.Entity
public class Imovel extends Entity {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7223400640211489832L;
	@NotNull
	@Length(max=120)
	private String nome;
	@Length(max=255)
	private String descricao;
	@Max(value=1000000)
	private Integer metragem;
	@NotNull
	@ManyToOne
	private TipoImovel tipoImovel;
	@ManyToOne
	private Imovel imovel;

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
	
	public Integer getMetragem() {
		return metragem;
	}

	public void setMetragem(Integer metragem) {
		this.metragem = metragem;
	}

	public void setTipoImovel(TipoImovel tipoImovel) {
		this.tipoImovel = tipoImovel;
	}

	public TipoImovel getTipoImovel() {
		return tipoImovel;
	}

	public void setImovel(Imovel imovel) {
		this.imovel = imovel;
	}

	public Imovel getImovel() {
		return imovel;
	}

	public String toString(){
		return this.tipoImovel.getSigla() + " -> " + this.getId() + " - " + this.nome;
	}
}
