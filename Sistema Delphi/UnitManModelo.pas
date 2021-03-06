unit UnitManModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB;

type
  TFrm_Man_Modelo = class(TForm)
    DBG_Mod: TDBGrid;
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
    ADOQuery1: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure btn_InserirClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Man_Modelo: TFrm_Man_Modelo;
  Acao : char;

implementation

{$R *.dfm}

uses UnitDM, UnitCadModelo, UnitRelModelo;

procedure TFrm_Man_Modelo.btn_AlterarClick(Sender: TObject);
begin
  DM.ADODS_Modelo.Edit;

  Application.CreateForm(TFrmCadModelo, FrmCadModelo);

  FrmCadModelo.btn_Salvar.Enabled   := True;
  FrmCadModelo.btn_Cancelar.Enabled := True;
  FrmCadModelo.btn_Sair.Enabled     := False;
  FrmCadModelo.Pn1Ficha.Enabled     := True;

  Acao := 'A';

  FrmCadModelo.ShowModal;
  FrmCadModelo.Free;
end;

procedure TFrm_Man_Modelo.btn_ExcluirClick(Sender: TObject);
var confExc : integer;
begin
  if DM.ADODS_Modelo.RecordCount = 0 then
    begin
      Application.MessageBox('N�o h� nada para ser exclu�do.', 'Informa��o', MB_OK + MB_ICONERROR);
      Abort;
    end;

  DM.ADODS_Veiculo.Close;
  DM.ADODS_Veiculo.CommandText := '';
  DM.ADODS_Veiculo.CommandText := 'select * from Veiculo';
  DM.ADODS_Veiculo.Open;

  if DM.ADODS_Veiculo.Locate('Modelo', IntToStr(DM.ADODS_ModeloCodigo.AsInteger), [loCaseInsensitive, loPartialKey]) then
    begin
      Application.MessageBox('Modelo associado � um ve�culo. N�o � poss�vel excluir.', 'Informa��o', MB_OK + MB_ICONERROR);
      Abort;
    end;

  confExc := Application.MessageBox('Confirma a exclus�o deste registro?', 'Aten��o', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);

  if confExc = IDYES then
    begin
      DM.ADODS_Modelo.Delete;
      Application.MessageBox('O registro foi excluido com sucesso!', 'Informa��o', MB_OK + MB_ICONINFORMATION);
    end
  else
    Application.MessageBox('A exclus�o do registro foi cancelada', 'Informa��o', MB_OK + MB_ICONERROR);

  FrmCadModelo.btn_Salvar.Enabled   := True;
  FrmCadModelo.btn_Cancelar.Enabled := True;
  FrmCadModelo.btn_Sair.Enabled     := False;
  FrmCadModelo.Pn1Ficha.Enabled     := True;
end;

procedure TFrm_Man_Modelo.btn_ImprimirClick(Sender: TObject);
begin
  Application.CreateForm(TFormRelMod, FormRelMod);
  FormRelMod.ShowModal;
  FormRelMod.Free;
end;

procedure TFrm_Man_Modelo.btn_InserirClick(Sender: TObject);
begin
  Acao := 'I';

  DM.ADODS_Modelo.Insert;
  Application.CreateForm(TFrmCadModelo, FrmCadModelo);
  FrmCadModelo.btn_Salvar.Enabled   := True;
  FrmCadModelo.btn_Cancelar.Enabled := True;
  FrmCadModelo.btn_Sair.Enabled     := False;
  FrmCadModelo.Pn1Ficha.Enabled     := True;
  FrmCadModelo.ShowModal;
end;

procedure TFrm_Man_Modelo.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Man_Modelo.Edit1Change(Sender: TObject);
begin
  DM.ADODS_Modelo.Locate('Descricao', Edit1.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFrm_Man_Modelo.FormActivate(Sender: TObject);
begin
  DM.ADODS_Modelo.Close;
  DM.ADODS_Modelo.CommandText := '';
  DM.ADODS_Modelo.CommandText := 'select * from Modelo order by Codigo';
  DM.ADODS_Modelo.Open;
end;

end.

