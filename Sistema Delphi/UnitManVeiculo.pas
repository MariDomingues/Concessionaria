unit UnitManVeiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrm_Man_Veiculo = class(TForm)
    DBG_Vei: TDBGrid;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    btn_Inserir: TToolButton;
    ToolButton2: TToolButton;
    btn_Alterar: TToolButton;
    ToolButton4: TToolButton;
    btn_Excluir: TToolButton;
    ToolButton10: TToolButton;
    btn_Imprimir: TToolButton;
    ToolButton12: TToolButton;
    btn_Sair: TToolButton;
    procedure btn_InserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Man_Veiculo: TFrm_Man_Veiculo;

implementation

{$R *.dfm}

uses UnitDM, UnitCadVeiculo;

procedure TFrm_Man_Veiculo.btn_InserirClick(Sender: TObject);
begin
  Acao := 'I';

  DM.ADODS_Cliente.Insert;
  FrmCadCliente.btn_Salvar.Enabled   := True;
  FrmCadCliente.btn_Cancelar.Enabled := True;
  FrmCadCliente.btn_Sair.Enabled     := False;
  FrmCadCliente.Pn1Ficha.Enabled     := True;
  FrmCadCliente.ShowModal;
end;

end.
