object FrmCadCombustivel: TFrmCadCombustivel
  Left = 560
  Top = 312
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro de Combust'#237'vel'
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
      Left = 193
      Top = 8
      Width = 183
      Height = 21
      Caption = 'Cadastro de Combust'#237'vel'
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
    object DBEdit1: TDBEdit
      Left = 75
      Top = 22
      Width = 344
      Height = 21
      DataField = 'Descricao'
      DataSource = DM.DS_Combustivel
      TabOrder = 0
      OnExit = DBEdit1Exit
    end
    object DBEdit11: TDBEdit
      Left = 447
      Top = 70
      Width = 36
      Height = 21
      DataField = 'Codigo'
      DataSource = DM.DS_Combustivel
      TabOrder = 1
      Visible = False
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
  object DS_CodCom: TDataSource
    DataSet = ADOQRY_CodCom
    Left = 288
    Top = 266
  end
  object ADOQRY_CodCom: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select top 1 Codigo from Combustivel order by Codigo desc;')
    Left = 232
    Top = 266
  end
end
