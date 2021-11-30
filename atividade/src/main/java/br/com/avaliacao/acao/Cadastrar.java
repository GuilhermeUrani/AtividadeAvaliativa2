package br.com.avaliacao.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.avaliacao.modelo.Banco;
import br.com.avaliacao.modelo.Disciplina;

public class Cadastrar implements Acao {
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		System.out.println("Cadastrando nova empresa");

		String nomeDisciplina = request.getParameter("nome");

		Disciplina disciplina = new Disciplina();
		disciplina.setNome(nomeDisciplina);

		Banco banco = new Banco();
		banco.adiciona(disciplina);

		request.setAttribute("disciplina", disciplina.getNome());

		return "forward:cadastroDisciplina.jsp";

	}
}