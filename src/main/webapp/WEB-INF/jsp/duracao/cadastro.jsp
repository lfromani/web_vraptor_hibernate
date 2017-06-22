<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Duracão da Vaga</title>
<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet">
<link href="<c:url value="/js/bootstrap.js"/>" rel="stylesheet">
<c:import url="../login/index.jsp"></c:import>
</head>
<body>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="col-md-6">
			<div class="form-area">
				<h3>
					Cadastro Vaga <small> - Novo</small>
				</h3>
				<br>
				<form class="form-horizontal" action="${linkTo[DuracaoController].salvar()}" method="post">
					<div class="form-group">
						<label class="col-sm-2 control-label">Código:</label>
						<div class="col-sm-2">
							<input class="form-control" type="text" name="duracao.codigo" value="${duracao.codigo}" disabled="disabled" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Número Vaga:</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="duracao.vaga"	value="${duracao.vaga}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Hora de Entrada:</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="duracao.entrada" value="${duracao.entrada}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Hora de Saída:</label>
						<div class="col-sm-6">
							<input class="form-control" type="password" name="duracao.saida" value="${duracao.saida}" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6 col-sm-offset-2">
							<select class="form-control" name="Tempos" id="tempos">
								<option value="180">3 Horas</option>
								<option value="165">2h45 min</option>
								<option value="150">2h30 min</option>
								<option value="135">2h15 min</option>
								<option value="120">2 Horas</option>
								<option value="105">1h45 min</option>
								<option value="90">1h30 min</option>
								<option value="75">1h15 min</option>
								<option value="60">1 Hora</option>
								<option value="45">45 min</option>
								<option value="30">30 min</option>
								<option value="15">15 min</option>
							</select>
						</div>
					</div>
					<a type="button" class="btn btn-default" href="${linkTo[LoginController].index()}">Voltar</a>
					<button type="submit" class="btn btn-success">Salvar</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>