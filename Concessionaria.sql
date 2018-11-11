USE [Concessionaria]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 10/11/2018 23:08:46 ******/
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
/****** Object:  Table [dbo].[Cliente]    Script Date: 10/11/2018 23:08:46 ******/
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
/****** Object:  Table [dbo].[Combustivel]    Script Date: 10/11/2018 23:08:46 ******/
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
/****** Object:  Table [dbo].[Fabricante]    Script Date: 10/11/2018 23:08:46 ******/
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
/****** Object:  Table [dbo].[Funcionario]    Script Date: 10/11/2018 23:08:46 ******/
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
/****** Object:  Table [dbo].[Login]    Script Date: 10/11/2018 23:08:46 ******/
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
/****** Object:  Table [dbo].[Modelo]    Script Date: 10/11/2018 23:08:46 ******/
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
/****** Object:  Table [dbo].[Veiculo]    Script Date: 10/11/2018 23:08:46 ******/
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
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venda]    Script Date: 10/11/2018 23:08:46 ******/
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
	[Desconto] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venda_Itens]    Script Date: 10/11/2018 23:08:46 ******/
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
INSERT [dbo].[Cargo] ([Codigo], [Descricao], [SalBase], [Status], [Obs]) VALUES (1, N'Vendedor', CAST(1568.74 AS Decimal(9, 2)), N'A', NULL)
INSERT [dbo].[Cargo] ([Codigo], [Descricao], [SalBase], [Status], [Obs]) VALUES (2, N'Gerente', CAST(3513.46 AS Decimal(9, 2)), NULL, NULL)
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF], [CNH], [Endereco], [Cidade], [Bairro], [CEP], [Telefone], [Email], [NroConta], [Status]) VALUES (1, N'João Silva', N'132', N'456', N'Rua 1', N'Piracicaba', N'Bairro 1', N'789', N'19 3434-9897', N'joao@teste.com.br', N'741', N'A')
INSERT [dbo].[Cliente] ([Codigo], [Nome], [CPF], [CNH], [Endereco], [Cidade], [Bairro], [CEP], [Telefone], [Email], [NroConta], [Status]) VALUES (2, N'Matheus Souza', N'6548', N'654651', N'Avenida 1', N'Piracicaba', N'Bairro 2', N'53464', N'584643', N'souzinha@teste.com.br', N'3243', N'A')
INSERT [dbo].[Combustivel] ([Codigo], [Descricao]) VALUES (2, N'Álcool')
INSERT [dbo].[Combustivel] ([Codigo], [Descricao]) VALUES (3, N'Gasolina')
INSERT [dbo].[Fabricante] ([Codigo], [RazaoSocial], [NomeFantasia], [CNPJ], [Pais], [Endereco], [Cidade], [Bairro], [CEP], [Telefone], [Email], [NroConta], [Status]) VALUES (1, N'Teste', N'Testando', N'147', N'Brasil', N'Avenida 1', N'Piracicaba', N'Bairro', N'123', N'321', N'Fab@teste.com.br', N'852', N'A')
INSERT [dbo].[Funcionario] ([Codigo], [Nome], [CPF], [Endereco], [Cidade], [Bairro], [CEP], [Telefone], [NroConta], [Cargo], [Status]) VALUES (1, N'Geovana', N'231.321.313-21', N'Av 1', N'Piracicaba', N'Bairro 2', N'22313-212', N'(022)1212-1212', N'212121', 1, N'A')
INSERT [dbo].[Funcionario] ([Codigo], [Nome], [CPF], [Endereco], [Cidade], [Bairro], [CEP], [Telefone], [NroConta], [Cargo], [Status]) VALUES (2, N'João', N'321.321.321-32', N'Rua 1', N'Rio das Pedras', N'Bairro 3', N'21313-213', N'(213)2132-1321', N'5645', 1, N'A')
INSERT [dbo].[Funcionario] ([Codigo], [Nome], [CPF], [Endereco], [Cidade], [Bairro], [CEP], [Telefone], [NroConta], [Cargo], [Status]) VALUES (3, N'Pedro', N'211.212.313-21', N'321', N'3514', N'321321', N'32143-213', N'(321)3212-3121', N'32132132', 2, N'A')
INSERT [dbo].[Login] ([Codigo], [Usuario], [Senha], [Funcionario], [Status]) VALUES (1, N'adm', N'1', NULL, N'A')
INSERT [dbo].[Modelo] ([Codigo], [Descricao], [Obs], [Status]) VALUES (1, N'Prisma', N'Testando', N'A')
INSERT [dbo].[Veiculo] ([Codigo], [Cliente], [Fabricante], [Modelo], [Combustivel], [Valor], [Cor], [Km], [Status], [Docum], [Placa], [Ano]) VALUES (1, 1, 1, 1, 2, CAST(582.45 AS Decimal(9, 2)), N'amarelo', CAST(152.000 AS Decimal(9, 3)), N'V', N'S', N'AAA-2424', 3213)
INSERT [dbo].[Veiculo] ([Codigo], [Cliente], [Fabricante], [Modelo], [Combustivel], [Valor], [Cor], [Km], [Status], [Docum], [Placa], [Ano]) VALUES (2, 2, 1, 1, 3, CAST(231231.00 AS Decimal(9, 2)), N'31231', CAST(32458.000 AS Decimal(9, 3)), N'V', N'S', N'EEE-0402', 5613)
INSERT [dbo].[Venda] ([Codigo], [Cliente], [Funcionario], [DtVen], [ValTotal], [QtdParcela], [Desconto]) VALUES (1, 1, 3, CAST(N'2018-11-03 00:00:00.000' AS DateTime), CAST(10551.00 AS Decimal(9, 2)), 1, CAST(50.00 AS Decimal(5, 2)))
INSERT [dbo].[Venda] ([Codigo], [Cliente], [Funcionario], [DtVen], [ValTotal], [QtdParcela], [Desconto]) VALUES (2, 2, 1, CAST(N'2018-11-03 00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Venda_Itens] ([Codigo], [Veiculo], [ValTotVei], [DescUnit]) VALUES (1, 1, CAST(291.22 AS Decimal(9, 2)), CAST(50.00 AS Decimal(5, 2)))
INSERT [dbo].[Venda_Itens] ([Codigo], [Veiculo], [ValTotVei], [DescUnit]) VALUES (1, 2, CAST(20810.79 AS Decimal(9, 2)), CAST(91.00 AS Decimal(5, 2)))
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
