<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="css/style.css" rel="stylesheet">
	<link href="css/bootstrap.css" rel="stylesheet">
	<title>Cadastro de Usuário</title>
</head>
<body>
	<h3>Cadastro de Usuário</h3>
	<small>Novo</small>
	<form action="${linkTo[UsuarioController].salvar()}" method="post">
		<div class="form-group">
			<label>Código</label>
			<input class="form-control" type="hidden" name="usuario.codigo" value="${usuario.codigo}" disabled="disabled"/>
		</div>
		<div class="form-group">		
			<label>Nome</label>
			<input class="form-control" type="text" name="usuario.nome" value="${usuario.nome}"/>
		</div>
		<div class="form-group">	
			<label>Login</label>
			<input class="form-control" type="text" name="usuario.login" value="${usuario.login}"/>
		</div>
		<div class="form-group">	
			<label>Senha</label>
			<input class="form-control" type="password" name="usuario.senha" value="${usuario.senha}"/>
		</div>
		<input type="submit"/>
	</form>
</body>
</html>