package br.edu.unoesc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Usuario implements Serializable {

	private static final long serialVersionUID = 4670141641259011143L;

	@Id
	@GeneratedValue
	private Long codigo;

	@Column(nullable = false)
	private String nome;

	@Column
	private String login;

	@Column(nullable = false)
	private String senha;

	public Usuario() {
		super();
	}

	public Usuario(Long codigo, String nome, String login, String senha) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.login = login;
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
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

}
