<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Cadastro de Veículo</title>
	<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet">
	<link href="<c:url value="/js/bootstrap.js"/>" rel="stylesheet">
</head>
<body>
	<h3>Cadastro de Veículo</h3>
	<small>Novo</small>
	<form action="${linkTo[VeiculoController].salvar()}" method="post">
		<label>Código</label>
		<input type="text" name="veiculo.codigo" value="${veiculo.codigo}" disabled="disabled"/>
		<label>Nome</label>
		<input type="text" name="veiculo.nome" value="${veiculo.nome}"/>
		<label>Ano</label>
		<input type="text" name="veiculo.ano" value="${veiculo.ano}"/>
		<label>Placa</label>
		<input type="text" name="veiculo.placa" value="${veiculo.placa}"/>
		<label>Cor</label>
		<input type="text" name="veiculo.cor" value="${veiculo.cor}"/>
		<label>Vaga</label>
		<input type="text" name="veiculo.vaga" value="${veiculo.vaga}"/>
		<input type="submit"/>
	</form>
</body>
</html>