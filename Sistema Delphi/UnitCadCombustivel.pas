unit UnitCadCombustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB;

type
  TFrmCadCombustivel = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Pn1Ficha: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit11: TDBEdit;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    btn_Salvar: TToolButton;
    ToolButton2: TToolButton;
    btn_Cancelar: TToolButton;
    ToolButton4: TToolButton;
    btn_Sair: TToolButton;
    DS_CodCom: TDataSource;
    ADOQRY_CodCom: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_SalvarClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    procedure LimpaTela;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCombustivel: TFrmCadCombustivel;

implementation

{$R *.dfm}

uses UnitDM, UnitManCombustivel;

procedure TFrmCadCombustivel.btn_CancelarClick(Sender: TObject);
begin
  DM.ADODS_Combustivel.Cancel;

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

procedure TFrmCadCombustivel.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadCombustivel.btn_SalvarClick(Sender: TObject);
var CodCom : integer;
begin
  if DBEdit1.Text = '' then
    begin
      Application.MessageBox('O campo "Descrição" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit1.SetFocus;
      Abort
    end;

  if Acao = 'I' then
    begin
      CodCom := ADOQRY_CodCom.FieldByName('Codigo').AsInteger;
      CodCom := CodCom + 1;

      DBEdit11.Text := IntToStr(CodCom);
    end;

  DM.ADODS_Combustivel.Post;

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

procedure TFrmCadCombustivel.DBEdit1Exit(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    begin
      Application.MessageBox('O campo "Descrição" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit1.SetFocus;
      Abort
    end;
end;

procedure TFrmCadCombustivel.FormActivate(Sender: TObject);
begin
  ADOQRY_CodCom.Close;
  ADOQRY_CodCom.Open;
end;

procedure TFrmCadCombustivel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOQRY_CodCom.Close;
end;

procedure TFrmCadCombustivel.LimpaTela;
begin
  DBEdit1.Clear;
  DBEdit11.Clear;
end;

end.
