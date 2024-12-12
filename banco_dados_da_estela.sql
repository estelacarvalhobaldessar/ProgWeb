-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/12/2024 às 19:30
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco_dados_da_estela`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` text NOT NULL,
  `data_nascimento` date NOT NULL,
  `data_atualizacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `endereco`, `data_nascimento`, `data_atualizacao`) VALUES
(1, 'Estela De Carvalho', 'ec@b.com', '123456', '', '0000-00-00', '2024-12-10 19:18:03'),
(2, 'Fabiana Melo', 'fabi@m.com', '51 67740935', 'Rua das Palmeiras, 154', '2024-10-16', '2024-12-10 19:44:07'),
(24, 'Ana Souza', 'ana.souza@email.com', '(11) 91234-5678', 'Rua das Flores, 45, São Paulo, SP', '1990-03-12', '2024-12-10 20:08:47'),
(25, 'Carlos Silva', 'carlos.silva@email.com', '(11) 98765-4321', 'Av. Paulista, 1000, São Paulo, SP', '1985-07-25', '2024-12-10 20:08:47'),
(26, 'Beatriz Lima', 'beatriz.lima@email.com', '(21) 93456-7890', 'Rua Santa Clara, 301, Rio de Janeiro, RJ', '1992-05-02', '2024-12-10 20:08:47'),
(27, 'Lucas Costa', 'lucas.costa@email.com', '(31) 99876-1234', '', '0000-00-00', '2024-12-10 20:10:54'),
(28, 'Juliana Pereira', 'juliana.pereira@email.com', '(41) 98765-4321', 'Av. Rio Branco, 1234, Curitiba, PR', '1994-06-30', '2024-12-10 20:08:47'),
(29, 'Felipe Martins', 'felipe.martins@email.com', '(71) 91234-5678', 'Rua das Palmeiras, 100, Salvador, BA', '1990-02-15', '2024-12-10 20:08:47'),
(30, 'Mariana Oliveira', 'mariana.oliveira@email.com', '(21) 99876-5432', 'Rua Maracanã, 900, Rio de Janeiro, RJ', '1986-08-28', '2024-12-10 20:08:47'),
(31, 'Ricardo Almeida', 'ricardo.almeida@email.com', '(85) 93456-7890', 'Rua dos Três Irmãos, 55, Fortaleza, CE', '1989-04-11', '2024-12-10 20:08:47'),
(32, 'Camila Rodrigues', 'camila.rodrigues@email.com', '(81) 99876-1234', 'Rua Beira-Mar, 500, Recife, PE', '1993-10-17', '2024-12-10 20:08:47'),
(33, 'Eduardo Nascimento', 'eduardo.nascimento@email.com', '(51) 98765-4321', 'Av. Brasil, 1010, Porto Alegre, RS', '1987-09-20', '2024-12-10 20:08:47'),
(34, 'Renata Souza', 'renata.souza@email.com', '(11) 93456-7890', 'Rua Nova, 455, São Paulo, SP', '1995-01-04', '2024-12-10 20:08:47'),
(35, 'Pedro Lima', 'pedro.lima@email.com', '(92) 91234-5678', 'Rua dos Cedros, 1001, Manaus, AM', '1991-02-21', '2024-12-10 20:08:47'),
(36, 'Julio César Silva', 'julio.silva@email.com', '(11) 99876-1234', 'Av. dos Estados, 200, São Paulo, SP', '1984-06-18', '2024-12-10 20:08:47'),
(37, 'Isabela Alves', 'isabela.alves@email.com', '(19) 91234-5678', 'Rua do Sol, 303, Campinas, SP', '1992-09-06', '2024-12-10 20:08:47'),
(38, 'Daniela Fernandes', 'daniela.fernandes@email.com', '(61) 93456-7890', 'Rua das Acácias, 500, Brasília, DF', '1987-12-24', '2024-12-10 20:08:47'),
(39, 'Vitor Barbosa', 'vitor.barbosa@email.com', '(98) 99876-5432', 'Rua do Comércio, 123, São Luís, MA', '1990-03-22', '2024-12-10 20:08:47'),
(40, 'Tatiane Costa', 'tatiane.costa@email.com', '(62) 91234-5678', 'Av. dos Andorinhas, 302, Goiânia, GO', '1994-11-08', '2024-12-10 20:08:47'),
(41, 'Gustavo Rocha', 'gustavo.rocha@email.com', '(84) 98765-4321', 'Rua das Margaridas, 400, Natal, RN', '1983-05-13', '2024-12-10 20:08:47'),
(42, 'Fernanda Ribeiro', 'fernanda.ribeiro@email.com', '(21) 91234-5678', 'Rua São João, 700, Rio de Janeiro, RJ', '1992-12-14', '2024-12-10 20:08:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `login`
--

INSERT INTO `login` (`id`, `nome`, `email`, `senha`, `data`) VALUES
(1, 'Estela Baldessare', 'ece@b.com                                        ', '81dc9bdb52d04dc20036dbd8313ed055', '2024-11-29 17:16:29'),
(2, 'angela', 'angela@b.com', '81dc9bdb52d04dc20036dbd8313ed055', '2024-11-29 17:19:28'),
(3, 'caio', 'cioba@r.com', '8a13dab3f5ec9e22d0d1495c8c85e436', '2024-11-29 17:20:21'),
(6, 'Estela Baldessar', 'eco@b.com                                                                                ', '81dc9bdb52d04dc20036dbd8313ed055', '2024-12-09 17:47:28'),
(8, 'Carolinda', 'carol@linda.com', '81dc9bdb52d04dc20036dbd8313ed055', '2024-12-10 16:53:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `tamanho` enum('PP','P','M','G','GG','XG') NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `cor` varchar(255) NOT NULL,
  `preco` float NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `tamanho`, `categoria`, `marca`, `cor`, `preco`, `imagem`, `data`) VALUES
(1, 'Estela Baldessar', '', '', '', '', '', 0, '', '2024-12-03 17:34:57'),
(2, 'Vestido Midi Estampado Com Linho - Multicolorido (Marrom)', 'Este vestido midi estampado com linho é a escolha perfeita para quem busca um visual elegante e fresco. Com uma estampa multicolorida que mistura tons vibrantes e contrastantes, o vestido é ideal para ocasiões casuais ou eventos ao ar livre. O tecido de linho confere leveza e frescor, proporcionando conforto durante todo o dia, enquanto o corte midi valoriza a silhueta, com um toque de sofisticação. Possui alças finas e um decote suave, perfeito para os dias mais quentes. A combinação de cores marrom e outros tons da estampa torna este vestido versátil, podendo ser facilmente combinado com acessórios para diferentes estilos.', 'M', 'Vestidos', 'Hering', 'Multicolorido com Cores Marrons', 249.99, '', '2024-12-03 17:34:57'),
(5, 'Pijama Curto Feminino Flamê Com Bordado - Roxo', 'fresco', 'P', 'Pijama Feminino', 'Hering', 'Roxo', 49.99, '', '2024-12-06 18:05:54'),
(9, 'Pijama Curto Feminino Flamê Com Bordado - Rosa', 'fresco', 'P', 'Pijama Feminino', 'Hering', 'Rosa', 49.95, '', '2024-12-06 18:07:34'),
(10, 'Macacão Longo Feminino Alças Médias - Marrom', 'Este macacão longo feminino na cor marrom possui alças médias que proporcionam conforto e um ajuste perfeito. O modelo tem um corte fluido, alongado, e ajusta-se à silhueta feminina com elegância. Versátil e sofisticado, é ideal para diversas ocasiões, oferecendo um visual moderno e atemporal.                                        ', 'M', 'Macacão Feminino', 'Hering', 'Marrom', 259.99, '', '2024-12-06 19:09:04'),
(11, 'Jardineira Jeans Feminina - Azul', 'A jardineira jeans feminina curta na cor azul é uma peça casual e cheia de estilo. Com um corte confortável, ela apresenta alças ajustáveis e um design que valoriza o corpo, oferecendo liberdade de movimento. O modelo é no estilo short, ideal para dias mais quentes, e o tecido jeans de alta qualidade traz um toque de rusticidade. O tom clássico de azul facilita combinações para diferentes ocasiões, tornando-se uma peça versátil e prática no guarda-roupa.                                        ', 'M', 'Jardineira Feminina', 'Hering', 'Azul', 119.99, '', '2024-12-06 19:19:36');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
