-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
<<<<<<< HEAD
-- Tempo de geração: 07-Mar-2020 às 00:43
=======
-- Tempo de geração: 07-Mar-2020 às 00:37
>>>>>>> upstream/master
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_horario`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

CREATE TABLE `aulas` (
  `cod_aulas` int(20) NOT NULL,
  `cod_turma` int(20) DEFAULT NULL,
  `cod_disciplina` int(20) DEFAULT NULL,
  `cod_escola` int(20) DEFAULT NULL,
  `cod_professor` int(20) DEFAULT NULL,
  `qnt_aulas` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dias_da_semana`
--

CREATE TABLE `dias_da_semana` (
  `cod_dias_da_semana` int(20) NOT NULL,
  `cod_escola` int(20) DEFAULT NULL,
  `descricao` varchar(50) NOT NULL,
  `posicao` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `cod_disciplina` int(20) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cod_escola` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina_por_turma`
--

CREATE TABLE `disciplina_por_turma` (
  `cod_disciplina_por_turma` int(20) NOT NULL,
  `cod_disciplina` int(20) DEFAULT NULL,
  `cod_turma` int(20) DEFAULT NULL,
  `cod_professor` int(20) DEFAULT NULL,
  `carga_horaria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `escola`
--

CREATE TABLE `escola` (
  `cod_escola` int(11) NOT NULL,
  `cnpj` varchar(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(80) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `tipo_escola` varchar(10) NOT NULL,
  `data_cadastro` varchar(20) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `escola`
--

INSERT INTO `escola` (`cod_escola`, `cnpj`, `nome`, `telefone`, `endereco`, `numero`, `cidade`, `estado`, `pais`, `cep`, `tipo_escola`, `data_cadastro`, `senha`) VALUES
<<<<<<< HEAD
(1, '', 'Berenice', '', '', '', '', 'Estado...', '', '', 'Escolher..', '27/02/2020', ''),
(2, '0000000000000', 'PIERRE DA SILVA LEÃƒO', '999999999999', 'Rua E', '90', 'ARCOS', 'MG', 'BRASIL', '35588000', 'Particular', '05/03/2020', '');
=======
(1, '1234567890', 'teste', '37 33512698', 'Rua JoÃ£o XXIII', '154', 'Arcos', 'MG', 'Brasil', '35588000', 'PÃºblica', '05/03/2020', '');
>>>>>>> upstream/master

-- --------------------------------------------------------

--
-- Estrutura da tabela `horarios`
--

CREATE TABLE `horarios` (
  `cod_horarios` int(50) NOT NULL,
  `cod_turno` int(20) DEFAULT NULL,
  `cod_escola` int(20) DEFAULT NULL,
<<<<<<< HEAD
  `posicao` varchar(200) NOT NULL,
  `dia_da_semana` varchar(200) NOT NULL,
  `hora_inicial_hora_final` varchar(200) NOT NULL
=======
  `posicao` varchar(20) NOT NULL,
  `dias_da_semana` varchar(20) NOT NULL,
  `hora_inicial_hora_final` varchar(20) NOT NULL
>>>>>>> upstream/master
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `horarios`
--

INSERT INTO `horarios` (`cod_horarios`, `cod_turno`, `cod_escola`, `posicao`, `dia_da_semana`, `hora_inicial_hora_final`) VALUES
(28, NULL, NULL, '90', 'SE', '15:30 Ã¡s 14:50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `indisponibilidade`
--

CREATE TABLE `indisponibilidade` (
  `cod_indisponibilidade` int(50) NOT NULL,
  `cod_professor` int(50) DEFAULT NULL,
  `cod_horarios` int(50) DEFAULT NULL,
  `cod_dias_da_semana` int(50) DEFAULT NULL,
  `cod_escola` int(50) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `cod_professor` int(10) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `pais` varchar(10) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `masp` varchar(20) NOT NULL,
  `cod_escola` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`cod_professor`, `cpf`, `nome`, `telefone`, `endereco`, `numero`, `cidade`, `estado`, `pais`, `cep`, `masp`, `cod_escola`) VALUES
(1, '121654231', 'teste', '3520644', 'rua tal tal', '123', 'arcos', '', 'brasil', '35588000', '31235468579874654132', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `quadro`
--

CREATE TABLE `quadro` (
  `cod_quadro` int(50) NOT NULL,
  `cod_escola` int(50) DEFAULT NULL,
  `cod_dias_da_semana` int(20) DEFAULT NULL,
  `cod_horarios` int(50) DEFAULT NULL,
  `cod_turma` int(50) DEFAULT NULL,
  `cod_disciplina` int(50) DEFAULT NULL,
  `cod_professor` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_ensino`
--

CREATE TABLE `tipo_ensino` (
  `cod_tipo_ensino` int(50) NOT NULL,
  `cod_escola` int(100) DEFAULT NULL,
  `tipo_ensino` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `cod_turma` int(10) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `qnt_horarios` varchar(20) NOT NULL,
  `turno` varchar(20) NOT NULL,
  `cod_turno` int(20) DEFAULT NULL,
  `cod_escola` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`cod_turma`, `nome`, `qnt_horarios`, `turno`, `cod_turno`, `cod_escola`) VALUES
<<<<<<< HEAD
(4, 'PIERRE DA SILVA LEÃƒ', '', '', NULL, 0),
(5, 'LUCAS DA SILVA LEAO', '', '', NULL, 0),
(6, 'PIERRE DA SILVA LEÃƒ', '52', 'SE', NULL, NULL),
(7, 'Marli Aparecida Silv', '10', 'TE', NULL, NULL),
(8, 'LUCAS DA SILVA LEAO', '10', 'Manha', NULL, NULL);
=======
(1, 'teste', '', 'manhÃ£', NULL, 1),
(2, 'teste2', '', 'noturno', NULL, 1);
>>>>>>> upstream/master

-- --------------------------------------------------------

--
-- Estrutura da tabela `turno`
--

CREATE TABLE `turno` (
  `cod_turno` int(50) NOT NULL,
  `cod_escola` int(20) DEFAULT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cod_usuario` int(20) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tipo_usuario` varchar(50) NOT NULL,
  `cod_escola` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cod_usuario`, `usuario`, `senha`, `email`, `tipo_usuario`, `cod_escola`) VALUES
<<<<<<< HEAD
(1, 'maria', '202cb962ac59075b964b07152d234b70', 'maria@maria.com', 'Administrador', 1),
(2, 'pierresilvaleao@hotmail.com', '9e60e43616ca03abe009c1d7153cfc32', 'pierresilvaleao@hotmail.com', 'Administrador', 2);
=======
(1, 'teste', '698dc19d489c4e4db73e28a713eab07b', 'teste@teste.com', 'Administrador', 1);
>>>>>>> upstream/master

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`cod_aulas`);

--
-- Índices para tabela `dias_da_semana`
--
ALTER TABLE `dias_da_semana`
  ADD PRIMARY KEY (`cod_dias_da_semana`);

--
-- Índices para tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`cod_disciplina`);

--
-- Índices para tabela `disciplina_por_turma`
--
ALTER TABLE `disciplina_por_turma`
  ADD PRIMARY KEY (`cod_disciplina_por_turma`);

--
-- Índices para tabela `escola`
--
ALTER TABLE `escola`
  ADD PRIMARY KEY (`cod_escola`);

--
-- Índices para tabela `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`cod_horarios`);

--
-- Índices para tabela `indisponibilidade`
--
ALTER TABLE `indisponibilidade`
  ADD PRIMARY KEY (`cod_indisponibilidade`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`cod_professor`);

--
-- Índices para tabela `quadro`
--
ALTER TABLE `quadro`
  ADD PRIMARY KEY (`cod_quadro`);

--
-- Índices para tabela `tipo_ensino`
--
ALTER TABLE `tipo_ensino`
  ADD PRIMARY KEY (`cod_tipo_ensino`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`cod_turma`);

--
-- Índices para tabela `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`cod_turno`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cod_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aulas`
--
ALTER TABLE `aulas`
  MODIFY `cod_aulas` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `dias_da_semana`
--
ALTER TABLE `dias_da_semana`
  MODIFY `cod_dias_da_semana` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `cod_disciplina` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `disciplina_por_turma`
--
ALTER TABLE `disciplina_por_turma`
  MODIFY `cod_disciplina_por_turma` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `escola`
--
ALTER TABLE `escola`
  MODIFY `cod_escola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `horarios`
--
ALTER TABLE `horarios`
<<<<<<< HEAD
  MODIFY `cod_horarios` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
=======
  MODIFY `cod_horarios` int(50) NOT NULL AUTO_INCREMENT;
>>>>>>> upstream/master

--
-- AUTO_INCREMENT de tabela `indisponibilidade`
--
ALTER TABLE `indisponibilidade`
  MODIFY `cod_indisponibilidade` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `cod_professor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `quadro`
--
ALTER TABLE `quadro`
  MODIFY `cod_quadro` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipo_ensino`
--
ALTER TABLE `tipo_ensino`
  MODIFY `cod_tipo_ensino` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
<<<<<<< HEAD
  MODIFY `cod_turma` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
=======
  MODIFY `cod_turma` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
>>>>>>> upstream/master

--
-- AUTO_INCREMENT de tabela `turno`
--
ALTER TABLE `turno`
  MODIFY `cod_turno` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cod_usuario` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
