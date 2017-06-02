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
	private VeiculoDAO veiculoDao;
	
	private Veiculo veiculoSelecionado;
	
	@Inject
	private Result result;
	
	@Get("/formulario")
	public void formulario() {
		result.include("veiculo", this.veiculoSelecionado);

	}
	
	@Get("/listar")
	public void listar() {
		result.include("resultado", veiculoDao.listar(Veiculo.LISTAR, Veiculo.class));
	}

		@Post("/salvar")
		public void listar(Veiculo veiculo) {
			if (veiculo != null) {
				try {
					veiculoDao.salvar(veiculo);	
				} catch (MinhaExceptionDAO e) {
					result.include("erro", e.getMessage());
				}
			}
			result.include("resultado", veiculoDao.listar(Veiculo.LISTAR, Veiculo.class) );
		}

		public void listar(List<Veiculo> veiculos) {
			result.include("resultado", veiculos);
		}
		
		@Post("/pesquisar")
		public void pesquisar(String filtro) {
			List<Veiculo> veiculos = veiculoDao.pesquisarPorNome(filtro, 
					Veiculo.PESQUISAR_POR_NOME, Veiculo.class);
			result.forwardTo(VeiculoController.class).listar(veiculos);
		}
		
		
		@Get("/excluir/{codigo}")
		public void excluir(Long codigo) {
			Veiculo veic = new Veiculo();
			veic.setCodigo(codigo);
			try {
			veiculoDao.excluir(veic, Veiculo.class);
			} catch (MinhaExceptionDAO e) {
				e.printStackTrace();
			}
			result.forwardTo(VeiculoController.class).listar();
		}
		
		@Get("/editar/{placa}")
		public void editar(String placa) {
			this.veiculoSelecionado = 
				(Veiculo) veiculoDao.pesquisarPorPlaca(placa, Veiculo.PESQUISAR_POR_PLACA, Veiculo.class);
			result.forwardTo(VeiculoController.class).formulario ();
	}
		@Get("/editar/{ano}")
		public void editarano(String ano) {
			this.veiculoSelecionado = 
				(Veiculo) veiculoDao.pesquisarPorAno(ano, Veiculo.PESQUISAR_POR_ANO, Veiculo.class);
			result.forwardTo(VeiculoController.class).formulario ();
}
}
