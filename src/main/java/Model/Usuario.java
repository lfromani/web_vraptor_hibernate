package Model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class Usuario {
	
	@Column(nullable=false)
	private String nome;
	
	@Id
	@GeneratedValue
	private long codigo;
	
	public Usuario(String nome, long codigo, String senha) {
		super();
		this.nome = nome;
		this.codigo = codigo;
		this.senha = senha;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Usuario() {
	
	}

	public long getCodigo() {
		return codigo;
	}

	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	private String senha;

}
