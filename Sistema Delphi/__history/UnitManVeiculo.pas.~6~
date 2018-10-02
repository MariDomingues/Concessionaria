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
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Man_Veiculo: TFrm_Man_Veiculo;
  Acao : char;

implementation

{$R *.dfm}

uses UnitDM, UnitCadVeiculo;

procedure TFrm_Man_Veiculo.btn_AlterarClick(Sender: TObject);
begin
  DM.ADODS_Veiculo.Edit;

  Application.CreateForm(TFrmCadVeiculo, FrmCadVeiculo);

  FrmCadVeiculo.btn_Salvar.Enabled   := True;
  FrmCadVeiculo.btn_Cancelar.Enabled := True;
  FrmCadVeiculo.btn_Sair.Enabled     := False;
  FrmCadVeiculo.Pn1Ficha.Enabled     := True;

  Acao := 'A';

  FrmCadVeiculo.ShowModal;
  FrmCadVeiculo.Free;
end;

procedure TFrm_Man_Veiculo.btn_ExcluirClick(Sender: TObject);
var confExc : integer;
begin
  confExc := Application.MessageBox('Confirma a exclusão deste registro?', 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);

  if confExc = IDYES then
    begin
      DM.ADODS_Veiculo.Delete;
      Application.MessageBox('O registro foi excluido com sucesso!', 'Informação', MB_OK + MB_ICONINFORMATION);
    end
  else
    Application.MessageBox('A exclusão do registro foi cancelada', 'Informação', MB_OK + MB_ICONERROR);

  FrmCadVeiculo.btn_Salvar.Enabled   := True;
  FrmCadVeiculo.btn_Cancelar.Enabled := True;
  FrmCadVeiculo.btn_Sair.Enabled     := False;
  FrmCadVeiculo.Pn1Ficha.Enabled     := True;
  FrmCadVeiculo.ShowModal;
end;

procedure TFrm_Man_Veiculo.btn_InserirClick(Sender: TObject);
begin
  Acao := 'I';

  DM.ADODS_Veiculo.Insert;
  FrmCadVeiculo.btn_Salvar.Enabled   := True;
  FrmCadVeiculo.btn_Cancelar.Enabled := True;
  FrmCadVeiculo.btn_Sair.Enabled     := False;
  FrmCadVeiculo.Pn1Ficha.Enabled     := True;
  FrmCadVeiculo.ShowModal;
end;

procedure TFrm_Man_Veiculo.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Man_Veiculo.FormActivate(Sender: TObject);
begin
  DM.ADODS_Veiculo.Close;
  DM.ADODS_Veiculo.CommandText := '';
  DM.ADODS_Veiculo.CommandText := 'select * from Veiculo';
  DM.ADODS_Veiculo.Open;
end;

end.
