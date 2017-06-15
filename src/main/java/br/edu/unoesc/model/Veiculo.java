package br.edu.unoesc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@NamedQueries({ @NamedQuery(name = Veiculo.LISTAR, query = "select v from Veiculo v"),
		@NamedQuery(name = Veiculo.PESQUISAR_POR_NOME, query = "select v from Veiculo v where v.nome like :NOME"),
		@NamedQuery(name = Veiculo.PESQUISAR_POR_PLACA, query = "select v from Veiculo v where v.placa like :PLACA"),
		@NamedQuery(name = Veiculo.PESQUISAR_POR_ANO, query = "select v from Veiculo v where v.ano like :ANO") })

@Entity
public class Veiculo implements Serializable, MeuModelo {

	private static final long serialVersionUID = 3083153010884512596L;

	public static final String LISTAR = "veiculo.listar";
	public static final String PESQUISAR_POR_NOME = "veiculo.pesquisar_por_nome";
	public static final String PESQUISAR_POR_PLACA = "veiculo.pesquisar_por_placa";
	public static final String PESQUISAR_POR_ANO = "veiculo.pesquisar_por_ano";

	@Id
	@GeneratedValue
	private Long codigo;

	@Column(nullable = false)
	private String nome;

	@Column
	private String ano;

	@Column
	private String placa;

	@Column
	private String cor;

	@Column
	private Long vaga;

	public Veiculo() {
		super();
	}

	public Veiculo(Long codigo, String nome, String ano, String placa, String cor, Long vaga) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.ano = ano;
		this.placa = placa;
		this.cor = cor;
		this.vaga = vaga;
	}

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getAno() {
		return ano;
	}

	public void setAno(String ano) {
		this.ano = ano;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public String getCor() {
		return cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public Long getVaga() {
		return vaga;
	}

	public void setVaga(Long vaga) {
		this.vaga = vaga;
	}

}
