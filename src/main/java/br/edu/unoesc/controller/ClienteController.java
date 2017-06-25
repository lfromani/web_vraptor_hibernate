package br.edu.unoesc.controller;

import java.util.List;
import javax.inject.Inject;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.dao.ClienteDAO;
import br.edu.unoesc.exception.MinhaExceptionDAO;
import br.edu.unoesc.model.Cliente;

@Controller
@Path("/cliente")
public class ClienteController {

	@Inject
	private ClienteDAO clienteDAO;

	@Inject
	private Result result;

	private Cliente clienteSelecionado;

	@Get("/cadastro")
	public void cadastro() {
		result.include("cliente", this.clienteSelecionado);
	}

	@Get("/visualiza")
	public void visualiza() {
		result.include("cliente", this.clienteSelecionado);
	}

	@Get("/listar")
	public void listar() {
		result.include("resultado", clienteDAO.listar(Cliente.LISTAR, Cliente.class));
	}

	@Post("/salvar")
	public void salvar(Cliente cliente) {
		if (cliente != null) {
			try {
				clienteDAO.salvar(cliente);
			} catch (MinhaExceptionDAO e) {
				result.include("erro", e.getMessage());
			}
		}
		result.include("resultado", clienteDAO.listar(Cliente.LISTAR, Cliente.class));
		result.redirectTo(this).listar();
	}

	public void listar(List<Cliente> clientes) {
		result.include("resultado", clientes);
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Cliente cli = new Cliente();
		cli.setCodigo(codigo);
		try {
			clienteDAO.excluir(cli, Cliente.class);
		} catch (MinhaExceptionDAO e) {
			e.printStackTrace();
		}
		result.forwardTo(ClienteController.class).listar();
	}

	@Get("/visualiza/{codigo}")
	public void visualiza(Long codigo) {
		this.clienteSelecionado = (Cliente) clienteDAO.pesquisarPorCodigo(codigo, Cliente.PESQUISAR_POR_CODIGO,
				Cliente.class);
		result.forwardTo(ClienteController.class).visualiza();
	}

	@Post("/visualiza")
	public void editar(Cliente cliente) {
		try {
			clienteDAO.editar(cliente, Cliente.class);
		} catch (MinhaExceptionDAO e) {
			e.printStackTrace();
		}
		result.forwardTo(ClienteController.class).listar();
	}

}
