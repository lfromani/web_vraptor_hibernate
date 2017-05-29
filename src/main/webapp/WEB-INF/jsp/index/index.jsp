<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="PT-BR">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<style type="text/css">
    	<%@include file="../../css/style.css" %>
	</style>
	<style type="text/css">
    	<%@include file="../../css/bootstrap.css" %>
	</style>
</head>
<body>
    <div class="container">
      <form class="formLogin">
      <div class="well">
        <h2 class="titulo">Login</h2>
        <label>Usuário</label>
        <br>
        <input type="text" id="usuario" class="form-control" placeholder="Usuário" required autofocus>
        <br>
        <label>Senha</label>
        <br>
        <input type="password" id="senha" class="form-control" placeholder="Senha" required>
        <br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
       </div>
      </form>
    </div>
  </body>
</html>