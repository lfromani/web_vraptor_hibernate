<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="PT-BR">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link href="css/style.css" rel="stylesheet">
	<link href="css/bootstrap.css" rel="stylesheet">
</head>
<body>
    <div class="container">
      <form class="formLogin" action='<c:url value="/login/index"/>' method="post">
      <div class="well">
        <h3 class="titulo">Login</h3>
        <label>Usuário</label>
        <br>
        <input type="text" name="usuario" id="usuario" class="form-control" placeholder="Usuário" required autofocus>
        <br>
        <label>Senha</label>
        <br>
        <input type="password" name="senha" id="senha" class="form-control" placeholder="Senha" required>
        <br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
       </div>
      </form>
    </div>
  </body>
</html>