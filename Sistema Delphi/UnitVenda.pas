unit UnitVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList;

type
  TFrmVenda = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    Panel1: TPanel;
    PnlFicha: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    PnlItens: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    Bbt_Inserir: TBitBtn;
    Bbt_Excluir: TBitBtn;
    Bbt_Confirma: TBitBtn;
    Bbt_Cancelar: TBitBtn;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    Btn_Pesquisar: TToolButton;
    ToolButton2: TToolButton;
    Btn_Primeiro: TToolButton;
    Btn_Anterior: TToolButton;
    Btn_Proximo: TToolButton;
    Btn_Ultimo: TToolButton;
    ToolButton7: TToolButton;
    Btn_Inserir: TToolButton;
    Btn_Alterar: TToolButton;
    Btn_Excluir: TToolButton;
    ToolButton11: TToolButton;
    Btn_Salvar: TToolButton;
    Btn_Cancelar: TToolButton;
    ToolButton15: TToolButton;
    Btn_Imprimir: TToolButton;
    ToolButton16: TToolButton;
    Btn_Sair: TToolButton;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    Label1: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVenda: TFrmVenda;

implementation

{$R *.dfm}

uses UnitDM;

end.
