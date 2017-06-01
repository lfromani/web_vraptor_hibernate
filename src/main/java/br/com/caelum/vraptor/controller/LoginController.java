package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
@Path("/login")
public class LoginController {

	@Inject
	private Result result;

	@Get()
	public void index() {

	}

	@Get("")
	public void index(String usuario, String senha) {
		if (!usuario.equals("admin") || !senha.equals("admin")) {
			result.forwardTo(LoginController.class).erro();
		}
	}

	@Get("/errooo")
	public void erro() {

	}

}
