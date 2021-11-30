
<%
String dataAtual = new java.text.SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date());
String horaAtual = new java.text.SimpleDateFormat("HH:mm:ss").format(new java.util.Date());
%>

<body>
	<div>Bem Vindo, ${usuarioLogado.login}!</div>
	<div><%=dataAtual%>
		<div><%=horaAtual%>
</body>

<br>
<br>