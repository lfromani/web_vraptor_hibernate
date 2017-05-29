<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
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
      <form class="form-signin">
        <h2 class="form-signin-heading">Login</h2>
        <label for="inputEmail" class="sr-only">Usuário</label>
        <input type="text" id="usuario" class="form-control" placeholder="Usuário" required autofocus>
        <label for="inputPassword" class="sr-only">Senha</label>
        <input type="password" id="senha" class="form-control" placeholder="Senha" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
      </form>
    </div>
  </body>
</html>