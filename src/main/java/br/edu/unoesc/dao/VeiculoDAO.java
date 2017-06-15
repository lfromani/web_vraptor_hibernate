package br.edu.unoesc.dao;

import javax.enterprise.context.RequestScoped;
import javax.persistence.TypedQuery;

import br.edu.unoesc.model.Veiculo;

@RequestScoped
public class VeiculoDAO extends GenericDAO<Veiculo> {
	
	public Veiculo pesquisarPorPlaca(String placa, String query, Class<Veiculo> tipo) {
		conectar();
		TypedQuery<Veiculo> tq = em.createNamedQuery(query, tipo);
		tq.setParameter("PLACA", placa);
		Veiculo objeto = tq.getSingleResult();
		desconectar();
		return objeto;
	}

	public Veiculo pesquisarPorAno(String ano, String query, Class<Veiculo> tipo) {
		conectar();
		TypedQuery<Veiculo> tq = em.createNamedQuery(query, tipo);
		tq.setParameter("ANO", ano);
		Veiculo objeto = tq.getSingleResult();
		desconectar();
		return objeto;
	}
}
