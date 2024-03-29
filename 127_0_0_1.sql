-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Set-2019 às 16:37
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistemadelogin`
--
DROP DATABASE IF EXISTS `sistemadelogin`;
CREATE DATABASE IF NOT EXISTS `sistemadelogin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `sistemadelogin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `nomeUsuario` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `senha` char(40) COLLATE utf8mb4_bin NOT NULL,
  `dataCriacao` datetime NOT NULL,
  `avatar_url` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `token` char(10) COLLATE utf8mb4_bin NOT NULL,
  `tempo_de_vida` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nome`, `nomeUsuario`, `email`, `senha`, `dataCriacao`, `avatar_url`, `token`, `tempo_de_vida`) VALUES
(1, 'Davi Santos', 'Yashirin', 'Yashirin@sss', 'fde3e7ccf148658663a1748362bf77edf0b6a070', '2019-09-06 13:39:27', '', '', '2019-09-12 19:29:42'),
(6, 'Yashirin', 'SrYashir0', 'yashirin@asdasda', 'fde3e7ccf148658663a1748362bf77edf0b6a070', '2019-09-12 13:25:53', 'https://i.ytimg.com/vi/ck1sXc2SMAQ/maxresdefault.jpg', '', '2019-09-12 19:29:42'),
(5, 'oooooo', 'oooooo', 'oooooo@oo', '7f8b6b25b3f62699bf073be153438f81e9a2dc51', '2019-09-06 16:25:12', 'https://conteudo.imguol.com.br/c/noticias/63/2019/09/02/o-furacao-dorian-estava-se-movendo-nesta-segunda-feira-muito-lenta-a-leste-da-peninsula-da-florida-1567472033416_v2_900x506.jpg', '', '2019-09-12 19:29:42');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
