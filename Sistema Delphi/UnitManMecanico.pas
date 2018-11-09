unit UnitManMecanico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrm_Man_Mecanico = class(TForm)
    DBG_Mec: TDBGrid;
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
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_InserirClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Man_Mecanico: TFrm_Man_Mecanico;
  Acao : char;

implementation

{$R *.dfm}

uses UnitDM, UnitCadMecanico;

procedure TFrm_Man_Mecanico.btn_AlterarClick(Sender: TObject);
begin
  DM.ADODS_Mecanico.Edit;

  Application.CreateForm(TFrmCadMecanico, FrmCadMecanico);

  FrmCadMecanico.btn_Salvar.Enabled   := True;
  FrmCadMecanico.btn_Cancelar.Enabled := True;
  FrmCadMecanico.btn_Sair.Enabled     := False;
  FrmCadMecanico.Pn1Ficha.Enabled     := True;

  Acao := 'A';

  FrmCadMecanico.ShowModal;
  FrmCadMecanico.Free;
end;

procedure TFrm_Man_Mecanico.btn_ExcluirClick(Sender: TObject);
var confExc : integer;
begin
  confExc := Application.MessageBox('Confirma a exclusão deste registro?', 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);

  if confExc = IDYES then
    begin
      DM.ADODS_Mecanico.Delete;
      Application.MessageBox('O registro foi excluido com sucesso!', 'Informação', MB_OK + MB_ICONINFORMATION);
    end
  else
    Application.MessageBox('A exclusão do registro foi cancelada', 'Informação', MB_OK + MB_ICONERROR);

  FrmCadMecanico.btn_Salvar.Enabled   := True;
  FrmCadMecanico.btn_Cancelar.Enabled := True;
  FrmCadMecanico.btn_Sair.Enabled     := False;
  FrmCadMecanico.Pn1Ficha.Enabled     := True;
  FrmCadMecanico.ShowModal;
end;

procedure TFrm_Man_Mecanico.btn_InserirClick(Sender: TObject);
begin
  Acao := 'I';

  DM.ADODS_Mecanico.Insert;
  FrmCadMecanico.btn_Salvar.Enabled   := True;
  FrmCadMecanico.btn_Cancelar.Enabled := True;
  FrmCadMecanico.btn_Sair.Enabled     := False;
  FrmCadMecanico.Pn1Ficha.Enabled     := True;
  FrmCadMecanico.ShowModal;
end;

procedure TFrm_Man_Mecanico.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Man_Mecanico.Edit1Change(Sender: TObject);
begin
  DM.ADODS_Mecanico.Locate('Nome', Edit1.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFrm_Man_Mecanico.FormActivate(Sender: TObject);
begin
  DM.ADODS_Mecanico.Close;
  DM.ADODS_Mecanico.CommandText := '';
  DM.ADODS_Mecanico.CommandText := 'select * from Mecanico order by Nome';
  DM.ADODS_Mecanico.Open;
end;

end.
