package br.edu.unoesc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@NamedQueries({ @NamedQuery(name = Duracao.LISTAR, query = "select u from Duracao u"),
		@NamedQuery(name = Duracao.PESQUISAR_POR_CODIGO, query = "select u from Duracao u where u.codigo like :Codigo"),
		 })

@Entity
public class Duracao implements Serializable, MeuModelo {

	public static final String LISTAR = "duracao.listar";
	public static final String PESQUISAR_POR_CODIGO = "duracao.pesquisar_por_codigo";


	private static final long serialVersionUID = -7894272508977734913L;
	
	@Id
	@GeneratedValue
	private Long codigo;

	@Column(nullable = false)
	private String vaga;
	
	@Column(nullable = false)
	private String tempo;

	public Duracao() {
		super();
	}
	public Duracao(Long codigo, String vaga, String entrada, String tempo) {
		super();
		this.codigo = codigo;
		this.vaga = vaga;
		this.entrada = entrada;
		this.tempo = tempo;
	}

	@Column(nullable = false)
	private String entrada;

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getVaga() {
		return vaga;
	}

	public void setVaga(String vaga) {
		this.vaga = vaga;
	}

	public String getEntrada() {
		return entrada;
	}

	public void setEntrada(String entrada) {
		this.entrada = entrada;
	}
	public String getTempo() {
		return tempo;
	}

	public void setTempo(String tempo) {
		this.tempo = tempo;
}

}

