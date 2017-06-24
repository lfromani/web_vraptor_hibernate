package br.edu.unoesc.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.model.Usuario;

@Controller
@Path("/login")
public class LoginController {

	@Inject
	private Result result;

	@Inject
	private UsuarioDAO usuarioDAO;

	@Get()
	public void index() {

	}

	@Post("/index")
	public void index(Usuario usuario) {
		if (usuarioDAO.logar(usuario) != null) {
			result.forwardTo(LoginController.class).index();
		} else {
			result.forwardTo(LoginController.class).erro();
		}
	}

	@Get("/erro")
	public void erro() {
	}
}
