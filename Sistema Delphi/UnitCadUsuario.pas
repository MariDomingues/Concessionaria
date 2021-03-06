unit UnitCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrmCadUsuario = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Pn1Ficha: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit11: TDBEdit;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    btn_Salvar: TToolButton;
    ToolButton2: TToolButton;
    btn_Cancelar: TToolButton;
    ToolButton4: TToolButton;
    btn_Sair: TToolButton;
    DS_CodUsu: TDataSource;
    ADOQRY_CodUsu: TADOQuery;
    DS_Funcionario: TDataSource;
    ADOQRY_Funcionario: TADOQuery;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure btn_SalvarClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
  private
    procedure LimpaTela;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadUsuario: TFrmCadUsuario;

implementation

{$R *.dfm}

uses UnitDM, UnitManUsuario;

procedure TFrmCadUsuario.btn_CancelarClick(Sender: TObject);
begin
  DM.ADODS_Login.Cancel;

  if Acao = 'I' then
    Application.MessageBox('A inclus�o deste registro foi abortada.', 'Aten��o', MB_OK + MB_ICONERROR)
  else
    Application.MessageBox('A altera��o deste registro foi abortada.', 'Aten��o', MB_OK + MB_ICONERROR);

  btn_Salvar.Enabled   := False;
  btn_Cancelar.Enabled := False;
  btn_Sair.Enabled     := True;
  Pn1Ficha.Enabled     := False;

  LimpaTela;
  abort;
end;

procedure TFrmCadUsuario.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadUsuario.btn_SalvarClick(Sender: TObject);
var CodUsu : integer;
begin
  if DBEdit1.Text = '' then
    begin
      Application.MessageBox('O campo "Usu�rio" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBEdit1.SetFocus;
      Abort
    end;

  if DBEdit2.Text = '' then
    begin
      Application.MessageBox('O campo "Senha" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBEdit2.SetFocus;
      Abort
    end;

  if Acao = 'I' then
    begin
      CodUsu := ADOQRY_CodUsu.FieldByName('Codigo').AsInteger;
      CodUsu := CodUsu + 1;

      DBEdit11.Text := IntToStr(CodUsu);
    end;

  DM.ADODS_Login.Post;

  if Acao = 'I' then
    Application.MessageBox('O registro foi incluido com sucesso.', 'Informa��o', MB_OK + MB_ICONINFORMATION)
  else
    Application.MessageBox('O registro foi alterado com sucesso.', 'Informa��o', MB_OK + MB_ICONINFORMATION);

  btn_Salvar.Enabled   := False;
  btn_Cancelar.Enabled := False;
  btn_Sair.Enabled     := True;
  Pn1Ficha.Enabled     := False;

  LimpaTela;
end;

procedure TFrmCadUsuario.DBEdit1Exit(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    begin
      Application.MessageBox('O campo "Usu�rio" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBEdit1.SetFocus;
      Abort
    end;
end;

procedure TFrmCadUsuario.DBEdit2Exit(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    begin
      Application.MessageBox('O campo "Senha" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBEdit2.SetFocus;
      Abort
    end;
end;

procedure TFrmCadUsuario.FormActivate(Sender: TObject);
begin
  ADOQRY_CodUsu.Close;
  ADOQRY_CodUsu.Open;

	ADOQRY_Funcionario.Close;
  ADOQRY_Funcionario.Open;
end;

procedure TFrmCadUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.ADODS_Funcionario.Close;
  ADOQRY_Funcionario.Close;

  ADOQRY_CodUsu.Close;
end;

procedure TFrmCadUsuario.LimpaTela;
begin
  DBEdit1.Clear;
  DBEdit2.Clear;
  DBEdit11.Clear;
end;

end.
