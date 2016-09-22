-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 22, 2016 at 03:17 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accenture_aula`
--

-- --------------------------------------------------------

--
-- Table structure for table `aluno`
--

CREATE TABLE `aluno` (
  `matricula` int(11) NOT NULL,
  `pessoa_id` int(11) NOT NULL,
  `professor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aluno`
--

INSERT INTO `aluno` (`matricula`, `pessoa_id`, `professor_id`) VALUES
(11030, 2, 2),
(52643, 5, 3),
(74001, 6, 3),
(92281, 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `endereco`
--

CREATE TABLE `endereco` (
  `id` int(11) NOT NULL,
  `logradouro` varchar(200) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `numero` int(11) NOT NULL,
  `cidade` enum('Recife','Olinda','Jaboatão','Paulista','Caruaru','Bezerros','Gravatá','Cabo','Ipojuca','Moreno') NOT NULL,
  `uf` varchar(50) NOT NULL DEFAULT 'Pernambuco',
  `pessoa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `endereco`
--

INSERT INTO `endereco` (`id`, `logradouro`, `bairro`, `numero`, `cidade`, `uf`, `pessoa_id`) VALUES
(3983, '2ª Travessa Damolândia', 'Nova Descoberta', 32, 'Recife', 'Pernambuco', 2),
(4738, 'Rua Central', 'Posto de Saúde', 0, 'Recife', 'Pernambuco', 5),
(8692, 'Rua Fraiburgo', 'Bongi', 720, 'Recife', 'Pernambuco', 8),
(16695, '2ª Travessa Praia Enseadinha', 'Muribeca', 307, 'Jaboatão', 'Pernambuco', 6),
(20134, 'Rua Primeiro de Maio', 'Centro', 110, 'Moreno', 'Pernambuco', 3),
(25064, 'Avenida Belém de Judá', 'COHAB', 956, 'Recife', 'Pernambuco', 1),
(25476, 'Rua Abel Vicente da Silva', 'Núcleo Residencial Ministro Marcos Freire', 846, 'Cabo', 'Pernambuco', 4),
(64414, 'Rua do Bambu', 'Várzea', 357, 'Recife', 'Pernambuco', 7);

-- --------------------------------------------------------

--
-- Table structure for table `meio_comunicacao`
--

CREATE TABLE `meio_comunicacao` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meio_comunicacao`
--

INSERT INTO `meio_comunicacao` (`id`, `descricao`) VALUES
(1, 'Celular'),
(2, 'Tablet'),
(3, 'Browser');

-- --------------------------------------------------------

--
-- Table structure for table `pessoa`
--

CREATE TABLE `pessoa` (
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL DEFAULT '',
  `sexo` enum('Masculino','Feminino','outros') NOT NULL,
  `tipo_pessoa` enum('Aluno','Professor') NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pessoa`
--

INSERT INTO `pessoa` (`nome`, `cpf`, `sexo`, `tipo_pessoa`, `id`) VALUES
('Lindalva Silva', '02886626015', 'Feminino', 'Professor', 1),
('Sirenio Arruda', '13355030058', 'Masculino', 'Aluno', 2),
('Alexandra Almeida', '19254763080', 'Feminino', 'Professor', 3),
('Joao Custodia', '27285843032', 'Masculino', 'Professor', 4),
('Maria das Dores', '28273311015', 'Feminino', 'Aluno', 5),
('Ricardo Nassau', '42080807013', 'Masculino', 'Aluno', 6),
('Rosa Pereira', '75543240040', 'outros', 'Professor', 7),
('Jose Alcantara', '79057607077', 'Masculino', 'Aluno', 8);

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `pessoa_cpf` varchar(14) NOT NULL,
  `instituicao` varchar(255) NOT NULL,
  `data_admissao` varchar(30) NOT NULL,
  `titulacao` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `titulo_titulacao_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`pessoa_cpf`, `instituicao`, `data_admissao`, `titulacao`, `id`, `titulo_titulacao_id`) VALUES
('75543240040', 'UPE', '13/10/2000', 'Doutor', 2, 2),
('27285843032', 'UFPE', '24/03/1999', 'Mestre', 3, 3),
('19254763080', 'UFPE', '20/10/2012', 'Mestre', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `publicacao`
--

CREATE TABLE `publicacao` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `aluno_pessoa_id` int(11) NOT NULL,
  `aluno_professor_id` int(11) NOT NULL,
  `meio_comunicao_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publicacao`
--

INSERT INTO `publicacao` (`id`, `titulo`, `descricao`, `aluno_pessoa_id`, `aluno_professor_id`, `meio_comunicao_id`) VALUES
(1, 'Medico', 'rrewrwrewrrewr', 6, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `telefone`
--

CREATE TABLE `telefone` (
  `id` int(11) NOT NULL,
  `ddd` int(3) NOT NULL,
  `telefone` int(10) NOT NULL,
  `pessoa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `telefone`
--

INSERT INTO `telefone` (`id`, `ddd`, `telefone`, `pessoa_id`) VALUES
(3577, 81, 984266538, 3),
(25033, 81, 976785432, 6),
(26679, 81, 985443354, 7),
(37560, 87, 978877564, 8),
(51384, 81, 34567564, 7),
(57795, 81, 975708678, 3),
(72784, 81, 998786780, 8),
(80778, 81, 34563565, 3);

-- --------------------------------------------------------

--
-- Table structure for table `titulo_titulacao`
--

CREATE TABLE `titulo_titulacao` (
  `id` int(11) NOT NULL,
  `titulo_titulacao` varchar(50) NOT NULL,
  `professor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `titulo_titulacao`
--

INSERT INTO `titulo_titulacao` (`id`, `titulo_titulacao`, `professor_id`) VALUES
(1, 'Especialista', 1),
(2, 'Doutor', 2),
(3, 'Mestre', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`matricula`),
  ADD KEY `id_pessoa` (`pessoa_id`),
  ADD KEY `professor_id` (`professor_id`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pessoa_id` (`pessoa_id`);

--
-- Indexes for table `meio_comunicacao`
--
ALTER TABLE `meio_comunicacao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`cpf`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cpf_pessoa` (`pessoa_cpf`),
  ADD KEY `titulo_titulacao_id` (`titulo_titulacao_id`);

--
-- Indexes for table `publicacao`
--
ALTER TABLE `publicacao`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_professor` (`aluno_professor_id`),
  ADD KEY `matricula_pessoa` (`aluno_pessoa_id`),
  ADD KEY `index_meio` (`meio_comunicao_id`);

--
-- Indexes for table `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pessoa_id` (`pessoa_id`);

--
-- Indexes for table `titulo_titulacao`
--
ALTER TABLE `titulo_titulacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_prof` (`professor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64415;
--
-- AUTO_INCREMENT for table `meio_comunicacao`
--
ALTER TABLE `meio_comunicacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;
--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88889;
--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55556;
--
-- AUTO_INCREMENT for table `publicacao`
--
ALTER TABLE `publicacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `telefone`
--
ALTER TABLE `telefone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80779;
--
-- AUTO_INCREMENT for table `titulo_titulacao`
--
ALTER TABLE `titulo_titulacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
