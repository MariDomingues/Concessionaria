USE [Concessionaria]
GO
/****** Object:  Table [dbo].[Ano]    Script Date: 17/11/2018 16:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ano](
	[DtAno] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DtAno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 17/11/2018 16:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cargo](
	[Codigo] [int] NOT NULL,
	[Descricao] [varchar](100) NOT NULL,
	[SalBase] [decimal](9, 2) NOT NULL,
	[Status] [char](1) NULL,
	[Obs] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 17/11/2018 16:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Codigo] [int] NOT NULL,
	[Nome] [varchar](150) NOT NULL,
	[CPF] [varchar](14) NOT NULL,
	[CNH] [varchar](11) NOT NULL,
	[Endereco] [varchar](100) NOT NULL,
	[Cidade] [varchar](50) NOT NULL,
	[Bairro] [varchar](50) NOT NULL,
	[CEP] [varchar](9) NOT NULL,
	[Telefone] [varchar](14) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[NroConta] [varchar](12) NOT NULL,
	[Status] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Combustivel]    Script Date: 17/11/2018 16:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Combustivel](
	[Codigo] [int] NOT NULL,
	[Descricao] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 17/11/2018 16:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fabricante](
	[Codigo] [int] NOT NULL,
	[RazaoSocial] [varchar](150) NOT NULL,
	[NomeFantasia] [varchar](150) NOT NULL,
	[CNPJ] [varchar](18) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
	[Endereco] [varchar](100) NOT NULL,
	[Cidade] [varchar](50) NOT NULL,
	[Bairro] [varchar](50) NOT NULL,
	[CEP] [varchar](9) NOT NULL,
	[Telefone] [varchar](14) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[NroConta] [varchar](12) NOT NULL,
	[Status] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 17/11/2018 16:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcionario](
	[Codigo] [int] NOT NULL,
	[Nome] [varchar](150) NOT NULL,
	[CPF] [varchar](14) NOT NULL,
	[Endereco] [varchar](100) NOT NULL,
	[Cidade] [varchar](50) NOT NULL,
	[Bairro] [varchar](50) NOT NULL,
	[CEP] [varchar](9) NOT NULL,
	[Telefone] [varchar](14) NOT NULL,
	[NroConta] [varchar](12) NOT NULL,
	[Cargo] [int] NOT NULL,
	[Status] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 17/11/2018 16:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[Codigo] [int] NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Senha] [varchar](15) NOT NULL,
	[Funcionario] [int] NULL,
	[Status] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Modelo]    Script Date: 17/11/2018 16:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modelo](
	[Codigo] [int] NOT NULL,
	[Descricao] [varchar](200) NOT NULL,
	[Obs] [varchar](150) NULL,
	[Status] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Veiculo]    Script Date: 17/11/2018 16:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Veiculo](
	[Codigo] [int] NOT NULL,
	[Cliente] [int] NULL,
	[Fabricante] [int] NOT NULL,
	[Modelo] [int] NOT NULL,
	[Combustivel] [int] NOT NULL,
	[Valor] [decimal](9, 2) NOT NULL,
	[Cor] [varchar](25) NOT NULL,
	[Km] [decimal](9, 3) NOT NULL,
	[Status] [char](1) NULL,
	[Docum] [char](1) NULL,
	[Placa] [varchar](8) NOT NULL,
	[Ano] [int] NOT NULL,
	[TpVei] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venda]    Script Date: 17/11/2018 16:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venda](
	[Codigo] [int] NOT NULL,
	[Cliente] [int] NULL,
	[Funcionario] [int] NULL,
	[DtVen] [datetime] NULL,
	[ValTotal] [decimal](9, 2) NULL,
	[QtdParcela] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venda_Itens]    Script Date: 17/11/2018 16:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venda_Itens](
	[Codigo] [int] NOT NULL,
	[Veiculo] [int] NOT NULL,
	[ValTotVei] [decimal](9, 2) NULL,
	[DescUnit] [decimal](5, 2) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD FOREIGN KEY([Cargo])
REFERENCES [dbo].[Cargo] ([Codigo])
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD FOREIGN KEY([Funcionario])
REFERENCES [dbo].[Funcionario] ([Codigo])
GO
ALTER TABLE [dbo].[Veiculo]  WITH CHECK ADD FOREIGN KEY([Cliente])
REFERENCES [dbo].[Cliente] ([Codigo])
GO
ALTER TABLE [dbo].[Veiculo]  WITH CHECK ADD FOREIGN KEY([Combustivel])
REFERENCES [dbo].[Combustivel] ([Codigo])
GO
ALTER TABLE [dbo].[Veiculo]  WITH CHECK ADD FOREIGN KEY([Fabricante])
REFERENCES [dbo].[Fabricante] ([Codigo])
GO
ALTER TABLE [dbo].[Veiculo]  WITH CHECK ADD FOREIGN KEY([Modelo])
REFERENCES [dbo].[Modelo] ([Codigo])
GO
