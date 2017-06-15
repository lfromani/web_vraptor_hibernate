<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang='PT-BR'>
<head>
	<meta charset='UTF-8'>
	<link href="css/style.css" rel="stylesheet">
	<link href="css/bootstrap.css" rel="stylesheet">
</head>
<body>
	<div class="container-fluid" id="cssmenu">
		<ul>
			<li><a href="">Home</a></li>
			<li><a href="/veiculo/cadastro">Cadastro de Veículo</a></li>
			<li><a href="${linkTo[VeiculoController].listar()}">Lista de Veículo</a></li>
			
			<li><a href="${linkTo[UsuarioController].cadastro()}">Cadastro de Usuário</a></li>
			<li><a href="${linkTo[UsuarioController].listar()}">Lista de Usuário</a></li>
		</ul>
	</div>
</body>
</html>