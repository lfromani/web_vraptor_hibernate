package br.edu.unoesc.dao;

import javax.enterprise.context.RequestScoped;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import br.edu.unoesc.model.Usuario;

@RequestScoped
public class UsuarioDAO extends GenericDAO<Usuario> {

	public Usuario logar(Usuario usuarioBusca) {
		conectar();
		TypedQuery<Usuario> tq = (TypedQuery<Usuario>) em.createNamedQuery(Usuario.LOGAR, Usuario.class);
		tq.setParameter("login", usuarioBusca.getLogin());
		tq.setParameter("senha", usuarioBusca.getSenha());
		try {
			usuarioBusca = tq.getSingleResult();
		} catch (NoResultException e) {
			usuarioBusca = null;
		}
		desconectar();
		return usuarioBusca;
	}

}