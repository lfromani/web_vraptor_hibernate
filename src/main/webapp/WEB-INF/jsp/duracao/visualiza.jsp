<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Editar Usuário</title>
	<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet">
	<link href="<c:url value="/js/bootstrap.js"/>" rel="stylesheet">
	<c:import url="../login/index.jsp"></c:import>	
</head>
<body>
	<br>
	<br>
	<br>
	<div class="col-sm-6">
		<h3>Cadastro de  <small> - Editar</small></h3>
		<br>
					<form class="form-horizontal" action="${linkTo[DuracaoController].editar()}" method="post">
					<input class="form-control" type="hidden"name="duracao.codigo"value="duracao.codigo"/>
					<div class="form-group">
						<label class="col-sm-2 control-label">Numero Vaga:</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="duracao.vaga"
								value="${duracao.vaga}" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">Hora de Entrada:</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="duracao.entrada"
								value="${duracao.entrada}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Hora de Saida:</label>
						<div class="col-sm-6">
							<input class="form-control" type="password" name="duracao.saida"
								value="${duracao.saida}" />
						</div>

					</div>

					<div class="form-group">
						<div class="col-sm-6 col-sm-offset-2">
							<select class="form-control" name="Tempos" id="tempos">
								<option value="180">3h Horas</option>
								<option value="165">2h45 minutos</option>
								<option value="150">2h30 minutos</option>
								<option value="135">2h15 minutos</option>
								<option value="120">2h Horas</option>
								<option value="105">1h45 minutos</option>
								<option value="90">1h30 minutos</option>
								<option value="75">1h15 minutos</option>
								<option value="60">1h Hora</option>
								<option value="45">45 minutos</option>
								<option value="30">30 minutos
								<option value="15" selected>15 minutos
							</select>
						</div>
					</div>
		
		
			<a type="button" class="btn btn-default" href="${linkTo[DuracaoController].listar()}">Voltar</a>
			<button type="submit" class="btn btn-success">Editar</button>
		</form>
	</div>
</body>
</html>