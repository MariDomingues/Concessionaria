object DM: TDM
  OldCreateOrder = False
  Height = 800
  Width = 534
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Concessionaria;Data Source=PCZ'#195'O\PCZ'#195'O;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 16
  end
  object ADODS_Cliente: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'Select * from Cliente'
    Parameters = <>
    Left = 40
    Top = 72
    object ADODS_ClienteCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ADODS_ClienteVeiculo: TIntegerField
      FieldName = 'Veiculo'
    end
    object ADODS_ClienteNome: TStringField
      FieldName = 'Nome'
      Size = 150
    end
    object ADODS_ClienteCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object ADODS_ClienteCNH: TStringField
      FieldName = 'CNH'
      Size = 11
    end
    object ADODS_ClienteEndereco: TStringField
      FieldName = 'Endereco'
      Size = 100
    end
    object ADODS_ClienteCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object ADODS_ClienteBairro: TStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object ADODS_ClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object ADODS_ClienteTelefone: TStringField
      FieldName = 'Telefone'
      Size = 14
    end
    object ADODS_ClienteEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object ADODS_ClienteNroConta: TStringField
      FieldName = 'NroConta'
      Size = 12
    end
    object ADODS_ClienteStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
  end
  object DS_Cliente: TDataSource
    DataSet = ADODS_Cliente
    Left = 157
    Top = 72
  end
  object ADODS_Veiculo: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Veiculo'#13#10
    Parameters = <>
    Left = 40
    Top = 144
    object ADODS_VeiculoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ADODS_VeiculoFabricante: TIntegerField
      FieldName = 'Fabricante'
    end
    object ADODS_VeiculoModelo: TIntegerField
      FieldName = 'Modelo'
    end
    object ADODS_VeiculoCombustivel: TIntegerField
      FieldName = 'Combustivel'
    end
    object ADODS_VeiculoPlaca: TStringField
      FieldName = 'Placa'
      Size = 8
    end
    object ADODS_VeiculoAno: TWideStringField
      FieldName = 'Ano'
      Size = 10
    end
    object ADODS_VeiculoValor: TBCDField
      FieldName = 'Valor'
      Precision = 9
      Size = 2
    end
    object ADODS_VeiculoCor: TStringField
      FieldName = 'Cor'
      Size = 25
    end
    object ADODS_VeiculoKm: TBCDField
      FieldName = 'Km'
      Precision = 9
      Size = 3
    end
    object ADODS_VeiculoZeroKm: TStringField
      FieldName = 'ZeroKm'
      FixedChar = True
      Size = 1
    end
    object ADODS_VeiculoQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object ADODS_VeiculoStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object ADODS_VeiculoDocum: TStringField
      FieldName = 'Docum'
      FixedChar = True
      Size = 1
    end
  end
  object ADOConnection2: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Concessionaria;Data Source=NCC04-14;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 152
    Top = 16
  end
  object DS_Veiculo: TDataSource
    DataSet = ADODS_Veiculo
    Left = 157
    Top = 144
  end
  object DS_Login: TDataSource
    DataSet = ADODS_Login
    Left = 157
    Top = 208
  end
  object ADODS_Login: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Login'#13#10
    Parameters = <>
    Left = 40
    Top = 208
    object ADODS_LoginCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ADODS_LoginUsuario: TStringField
      FieldName = 'Usuario'
      Size = 50
    end
    object ADODS_LoginSenha: TStringField
      FieldName = 'Senha'
      Size = 15
    end
    object ADODS_LoginFuncionario: TIntegerField
      FieldName = 'Funcionario'
    end
    object ADODS_LoginCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object ADODS_LoginStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
  end
  object DS_Combustivel: TDataSource
    DataSet = ADODS_Combustivel
    Left = 157
    Top = 280
  end
  object ADODS_Combustivel: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Combustivel'#13#10
    Parameters = <>
    Left = 40
    Top = 280
    object ADODS_CombustivelCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ADODS_CombustivelDescricao: TStringField
      FieldName = 'Descricao'
      Size = 200
    end
  end
  object DS_Fabricante: TDataSource
    DataSet = ADODS_Fabricante
    Left = 157
    Top = 336
  end
  object ADODS_Fabricante: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Fabricante'#13#10
    Parameters = <>
    Left = 40
    Top = 336
    object ADODS_FabricanteCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ADODS_FabricanteRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Size = 150
    end
    object ADODS_FabricanteNomeFantasia: TStringField
      FieldName = 'NomeFantasia'
      Size = 150
    end
    object ADODS_FabricanteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object ADODS_FabricantePais: TStringField
      FieldName = 'Pais'
      Size = 50
    end
    object ADODS_FabricanteEndereco: TStringField
      FieldName = 'Endereco'
      Size = 100
    end
    object ADODS_FabricanteCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object ADODS_FabricanteBairro: TStringField
      FieldName = 'Bairro'
      Size = 50
    end
    object ADODS_FabricanteCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object ADODS_FabricanteTelefone: TStringField
      FieldName = 'Telefone'
      Size = 14
    end
    object ADODS_FabricanteEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object ADODS_FabricanteNroConta: TStringField
      FieldName = 'NroConta'
      Size = 12
    end
    object ADODS_FabricanteStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
  end
  object DS_Modelo: TDataSource
    DataSet = ADODS_Modelo
    Left = 157
    Top = 400
  end
  object ADODS_Modelo: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select *  from Modelo'#13#10
    Parameters = <>
    Left = 40
    Top = 400
    object ADODS_ModeloCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ADODS_ModeloDescricao: TStringField
      FieldName = 'Descricao'
      Size = 200
    end
    object ADODS_ModeloObs: TStringField
      FieldName = 'Obs'
      Size = 150
    end
    object ADODS_ModeloStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
  end
end
