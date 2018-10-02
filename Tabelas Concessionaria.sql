CREATE DATABASE Concessionaria;

USE Concessionaria;

CREATE TABLE Cliente (
	Codigo   INT PRIMARY KEY NOT NULL,
	Nome     VARCHAR(150) NOT NULL,
	CPF      VARCHAR(14)  NOT NULL,
	CNH      VARCHAR(11)  NOT NULL,
	Endereco VARCHAR(100) NOT NULL,
	Cidade   VARCHAR(50)  NOT NULL,
	Bairro   VARCHAR(50)  NOT NULL,
	CEP      VARCHAR(09)  NOT NULL,
	Telefone VARCHAR(14)  NOT NULL,
	Email    VARCHAR(100) NOT NULL,
	NroConta VARCHAR(12)  NOT NULL,
	Status   CHAR(01) DEFAULT 'A' COMMENT '0 = Ativo / 1 = Inativo'
);

CREATE TABLE Veiculo (
	Codigo      INT PRIMARY KEY NOT NULL,
	Cliente     INT FOREIGN KEY REFERENCES Cliente(Codigo),
	Fabricante  INT FOREIGN KEY REFERENCES Fabricante(Codigo)  NOT NULL,
	Modelo      INT FOREIGN KEY REFERENCES Modelo(Codigo)      NOT NULL,
	Combustivel INT FOREIGN KEY REFERENCES Combustivel(Codigo) NOT NULL,
	Placa       VARCHAR(08),
	Ano         YEAR         NOT NULL,
	Valor       DECIMAL(9,2) NOT NULL,
	Cor         VARCHAR(25)  NOT NULL,
	Km          DECIMAL(9,3) NOT NULL,
	ZeroKm      CHAR(01) DEFAULT 'S' COMMENT '0 = Sim / 1 = Não',
	Quantidade  INT NOT NULL,
	Status      CHAR(01) DEFAULT 'A' COMMENT '0 = Ativo / 1 = Vendido / 2 = Mecanico',
	Docum       CHAR(01) DEFAULT 'N' COMMENT '0 = Não / 1 = Sim'
);

CREATE TABLE Fabricante (
	Codigo       INT PRIMARY KEY NOT NULL,
	RazaoSocial  VARCHAR(150) NOT NULL,
	NomeFantasia VARCHAR(150) NOT NULL,
	CNPJ         VARCHAR(18)  NOT NULL,
	Pais         VARCHAR(50)  NOT NULL,
	Endereco     VARCHAR(100) NOT NULL,
	Cidade       VARCHAR(50)  NOT NULL,
	Bairro       VARCHAR(50)  NOT NULL,
	CEP          VARCHAR(09)  NOT NULL,
	Telefone     VARCHAR(14)  NOT NULL,
	Email        VARCHAR(100) NOT NULL,
	NroConta     VARCHAR(12)  NOT NULL,
	Status       CHAR(01) DEFAULT 'A' COMMENT '0 = Ativo / 1 = Inativo'
);

CREATE TABLE Pagar (
	Codigo     INT PRIMARY KEY NOT NULL,
	Cliente    INT FOREIGN KEY REFERENCES Cliente(Codigo) NOT NULL,
	Venda      INT FOREIGN KEY REFERENCES Venda(Codigo),
	DtEmi      DATE         NOT NULL,
	DtVen      DATE         NOT NULL,
	ValTotal   DECIMAL(9,2) NOT NULL,
	DtPag      DATE         NOT NULL,
	Desconto   DECIMAL(9,2),
	Juros      DECIMAL(9,2),
	ValPago    DECIMAL(9,2) NOT NULL,
	Status     CHAR(01) DEFAULT 'A' COMMENT '0 = Ativo / 1 = Inativo',
	Obs        VARCHAR(150)	
);

CREATE TABLE Receber (
	Codigo   INT PRIMARY KEY NOT NULL,
	Cliente  INT FOREIGN KEY REFERENCES Cliente(Codigo) NOT NULL,
	Venda    INT FOREIGN KEY REFERENCES Venda(Codigo)   NOT NULL,
	DtRec    DATE         NOT NULL,
	Valor    DECIMAL(9,2) NOT NULL,
	Desconto DECIMAL(9,2),
	Obs      VARCHAR(150)	
);

CREATE TABLE Mecanico(
	Codigo   INT PRIMARY KEY NOT NULL,
	Nome     VARCHAR(150)  NOT NULL,
	CpfCnpj  VARCHAR(18)   NOT NULL,
	Endereço VARCHAR (100) NOT NULL,
	Cidade   VARCHAR (50)  NOT NULL,
	Bairro   VARCHAR (50)  NOT NULL,
	Telefone VARCHAR (13)  NOT NULL,
	NroConta VARCHAR (12)  NOT NULL,
	Email    VARCHAR(100)  NOT NULL,
	Status   CHAR(01) DEFAULT 'A' COMMENT '0 = Ativo / 1 = Inativo'
);

