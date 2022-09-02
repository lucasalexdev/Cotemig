-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 15-Maio-2021 às 02:11
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lojadosbruxos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bruxos`
--

DROP TABLE IF EXISTS `bruxos`;
CREATE TABLE IF NOT EXISTS `bruxos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cpf` char(14) NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `telefone` int(11) NOT NULL,
  `email` varchar(125) NOT NULL,
  `senha` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `bruxos`
--

INSERT INTO `bruxos` (`id`, `nome`, `cpf`, `endereco`, `telefone`, `email`, `senha`) VALUES
(2, 'wisley', '22877700080', 'plataforma 9 3 quartos', 0, 'herry@gmail.com', 'ermione');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoriasmagicas`
--

DROP TABLE IF EXISTS `categoriasmagicas`;
CREATE TABLE IF NOT EXISTS `categoriasmagicas` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoriasmagicas`
--

INSERT INTO `categoriasmagicas` (`id`, `nome`, `descricao`) VALUES
(1, 'varinha', 'magia pura'),
(8, 'capa', 'te deixa  estiloso');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedoresmagicos`
--

DROP TABLE IF EXISTS `fornecedoresmagicos`;
CREATE TABLE IF NOT EXISTS `fornecedoresmagicos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(65) NOT NULL,
  `cnpj` char(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `telefone` char(11) NOT NULL,
  `nomeRepresentante` varchar(65) NOT NULL,
  `telefoneRepresentante` char(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fornecedoresmagicos`
--

INSERT INTO `fornecedoresmagicos` (`id`, `nome`, `cnpj`, `email`, `telefone`, `nomeRepresentante`, `telefoneRepresentante`) VALUES
(3, 'draco', '00000000000000000000', 'draco@gmail.com', '00000000', 'ernesto', '11111111');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtosmagicos`
--

DROP TABLE IF EXISTS `produtosmagicos`;
CREATE TABLE IF NOT EXISTS `produtosmagicos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `valor` double(9,2) NOT NULL,
  `descricao` text NOT NULL,
  `fornecedoresMagicosId` int(11) NOT NULL,
  `categoriasMagicasId` int(11) NOT NULL,
  `quantidadeEstoque` int(11) NOT NULL,
  `bruxos_id` int(10) UNSIGNED NOT NULL,
  `fornecedoresMagicos_id` int(10) UNSIGNED NOT NULL,
  `categoriasMagicas_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_produtos_clientes_idx` (`bruxos_id`),
  KEY `fk_produtos_fornecedores1_idx` (`fornecedoresMagicos_id`),
  KEY `fk_produtos_categoria1_idx` (`categoriasMagicas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtosmagicos`
--

INSERT INTO `produtosmagicos` (`id`, `nome`, `valor`, `descricao`, `fornecedoresMagicosId`, `categoriasMagicasId`, `quantidadeEstoque`, `bruxos_id`, `fornecedoresMagicos_id`, `categoriasMagicas_id`) VALUES
(4, 'wisley', 75.00, 'varinha', 3, 1, 1, 2, 3, 1);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtosmagicos`
--
ALTER TABLE `produtosmagicos`
  ADD CONSTRAINT `fk_produtosMagicos_bruxos` FOREIGN KEY (`bruxos_id`) REFERENCES `bruxos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produtosMagicos_categoriasMagicas` FOREIGN KEY (`categoriasMagicas_id`) REFERENCES `categoriasmagicas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produtosMagicos_fornecedoresMagicos` FOREIGN KEY (`fornecedoresMagicos_id`) REFERENCES `fornecedoresmagicos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
