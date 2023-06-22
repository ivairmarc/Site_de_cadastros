-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Jun-2023 às 15:58
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `extratos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_cad`
--

CREATE TABLE `usuarios_cad` (
  `id` int(11) NOT NULL,
  `nome_cad` varchar(100) DEFAULT NULL,
  `email_cad` varchar(100) DEFAULT NULL,
  `login_cad` varchar(100) DEFAULT NULL,
  `senha_cad` varchar(255) DEFAULT NULL,
  `nivel_cad` int(5) DEFAULT NULL,
  `stat_cad` enum('ativo','inativo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios_cad`
--

INSERT INTO `usuarios_cad` (`id`, `nome_cad`, `email_cad`, `login_cad`, `senha_cad`, `nivel_cad`, `stat_cad`) VALUES
(1, 'ivair', 'teste@gmail.com', 'ivairc', '123', 1, 'ativo'),
(2, 'marc', 'teste2@gmail.com', 'marc1', '123', 1, 'inativo');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios_cad`
--
ALTER TABLE `usuarios_cad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_cad` (`login_cad`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios_cad`
--
ALTER TABLE `usuarios_cad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
