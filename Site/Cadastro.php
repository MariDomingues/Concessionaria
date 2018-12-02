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
						<a href="index.html" onclick="<script language='JavaScript'>alert('Cadastro realizado com sucesso!');</script>">
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
							<form novalidate="novalidate" method="POST">
								<div class="form-group">
									<label>Nome da empresa</label>
									<input class="form-control" maxlength="60" value="<?php if (isset($_POST['emp'])){ $erro = $_POST['emp']; echo $erro;}?>" autocomplete="off" type="text" name="emp" id="emp"/>
								</div>
								<div class="form-group">
									<label>Nome completo</label>
									<input class="form-control" value="<?php if (isset($_POST['cli'])){ $erro = $_POST['cli']; echo $erro;}?>" autocomplete="off" type="text" name="cli" id="cli"/>
								</div>
								<div class="form-group">
									<label>Telefone fixo</label>
									<input class="mascara-telefone form-control" value="<?php if (isset($_POST['tel'])){ $erro = $_POST['tel']; echo $erro;}?>" maxlength="14" autocomplete="off" type="text" name="tel" id="tel"/>
								</div>
								<div class="form-group">
									<label>E-mail</label>
									<input class="email form-control" name="email" value="<?php session_start(); if (isset($_SESSION['email'])){ $erro = $_SESSION['email'];} else { $erro = '';} echo $erro;?>" autocomplete="off" type="email" id="email"/>
								</div>
								<div>
									<button class="btn btn-success btn-lg" type="submit">
										<span class="glyphicon glyphicon-ok-sign margin-right-10px"></span>
										Cadastrar agora
									</button>
								</div>
								<input type="hidden" name="enviou" value="Sim" />
							</form>
							
							<?php
								if (isset($_POST["enviou"])){
										$emp = $_POST["emp"];
										$cli = $_POST["cli"];
										$tel = $_POST["tel"];										
										$email = $_SESSION["email"];
										
										if ($email == ""){
											?>
											<script language="JavaScript">			
												document.getElementById('email').focus();
												document.getElementById('email').style.background = "#ffd8d8";
												document.getElementById('email').style.border = "1px solid #ec0303";
											</script>
											<?php
										}
										
										if ($tel == ""){
											?>
											<script language="JavaScript">			
												document.getElementById('tel').focus();
												document.getElementById('tel').style.background = "#ffd8d8";
												document.getElementById('tel').style.border = "1px solid #ec0303";
											</script>
											<?php
										}
										
										if ($cli == ""){
											?>
											<script language="JavaScript">			
												document.getElementById('cli').focus();
												document.getElementById('cli').style.background = "#ffd8d8";
												document.getElementById('cli').style.border = "1px solid #ec0303";
											</script>
											<?php
										}
										
										if ($emp == ""){
											?>
											<script language="JavaScript">			
												document.getElementById('emp').focus();
												document.getElementById('emp').style.background = "#ffd8d8";
												document.getElementById('emp').style.border = "1px solid #ec0303";
											</script>
											<?php
										}
										
										if ($emp !== '' && $cli !== '' && $tel !== '' && $email !== '') {
											session_destroy();
											$_POST["emp"]   = '';
											$_POST["cli"]   = '';
											$_POST["tel"]   = '';
											$_POST["email"] = '';
											?>
											<script language="JavaScript">			
												alert("Cadastro realizado com sucesso!");
												window.location="index.html";
											</script>
											<?php
										}
								}
							?>
						</div>
					</div>
				</div>
			</div>
		</section>
	</body>
</html>