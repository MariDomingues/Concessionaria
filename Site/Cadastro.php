<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="style2.css">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Roboto+Condensed:400,700" rel="stylesheet"> 
		<title>Concessionária</title>
	</head>

	<body>
		<header>
			<div class="TopoInterior">
				<div class="logo">
					<h1>
						<a href="index.html">
							<img class="Img2" src="../Sistema Delphi/Imagens/nome2.png"/>
							<img class="Img1" src="../Sistema Delphi/Imagens/logo2.png"/>
						</a>
					</h1>
				</div>
			</div>
		</header>

		<section id="banner">
			<div class="Container column">
				<div class="banner_headline">
					<h1>TESTE GRÁTIS <label>POR 15 DIAS</label></h1>
					<h2>Você terá acesso a todas funcionalidades do software e não pagará nada se não gostar.</h2>               
					<div class="row">
						<div class="col-md-8">
							<form novalidate="novalidate">
								<div class="form-group">
									<label>Nome da empresa</label>
									<input class="form-control" maxlength="60" value="" autocomplete="off" type="text"/>
								</div>
								<div class="form-group">
									<label>Nome completo</label>
									<input class="form-control" value="" autocomplete="off" type="text"/>
								</div>
								<div class="form-group">
									<label>Telefone fixo</label>
									<input class="mascara-telefone form-control" maxlength="14" autocomplete="off" type="text"/>
								</div>
								<div class="form-group">
									<label>E-mail</label>
									<input class="email form-control" name="email" value="<?php session_start(); if (isset($_SESSION['email'])){ $erro = $_SESSION['email']; echo $erro;} session_destroy();?>" autocomplete="off" type="email"/>
								</div>
								<div>
									<button class="btn btn-success btn-lg" type="submit">
										<span class="glyphicon glyphicon-ok-sign margin-right-10px"></span>
										Cadastrar agora
									</button>
								</div>
								<input type="hidden" name="escondido" value="Formulario de cadastro" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</body>
</html>