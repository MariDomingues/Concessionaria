object FrmCadMecanico: TFrmCadMecanico
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro de Mec'#226'nico'
  ClientHeight = 404
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
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
      Top = 8
      Width = 163
      Height = 21
      Caption = 'Cadastro de Mec'#226'nico'
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
    Height = 295
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 38
      Top = 49
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label5: TLabel
      Left = 40
      Top = 81
      Width = 23
      Height = 13
      Caption = 'CPF:'
    end
    object Label3: TLabel
      Left = 37
      Top = 209
      Width = 32
      Height = 13
      Caption = 'Bairro:'
    end
    object Label6: TLabel
      Left = 32
      Top = 145
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object Label7: TLabel
      Left = 20
      Top = 177
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label9: TLabel
      Left = 278
      Top = 209
      Width = 46
      Height = 13
      Caption = 'Telefone:'
    end
    object Label10: TLabel
      Left = 41
      Top = 113
      Width = 28
      Height = 13
      Caption = 'Email:'
    end
    object Label11: TLabel
      Left = 12
      Top = 240
      Width = 57
      Height = 13
      Caption = 'Nro. Conta:'
    end
    object Label12: TLabel
      Left = 289
      Top = 240
      Width = 35
      Height = 13
      Caption = 'Status:'
    end
    object Label4: TLabel
      Left = 19
      Top = 17
      Width = 50
      Height = 13
      Caption = 'Tipo [F/J]:'
    end
    object DBComboBox1: TDBComboBox
      Left = 330
      Top = 237
      Width = 188
      Height = 21
      Style = csDropDownList
      DataField = 'Status'
      DataSource = DM.DS_Mecanico
      Items.Strings = (
        'Ativo'
        'Inativo')
      TabOrder = 9
    end
    object DBEdit1: TDBEdit
      Left = 75
      Top = 46
      Width = 443
      Height = 21
      DataField = 'Nome'
      DataSource = DM.DS_Mecanico
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 75
      Top = 78
      Width = 190
      Height = 21
      DataField = 'CpfCnpj'
      DataSource = DM.DS_Mecanico
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 75
      Top = 110
      Width = 443
      Height = 21
      DataField = 'Email'
      DataSource = DM.DS_Mecanico
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 75
      Top = 142
      Width = 190
      Height = 21
      DataField = 'Cidade'
      DataSource = DM.DS_Mecanico
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 75
      Top = 174
      Width = 443
      Height = 21
      DataField = 'Endere'#231'o'
      DataSource = DM.DS_Mecanico
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 75
      Top = 206
      Width = 190
      Height = 21
      DataField = 'Bairro'
      DataSource = DM.DS_Mecanico
      TabOrder = 6
    end
    object DBEdit9: TDBEdit
      Left = 328
      Top = 206
      Width = 190
      Height = 21
      DataField = 'Telefone'
      DataSource = DM.DS_Mecanico
      TabOrder = 7
    end
    object DBEdit10: TDBEdit
      Left = 75
      Top = 235
      Width = 190
      Height = 21
      DataField = 'NroConta'
      DataSource = DM.DS_Mecanico
      TabOrder = 8
    end
    object DBEdit11: TDBEdit
      Left = 524
      Top = 138
      Width = 36
      Height = 21
      DataField = 'Codigo'
      DataSource = DM.DS_Mecanico
      TabOrder = 10
      Visible = False
    end
    object DBComboBox2: TDBComboBox
      Left = 75
      Top = 14
      Width = 86
      Height = 21
      Style = csDropDownList
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
      TabOrder = 0
      OnExit = DBComboBox2Exit
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 41
    Width = 571
    Height = 49
    BorderWidth = 1
    ButtonHeight = 40
    ButtonWidth = 43
    Caption = 'ToolBar1'
    DisabledImages = Frm_Man_Cliente.ImageList2
    EdgeBorders = [ebTop, ebBottom]
    HotImages = Frm_Man_Cliente.ImageList3
    Images = Frm_Man_Cliente.ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object btn_Salvar: TToolButton
      Left = 0
      Top = 0
      Hint = 'Salvar Registro'
      ParentCustomHint = False
      Caption = 'btn_Salvar'
      ImageIndex = 3
      OnClick = btn_SalvarClick
    end
    object ToolButton2: TToolButton
      Left = 43
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object btn_Cancelar: TToolButton
      Left = 51
      Top = 0
      Hint = 'Cancelar Registro'
      Caption = 'btn_Cancelar'
      ImageIndex = 4
      OnClick = btn_CancelarClick
    end
    object ToolButton4: TToolButton
      Left = 94
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object btn_Sair: TToolButton
      Left = 102
      Top = 0
      Hint = 'Sair'
      Caption = 'btn_Sair'
      ImageIndex = 5
      OnClick = btn_SairClick
    end
  end
  object DS_CodMec: TDataSource
    DataSet = ADOQRY_CodMec
    Left = 472
    Top = 362
  end
  object ADOQRY_CodMec: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select top 1 Codigo from Mecanico order by Codigo desc;')
    Left = 416
    Top = 362
  end
end
