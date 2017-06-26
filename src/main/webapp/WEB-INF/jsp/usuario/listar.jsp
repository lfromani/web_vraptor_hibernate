<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Lista de usuários</title>
	<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet">
	<link href="<c:url value="/js/bootstrap.js"/>" rel="stylesheet">
	<c:import url="../login/index.jsp"></c:import>
</head>
<body>
	<div style="margin: 2% 10% 10% 10%" class="container-fluid">
	<table class="table table-bordered table-striped">
	<tr style="text-align: center;">
				<td style="width: 10%"><b>Código</b></td>
				<td style="width: 30%"><b>Nome</b></td>
				<td style="width: 30%"><b>Email</b></td>
				<td style="width: 15%"><b>Opções</b></td>
			</tr>
		<c:forEach var="usuario" items="${resultado}">
			<tr>
				<td align="center"><c:out value="${usuario.codigo}"/></td>
				<td align="center"><c:out value="${usuario.nome}"/></td>
				<td align="center"><c:out value="${usuario.email}"/></td>
				<td>
					<a class="btn btn-xs btn-primary" type="button" href="${linkTo[UsuarioController].visualiza(usuario.codigo)}">
						<span style="padding: 2px" class="glyphicon glyphicon-pencil"></span>
						<strong>Editar</strong>
					</a>
					
					<a class="btn btn-xs btn-danger" type="button" href="${linkTo[UsuarioController].excluir(usuario.codigo)}">
						<span style="padding: 2px" class="glyphicon glyphicon-trash"></span>
						<strong>Deletar</strong>
					</a>
					
				</td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>