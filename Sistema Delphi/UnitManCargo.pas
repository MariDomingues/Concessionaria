unit UnitManCargo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrm_Man_Cargo = class(TForm)
    DBG_Car: TDBGrid;
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
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Man_Cargo: TFrm_Man_Cargo;
  Acao : char;

implementation

{$R *.dfm}

uses UnitDM, UnitCadCargo, UnitRelCargo;

procedure TFrm_Man_Cargo.btn_AlterarClick(Sender: TObject);
begin
  DM.ADODS_Cargo.Edit;

  Application.CreateForm(TFrmCadCargo, FrmCadCargo);

  FrmCadCargo.btn_Salvar.Enabled   := True;
  FrmCadCargo.btn_Cancelar.Enabled := True;
  FrmCadCargo.btn_Sair.Enabled     := False;
  FrmCadCargo.Pn1Ficha.Enabled     := True;

  Acao := 'A';

  FrmCadCargo.ShowModal;
  FrmCadCargo.Free;
end;

procedure TFrm_Man_Cargo.btn_ExcluirClick(Sender: TObject);
var confExc : integer;
begin
  if DM.ADODS_Cargo.RecordCount = 0 then
    begin
      Application.MessageBox('N�o h� nada para ser exclu�do.', 'Informa��o', MB_OK + MB_ICONERROR);
      Abort;
    end;

  DM.ADODS_Funcionario.Close;
  DM.ADODS_Funcionario.CommandText := '';
  DM.ADODS_Funcionario.CommandText := 'select * from Funcionario';
  DM.ADODS_Funcionario.Open;

  if DM.ADODS_Funcionario.Locate('Cargo', IntToStr(DM.ADODS_CargoCodigo.AsInteger), [loCaseInsensitive, loPartialKey]) then
    begin
      Application.MessageBox('Cargo associado � um funcion�rio. N�o � poss�vel excluir.', 'Informa��o', MB_OK + MB_ICONERROR);
      Abort;
    end;

  confExc := Application.MessageBox('Confirma a exclus�o deste registro?', 'Aten��o', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);

  if confExc = IDYES then
    begin
      DM.ADODS_Cargo.Delete;
      Application.MessageBox('O registro foi excluido com sucesso!', 'Informa��o', MB_OK + MB_ICONINFORMATION);
    end
  else
    Application.MessageBox('A exclus�o do registro foi cancelada', 'Informa��o', MB_OK + MB_ICONERROR);

  FrmCadCargo.btn_Salvar.Enabled   := True;
  FrmCadCargo.btn_Cancelar.Enabled := True;
  FrmCadCargo.btn_Sair.Enabled     := False;
  FrmCadCargo.Pn1Ficha.Enabled     := True;
end;

procedure TFrm_Man_Cargo.btn_ImprimirClick(Sender: TObject);
begin
  Application.CreateForm(TFormRelCar, FormRelCar);
  FormRelCar.ShowModal;
  FormRelCar.Free;
end;

procedure TFrm_Man_Cargo.btn_InserirClick(Sender: TObject);
begin
  Acao := 'I';

  DM.ADODS_Cargo.Insert;
  Application.CreateForm(TFrmCadCargo, FrmCadCargo);
  FrmCadCargo.btn_Salvar.Enabled   := True;
  FrmCadCargo.btn_Cancelar.Enabled := True;
  FrmCadCargo.btn_Sair.Enabled     := False;
  FrmCadCargo.Pn1Ficha.Enabled     := True;
  FrmCadCargo.ShowModal;
end;

procedure TFrm_Man_Cargo.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Man_Cargo.Edit1Change(Sender: TObject);
begin
  DM.ADODS_Cargo.Locate('Descricao', Edit1.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFrm_Man_Cargo.FormActivate(Sender: TObject);
begin
  DM.ADODS_Cargo.Close;
  DM.ADODS_Cargo.CommandText := '';
  DM.ADODS_Cargo.CommandText := 'select * from Cargo order by Codigo';
  DM.ADODS_Cargo.Open;
end;

end.
