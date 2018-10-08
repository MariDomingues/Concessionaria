unit UnitManModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.Grids,
  Vcl.DBGrids;

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
  Frm_Man_Modelo: TFrm_Man_Modelo;
  Acao : char;

implementation

{$R *.dfm}

uses UnitDM, UnitCadModelo;

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
  confExc := Application.MessageBox('Confirma a exclusão deste registro?', 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);

  if confExc = IDYES then
    begin
      DM.ADODS_Modelo.Delete;
      Application.MessageBox('O registro foi excluido com sucesso!', 'Informação', MB_OK + MB_ICONINFORMATION);
    end
  else
    Application.MessageBox('A exclusão do registro foi cancelada', 'Informação', MB_OK + MB_ICONERROR);

  FrmCadModelo.btn_Salvar.Enabled   := True;
  FrmCadModelo.btn_Cancelar.Enabled := True;
  FrmCadModelo.btn_Sair.Enabled     := False;
  FrmCadModelo.Pn1Ficha.Enabled     := True;
  FrmCadModelo.ShowModal;
end;

procedure TFrm_Man_Modelo.btn_InserirClick(Sender: TObject);
begin
  Acao := 'I';

  DM.ADODS_Modelo.Insert;
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
  DM.ADODS_Modelo.CommandText := 'select * from Modelo order by Descricao';
  DM.ADODS_Modelo.Open;
end;

end.

