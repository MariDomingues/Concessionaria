object FrmCadCliente: TFrmCadCliente
  Left = 411
  Top = 231
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro de Cliente'
  ClientHeight = 404
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Yu Gothic UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 571
    Height = 41
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 205
      Top = 8
      Width = 143
      Height = 21
      Caption = 'Cadastro de Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 41
    Width = 571
    Height = 49
    BorderWidth = 1
    ButtonHeight = 46
    ButtonWidth = 52
    Caption = 'ToolBar1'
    DisabledImages = Frm_Man_Cliente.ImageList2
    EdgeBorders = [ebTop, ebBottom]
    HotImages = Frm_Man_Cliente.ImageList3
    Images = Frm_Man_Cliente.ImageList1
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 1
    object btn_Salvar: TToolButton
      Left = 0
      Top = 0
      Hint = 'Salvar Registro'
      Caption = 'Salvar'
      ImageIndex = 3
      OnClick = btn_SalvarClick
    end
    object ToolButton2: TToolButton
      Left = 52
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object btn_Cancelar: TToolButton
      Left = 60
      Top = 0
      Hint = 'Cancelar Registro'
      Caption = 'Cancelar'
      ImageIndex = 4
      OnClick = btn_CancelarClick
    end
    object ToolButton4: TToolButton
      Left = 112
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object btn_Sair: TToolButton
      Left = 120
      Top = 0
      Hint = 'Sair'
      Caption = 'Sair'
      ImageIndex = 5
      OnClick = btn_SairClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 385
    Width = 571
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object Pn1Ficha: TPanel
    Left = 0
    Top = 90
    Width = 571
    Height = 295
    Align = alClient
    TabOrder = 3
    object Label2: TLabel
      Left = 38
      Top = 25
      Width = 35
      Height = 15
      Caption = 'Nome:'
    end
    object Label4: TLabel
      Left = 299
      Top = 57
      Width = 28
      Height = 15
      Caption = 'CNH:'
    end
    object Label5: TLabel
      Left = 46
      Top = 57
      Width = 23
      Height = 15
      Caption = 'CPF:'
    end
    object Label3: TLabel
      Left = 37
      Top = 185
      Width = 34
      Height = 15
      Caption = 'Bairro:'
    end
    object Label6: TLabel
      Left = 32
      Top = 121
      Width = 39
      Height = 15
      Caption = 'Cidade:'
    end
    object Label7: TLabel
      Left = 20
      Top = 153
      Width = 52
      Height = 15
      Caption = 'Endere'#231'o:'
    end
    object Label8: TLabel
      Left = 301
      Top = 121
      Width = 23
      Height = 15
      Caption = 'CEP:'
    end
    object Label9: TLabel
      Left = 278
      Top = 185
      Width = 47
      Height = 15
      Caption = 'Telefone:'
    end
    object Label10: TLabel
      Left = 41
      Top = 89
      Width = 31
      Height = 15
      Caption = 'Email:'
    end
    object Label11: TLabel
      Left = 12
      Top = 216
      Width = 60
      Height = 15
      Caption = 'Nro. Conta:'
    end
    object Label12: TLabel
      Left = 289
      Top = 216
      Width = 35
      Height = 15
      Caption = 'Status:'
    end
    object DBComboBox1: TDBComboBox
      Left = 328
      Top = 213
      Width = 190
      Height = 23
      Style = csDropDownList
      DataField = 'Status'
      DataSource = DM.DS_Cliente
      Items.Strings = (
        'Ativo'
        'Inativo')
      TabOrder = 10
    end
    object DBEdit1: TDBEdit
      Left = 75
      Top = 22
      Width = 443
      Height = 23
      DataField = 'Nome'
      DataSource = DM.DS_Cliente
      TabOrder = 0
      OnExit = DBEdit1Exit
    end
    object DBEdit2: TDBEdit
      Left = 75
      Top = 54
      Width = 190
      Height = 23
      DataField = 'CPF'
      DataSource = DM.DS_Cliente
      TabOrder = 1
      OnExit = DBEdit2Exit
    end
    object DBEdit3: TDBEdit
      Left = 328
      Top = 54
      Width = 190
      Height = 23
      DataField = 'CNH'
      DataSource = DM.DS_Cliente
      TabOrder = 2
      OnExit = DBEdit3Exit
    end
    object DBEdit4: TDBEdit
      Left = 75
      Top = 86
      Width = 443
      Height = 23
      DataField = 'Email'
      DataSource = DM.DS_Cliente
      TabOrder = 3
      OnExit = DBEdit4Exit
    end
    object DBEdit5: TDBEdit
      Left = 75
      Top = 118
      Width = 190
      Height = 23
      DataField = 'Cidade'
      DataSource = DM.DS_Cliente
      TabOrder = 4
      OnExit = DBEdit5Exit
    end
    object DBEdit6: TDBEdit
      Left = 328
      Top = 118
      Width = 190
      Height = 23
      DataField = 'CEP'
      DataSource = DM.DS_Cliente
      TabOrder = 5
      OnExit = DBEdit6Exit
    end
    object DBEdit7: TDBEdit
      Left = 75
      Top = 150
      Width = 443
      Height = 23
      DataField = 'Endereco'
      DataSource = DM.DS_Cliente
      TabOrder = 6
      OnExit = DBEdit7Exit
    end
    object DBEdit8: TDBEdit
      Left = 75
      Top = 182
      Width = 190
      Height = 23
      DataField = 'Bairro'
      DataSource = DM.DS_Cliente
      TabOrder = 7
      OnExit = DBEdit8Exit
    end
    object DBEdit9: TDBEdit
      Left = 328
      Top = 182
      Width = 190
      Height = 23
      DataField = 'Telefone'
      DataSource = DM.DS_Cliente
      TabOrder = 8
      OnExit = DBEdit9Exit
    end
    object DBEdit10: TDBEdit
      Left = 75
      Top = 213
      Width = 190
      Height = 23
      DataField = 'NroConta'
      DataSource = DM.DS_Cliente
      TabOrder = 9
      OnExit = DBEdit10Exit
    end
    object DBEdit11: TDBEdit
      Left = 535
      Top = 118
      Width = 36
      Height = 23
      DataField = 'Codigo'
      DataSource = DM.DS_Cliente
      TabOrder = 11
      Visible = False
    end
  end
  object DS_CodCli: TDataSource
    DataSet = ADOQRY_CodCli
    Left = 472
    Top = 338
  end
  object ADOQRY_CodCli: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select top 1 Codigo from Cliente order by Codigo desc;')
    Left = 416
    Top = 338
  end
end
