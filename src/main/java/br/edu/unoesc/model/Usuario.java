package br.edu.unoesc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@NamedQueries({ @NamedQuery(name = Usuario.LISTAR, query = "select u from Usuario u"),

		@NamedQuery(name = Usuario.PESQUISAR_POR_NOME, query = "select u from Usuario u where u.nome like :NOME"),
		@NamedQuery(name = Usuario.PESQUISAR_POR_CODIGO, query = "select u from Usuario u where u.codigo = :CODIGO"),
		@NamedQuery(name = Usuario.PESQUISAR_POR_EMAIL, query = "select u from Usuario u where u.email = :EMAIL"),
		@NamedQuery(name = Usuario.PESQUISAR_POR_SENHA, query = "select u from Usuario u where u.senha = :SENHA"), })

@Entity
public class Usuario implements Serializable, MeuModelo {

	private static final long serialVersionUID = 4670141641259011143L;

	public static final String LISTAR = "usuario.listar";
	public static final String PESQUISAR_POR_NOME = "usuario.pesquisar_por_nome";
	public static final String PESQUISAR_POR_CODIGO = "usuario.pesqusar_por_codigo";
	public static final String PESQUISAR_POR_EMAIL = "usuario.pesquisar_por_email";
	public static final String PESQUISAR_POR_SENHA = "usuario.pesquisar_por_senha";

	@Id
	@GeneratedValue
	private Long codigo;

	@Column(nullable = false)
	private String nome;

	@Column(nullable = false)
	private String email;

	@Column(nullable = false)
	private String senha;

	public Usuario() {
		super();
	}

	public Usuario(Long codigo, String nome, String login, String senha) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.email = login;
		this.senha = senha;
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

	public String getLogin() {
		return email;
	}

	public void setLogin(String login) {
		this.email = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
}
