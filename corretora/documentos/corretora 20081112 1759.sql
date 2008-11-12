-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.51a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema corretora
--

CREATE DATABASE IF NOT EXISTS corretora;
USE corretora;

--
-- Definition of table `imovel`
--

DROP TABLE IF EXISTS `imovel`;
CREATE TABLE `imovel` (
  `imo_id` int(10) unsigned NOT NULL auto_increment,
  `imo_nome` varchar(45) NOT NULL,
  `imo_logradouro` varchar(45) NOT NULL,
  `imo_numero` varchar(45) default NULL,
  `imo_bairro` varchar(45) default NULL,
  `imo_descricao` varchar(600) NOT NULL,
  `pes_is` int(10) unsigned default NULL,
  `imo_latitude` varchar(45) NOT NULL,
  `imo_longitude` varchar(45) NOT NULL,
  `imo_cep` varchar(45) default NULL,
  `imo_cidade` varchar(45) NOT NULL,
  `imo_estado` varchar(45) NOT NULL,
  `imo_complemento` varchar(45) default NULL,
  `imo_pasta` varchar(45) default NULL,
  PRIMARY KEY  (`imo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imovel`
--

/*!40000 ALTER TABLE `imovel` DISABLE KEYS */;
INSERT INTO `imovel` (`imo_id`,`imo_nome`,`imo_logradouro`,`imo_numero`,`imo_bairro`,`imo_descricao`,`pes_is`,`imo_latitude`,`imo_longitude`,`imo_cep`,`imo_cidade`,`imo_estado`,`imo_complemento`,`imo_pasta`) VALUES 
 (1,'Teste','Paraiba','313','Adrianopolis','O Prédio\r\n    * 4 unidades por andar\r\n    * 4 andares\r\n    * Guarita\r\n    * Piscina\r\n    * Portão Eletrônico\r\n    * Quadra Poliesportiva\r\n    * Sala de Ginástica\r\n    * Salão de festas\r\n    * Playground\r\n\r\nO Apartamento\r\n\r\n    * 3 quartos | 1 suíte\r\n    * 1 sala p/ 2 ambientes\r\n    * Área privativa: 73,55 m²\r\n    * 1 banheiro social\r\n    * WC serviço\r\n    * 1 vaga\r\n    * Cozinha',0,'-3.100909','-60.00925','','','','',NULL),
 (2,'IMovel','Rua J Quadra C','1/2008','São José Operário I','Desc',NULL,'30.0000','15.0000','069085-530','Manaus','Amazonas','Conj Senador João Bosco I',NULL),
 (3,'ESPLANADA DOS JARDINS III, IV E V','A MARGEN DA RN','313','NATAL/PARNAMIRIM','O Prédio      * 4 unidades por andar     * 4 andares     * Guarita     * Piscina     * Portão Eletrônico     * Quadra Poliesportiva     * Sala de Ginástica     * Salão de festas     * Playground  O Apartamento      * 3 quartos | 1 suíte     * 1 sala p/ 2 ambientes     * Área privativa: 73,55 m²     * 1 banheiro social     * WC serviço     * 1 vaga     * Cozinha',NULL,'11','111','069085-530','Nova Parnamirim','São Paulo','','Apt01'),
 (4,'','RUA CEL COSTA PINHEIRO','1506  ','Tirol','O Prédio      * 3 unidades por andar     * 15 andares     * Central de Gás     * Estacionamento para visitante     * Guarita     * Piscina     * Salão de festas     * Sistema de Segurança     * Gerador  	    O Apartamento      * 2 quartos | 1 suíte     * 1 sala     * Varanda     * Área privativa: 57,26 m²     * 1 banheiro social     * 1 vaga     * Cozinha  ',NULL,'1232','12321','069085-530','Natal','Amazonas','','Apt03'),
 (5,'Edificio Senador Bernado','RUA CARAPEBA','s/n','Ponta Negra','O Prédio      * 4 unidades por andar     * 19 andares     * Antena Coletiva     * Central de Gás     * Churrasqueira     * Depósito privativo     * Guarita     * Interfone     * Internet     * Piscina  	      O Apartamento      * 2 quartos | 1 suíte     * 1 sala p/ 2 ambientes     * Varanda     * Área privativa: 55,93 m²     * Área total: 1.214,98 m²     * 1 banheiro social     * 1 vaga',NULL,'30.0000','15.0000','069085-530','Natal','Amazonas','','Apt04'),
 (6,'Depois ponho um nome','RUA PRESIDENTE QUARESMA','s/n','Lagoa Seca','O Prédio      * 2 unidades por andar     * 24 andares     * Central de Gás     * Churrasqueira     * Guarita     * Interfone     * Internet     * Piscina     * Quadra Poliesportiva     * Salão de festas  	    Perspectiva com lazer 	 Perspectiva 2  Lazer 1 	 Perspectiva 3',NULL,'30.0000','15.0000','069085-530','Natal','Amazonas','','Apt05');
/*!40000 ALTER TABLE `imovel` ENABLE KEYS */;


--
-- Definition of table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
CREATE TABLE `pessoa` (
  `pes_id` int(10) unsigned NOT NULL auto_increment,
  `pes_nome` varchar(50) NOT NULL,
  `pes_sobre_nome` varchar(45) NOT NULL,
  `pes_email` varchar(45) NOT NULL,
  `pes_telefone` varchar(45) NOT NULL,
  `pes_celular` varchar(45) NOT NULL,
  `pes_login` varchar(45) NOT NULL,
  `pes_senha` varchar(45) NOT NULL,
  `pes_tipo` char(1) NOT NULL,
  `pes_logradouro` varchar(200) NOT NULL,
  `pes_complemento` varchar(200) default NULL,
  `pes_numero` varchar(45) default NULL,
  `pes_bairro` varchar(45) default NULL,
  `pes_cidade` varchar(45) default NULL,
  `pes_estado` varchar(45) default NULL,
  `pes_cep` varchar(45) default NULL,
  PRIMARY KEY  (`pes_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pessoa`
--

/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` (`pes_id`,`pes_nome`,`pes_sobre_nome`,`pes_email`,`pes_telefone`,`pes_celular`,`pes_login`,`pes_senha`,`pes_tipo`,`pes_logradouro`,`pes_complemento`,`pes_numero`,`pes_bairro`,`pes_cidade`,`pes_estado`,`pes_cep`) VALUES 
 (4,'Henrique','Nogueira de Melo','henrique1985@gmail.com','092-3644-1409','092-8807-0866','hmelo','56ee1f30eabd8417190ded174fce0949','0','Rua J Quadra C','Conj Senador João Bosco I','61','São José Operário I','Manaus','Amazonas','069085-530');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
