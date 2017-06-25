package br.edu.unoesc.controller;

import java.util.List;
import javax.inject.Inject;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.dao.VeiculoDAO;
import br.edu.unoesc.exception.MinhaExceptionDAO;
import br.edu.unoesc.model.Veiculo;

@Controller
@Path("/veiculo")
public class VeiculoController {

	@Inject
	private Result result;

	@Inject
	private VeiculoDAO veiculoDAO;

	private Veiculo veiculoSelecionado;

	@Get("/cadastro")
	public void cadastro() {
		result.include("veiculo", this.veiculoSelecionado);
	}
	
	@Get("/visualiza")
	public void visualiza() {
		result.include("veiculo", this.veiculoSelecionado);
	}

	@Get("/listar")
	public void listar() {
		result.include("resultado", veiculoDAO.listar(Veiculo.LISTAR, Veiculo.class));
	}

	@Post("/salvar")
	public void salvar(Veiculo veiculo) {
		if (veiculo != null) {
			try {
				veiculoDAO.salvar(veiculo);
			} catch (MinhaExceptionDAO e) {
				result.include("erro", e.getMessage());
			}
		}
		result.include("resultado", veiculoDAO.listar(Veiculo.LISTAR, Veiculo.class));
		result.redirectTo(this).listar();
	}

	public void listar(List<Veiculo> veiculos) {
		result.include("resultado", veiculos);
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Veiculo veic = new Veiculo();
		veic.setCodigo(codigo);
		try {
			veiculoDAO.excluir(veic, Veiculo.class);
		} catch (MinhaExceptionDAO e) {
			e.printStackTrace();
		}
		result.forwardTo(VeiculoController.class).listar();
	}
	
	@Get("/visualiza/{codigo}")
	public void visualiza(Long codigo) {
		this.veiculoSelecionado = (Veiculo) veiculoDAO.pesquisarPorCodigo(codigo, Veiculo.PESQUISAR_POR_CODIGO,
				Veiculo.class);
		result.forwardTo(VeiculoController.class).visualiza();
	}

	@Post("/visualiza")
	public void editar(Veiculo veiculo) {
		try {
			veiculoDAO.editar(veiculo, Veiculo.class);
		} catch (MinhaExceptionDAO e) {
			e.printStackTrace();
		}
		result.forwardTo(VeiculoController.class).listar();
	}
}