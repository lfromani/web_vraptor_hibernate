<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Lista de Veículos</title>
</head>
<body>
	<br/><a href="${linkTo[LoginController].index()}">Menu</a>
	<br/><a href="${linkTo[VeiculoController].cadastro()}">Novo veículo</a>
	<form action='<c:url value="/veiculo/pesquisar"/>'
	    method="post">
	    <input type="text" name="filtro"/>
		<input type="submit" value="Enviar" />
	</form>

	<c:forEach var="p" items="${resultado}">
		<br/> <a href="${linkTo[VeiculoController].editar(p.codigo)}">${p.nome}</a>  
		- ${p.codigo} 
		<a href="${linkTo[VeiculoController].excluir(p.codigo)}">Excluir</a>
	</c:forEach>
</body>
</html>