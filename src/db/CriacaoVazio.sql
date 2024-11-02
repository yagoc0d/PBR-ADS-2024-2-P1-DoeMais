-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`usuario` ;

CREATE TABLE IF NOT EXISTS `mydb`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `senha` VARCHAR(200) NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`parceiro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`parceiro` ;

CREATE TABLE IF NOT EXISTS `mydb`.`parceiro` (
  `idParceiro` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `cnpj` VARCHAR(18) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `senha` VARCHAR(200) NULL,
  `tipo` VARCHAR(45) NULL,
  `endereco` VARCHAR(100) NULL,
  `razaoSocial` VARCHAR(45) NULL,
  PRIMARY KEY (`idParceiro`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`pedidoDoacao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`pedidoDoacao` ;

CREATE TABLE IF NOT EXISTS `mydb`.`pedidoDoacao` (
  `idPedidoDoacao` INT NOT NULL AUTO_INCREMENT,
  `usuario_idusuario` INT NOT NULL,
  `parceiro_idParceiro` INT NOT NULL,
  `dataPedido` DATE NOT NULL,
  `dataAceite` DATE NULL,
  `dataEntregue` DATE NULL,
  PRIMARY KEY (`idPedidoDoacao`),
  INDEX `fk_pedidoDoacao_usuario1_idx` (`usuario_idusuario` ASC) VISIBLE,
  INDEX `fk_pedidoDoacao_parceiro1_idx` (`parceiro_idParceiro` ASC) VISIBLE,
  CONSTRAINT `fk_pedidoDoacao_usuario1`
    FOREIGN KEY (`usuario_idusuario`)
    REFERENCES `mydb`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedidoDoacao_parceiro1`
    FOREIGN KEY (`parceiro_idParceiro`)
    REFERENCES `mydb`.`parceiro` (`idParceiro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sacolaDoacao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`sacolaDoacao` ;

CREATE TABLE IF NOT EXISTS `mydb`.`sacolaDoacao` (
  `idSacolaDoacao` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(400) NULL,
  `nome` VARCHAR(20) NULL,
  `pedidoDoacao_idPedidoDoacao` INT NULL,
  PRIMARY KEY (`idSacolaDoacao`),
  INDEX `fk_sacolaDoacao_pedidoDoacao1_idx` (`pedidoDoacao_idPedidoDoacao` ASC) VISIBLE,
  CONSTRAINT `fk_sacolaDoacao_pedidoDoacao1`
    FOREIGN KEY (`pedidoDoacao_idPedidoDoacao`)
    REFERENCES `mydb`.`pedidoDoacao` (`idPedidoDoacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`solicitacaoCadastro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`solicitacaoCadastro` ;

CREATE TABLE IF NOT EXISTS `mydb`.`solicitacaoCadastro` (
  `idsolicitacaoCadastro` INT NOT NULL AUTO_INCREMENT,
  `revisaoAprovada` TINYINT NULL DEFAULT 0,
  `dataSolicitacao` DATE NULL,
  `dataAprovacao` DATE NULL,
  `parceiro_idParceiro` INT NULL,
  PRIMARY KEY (`idsolicitacaoCadastro`),
  INDEX `fk_solicitacaoCadastro_parceiro_idx` (`parceiro_idParceiro` ASC) VISIBLE,
  CONSTRAINT `fk_solicitacaoCadastro_parceiro`
    FOREIGN KEY (`parceiro_idParceiro`)
    REFERENCES `mydb`.`parceiro` (`idParceiro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`feedback`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`feedback` ;

CREATE TABLE IF NOT EXISTS `mydb`.`feedback` (
  `idFeedback` INT NOT NULL AUTO_INCREMENT,
  `usuario_idusuario` INT NOT NULL,
  `pedidoDoacao_idPedidoDoacao` INT NOT NULL,
  `nota` SMALLINT NULL DEFAULT 5,
  `comentario` VARCHAR(100) NULL,
  PRIMARY KEY (`idFeedback`),
  INDEX `fk_feedback_pedidoDoacao1_idx` (`pedidoDoacao_idPedidoDoacao` ASC) VISIBLE,
  INDEX `fk_feedback_usuario1_idx` (`usuario_idusuario` ASC) VISIBLE,
  CONSTRAINT `fk_feedback_pedidoDoacao1`
    FOREIGN KEY (`pedidoDoacao_idPedidoDoacao`)
    REFERENCES `mydb`.`pedidoDoacao` (`idPedidoDoacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_feedback_usuario1`
    FOREIGN KEY (`usuario_idusuario`)
    REFERENCES `mydb`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
