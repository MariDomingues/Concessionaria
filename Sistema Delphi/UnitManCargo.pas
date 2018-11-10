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

uses UnitDM, UnitCadCargo;

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
  confExc := Application.MessageBox('Confirma a exclusão deste registro?', 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);

  if confExc = IDYES then
    begin
      DM.ADODS_Cargo.Delete;
      Application.MessageBox('O registro foi excluido com sucesso!', 'Informação', MB_OK + MB_ICONINFORMATION);
    end
  else
    Application.MessageBox('A exclusão do registro foi cancelada', 'Informação', MB_OK + MB_ICONERROR);

  FrmCadCargo.btn_Salvar.Enabled   := True;
  FrmCadCargo.btn_Cancelar.Enabled := True;
  FrmCadCargo.btn_Sair.Enabled     := False;
  FrmCadCargo.Pn1Ficha.Enabled     := True;
end;

procedure TFrm_Man_Cargo.btn_InserirClick(Sender: TObject);
begin
  Acao := 'I';

  DM.ADODS_Cargo.Insert;
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
  DM.ADODS_Cargo.CommandText := 'select * from Cargo order by Descricao';
  DM.ADODS_Cargo.Open;
end;

end.
