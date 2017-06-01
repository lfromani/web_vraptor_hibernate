package br.com.unoesc.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.dao.VeiculoDAO;
import br.edu.unoesc.model.Veiculo;



@Controller
@Path("/veiculo")
public class VeiculoController {
	
	@Inject
	private Result result;
	
	public void listar(List<Veiculo> veiculos) {
		result.include(veiculos);
	}
	
	@Get("/listar")
	public void listar() {
		result.include( VeiculoDAO.listar(Veiculo.LISTAR, Veiculo.class) );
	}
}
