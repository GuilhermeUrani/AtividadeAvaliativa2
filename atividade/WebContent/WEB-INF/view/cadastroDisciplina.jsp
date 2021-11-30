<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.avaliacao.modelo.Disciplina"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Disciplinas</title>
<script type="text/javascript">
	function adicionarItem() {
		var campoTexto = document.getElementById("item");
		var campoItens = document.getElementById("itens");

		var opcaoNova = document.createElement('option');

		opcaoNova.text = campoTexto.value;

		campoItens.add(opcaoNova);

	}

	function adicionarTexto() {
		var campoAreaTexto = document.getElementById("areaTexto");
		var campoItens = document.getElementById("itens");

		var posicaoSelecionada = campoItens.selectedIndex;

		var novoTexto = campoItens[posicaoSelecionada].text;

		campoAreaTexto.value = campoAreaTexto.value + "\n" + novoTexto;
	}
</script>
<script type="text/javascript">
	function inserirRegistro() {
		var tabela = document.getElementById("registros");
		var disciplina = document.getElementById("inputDisciplina").value;
		var nome = document.getElementById("inputNome").value;
		var nota = document.getElementById("inputNota").value;

		// Recupera a quantidade de linhas atuais
		var linhasTotais = tabela.rows.length;

		// Adicionar a nova linha no fim da tabela
		var novaLinha = tabela.insertRow(linhasTotais);

		// Adicionar duas células na linha criada
		var novaCelulaDisciplina = novaLinha.insertCell(0);
		var novaCelulaNome = novaLinha.insertCell(1);
		var novaCelulaNota = novaLinha.insertCell(2);

		// Preencher as células criadas
		novaCelulaDisciplina.innerHTML = disciplina;
		novaCelulaNome.innerHTML = nome;
		novaCelulaNota.innerHTML = nota;
	}

	function onlynumber(evt) {
		var theEvent = evt || window.event;
		var key = theEvent.keyCode || theEvent.which;
		key = String.fromCharCode(key);
		//var regex = /^[0-9.,]+$/;
		var regex = /^[0-9.]+$/;
		if (!regex.test(key)) {
			theEvent.returnValue = false;
			if (theEvent.preventDefault)
				theEvent.preventDefault();
		}
	}
</script>
</head>
<body>

	<c:import url="header.jsp" />

	<form>

		<h2>Cadastro de Disciplinas</h2>
		Digite o nome da Disciplina: <input id="item" type="text"> <input
			type="button" value="Adicionar Disciplina" onclick="adicionarItem()">
		<br /> <br /> <br /> <select id="itens" onchange="adicionarTexto()">
		</select> <br /> <br />
		<textarea id="areaTexto" disabled="disabled" rows="20" cols="30"></textarea>
	</form>

	<br /> Nome da Disciplina:
	<input id="inputDisciplina" type="text">
	<br />
	<br /> Nome do Aluno:
	<input id="inputNome" type="text">
	<br />
	<br /> Nota Final:
	<input id="inputNota" type="text" onkeypress='return onlynumber();'>
	<br />
	<br />

	<input type="button" value="Inserir registro"
		onclick="inserirRegistro()">
	<br />
	<br />

	<table id="registros" border="1">

		<tr>
			<th>Disciplina</th>
			<th>Nome</th>
			<th>Nota</th>
		</tr>
		<tr>
			<td>Programação Web</td>
			<td>Fulano de Tal</td>
			<td>5.0</td>
		</tr>
	</table>
	<br />
	<a href="/atividade/entrada?acao=Menu">Voltar para o Menu</a>
</body>
</html>