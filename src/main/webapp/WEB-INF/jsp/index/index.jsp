<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="PT-BR">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
<link href='<c:url value="/css/style.css"/>' rel="stylesheet">
	<link href='<c:url value="/css/bootstrap.css"/>'rel="stylesheet">
</head>
<body>
    <div class="container">
      <form class="formLogin" action='<c:url value="/login/index"/>' method="post">
      <div class="well">
        <h3 class="titulo">Login</h3>
            <label>E-mail</label>
        <br>
        <input type="email" name="usuario.email" value="${usuario.email}" id="usuario" class="form-control" placeholder="e-mail" required autofocus>
        <br>
        <label>Senha</label>
        <br>
        
        <input type="password" name="usuario.senha" value="${usuario.senha}" id="senha" class="form-control" placeholder="senha" required>
                <br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
         <a class=" btn btn-link"
        href='<c:url value="/login/primeiroacesso"/>'>Primeiro acesso? Cadastre-se.</a> 
       </div>
      </form>
    </div>
  </body>
</html>