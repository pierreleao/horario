<?php
	// Conexão com o banco de dados
	require 'conexao_exe.php';

	
	// Pegando dados via POST
	$nome = $_POST['nome'];
	$qnt_horarios = $_POST['qnt_horarios'];
	$turno = $_POST['turno'];

	
	// Inserindo dados na tabela
	$insere = "INSERT INTO turma (nome, qnt_horarios, turno) VALUES ('$nome', '$qnt_horarios', '$turno')";

	// Sucesso no cadastro
	if (mysqli_query($conexao, $insere)) {
		echo '<script type="text/javascript">
						window.location.href="../admin/index.php?tela=turma";
					</script>';
	} else { // Falha no cadastro
		echo '<script type="text/javascript">
						window.location.href="../admin/index.php?tela=turma";
						
					</script>';
	}
?>
