<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>tablas de multiplicar</title>
</head>
<h1> Resultado de la tabla de multiplicar</h1>
<%int jnumero= Integer.parseInt(request.getParameter("numero")); %>
<h1>Tabla del <%=jnumero %></h1>
<table>
	<%for(int i=1;i<=10;i++){ %>
		<tr>
			<td><%= jnumero%> x <%=i%></td>
			<td><%= jnumero * i %></td>
		</tr>
	<% } %>
	
</table>
<a href="TablasMultiplicar.jsp">Regresar a pedir otro número</a>
<body>

</body>
</html>