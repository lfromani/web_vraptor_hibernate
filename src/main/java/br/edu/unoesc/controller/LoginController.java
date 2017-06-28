package br.edu.unoesc.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.exception.MinhaExceptionDAO;
import br.edu.unoesc.model.Usuario;

@Controller
@Path("/login")
public class LoginController {

	@Get("/primeiroacesso")
	public void primeiroacesso(){
		
	}
	@Inject
	private Result result;

	@Inject
	UsuarioDAO usuarioDAO;

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

	@Post("/salvar")
	public void salvar(Usuario usuario) {
		if (usuario != null) {
			try {
				usuarioDAO.salvar(usuario);
			} catch (MinhaExceptionDAO e) {
				result.include("erro", e.getMessage());
			}
		}
		
	result.forwardTo(IndexController.class).index();
	}
}
