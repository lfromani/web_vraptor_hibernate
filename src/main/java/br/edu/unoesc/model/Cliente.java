package br.edu.unoesc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@NamedQueries({
	@NamedQuery(name = Cliente.LISTAR, 	query = "select c from Cliente c"),
	@NamedQuery(name = Cliente.PESQUISAR_POR_CODIGO, query= "select c from Cliente c where c.codigo = :CODIGO"),
})

@Entity
public class Cliente implements Serializable, MeuModelo {

	private static final long serialVersionUID = -4772215945914816635L;
	
	public static final String LISTAR = "cliente.listar";
	public static final String PESQUISAR_POR_CODIGO = "cliente.pesquisar_por_codigo";

	@Id
	@GeneratedValue
	private Long codigo;

	@Column(nullable = false)
	private String nome;

	@Column(nullable = false)
	private String cpf;

	@Column(nullable = false)
	private String endereco;

	@Column(nullable = false)
	private String telefone;

	public Cliente() {
		super();
	}

	public Cliente(Long codigo, String nome, String cpf, String endereco, String telefone) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.cpf = cpf;
		this.endereco = endereco;
		this.telefone = telefone;
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

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

}
