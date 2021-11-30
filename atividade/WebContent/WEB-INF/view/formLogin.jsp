<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada" var="linkEntradaServlet" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function ApenasLetras(e, t) {
		try {
			if (window.event) {
				var charCode = window.event.keyCode;
			} else if (e) {
				var charCode = e.which;
			} else {
				return true;
			}
			if ((charCode > 64 && charCode < 91)
					|| (charCode > 96 && charCode < 123))
				return true;
			else
				return false;
		} catch (err) {
			alert(err.Description);
		}
	}
</script>
</head>
<body>

	<form action="${linkEntradaServlet }" method="post">

		Login: <input type="text" name="login"
			onkeypress="return ApenasLetras(event,this);" />
		 Senha: <input	type="password" name="senha" /> <input type="hidden" name="acao"
			value="Login"> <input type="submit" />
	</form>

</body>
</html>