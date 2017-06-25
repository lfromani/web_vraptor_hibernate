<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Editar Cliente</title>
	<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet">
	<link href="<c:url value="/js/bootstrap.js"/>" rel="stylesheet">
	<c:import url="../login/index.jsp"></c:import>	
</head>
<body>
	<br>
	<br>
	<br>
	<div class="col-sm-6">
		<h3>Cadastro de Cliente <small> - Editar</small></h3>
		<br>
		<form class="form-horizontal" action="${linkTo[ClienteController].editar()}" method="post">
			<input class="form-control" type="hidden" name="cliente.codigo" value="${cliente.codigo}"/>
			<div class="form-group">		
				<label class="col-sm-2 control-label">Nome:</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="cliente.nome" value="${cliente.nome}"/>
				</div>
			</div>
			
			<div class="form-group">	
				<label class="col-sm-2 control-label">CPF:</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="cliente.cpf" value="${cliente.cpf}"/>
				</div>
			</div>
			<div class="form-group">	
				<label class="col-sm-2 control-label">Endereço:</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="cliente.endereco" value="${cliente.cpf}"/>
				</div>
			</div>
			<div class="form-group">	
				<label class="col-sm-2 control-label">Telefone:</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="cliente.telefone" value="${cliente.telefone}"/>
				</div>
			</div>
			<a type="button" class="btn btn-default" href="${linkTo[ClienteController].listar()}">Voltar</a>
			<button type="submit" class="btn btn-success">Salvar</button>
		</form>
	</div>
</body>
</html>