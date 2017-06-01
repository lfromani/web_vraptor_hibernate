package br.edu.unoesc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class Veiculo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3083153010884512596L;

	@Id
	@GeneratedValue
	private Long codigo;

	public Veiculo(String ano) {
		super();
		this.ano = ano;
	}

	@Column(nullable=false)
	private String nome;
	
	private String ano;

	public String getAno() {
		return ano;
	}

	public void setAno(String ano) {
		this.ano = ano;
	}

	private String placa;

	private String cor;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
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

	public Veiculo(String nome, Long codigo, String placa, String cor) {
		super();
		this.nome = nome;
		this.codigo = codigo;
		this.placa = placa;
		this.cor = cor;
	}

	public Veiculo() {
		super();

	}

}
