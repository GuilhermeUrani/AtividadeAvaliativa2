package br.com.avaliacao.modelo;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {

	private static List<Disciplina> lista = new ArrayList<>();
	private static List<Usuario> listaUsuarios = new ArrayList<>();
	private static Integer chaveSequencial = 1;

	static {
		Disciplina disciplina = new Disciplina();
		disciplina.setId(chaveSequencial++);
		disciplina.setNome("Programação Web");
		Disciplina disciplina2 = new Disciplina();
		disciplina.setId(chaveSequencial++);
		disciplina.setNome("Banco de Dados");
		lista.add(disciplina);
		lista.add(disciplina2);

		Usuario u1 = new Usuario();
		u1.setLogin("professor");
		u1.setSenha("Progweb2021");

		Usuario u2 = new Usuario();
		u2.setLogin("urani");
		u2.setSenha("1");

		listaUsuarios.add(u1);
		listaUsuarios.add(u2);

	}

	public void adiciona(Disciplina disciplina) {
		disciplina.setId(Banco.chaveSequencial++);
		Banco.lista.add(disciplina);
	}

	public List<Disciplina> getDisciplinas() {
		return Banco.lista;
	}

	public void removeEmpresa(Integer id) {

		Iterator<Disciplina> it = lista.iterator();

		while (it.hasNext()) {
			Disciplina emp = it.next();

			if (emp.getId() == id) {
				it.remove();
			}
		}
	}

	public Disciplina buscaDisciplinaPelaId(Integer id) {
		for (Disciplina disciplina : lista) {
			if (disciplina.getId() == id) {
				return disciplina;
			}
		}
		return null;
	}

	public Usuario existeUsuario(String login, String senha) {
		for (Usuario usuario : listaUsuarios) {
			if (usuario.ehIgual(login, senha)) {
				return usuario;
			}

		}
		return null;
	}

}
