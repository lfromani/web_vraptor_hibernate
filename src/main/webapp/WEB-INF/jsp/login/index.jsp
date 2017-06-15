<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang='PT-BR'>
<head>
	<meta charset='UTF-8'>
	<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet">
	<link href="<c:url value="/js/bootstrap.js"/>" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
          		<a class="navbar-brand" href="${linkTo[LoginController].index()}">Home</a>
          		<a class="navbar-brand" href="${linkTo[VeiculoController].cadastro()}">Cadastro veículo</a>
          		<a class="navbar-brand" href="${linkTo[VeiculoController].listar()}">Lista veículo</a>
          		<a class="navbar-brand" href="${linkTo[UsuarioController].cadastro()}">Cadastro usuário</a>
          		<a class="navbar-brand" href="${linkTo[UsuarioController].listar()}">Lista usuário</a>
			</div>
		</div>
	</nav>
</body>
</html>