<?php
	session_start();
	$email = $_POST['email1'];
	
	if ($email == ""){
		$email = $_POST['email2'];
	}
	
	$_SESSION['email'] = $email;
	$escondido1 = $_POST['escondido'];
	
	if ($email !== ""){
		?>
		<script language="JavaScript">			
			window.location="Cadastro.php";
		</script>
		<?php
	}
?>