CREATE TABLE OrdemServico (
	Codigo    INT PRIMARY KEY NOT NULL,
	Veiculo   INT FOREIGN KEY REFERENCES Veiculo(Codigo),
	Mecanico  INT FOREIGN KEY REFERENCES Mecanico(Codigo),
	DataIni   DATE NOT NULL,
	DataFin   DATE,
	Descricao VARCHAR (200) NOT NULL,
	Valor     DECIMAL (9,2) NOT NULL,
	Status    CHAR(01) DEFAULT 'L' COMMENT '0 = Lançada / 1 = Aguardando / 2 = Finalizada'
);

CREATE TABLE Cargo (
	Codigo    INT PRIMARY KEY NOT NULL,
	Descricao VARCHAR (100) NOT NULL,
	SalBase   DECIMAL (9,2) NOT NULL,
	Obs       VARCHAR (100) NOT NULL,
	Status    CHAR(01) DEFAULT 'A' COMMENT '0 = Ativo / 1 = Inativo'
);

CREATE TABLE Funcionario (
	Codigo   INT PRIMARY KEY NOT NULL,
	Nome     VARCHAR(150) NOT NULL,
	CPF      VARCHAR(14)  NOT NULL,
	DtNasc   DATE         NOT NULL,
	Endereco VARCHAR(100) NOT NULL,
	Cidade   VARCHAR(50)  NOT NULL,
	Bairro   VARCHAR(50)  NOT NULL,
	CEP      VARCHAR(09)  NOT NULL,
	Telefone VARCHAR(14)  NOT NULL,
	NroConta VARCHAR(12)  NOT NULL,
	Cargo    INT FOREIGN KEY REFERENCES Cargo(Codigo) NOT NULL,
	Status   CHAR(01) DEFAULT 'A' COMMENT '0 = Ativo / 1 = Inativo'
);

CREATE TABLE Venda (
	Codigo     INT PRIMARY KEY NOT NULL,
	Cliente    INT FOREIGN KEY REFERENCES Cliente(Codigo)  NOT NULL,
	Veiculo    INT FOREIGN KEY REFERENCES Veiculo(Codigo)  NOT NULL,
	Funcionario   INT FOREIGN KEY REFERENCES Funcionario(Codigo) NOT NULL,
	DtVen      DATETIME     NOT NULL,
	ValTotal   DECIMAL(9,2) NOT NULL,
	QtdParcela DATE         NOT NULL,
	Juros      DECIMAL(9,2),
	Obs        VARCHAR(150),
	Status     CHAR(01) DEFAULT 'A' COMMENT '0 = Ativo / 1 = Inativo'
);

CREATE TABLE Pedido (
	Codigo      INT PRIMARY KEY NOT NULL,
	Cliente     INT FOREIGN KEY REFERENCES Cliente(Codigo)     NOT NULL,
	Fabricante  INT FOREIGN KEY REFERENCES Fabricante(Codigo)  NOT NULL,
	Funcionario    INT FOREIGN KEY REFERENCES Funcionario(Codigo)    NOT NULL,
	Modelo      INT FOREIGN KEY REFERENCES Modelo(Codigo)      NOT NULL,
	Combustivel INT FOREIGN KEY REFERENCES Combustivel(Codigo) NOT NULL,
	DtPed       DATETIME NOT NULL,
	DtPrev      DATE,
	Obs         VARCHAR(150),
	Status      CHAR(01) DEFAULT 'A' COMMENT '0 = Lançado / 1 = Aguardando / 2 = Finalizado'
);

CREATE TABLE Modelo (
	Codigo    INT PRIMARY KEY NOT NULL,
	Descricao VARCHAR (200) NOT NULL,
	Obs       VARCHAR(150),
	Status    CHAR(01) DEFAULT 'A' COMMENT '0 = Ativo / 1 = Inativo '
);

CREATE TABLE Combustivel (
	Codigo    INT PRIMARY KEY NOT NULL,
	Descricao VARCHAR (200) NOT NULL
);

CREATE TABLE Login (
	Codigo      INT PRIMARY KEY NOT NULL,
	Usuario     VARCHAR(50) NOT NULL,
	Senha       VARCHAR(15) NOT NULL,
	Funcionario INT FOREIGN KEY REFERENCES Funcionario(Codigo),
	Cliente     INT FOREIGN KEY REFERENCES Cliente(Codigo),
	Status      CHAR(01) DEFAULT 0 COMMENT '0 = Ativo / 1 = Inativo '
);