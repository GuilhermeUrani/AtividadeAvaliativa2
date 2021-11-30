<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.avaliacao.modelo.Disciplina"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Disciplinas</title>
</head>
<body>
	<c:import url="header.jsp" />
	<%-- 	Usuario Logado: ${usuarioLogado.login} --%>


	<h2>Lista de Disciplinas</h2>

	<table id="registros" border="1">

		<tr>
			<th>Disciplina</th>
			<th>Nome</th>
			<th>Nota</th>
			<th>Situação</th>
		</tr>
		<tr>
			<td>Programação Web</td>
			<td>Fulano de Tal</td>
			<td>5.0</td>
			<td>Aprovado</td>
		</tr>

		<tr>
			<td>Programação Web</td>
			<td>Ciclano</td>
			<td>4.0</td>
			<td>Reprovado</td>
		</tr>
	</table>
	<br />
	<a href="/atividade/entrada?acao=Menu">Voltar para o Menu</a>
</body>
</html>