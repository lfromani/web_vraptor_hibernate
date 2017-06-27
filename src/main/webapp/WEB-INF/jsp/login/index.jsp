<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang='PT-BR'>
<head>
<meta charset='UTF-8'>
<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet">
<link href="<c:url value="/js/bootstrap.js"/>" rel="stylesheet">
<link href="<c:url value="/css/geral.css"/>" rel="stylesheet">
<link href="<c:url value="/js/jquery.js"/>" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"
	type="text/javascript"></script>
	
	<style>
	 body{
	 background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrqkA_m6NodyjC5QZOzLxOufQMLCJiEvR3z2Tfn4gs1bxIb2nXKg);
	 background-attachment: fixed;
	 background-size: 100%;
	 background-repeat: no-repeat;
	 background-color: #000;
	 }
	
	
	</style>
</head>
<body>
	<div id="wrapper">
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a
					href="${linkTo[LoginController].index()}">Home<span
						class="glyphicon glyphicon-home"></span></a></li>

				<li><a href="${linkTo[VeiculoController].cadastro()}">Cadastro
						de veículo</a></li>
				<li><a href="${linkTo[VeiculoController].listar()}">Veículos</a></li>
				<li><a href="${linkTo[UsuarioController].cadastro()}">Cadastro
						de usuário</a></li>
				<li><a href="${linkTo[UsuarioController].listar()}">Usuários</a></li>
				<li><a href="${linkTo[DuracaoController].cadastro()}">Cadastro
						de vaga</a></li>
				<li><a href="${linkTo[DuracaoController].listar()}">Vagas</a></li>
				<li><a href="${linkTo[ClienteController].cadastro()}">Cadastro
						de cliente</a></li>
				<li><a href="${linkTo[ClienteController].listar()}">Clientes</a></li>
				<li><a href="${linkTo[MovimentoController].cadastro()}">Cadastrar
						movimento</a></li>
				<li><a href="${linkTo[MovimentoController].listar()}">Movimentos</a></li>

				<li><a href="${linkTo[IndexController].index()}">Sair<span
						class="glyphicon glyphicon-log-out"></span></a></li>
			</ul>
		</div>
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<a href="#menu-toggle" class="btn btn-default" id="menu-toggle"><span
							class="glyphicon glyphicon-th-large"></span><strong>Começar</strong>
						</a>
						<br> <br>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
	</script>
</body>
</html>