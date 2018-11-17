unit UnitManFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, UnitCadFuncionario;

type
  TFrm_Man_Funcionario = class(TForm)
    ImageList1: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    Label1: TLabel;
    btn_Inserir: TToolButton;
    ImageList2: TImageList;
    ImageList3: TImageList;
    ToolButton2: TToolButton;
    btn_Alterar: TToolButton;
    ToolButton4: TToolButton;
    btn_Excluir: TToolButton;
    ToolButton10: TToolButton;
    btn_Imprimir: TToolButton;
    ToolButton12: TToolButton;
    btn_Sair: TToolButton;
    Panel2: TPanel;
    Edit1: TEdit;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    DBG_Fun: TDBGrid;
    procedure Edit1Change(Sender: TObject);
    procedure btn_InserirClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Man_Funcionario: TFrm_Man_Funcionario;
  Acao : char;

implementation

{$R *.dfm}

uses UnitDM, UnitRelFuncionario;

procedure TFrm_Man_Funcionario.btn_AlterarClick(Sender: TObject);
begin
  DM.ADODS_Funcionario.Edit;

  Application.CreateForm(TFrmCadFuncionario, FrmCadFuncionario);

  FrmCadFuncionario.btn_Salvar.Enabled   := True;
  FrmCadFuncionario.btn_Cancelar.Enabled := True;
  FrmCadFuncionario.btn_Sair.Enabled     := False;
  FrmCadFuncionario.Pn1Ficha.Enabled     := True;

  Acao := 'A';

  FrmCadFuncionario.ShowModal;
  FrmCadFuncionario.Free;
end;

procedure TFrm_Man_Funcionario.btn_ExcluirClick(Sender: TObject);
var confExc : integer;
begin
  confExc := Application.MessageBox('Confirma a exclusão deste registro?', 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);

  if confExc = IDYES then
    begin
      DM.ADODS_Funcionario.Delete;
      Application.MessageBox('O registro foi excluido com sucesso!', 'Informação', MB_OK + MB_ICONINFORMATION);
    end
  else
    Application.MessageBox('A exclusão do registro foi cancelada', 'Informação', MB_OK + MB_ICONERROR);

  FrmCadFuncionario.btn_Salvar.Enabled   := True;
  FrmCadFuncionario.btn_Cancelar.Enabled := True;
  FrmCadFuncionario.btn_Sair.Enabled     := False;
  FrmCadFuncionario.Pn1Ficha.Enabled     := True;
end;

procedure TFrm_Man_Funcionario.btn_ImprimirClick(Sender: TObject);
begin
  Application.CreateForm(TFormRelFun, FormRelFun);
  FormRelFun.ShowModal;
  FormRelFun.Free;
end;

procedure TFrm_Man_Funcionario.btn_InserirClick(Sender: TObject);
begin
  Acao := 'I';

  DM.ADODS_Funcionario.Insert;
  FrmCadFuncionario.btn_Salvar.Enabled   := True;
  FrmCadFuncionario.btn_Cancelar.Enabled := True;
  FrmCadFuncionario.btn_Sair.Enabled     := False;
  FrmCadFuncionario.Pn1Ficha.Enabled     := True;
  FrmCadFuncionario.ShowModal;
end;

procedure TFrm_Man_Funcionario.btn_SairClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_Man_Funcionario.Edit1Change(Sender: TObject);
begin
  DM.ADODS_Funcionario.Locate('Nome', Edit1.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFrm_Man_Funcionario.FormActivate(Sender: TObject);
begin
  DM.ADODS_Funcionario.Close;
  DM.ADODS_Funcionario.CommandText := '';
  DM.ADODS_Funcionario.CommandText := 'select * from Funcionario order by Codigo';
  DM.ADODS_Funcionario.Open;
end;

end.
