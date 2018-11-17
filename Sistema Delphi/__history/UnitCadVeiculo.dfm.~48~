object FrmCadVeiculo: TFrmCadVeiculo
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro de Ve'#237'culo'
  ClientHeight = 426
  ClientWidth = 581
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
    Width = 581
    Height = 41
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 216
      Top = 8
      Width = 145
      Height = 21
      Caption = 'Cadastro de Ve'#237'culo'
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
    Top = 90
    Width = 581
    Height = 317
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 49
      Top = 40
      Width = 29
      Height = 13
      Caption = 'Placa:'
    end
    object Label4: TLabel
      Left = 287
      Top = 72
      Width = 38
      Height = 13
      Caption = 'Modelo:'
    end
    object Label5: TLabel
      Left = 301
      Top = 40
      Width = 23
      Height = 13
      Caption = 'Ano:'
    end
    object Label6: TLabel
      Left = 296
      Top = 136
      Width = 28
      Height = 13
      Caption = 'Valor:'
    end
    object Label7: TLabel
      Left = 57
      Top = 136
      Width = 21
      Height = 13
      Caption = 'Cor:'
    end
    object Label8: TLabel
      Left = 266
      Top = 167
      Width = 58
      Height = 13
      Caption = 'Km Rodado:'
    end
    object Label9: TLabel
      Left = 3
      Top = 167
      Width = 75
      Height = 13
      Caption = 'Documenta'#231#227'o:'
    end
    object Label10: TLabel
      Left = 16
      Top = 104
      Width = 62
      Height = 13
      Caption = 'Combust'#237'vel:'
    end
    object Label12: TLabel
      Left = 289
      Top = 199
      Width = 35
      Height = 13
      Caption = 'Status:'
    end
    object Label13: TLabel
      Left = 23
      Top = 72
      Width = 55
      Height = 13
      Caption = 'Fabricante:'
    end
    object Label14: TLabel
      Left = 287
      Top = 104
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object Label3: TLabel
      Left = 18
      Top = 199
      Width = 60
      Height = 13
      Caption = 'Tipo Ve'#237'culo:'
    end
    object DBComboBox1: TDBComboBox
      Left = 330
      Top = 196
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'Status'
      DataSource = DM.DS_Veiculo
      Items.Strings = (
        'Ativo'
        'Vendido'
        'Mec'#226'nico')
      TabOrder = 11
    end
    object DBEdit1: TDBEdit
      Left = 86
      Top = 37
      Width = 94
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Placa'
      DataSource = DM.DS_Veiculo
      TabOrder = 0
      OnExit = DBEdit1Exit
    end
    object DBEdit2: TDBEdit
      Left = 330
      Top = 37
      Width = 62
      Height = 21
      DataField = 'Ano'
      DataSource = DM.DS_Veiculo
      MaxLength = 4
      TabOrder = 1
      OnExit = DBEdit2Exit
    end
    object DBEdit5: TDBEdit
      Left = 330
      Top = 133
      Width = 145
      Height = 21
      DataField = 'Valor'
      DataSource = DM.DS_Veiculo
      TabOrder = 7
      OnExit = DBEdit5Exit
    end
    object DBEdit6: TDBEdit
      Left = 330
      Top = 164
      Width = 145
      Height = 21
      DataField = 'Km'
      DataSource = DM.DS_Veiculo
      TabOrder = 9
      OnExit = DBEdit6Exit
    end
    object DBEdit7: TDBEdit
      Left = 86
      Top = 133
      Width = 145
      Height = 21
      DataField = 'Cor'
      DataSource = DM.DS_Veiculo
      TabOrder = 6
      OnExit = DBEdit7Exit
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 86
      Top = 69
      Width = 145
      Height = 21
      DataField = 'Fabricante'
      DataSource = DM.DS_Veiculo
      KeyField = 'Codigo'
      ListField = 'NomeFantasia'
      ListSource = DS_Fabricante
      TabOrder = 2
      OnExit = DBLookupComboBox1Exit
    end
    object DBEdit11: TDBEdit
      Left = 500
      Top = 118
      Width = 64
      Height = 21
      DataField = 'Codigo'
      DataSource = DM.DS_Veiculo
      TabOrder = 12
      Visible = False
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 330
      Top = 69
      Width = 145
      Height = 21
      DataField = 'Modelo'
      DataSource = DM.DS_Veiculo
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DS_Modelo
      TabOrder = 3
      OnExit = DBLookupComboBox2Exit
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 86
      Top = 101
      Width = 145
      Height = 21
      DataField = 'Combustivel'
      DataSource = DM.DS_Veiculo
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DS_Combustivel
      TabOrder = 4
      OnExit = DBLookupComboBox3Exit
    end
    object DBComboBox3: TDBComboBox
      Left = 86
      Top = 164
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'Docum'
      DataSource = DM.DS_Veiculo
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 8
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 330
      Top = 101
      Width = 145
      Height = 21
      DataField = 'Cliente'
      DataSource = DM.DS_Veiculo
      KeyField = 'Codigo'
      ListField = 'Nome'
      ListSource = DS_Cliente
      TabOrder = 5
      OnExit = DBLookupComboBox4Exit
    end
    object DBComboBox2: TDBComboBox
      Left = 86
      Top = 196
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'TpVei'
      DataSource = DM.DS_Veiculo
      Items.Strings = (
        'Caminh'#227'o'
        'Carro'
        'Carro de luxo'
        'Carreta'
        'Caminhonete'
        'Convers'#237'vel'
        'Jipe'
        'Micro'#244'nibus'
        'Minicarro'
        'Minivan'
        'Motocicleta'
        'Perua'
        'Supercarro'
        'Supermini'
        'Triciclo')
      TabOrder = 10
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 407
    Width = 581
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 41
    Width = 581
    Height = 49
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
  object ADOQRY_Fabricante: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select Codigo, NomeFantasia from Fabricante where Status <> '#39'I'#39)
    Left = 8
    Top = 386
  end
  object DS_Fabricante: TDataSource
    DataSet = ADOQRY_Fabricante
    Left = 64
    Top = 386
  end
  object ADOQRY_CodVei: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select top 1 Codigo from Veiculo order by Codigo desc;')
    Left = 472
    Top = 322
  end
  object DS_CodVei: TDataSource
    DataSet = ADOQRY_CodVei
    Left = 528
    Top = 322
  end
  object DS_Modelo: TDataSource
    DataSet = ADOQRY_Modelo
    Left = 176
    Top = 386
  end
  object ADOQRY_Modelo: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select Codigo, Descricao from Modelo where Status <> '#39'I'#39)
    Left = 136
    Top = 386
  end
  object DS_Cliente: TDataSource
    DataSet = ADOQRY_Cliente
    Left = 296
    Top = 386
  end
  object ADOQRY_Cliente: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Codigo, Nome FROM  Cliente WHERE  Status <> '#39'I'#39';')
    Left = 256
    Top = 386
  end
  object DS_Combustivel: TDataSource
    DataSet = ADOQRY_Combustivel
    Left = 384
    Top = 386
  end
  object ADOQRY_Combustivel: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Codigo, Descricao FROM  Combustivel;')
    Left = 344
    Top = 386
  end
end
