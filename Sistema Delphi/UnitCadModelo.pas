unit UnitCadModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrmCadModelo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Pn1Ficha: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label12: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit11: TDBEdit;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    btn_Salvar: TToolButton;
    ToolButton2: TToolButton;
    btn_Cancelar: TToolButton;
    ToolButton4: TToolButton;
    btn_Sair: TToolButton;
    DBMemo1: TDBMemo;
    DS_CodMod: TDataSource;
    ADOQRY_CodMod: TADOQuery;
    procedure btn_SalvarClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Exit(Sender: TObject);
  private
    procedure LimpaTela;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadModelo: TFrmCadModelo;

implementation

{$R *.dfm}

uses UnitDM, UnitManModelo;

procedure TFrmCadModelo.btn_CancelarClick(Sender: TObject);
begin
  DM.ADODS_Modelo.Cancel;

  if Acao = 'I' then
    Application.MessageBox('A inclusão deste registro foi abortada.', 'Atenção', MB_OK + MB_ICONERROR)
  else
    Application.MessageBox('A alteração deste registro foi abortada.', 'Atenção', MB_OK + MB_ICONERROR);

  btn_Salvar.Enabled   := False;
  btn_Cancelar.Enabled := False;
  btn_Sair.Enabled     := True;
  Pn1Ficha.Enabled     := False;

  LimpaTela;
  abort;
end;

procedure TFrmCadModelo.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadModelo.btn_SalvarClick(Sender: TObject);
var CodMod : integer;
begin
  if DBEdit1.Text = '' then
    begin
      Application.MessageBox('O campo "Descrição" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit1.SetFocus;
      Abort
    end;

  if Acao = 'I' then
    begin
      CodMod := ADOQRY_CodMod.FieldByName('Codigo').AsInteger;
      CodMod := CodMod + 1;

      DBEdit11.Text := IntToStr(CodMod);
    end;

  DM.ADODS_Modelo.Post;

  if Acao = 'I' then
    Application.MessageBox('O registro foi incluido com sucesso.', 'Informação', MB_OK + MB_ICONINFORMATION)
  else
    Application.MessageBox('O registro foi alterado com sucesso.', 'Informação', MB_OK + MB_ICONINFORMATION);

  btn_Salvar.Enabled   := False;
  btn_Cancelar.Enabled := False;
  btn_Sair.Enabled     := True;
  Pn1Ficha.Enabled     := False;

  LimpaTela;
end;

procedure TFrmCadModelo.DBEdit1Exit(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    begin
      Application.MessageBox('O campo "Descrição" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit1.SetFocus;
      Abort
    end;
end;

procedure TFrmCadModelo.FormActivate(Sender: TObject);
begin
  ADOQRY_CodMod.Close;
  ADOQRY_CodMod.Open;
end;

procedure TFrmCadModelo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOQRY_CodMod.Close;
end;

procedure TFrmCadModelo.LimpaTela;
begin
  DBEdit1.Clear;
  DBMemo1.Clear;
  DBEdit11.Clear;
end;

end.

