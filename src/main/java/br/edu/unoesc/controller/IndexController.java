package br.edu.unoesc.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;

@Controller
public class IndexController {
	
//	@Inject
//	private Result result;
//
//	@Post("")
//	public void logar(String login, String senha) {
//		if (login.equals("admin") && senha.equals("admin")) {
//			result.forwardTo(IndexController.class).logar(login, senha);
//		}
//	}
	
	private final Result result;

	protected IndexController() {
		this(null);
	}
	
	@Inject
	public IndexController(Result result) {
		this.result = result;
	}

	@Path("/")
	public void index() {
		result.include("variable", "VRaptor!");
	}
	
	
	
}