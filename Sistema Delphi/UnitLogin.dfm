object Frm_Login: TFrm_Login
  Left = 560
  Top = 208
  Align = alClient
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Login - Concession'#225'ria'
  ClientHeight = 652
  ClientWidth = 1487
  Color = clMenu
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 738
    Top = 359
    Width = 482
    Height = 217
    Align = alCustom
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 56
      Width = 60
      Height = 16
      Caption = 'Usu'#225'rio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 34
      Top = 87
      Width = 50
      Height = 16
      Caption = 'Senha:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 128
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Entrar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 320
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 90
      Top = 53
      Width = 359
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 90
      Top = 84
      Width = 359
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
  end
  object ADOQRY_Login: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Usu'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Sen'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from Login where (Usuario = :Usu) and (Senha = :Sen) an' +
        'd Status <> '#39'I'#39';')
    Left = 48
    Top = 34
    object ADOQRY_LoginCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ADOQRY_LoginUsuario: TStringField
      FieldName = 'Usuario'
      Size = 50
    end
    object ADOQRY_LoginSenha: TStringField
      FieldName = 'Senha'
      Size = 15
    end
  end
  object DS_Login: TDataSource
    DataSet = ADOQRY_Login
    Left = 104
    Top = 34
  end
end
