<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Editar Movimento</title>
	<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet">
	<link href="<c:url value="/js/bootstrap.js"/>" rel="stylesheet">
	<c:import url="../login/index.jsp"></c:import>	
</head>
<body>
	<div class="col-sm-6">
		<h3>Cadastro de Movimento <small> - Editar</small></h3>
		<br>
		<form class="form-horizontal" action="${linkTo[MovimentoController].editar()}" method="post">
			<input class="form-control" type="hidden" name="movimento.codigo" value="${movimento.codigo}"/>
			<div class="form-group">		
				<label class="col-sm-2 control-label">Nome:</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="movimento.cliente.nome" value="${movimento.cliente.nome}"/>
				</div>
			</div>
			
			<div class="form-group">	
				<label class="col-sm-2 control-label">Vaga:</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="movimento.duracao.vaga" value="${movimento.duracao.vaga}"/>
				</div>
			</div>
			<div class="form-group">	
				<label class="col-sm-2 control-label">Veículo:</label>
				<div class="col-sm-6">
					<input class="form-control" type="text" name="movimento.veiculo.placa" value="${movimento.veiculo.placa}"/>
				</div>
			</div>
			<a type="button" class="col-sm-offset-2 btn btn-default" href="${linkTo[MovimentoController].listar()}">Cancelar</a>
			<button type="submit" class="btn btn-success">Salvar</button>
		</form>
	</div>
</body>
</html>