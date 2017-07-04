-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14-Jun-2017 às 00:11
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdcliente`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Rg` varchar(13) NOT NULL,
  `Cpf` varchar(14) NOT NULL,
  `Telefone` varchar(14) NOT NULL,
  `Celular` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  `Numero` int(11) UNSIGNED NOT NULL,
  `Cep` varchar(10) NOT NULL,
  `Cidade` varchar(30) NOT NULL,
  `Estado` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `Nome`, `Rg`, `Cpf`, `Telefone`, `Celular`, `Email`, `Endereco`, `Numero`, `Cep`, `Cidade`, `Estado`) VALUES
(3, 'Professor Tiburcio', '10.111.222-8', '123.456.789-10', '(18)3333-2222', '(18)99999-7777', 'Tiburcio@teste.com.br', 'Rua Begosso', 102, '19800-000', 'Candido Mota', 'SP'),
(6, 'Bartolomeu Irineu', '12.234.567-8', '123.456.789-10', '(18)1111.2222', '(18)99999-9992', 'bart@teste.com 'Laura-scandido@outlook.com', 'Jair Mariano Barbosa', 168, '19815-365', 'Assis', 'SP'),
(10, 'Teste Valida', '99.999.999-9', '999.999.999-99', '(99)9999-9999', '(99)99999-9999', 'usuario@email.com.br', 'teste Valida', 105, '99.999-999', 'Assis', 'SP'),
(11, 'Almir Camolesi', '10.111.232-8', '121.232.454-66', '(99)9999-9999', '(99)99999-9999', 'Almir.Camolesi@outlook.com', 'Fema ', 123, '99.999-999', 'Assis', 'SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cnpj` varchar(18) NOT NULL,
  `Telefone` varchar(13) NOT NULL,
  `Celular` varchar(14) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Endereco` varchar(40) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Cep` varchar(9) NOT NULL,
  `Cidade` varchar(20) NOT NULL,
  `Estado` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`id`, `Nome`, `Cnpj`, `Telefone`, `Celular`, `Email`, `Endereco`, `Numero`, `Cep`, `Cidade`, `Estado`) VALUES
(1, 'Samsung 2', '11.111.111.11/1111', '(99)9999-9999', '(99)99999-9999', 'usuario@email.com.br', 'Av. Brasil', 1000, '17800-000', 'Sao Paulo', 'SP'),
(3, 'Dell 1', '00.111.222.33/4444', '(99)9999-9999', '(99)99999-9999', 'usuario@email.com.br', 'Av.Paulista', 8000, '80000-999', 'Sao Paulo', 'SP'),
(4, 'Razer', '12.345.56/00001.68', '(99)9999-9999', '(99)99999-9999', 'Razer@Suporte.com.br', 'Manchester', 5000, '07855-999', 'California', 'UF');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `Cargo` varchar(30) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Rg` varchar(14) NOT NULL,
  `Cpf` varchar(15) NOT NULL,
  `Telefone` varchar(14) NOT NULL,
  `Celular` varchar(15) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Endereco` varchar(40) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Cep` varchar(10) NOT NULL,
  `Cidade` varchar(20) NOT NULL,
  `Estado` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`id`, `Cargo`, `Nome`, `Rg`, `Cpf`, `Telefone`, `Celular`, `Email`, `Endereco`, `Numero`, `Cep`, `Cidade`, `Estado`) VALUES
(1, 'Gerente', 'Rodolfo Amaral', '43.138.839-8', '449.921.518-84', '(18)3323.2299', '(18)99761-8910', 'rodolfo_@outlook.com', '', 105, '19815-395', 'Assis', 'SP'),
(3, 'T.i', 'Vinicius Freitas', '99.999.999-9', '999.999.999-99', '(99)9999-9999', '(99)99999-9999', 'usuario@email.com.br', 'fema', 10, '99.999-999', 'Assis', 'SP'),
(4, 'Gerente De Projeto', 'Daniela Mercury', '99.999.999-9', '999.999.999-99', '(99)9999-9999', '(99)99999-9999', 'Danny.mercurio@hotmail.com', 'Sao Paulo', 50, '19800-000', 'Assis', 'Sp');

-- --------------------------------------------------------

--
-- Estrutura da tabela `manutencao`
--

CREATE TABLE `manutencao` (
  `id` int(11) NOT NULL,
  `Id_Cliente` int(11) NOT NULL,
  `Cliente_Nome` varchar(50) NOT NULL,
  `Equipamento` varchar(50) NOT NULL,
  `Defeito` varchar(50) NOT NULL,
  `Reposicao` varchar(50) NOT NULL,
  `Descricao` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `manutencao`
--

INSERT INTO `manutencao` (`id`, `Id_Cliente`, `Cliente_Nome`, `Equipamento`, `Defeito`, `Reposicao`, `Descricao`) VALUES
(1, 6, 'vinicius de moraes', 'Celular Samsung', 'Touch', 'Tela Touch', 'Trocar o touch pois não esta mais Funcionando'),
(3, 3, 'Professor Tiburcio', 'Desktop', 'Placa Mae Queimada', 'Placa Mae', 'Placa Mãe Queimada com Raio!'),
(4, 11, 'Almir Camolesi', 'Headset', 'Falante', 'Falando Direito', 'O auto falante do lado direito esta queimado, trouxe para troca. Headset - Razer Kraken 7.1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `Id_Fornecedor` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Marca` varchar(40) NOT NULL,
  `Fornecedor` varchar(50) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `Valor` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `Id_Fornecedor`, `Nome`, `Marca`, `Fornecedor`, `Quantidade`, `Valor`) VALUES
(1, 3, 'Notebook', 'Latitude e3410', 'Dell 1', 5, '2899.90'),
(2, 1, 'Tablet', 'Tab A', 'Samsung 2', 5, '899.99'),
(3, 4, 'Headset Kraken 7.1 Chroma', 'Razer', 'Razer', 10, 'R$800.90');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manutencao`
--
ALTER TABLE `manutencao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Id_Cliente` (`Id_Cliente`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Id_Fornecedor` (`Id_Fornecedor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `manutencao`
--
ALTER TABLE `manutencao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `manutencao`
--
ALTER TABLE `manutencao`
  ADD CONSTRAINT `Id_Cliente_Fk` FOREIGN KEY (`Id_Cliente`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `Id_Fornecedor_Fk` FOREIGN KEY (`Id_Fornecedor`) REFERENCES `fornecedor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
