<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.avaliacao.modelo.Disciplina"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function calculo() {
	  var nota01 = parseFloat(document.getElementById('nota01').value);
	  var nota02 = parseFloat(document.getElementById('nota02').value);
	  var nota03 = parseFloat(document.getElementById('nota03').value);
	  var nota04 = parseFloat(document.getElementById('nota04').value);

	  var resultado = parseFloat((nota01 + nota02 + nota03 + nota04) / 4);


	  document.getElementById('txtResultado').setAttribute("value", resultado);
	}
</script>
</head>
<body>
<c:import url="header.jsp" />
	<div class="">
		<p>Media dos alunos</p>

		<form class="" method="post">
			<label>Aluno 01</label> <input type="number" id="nota01" value=""
				max="10"> <br> <br> <label>Aluno 02</label> <input
				type="number" id="nota02" value="" max="10"> <br> <br>
			<label>Aluno 03</label> <input type="number" id="nota03" value=""
				max="10"> <br> <br> <label>Aluno 04</label> <input
				type="number" id="nota04" value="" max="10"> <br> <br>
			<input type="button" onclick="javascript:calculo();" name="name"
				value="Enviar"> <input type="text" id="txtResultado"
				value="">
		</form>
	</div>
	<br />
	<a href="/atividade/entrada?acao=Menu">Voltar para o Menu</a>
</body>
</html>