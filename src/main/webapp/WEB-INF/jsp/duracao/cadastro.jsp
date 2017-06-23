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
						<label class="col-sm-3 control-label">Código</label>
						<div class="col-sm-2">
							<input class="form-control" type="text" name="duracao.codigo" value="${duracao.codigo}" disabled="disabled"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">Número vaga*</label>
						<div class="col-sm-6">
							<input class="form-control" type="text" name="duracao.vaga"	value="${duracao.vaga}" required="required"  placeholder="Prencher valor"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">Hora entrada*</label>
						<div class="col-sm-6">
							<input class="form-control" type="time" name="duracao.entrada" value="${duracao.entrada}" />
						</div>
					</div>
					<div class="form-group">
					<label class="col-sm-3 control-label">Tempo*</label>
						<div class="col-sm-6">
							<label class="radio-inline">
								<input type="radio" name="duracao.tempo" value="30 minutos" checked="checked">
								30 minutos
							</label>
							<label class="radio-inline">
								<input type="radio" name="duracao.tempo" value="1 hora">
								1 hora
							</label>
						</div>
					</div>
				
					<br>
					<a type="button" class="col-sm-offset-3 btn btn-default" href="${linkTo[LoginController].index()}">Cancelar</a>
					<button type="submit" class="btn btn-primary">Salvar</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>