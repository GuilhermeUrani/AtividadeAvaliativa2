package br.com.avaliacao.acao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.avaliacao.modelo.Banco;
import br.com.avaliacao.modelo.Disciplina;

public class Listar implements Acao {

	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("listando disciplinas");
		Banco banco = new Banco();
		List<Disciplina> lista = banco.getDisciplinas();

		request.setAttribute("empresas", lista);

		return "forward:listaDisciplina.jsp";

	}
}