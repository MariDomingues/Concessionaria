unit UnitManCombustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrm_Man_Combustivel = class(TForm)
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
    procedure btn_SairClick(Sender: TObject);
    procedure btn_InserirClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Man_Combustivel: TFrm_Man_Combustivel;
  Acao : char;

implementation

{$R *.dfm}

uses UnitDM, UnitCadCombustivel, UnitRelCombustivel;

procedure TFrm_Man_Combustivel.btn_AlterarClick(Sender: TObject);
begin
  DM.ADODS_Combustivel.Edit;

  Application.CreateForm(TFrmCadCombustivel, FrmCadCombustivel);

  FrmCadCombustivel.btn_Salvar.Enabled   := True;
  FrmCadCombustivel.btn_Cancelar.Enabled := True;
  FrmCadCombustivel.btn_Sair.Enabled     := False;
  FrmCadCombustivel.Pn1Ficha.Enabled     := True;

  Acao := 'A';

  FrmCadCombustivel.ShowModal;
  FrmCadCombustivel.Free;
end;

procedure TFrm_Man_Combustivel.btn_ExcluirClick(Sender: TObject);
var confExc : integer;
begin
  confExc := Application.MessageBox('Confirma a exclusão deste registro?', 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);

  if confExc = IDYES then
    begin
      DM.ADODS_Combustivel.Delete;
      Application.MessageBox('O registro foi excluido com sucesso!', 'Informação', MB_OK + MB_ICONINFORMATION);
    end
  else
    Application.MessageBox('A exclusão do registro foi cancelada', 'Informação', MB_OK + MB_ICONERROR);

  FrmCadCombustivel.btn_Salvar.Enabled   := True;
  FrmCadCombustivel.btn_Cancelar.Enabled := True;
  FrmCadCombustivel.btn_Sair.Enabled     := False;
  FrmCadCombustivel.Pn1Ficha.Enabled     := True;
end;

procedure TFrm_Man_Combustivel.btn_ImprimirClick(Sender: TObject);
begin
  Application.CreateForm(TFormRelCom, FormRelCom);
  FormRelCom.ShowModal;
  FormRelCom.Free;
end;

procedure TFrm_Man_Combustivel.btn_InserirClick(Sender: TObject);
begin
  Acao := 'I';

  DM.ADODS_Combustivel.Insert;
  FrmCadCombustivel.btn_Salvar.Enabled   := True;
  FrmCadCombustivel.btn_Cancelar.Enabled := True;
  FrmCadCombustivel.btn_Sair.Enabled     := False;
  FrmCadCombustivel.Pn1Ficha.Enabled     := True;
  FrmCadCombustivel.ShowModal;
end;

procedure TFrm_Man_Combustivel.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Man_Combustivel.Edit1Change(Sender: TObject);
begin
  DM.ADODS_Combustivel.Locate('Descricao', Edit1.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFrm_Man_Combustivel.FormActivate(Sender: TObject);
begin
  DM.ADODS_Combustivel.Close;
  DM.ADODS_Combustivel.CommandText := '';
  DM.ADODS_Combustivel.CommandText := 'select * from Combustivel order by Descricao';
  DM.ADODS_Combustivel.Open;
end;

end.
