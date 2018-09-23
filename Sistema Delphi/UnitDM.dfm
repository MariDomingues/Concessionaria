object DM: TDM
  OldCreateOrder = False
  Height = 398
  Width = 534
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Concessionaria;Data Source=PCZ'#195'O\PCZ'#195'O'
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
end
