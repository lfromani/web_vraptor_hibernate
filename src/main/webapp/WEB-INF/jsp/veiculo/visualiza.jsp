<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Editar Veículo</title>
	<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet">
	<link href="<c:url value="/js/bootstrap.js"/>" rel="stylesheet">
	<c:import url="../login/index.jsp"></c:import>	
</head>
<body>
	<br>
	<br>
	<br>
	<div class="col-sm-6">
		<h3>Cadastro veículo <small> - Editar</small></h3>
		<br>
		<form class="form-horizontal" action="${linkTo[VeiculoController].editar()}" method="post">
			<input class="form-control" type="hidden" name="veiculo.codigo" value="${veiculo.codigo}"/>
			<div class="form-group">	
				<label class="col-sm-2 control-label">Ano:</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="veiculo.ano" value="${veiculo.ano}"/>
				</div>
			</div>
			<div class="form-group">	
				<label class="col-sm-2 control-label">Placa:</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="veiculo.placa" value="${veiculo.placa}"/>
				</div>
			</div>
			<div class="form-group">	
				<label class="col-sm-2 control-label">Cor:</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="veiculo.cor" value="${veiculo.cor}"/>
				</div>
			</div>
			<div class="form-group">	
				<label class="col-sm-2 control-label">Marca:</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="veiculo.marca" value="${veiculo.marca}"/>
				</div>
			</div>
			<div class="form-group">		
				<label class="col-sm-2 control-label">Modelo:</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="veiculo.modelo" value="${veiculo.modelo}"/>
				</div>
			</div>
			<a type="button" class="col-sm-offset-2 btn btn-default" href="${linkTo[VeiculoController].listar()}">Cancelar</a>
			<button type="submit" class="btn btn-success">Salvar</button>
		</form>
	</div>
</body>
</html>