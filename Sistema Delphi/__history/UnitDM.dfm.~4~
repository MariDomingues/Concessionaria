object DM: TDM
  OldCreateOrder = False
  Height = 398
  Width = 534
  object ADOConnection1: TADOConnection
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
    Left = 112
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
    Left = 120
    Top = 16
  end
  object DS_Veiculo: TDataSource
    DataSet = ADODS_Veiculo
    Left = 112
    Top = 144
  end
end
