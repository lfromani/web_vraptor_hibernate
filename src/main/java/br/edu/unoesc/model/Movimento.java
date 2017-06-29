package br.edu.unoesc.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@NamedQueries({
	@NamedQuery(name = Movimento.LISTAR, query = "select m from Movimento m"),
	@NamedQuery(name = Movimento.PESQUISAR_POR_CODIGO, query = "select m from Movimento m where m.codigo = :CODIGO")
})

@Entity
public class Movimento implements Serializable, MeuModelo {

	private static final long serialVersionUID = -4135614174703302456L;
	public static final String LISTAR = "movimento.listar";
	public static final String PESQUISAR_POR_CODIGO = "movimento.pesquisar_por_codigo";

	@Id
	@GeneratedValue
	private Long codigo;
	
	@ManyToOne(fetch = FetchType.EAGER)
	private Cliente cliente;

	@ManyToOne(fetch = FetchType.EAGER)
	private Veiculo veiculo;

	@ManyToOne(fetch = FetchType.EAGER)
	private Duracao duracao;

	public Movimento() {
		super();
	}

	public Movimento(Long codigo, Cliente cliente, Veiculo veiculo, Duracao duracao) {
		super();
		this.codigo = codigo;
		this.cliente = cliente;
		this.veiculo = veiculo;
		this.duracao = duracao;
	}

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Veiculo getVeiculo() {
		return veiculo;
	}

	public void setVeiculo(Veiculo veiculo) {
		this.veiculo = veiculo;
	}

	public Duracao getDuracao() {
		return duracao;
	}

	public void setDuracao(Duracao duracao) {
		this.duracao = duracao;
	}

}
