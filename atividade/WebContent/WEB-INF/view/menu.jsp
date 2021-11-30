<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.avaliacao.modelo.Disciplina"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Taglib</title>
</head>
<body>

	<c:import url="header.jsp" />
	Usuario Logado: ${usuarioLogado.login}

	<br>
	<br>
	<br>
	<div>
		<a href="/atividade/entrada?acao=Cadastrar">Cadastrar
			Disciplina e Nota</a>
	</div>
	<br>
	<div>
		<a href="/atividade/entrada?acao=Listar">Consultar Disciplina e Nota</a>
	</div>
	<br>
	<div>
		<a href="/atividade/entrada?acao=CalcularMedia">Calcular Média de Notas</a>
	</div>


</body>
</html>