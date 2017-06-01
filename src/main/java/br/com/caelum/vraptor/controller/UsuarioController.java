package br.com.caelum.vraptor.controller;

import javax.inject.Inject;


import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
@Path("/Login")
public class UsuarioController {

	@Inject
	private Result result;

}
