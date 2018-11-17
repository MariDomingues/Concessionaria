object FrmCadUsuario: TFrmCadUsuario
  Left = 320
  Top = 436
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 305
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 438
    Height = 41
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 149
      Top = 10
      Width = 157
      Height = 19
      Caption = 'Cadastro de Usu'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Pn1Ficha: TPanel
    Left = 0
    Top = 93
    Width = 438
    Height = 193
    Align = alClient
    TabOrder = 1
    ExplicitTop = 90
    ExplicitHeight = 196
    object Label2: TLabel
      Left = 29
      Top = 25
      Width = 40
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object Label5: TLabel
      Left = 35
      Top = 57
      Width = 34
      Height = 13
      Caption = 'Senha:'
    end
    object Label10: TLabel
      Left = 10
      Top = 86
      Width = 59
      Height = 13
      Caption = 'Funcion'#225'rio:'
    end
    object Label12: TLabel
      Left = 34
      Top = 116
      Width = 35
      Height = 13
      Caption = 'Status:'
    end
    object DBComboBox1: TDBComboBox
      Left = 75
      Top = 113
      Width = 190
      Height = 21
      Style = csDropDownList
      DataField = 'Status'
      DataSource = DM.DS_Login
      Items.Strings = (
        'Ativo'
        'Inativo')
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 75
      Top = 22
      Width = 344
      Height = 21
      DataField = 'Usuario'
      DataSource = DM.DS_Login
      TabOrder = 0
      OnExit = DBEdit1Exit
    end
    object DBEdit2: TDBEdit
      Left = 75
      Top = 54
      Width = 190
      Height = 21
      DataField = 'Senha'
      DataSource = DM.DS_Login
      PasswordChar = '*'
      TabOrder = 1
      OnExit = DBEdit2Exit
    end
    object DBEdit11: TDBEdit
      Left = 326
      Top = 83
      Width = 36
      Height = 21
      DataField = 'Codigo'
      DataSource = DM.DS_Login
      TabOrder = 3
      Visible = False
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 75
      Top = 83
      Width = 190
      Height = 21
      DataField = 'Funcionario'
      DataSource = DM.DS_Login
      KeyField = 'Codigo'
      ListField = 'Nome'
      ListSource = DS_Funcionario
      TabOrder = 2
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 286
    Width = 438
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 41
    Width = 438
    Height = 52
    BorderWidth = 1
    ButtonHeight = 44
    ButtonWidth = 49
    Caption = 'ToolBar1'
    DisabledImages = Frm_Man_Cliente.ImageList2
    EdgeBorders = [ebTop, ebBottom]
    HotImages = Frm_Man_Cliente.ImageList3
    Images = Frm_Man_Cliente.ImageList1
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 3
    object btn_Salvar: TToolButton
      Left = 0
      Top = 0
      Hint = 'Salvar Registro'
      ParentCustomHint = False
      Caption = 'Salvar'
      ImageIndex = 3
      OnClick = btn_SalvarClick
    end
    object ToolButton2: TToolButton
      Left = 49
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object btn_Cancelar: TToolButton
      Left = 57
      Top = 0
      Hint = 'Cancelar Registro'
      Caption = 'Cancelar'
      ImageIndex = 4
      OnClick = btn_CancelarClick
    end
    object ToolButton4: TToolButton
      Left = 106
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object btn_Sair: TToolButton
      Left = 114
      Top = 0
      Hint = 'Sair'
      Caption = 'Sair'
      ImageIndex = 5
      OnClick = btn_SairClick
    end
  end
  object DS_CodUsu: TDataSource
    DataSet = ADOQRY_CodUsu
    Left = 280
    Top = 234
  end
  object ADOQRY_CodUsu: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select top 1 Codigo from Login order by Codigo desc;')
    Left = 224
    Top = 234
  end
  object DS_Funcionario: TDataSource
    DataSet = ADOQRY_Funcionario
    Left = 136
    Top = 232
  end
  object ADOQRY_Funcionario: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Codigo, Nome FROM  Funcionario;')
    Left = 96
    Top = 232
  end
end
