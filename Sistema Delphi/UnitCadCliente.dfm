object FrmCadCliente: TFrmCadCliente
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o no Cadastro de Cliente'
  ClientHeight = 404
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
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
    ExplicitWidth = 525
    object Label1: TLabel
      Left = 133
      Top = 10
      Width = 294
      Height = 18
      Caption = ' Manuten'#231#227'o no Cadastro de Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Verdana'
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
    ButtonHeight = 40
    ButtonWidth = 43
    Caption = 'ToolBar1'
    DisabledImages = Frm_Man_Cliente.ImageList2
    EdgeBorders = [ebTop, ebBottom]
    HotImages = Frm_Man_Cliente.ImageList3
    Images = Frm_Man_Cliente.ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitWidth = 645
    object bnt_Salvar: TToolButton
      Left = 0
      Top = 0
      Hint = 'Salvar Registro'
      Caption = 'bnt_Salvar'
      ImageIndex = 3
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
    ExplicitLeft = 312
    ExplicitTop = 272
    ExplicitWidth = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 90
    Width = 571
    Height = 295
    Align = alClient
    TabOrder = 3
    ExplicitTop = 96
    ExplicitHeight = 443
    object Label2: TLabel
      Left = 31
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label4: TLabel
      Left = 292
      Top = 64
      Width = 25
      Height = 13
      Caption = 'CNH:'
    end
    object Label5: TLabel
      Left = 39
      Top = 64
      Width = 23
      Height = 13
      Caption = 'CPF:'
    end
    object Label3: TLabel
      Left = 30
      Top = 192
      Width = 32
      Height = 13
      Caption = 'Bairro:'
    end
    object Label6: TLabel
      Left = 25
      Top = 128
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object Label7: TLabel
      Left = 13
      Top = 160
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label8: TLabel
      Left = 294
      Top = 128
      Width = 23
      Height = 13
      Caption = 'CEP:'
    end
    object Label9: TLabel
      Left = 271
      Top = 192
      Width = 46
      Height = 21
      Caption = 'Telefone:'
    end
    object Label10: TLabel
      Left = 34
      Top = 96
      Width = 28
      Height = 13
      Caption = 'Email:'
    end
    object Label11: TLabel
      Left = 5
      Top = 223
      Width = 57
      Height = 13
      Caption = 'Nro. Conta:'
    end
    object Label12: TLabel
      Left = 282
      Top = 223
      Width = 35
      Height = 13
      Caption = 'Status:'
    end
    object DBComboBox1: TDBComboBox
      Left = 323
      Top = 220
      Width = 188
      Height = 21
      Style = csDropDownList
      DataField = 'Status'
      DataSource = DM.DS_Cliente
      Items.Strings = (
        'A'
        'I')
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 68
      Top = 29
      Width = 443
      Height = 21
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 68
      Top = 61
      Width = 190
      Height = 21
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 321
      Top = 61
      Width = 190
      Height = 21
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 68
      Top = 93
      Width = 443
      Height = 21
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 68
      Top = 125
      Width = 190
      Height = 21
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 321
      Top = 125
      Width = 190
      Height = 21
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 68
      Top = 157
      Width = 443
      Height = 21
      TabOrder = 7
    end
    object DBEdit8: TDBEdit
      Left = 68
      Top = 189
      Width = 190
      Height = 21
      TabOrder = 8
    end
    object DBEdit9: TDBEdit
      Left = 321
      Top = 189
      Width = 190
      Height = 21
      TabOrder = 9
    end
    object DBEdit10: TDBEdit
      Left = 68
      Top = 220
      Width = 190
      Height = 21
      TabOrder = 10
    end
  end
end