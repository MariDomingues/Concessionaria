object FrmCadFabricante: TFrmCadFabricante
  Left = 800
  Top = 415
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro de Fabricante'
  ClientHeight = 404
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
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
      Width = 167
      Height = 21
      Caption = 'Cadastro de Fabricante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
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
    TabOrder = 2
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
      Width = 64
      Height = 13
      Caption = 'Raz'#227'o Social:'
    end
    object Label4: TLabel
      Left = 299
      Top = 57
      Width = 25
      Height = 13
      Caption = 'CNH:'
    end
    object Label5: TLabel
      Left = 46
      Top = 57
      Width = 23
      Height = 13
      Caption = 'CPF:'
    end
    object Label3: TLabel
      Left = 37
      Top = 185
      Width = 32
      Height = 13
      Caption = 'Bairro:'
    end
    object Label6: TLabel
      Left = 32
      Top = 121
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object Label7: TLabel
      Left = 20
      Top = 153
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label8: TLabel
      Left = 301
      Top = 121
      Width = 23
      Height = 13
      Caption = 'CEP:'
    end
    object Label9: TLabel
      Left = 278
      Top = 185
      Width = 46
      Height = 13
      Caption = 'Telefone:'
    end
    object Label10: TLabel
      Left = 41
      Top = 89
      Width = 28
      Height = 13
      Caption = 'Email:'
    end
    object Label11: TLabel
      Left = 12
      Top = 216
      Width = 57
      Height = 13
      Caption = 'Nro. Conta:'
    end
    object Label12: TLabel
      Left = 289
      Top = 216
      Width = 35
      Height = 13
      Caption = 'Status:'
    end
    object DBComboBox1: TDBComboBox
      Left = 330
      Top = 213
      Width = 188
      Height = 21
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
      Height = 21
      DataField = 'Nome'
      DataSource = DM.DS_Cliente
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 75
      Top = 54
      Width = 190
      Height = 21
      DataField = 'CPF'
      DataSource = DM.DS_Cliente
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 328
      Top = 54
      Width = 190
      Height = 21
      DataField = 'CNH'
      DataSource = DM.DS_Cliente
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 75
      Top = 86
      Width = 443
      Height = 21
      DataField = 'Email'
      DataSource = DM.DS_Cliente
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 75
      Top = 118
      Width = 190
      Height = 21
      DataField = 'Cidade'
      DataSource = DM.DS_Cliente
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 328
      Top = 118
      Width = 190
      Height = 21
      DataField = 'CEP'
      DataSource = DM.DS_Cliente
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 75
      Top = 150
      Width = 443
      Height = 21
      DataField = 'Endereco'
      DataSource = DM.DS_Cliente
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 75
      Top = 182
      Width = 190
      Height = 21
      DataField = 'Bairro'
      DataSource = DM.DS_Cliente
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 328
      Top = 182
      Width = 190
      Height = 21
      DataField = 'Telefone'
      DataSource = DM.DS_Cliente
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 78
      Top = 211
      Width = 190
      Height = 21
      DataField = 'NroConta'
      DataSource = DM.DS_Cliente
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 535
      Top = 118
      Width = 36
      Height = 21
      DataField = 'Codigo'
      DataSource = DM.DS_Cliente
      TabOrder = 11
      Visible = False
    end
  end
end
