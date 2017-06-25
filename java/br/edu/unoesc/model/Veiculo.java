package br.edu.unoesc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@NamedQueries({ @NamedQuery(name = Veiculo.LISTAR, query = "select v from Veiculo v"),
		@NamedQuery(name = Veiculo.PESQUISAR_POR_CODIGO, query = "select v from Veiculo v where v.codigo = :CODIGO"), })

@Entity
public class Veiculo implements Serializable, MeuModelo {

	private static final long serialVersionUID = 3083153010884512596L;

	public static final String LISTAR = "veiculo.listar";
	public static final String PESQUISAR_POR_MODELO= "veiculo.pesquisar_por_modelo";
	public static final String PESQUISAR_POR_CODIGO = "veiculo.pesquisar_por_codigo";

	@Id
	@GeneratedValue
	private Long codigo;
	
	@Column
	private String ano;

	@Column
	private String placa;

	@Column
	private String cor;

	@Column
	private String marca;

	@Column
	private String modelo;
	
	public Veiculo() {
		super();
	
}

	public Veiculo(Long codigo, String ano, String placa, String cor, String marca, String modelo) {
		super();
		this.codigo = codigo;
		this.ano = ano;
		this.placa = placa;
		this.cor = cor;
		this.marca = marca;
		this.modelo = modelo;
	}

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
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

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
}