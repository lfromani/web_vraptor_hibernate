<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Cadastro de Usuário</title>
</head>
<body>
	<h3>Cadastro de Usuário</h3>
	<small>Novo</small>
	<form action="${linkTo[UsuarioController].salvar()}" method="post">
		<label>Nome</label>
		<input type="text" name="usuario.nome" value="${usuario.nome}"/>
		<label>Login</label>
		<input type="text" name="usuario.login" value="${usuario.login}"/>
		<label>Senha</label>
		<input type="password" name="usuario.senha" value="${usuario.senha}"/>
		<input type="submit"/>
	</form>
</body>
</html>