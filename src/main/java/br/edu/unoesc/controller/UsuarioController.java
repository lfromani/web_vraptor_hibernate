package br.edu.unoesc.controller;

import java.util.List;
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
@Path("/usuario")
public class UsuarioController {

	@Inject
	private Result result;

	@Inject
	private UsuarioDAO usuarioDAO;

	private Usuario usuarioSelecionado;

	@Get("/cadastro")
	public void cadastro() {
		result.include("usuario", this.usuarioSelecionado);
	}

	@Get("/listar")
	public void listar() {
		result.include("resultado", usuarioDAO.listar(Usuario.LISTAR, Usuario.class));
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
		result.include("resultado", usuarioDAO.listar(Usuario.LISTAR, Usuario.class));
		result.redirectTo(this).listar();
	}

	public void listar(List<Usuario> usuarios) {
		result.include("resultado", usuarios);
	}

	@Post("/pesquisar")
	public void pesquisar(String filtro) {
		List<Usuario> usuarios = usuarioDAO.pesquisarPorNome(filtro, Usuario.PESQUISAR_POR_NOME, Usuario.class);
		result.forwardTo(UsuarioController.class).listar(usuarios);
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Usuario usu = new Usuario();
		usu.setCodigo(codigo);
		try {
			usuarioDAO.excluir(usu, Usuario.class);
		} catch (MinhaExceptionDAO e) {
			e.printStackTrace();
		}
		result.forwardTo(UsuarioController.class).listar();
	}

	@Get("/editar/{codigo}")
	public void editar(Long codigo) {
		this.usuarioSelecionado = (Usuario) usuarioDAO.pesquisarPorCodigo(codigo, Usuario.PESQUISAR_POR_CODIGO,
				Usuario.class);
		result.forwardTo(UsuarioController.class).cadastro();
	}

}
