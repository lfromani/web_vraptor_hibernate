package br.edu.unoesc.controller;

import java.util.List;
import javax.inject.Inject;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.exception.MinhaExceptionDAO;
import br.edu.unoesc.dao.ClienteDAO;
import br.edu.unoesc.dao.DuracaoDAO;
import br.edu.unoesc.dao.MovimentoDAO;
import br.edu.unoesc.dao.VeiculoDAO;
import br.edu.unoesc.model.Cliente;
import br.edu.unoesc.model.Duracao;
import br.edu.unoesc.model.Movimento;
import br.edu.unoesc.model.Veiculo;

@Controller
@Path("/movimento")
public class MovimentoController {

	@Inject
	private Result result;

	@Inject
	private MovimentoDAO movimentoDAO;

	@Inject
	private ClienteDAO clienteDAO;

	@Inject
	private DuracaoDAO duracaoDAO;

	@Inject
	private VeiculoDAO veiculoDAO;

	private Movimento movimentoSelecionado;

	@Get("/cadastro")
	public void cadastro() {
		result.include("clientes", clienteDAO.listar(Cliente.LISTAR, Cliente.class));
		result.include("duracoes", duracaoDAO.listar(Duracao.LISTAR, Duracao.class));
		result.include("veiculos", veiculoDAO.listar(Veiculo.LISTAR, Veiculo.class));
		result.include("movimento", movimentoDAO.listar(Movimento.LISTAR, Movimento.class));
	}

	@Get("/listar")
	public void listar() {
		result.include("resultado", movimentoDAO.listar(Movimento.LISTAR, Movimento.class));
	}

	@Get("/visualiza")
	public void visualiza() {
		result.include("movimento", this.movimentoSelecionado);
	}

	@Post("/salvar")
	public void salvar(Movimento movimento) {
		if (movimento != null) {
			try {
				movimentoDAO.salvar(movimento);
			} catch (MinhaExceptionDAO e) {
				e.printStackTrace();
			}
		}
		result.include("resultado", movimentoDAO.listar(Movimento.LISTAR, Movimento.class));
		//result.redirectTo(this).listar();
	}

	public void listar(List<Movimento> movimentos) {
		result.include("resultado", movimentos);
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Movimento mov = new Movimento();
		mov.setCodigo(codigo);
		try {
			movimentoDAO.excluir(mov, Movimento.class);
		} catch (MinhaExceptionDAO e) {
			e.printStackTrace();
		}
		result.forwardTo(MovimentoController.class).listar();
	}

	@Get("/visualiza/{codigo}")
	public void visualiza(Long codigo) {
		this.movimentoSelecionado = (Movimento) movimentoDAO.pesquisarPorCodigo(codigo, Movimento.PESQUISAR_POR_CODIGO,
				Movimento.class);
		result.forwardTo(MovimentoController.class).visualiza();
	}

	@Post("/visualiza")
	public void editar(Movimento movimento) {
		try {
			movimentoDAO.editar(movimento, Movimento.class);
		} catch (MinhaExceptionDAO e) {
			e.printStackTrace();
		}
		result.forwardTo(MovimentoController.class).listar();
	}

}
