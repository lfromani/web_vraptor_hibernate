package br.edu.unoesc.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.unoesc.dao.DuracaoDAO;
import br.edu.unoesc.exception.MinhaExceptionDAO;
import br.edu.unoesc.model.Duracao;

@Controller
@Path("/duracao")
public class DuracaoController {

	@Inject
	private DuracaoDAO duracaoDAO;

	private Duracao duracaoSelecionado;

	@Inject
	private Result result;

	@Get("/cadastro")
	public void cadastro() {
		result.include("duracao", this.duracaoSelecionado);
	}
	@Get("/visualiza")
	public void visualiza() {
		result.include("duracao", this.duracaoSelecionado);
	}
	@Get("/listar")
	public void listar() {
		result.include("resultado", duracaoDAO.listar(Duracao.LISTAR, Duracao.class));
	}
	@Post("/salvar")
	public void salvar(Duracao duracao) {
		if (duracao != null) {
			try {
				duracaoDAO.salvar(duracao);
			} catch (MinhaExceptionDAO e) {
				result.include("erro", e.getMessage());
			}
		}
		result.include("resultado", duracaoDAO.listar(Duracao.LISTAR, Duracao.class));
		result.redirectTo(this).listar();
	}

	public void listar(List<Duracao> duracoes) {
		result.include("resultado", duracoes);
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Duracao dur = new Duracao();
		dur.setCodigo(codigo);
		try {
			duracaoDAO.excluir(dur, Duracao.class);
		} catch (MinhaExceptionDAO e) {
			e.printStackTrace();
		}
		result.forwardTo(DuracaoController.class).listar();
	}
	@Get("/visualiza/{codigo}")
	public void visualiza(Long codigo) {
		this.duracaoSelecionado = (Duracao) duracaoDAO.pesquisarPorCodigo(codigo, Duracao.PESQUISAR_POR_CODIGO,
				Duracao.class);
		result.forwardTo(DuracaoController.class).visualiza();
	}

	@Post("/visualiza")
	public void editar(Duracao duracao) {
		try {
			duracaoDAO.editar(duracao, Duracao.class);
		} catch (MinhaExceptionDAO e) {
			e.printStackTrace();
		}
		result.forwardTo(DuracaoController.class).listar();
	}
}
