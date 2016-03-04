-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 179.188.16.6
-- Tempo de Geração: 17/11/2015 às 08:20:04
-- Versão do Servidor: 5.6.21
-- Versão do PHP: 5.3.3-7+squeeze27

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `lucasassuncao4`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE IF NOT EXISTS `contatos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `email`, `endereco`) VALUES
(1, 'Geisa', 'geisa@gmail.com', 'Rua: Sei la, 130'),
(2, 'Geisa', 'geisa@gmail.com', 'Rua: Sei la, 130'),
(3, 'Geisa', 'geisa@gmail.com', 'Rua: Sei la, 130');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_aluno`
--

CREATE TABLE IF NOT EXISTS `tbl_aluno` (
  `id_aluno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ra_aluno` varchar(50) NOT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id_aluno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `tbl_aluno`
--

INSERT INTO `tbl_aluno` (`id_aluno`, `ra_aluno`, `nome`) VALUES
(2, '12345678', 'Luc'),
(3, '1234567', 'Ge'),
(4, '12345678', 'ddddd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_curso`
--

CREATE TABLE IF NOT EXISTS `tbl_curso` (
  `id_curso` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `tbl_curso`
--

INSERT INTO `tbl_curso` (`id_curso`, `nome`) VALUES
(1, 'ADS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_cursoXdisciplina`
--

CREATE TABLE IF NOT EXISTS `tbl_cursoXdisciplina` (
  `id_cursodisc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_curso` int(10) unsigned NOT NULL,
  `id_disciplina` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cursodisc`),
  KEY `fk_id_curso` (`id_curso`),
  KEY `fk_id_disciplina` (`id_disciplina`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `tbl_cursoXdisciplina`
--

INSERT INTO `tbl_cursoXdisciplina` (`id_cursodisc`, `id_curso`, `id_disciplina`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_disciplina`
--

CREATE TABLE IF NOT EXISTS `tbl_disciplina` (
  `id_disciplina` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id_disciplina`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `tbl_disciplina`
--

INSERT INTO `tbl_disciplina` (`id_disciplina`, `nome`) VALUES
(1, 'EDS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_notas`
--

CREATE TABLE IF NOT EXISTS `tbl_notas` (
  `id_notas` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nota1` int(10) unsigned NOT NULL,
  `nota2` int(10) unsigned NOT NULL,
  `trabalho` int(10) unsigned NOT NULL,
  `id_aluno` int(10) unsigned NOT NULL,
  `id_professor` int(10) unsigned NOT NULL,
  `id_disciplina` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_notas`),
  KEY `fk_id_aluno` (`id_aluno`),
  KEY `fk_id_professor` (`id_professor`),
  KEY `fk_id_disciplinaNotas` (`id_disciplina`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `tbl_notas`
--

INSERT INTO `tbl_notas` (`id_notas`, `nota1`, `nota2`, `trabalho`, `id_aluno`, `id_professor`, `id_disciplina`) VALUES
(1, 10, 10, 10, 2, 2, 1),
(2, 8, 9, 8, 3, 2, 1),
(3, 7, 7, 7, 4, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_professor`
--

CREATE TABLE IF NOT EXISTS `tbl_professor` (
  `id_professor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rg_professor` varchar(50) NOT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id_professor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `tbl_professor`
--

INSERT INTO `tbl_professor` (`id_professor`, `rg_professor`, `nome`) VALUES
(2, '123456789', 'Ale');

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `tbl_cursoXdisciplina`
--
ALTER TABLE `tbl_cursoXdisciplina`
  ADD CONSTRAINT `fk_id_curso` FOREIGN KEY (`id_curso`) REFERENCES `tbl_curso` (`id_curso`),
  ADD CONSTRAINT `fk_id_disciplina` FOREIGN KEY (`id_disciplina`) REFERENCES `tbl_disciplina` (`id_disciplina`);

--
-- Restrições para a tabela `tbl_notas`
--
ALTER TABLE `tbl_notas`
  ADD CONSTRAINT `fk_id_aluno` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_aluno` (`id_aluno`),
  ADD CONSTRAINT `fk_id_disciplinaNotas` FOREIGN KEY (`id_disciplina`) REFERENCES `tbl_disciplina` (`id_disciplina`),
  ADD CONSTRAINT `fk_id_professor` FOREIGN KEY (`id_professor`) REFERENCES `tbl_professor` (`id_professor`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
