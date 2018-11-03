object FrmCadModelo: TFrmCadModelo
  Left = 280
  Top = 353
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro de Modelo'
  ClientHeight = 414
  ClientWidth = 571
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
    Width = 571
    Height = 41
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 205
      Top = 10
      Width = 150
      Height = 21
      Caption = 'Cadastro de Modelo'
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
    Width = 571
    Height = 305
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 19
      Top = 25
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object Label5: TLabel
      Left = 7
      Top = 57
      Width = 62
      Height = 13
      Caption = 'Observa'#231#227'o:'
    end
    object Label12: TLabel
      Left = 34
      Top = 146
      Width = 35
      Height = 13
      Caption = 'Status:'
    end
    object DBComboBox1: TDBComboBox
      Left = 75
      Top = 143
      Width = 190
      Height = 21
      Style = csDropDownList
      DataField = 'Status'
      DataSource = DM.DS_Modelo
      Items.Strings = (
        'Ativo'
        'Inativo')
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 75
      Top = 22
      Width = 344
      Height = 21
      DataField = 'Descricao'
      DataSource = DM.DS_Modelo
      TabOrder = 0
    end
    object DBEdit11: TDBEdit
      Left = 407
      Top = 174
      Width = 36
      Height = 21
      DataField = 'Codigo'
      DataSource = DM.DS_Modelo
      TabOrder = 3
      Visible = False
    end
    object DBMemo1: TDBMemo
      Left = 75
      Top = 54
      Width = 344
      Height = 75
      DataField = 'Obs'
      DataSource = DM.DS_Modelo
      TabOrder = 1
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 395
    Width = 571
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 41
    Width = 571
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
  object DS_CodMod: TDataSource
    DataSet = ADOQRY_CodMod
    Left = 288
    Top = 322
  end
  object ADOQRY_CodMod: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select top 1 Codigo from Modelo order by Codigo desc;')
    Left = 232
    Top = 322
  end
end
