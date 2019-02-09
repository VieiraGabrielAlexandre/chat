-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Fev-2019 às 11:38
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `interacoes`
--

CREATE TABLE `interacoes` (
  `nm_usuario` varchar(20) NOT NULL,
  `id_sala` int(11) NOT NULL,
  `dt_interacao` datetime NOT NULL,
  `ds_interacao` varchar(500) NOT NULL,
  `nm_destinatario` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `interacoes`
--

INSERT INTO `interacoes` (`nm_usuario`, `id_sala`, `dt_interacao`, `ds_interacao`, `nm_destinatario`) VALUES
('gabriel', 0, '2019-02-09 11:24:34', 'Entrou na sala.', ''),
('gabriel', 0, '2019-02-09 11:25:12', 'teste\r\n', ''),
('gabriel', 0, '2019-02-09 11:26:02', 'teste\r\n', ''),
('gabriel', 0, '2019-02-09 11:26:09', 'teste\r\n', ''),
('teste', 0, '2019-02-09 11:26:19', 'Entrou na sala.', ''),
('teste', 0, '2019-02-09 11:26:24', 'sdsds\r\n', ''),
('bbbb', 0, '2019-02-09 11:28:06', 'Entrou na sala.', ''),
('bbbb', 0, '2019-02-09 11:28:11', 'Aaaal', ''),
('teste', 0, '2019-02-09 11:28:17', 'sdsds\r\n', ''),
('aaaa', 0, '2019-02-09 11:28:38', 'Entrou na sala.', ''),
('BbBv', 0, '2019-02-09 11:28:48', 'Entrou na sala.', ''),
('BbBv', 0, '2019-02-09 11:29:01', 'Aaaah', ''),
('gabriel_1', 0, '2019-02-09 11:29:26', 'Entrou na sala.', ''),
('Celular', 0, '2019-02-09 11:29:44', 'Entrou na sala.', ''),
('gabriel_1', 0, '2019-02-09 11:30:13', 'jtdud\r\n', ''),
('Celular', 0, '2019-02-09 11:30:23', 'Aaaaa', ''),
('Gabriel', 3, '2019-02-09 11:31:35', 'Saiu da sala.', ''),
('gabriel', 0, '2019-02-09 11:31:35', 'Saiu da sala.', ''),
('teste', 0, '2019-02-09 11:31:35', 'Saiu da sala.', ''),
('bbbb', 0, '2019-02-09 11:31:35', 'Saiu da sala.', ''),
('aaaa', 0, '2019-02-09 11:31:35', 'Saiu da sala.', ''),
('BbBv', 0, '2019-02-09 11:31:35', 'Saiu da sala.', ''),
('gabriel_1', 0, '2019-02-09 11:31:35', 'jtdud\r\n', ''),
('gabriel_1', 0, '2019-02-09 11:31:41', 'zsss', ''),
('gabriel_1', 0, '2019-02-09 11:31:55', 'zsss', ''),
('Celular', 0, '2019-02-09 11:32:07', 'Saiu da sala.', ''),
('Gabriel Celular', 0, '2019-02-09 11:32:15', 'Entrou na sala.', ''),
('gabriel_1', 0, '2019-02-09 11:32:19', 'zsss', ''),
('Gabriel Celular', 0, '2019-02-09 11:32:26', 'Hahaha\r\n', ''),
('gabriel_1', 0, '2019-02-09 11:32:33', 'zsss', ''),
('Gabriel Celular', 0, '2019-02-09 11:33:19', 'Bhhh', ''),
('Gabriel Celular', 0, '2019-02-09 11:37:36', 'Teste celular ', ''),
('Gabriel Celular', 0, '2019-02-09 11:38:35', 'Saiu da sala.', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `salas`
--

CREATE TABLE `salas` (
  `id_sala` int(11) NOT NULL,
  `nm_sala` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `salas`
--

INSERT INTO `salas` (`id_sala`, `nm_sala`) VALUES
(1, 'Crianças'),
(2, 'Adolescentes'),
(3, 'Homens e Mulheres');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nm_usuario` varchar(20) NOT NULL,
  `id_sala` int(11) NOT NULL,
  `dt_refresh` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nm_usuario`, `id_sala`, `dt_refresh`) VALUES
(31, 'gabriel_1', 0, '2019-02-09 11:38:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id_sala`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `salas`
--
ALTER TABLE `salas`
  MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
