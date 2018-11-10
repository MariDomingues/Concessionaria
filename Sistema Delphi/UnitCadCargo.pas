unit UnitCadCargo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB;

type
  TFrmCadCargo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Pn1Ficha: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit11: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit2: TDBEdit;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    btn_Salvar: TToolButton;
    ToolButton2: TToolButton;
    btn_Cancelar: TToolButton;
    ToolButton4: TToolButton;
    btn_Sair: TToolButton;
    DS_CodCar: TDataSource;
    ADOQRY_CodCar: TADOQuery;
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
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
  FrmCadCargo: TFrmCadCargo;

implementation

{$R *.dfm}

uses UnitDM, UnitManCargo;

procedure TFrmCadCargo.btn_CancelarClick(Sender: TObject);
begin
  DM.ADODS_Cargo.Cancel;

  if Acao = 'I' then
    Application.MessageBox('A inclusão deste registro foi abortada.', 'Atenção', MB_OK + MB_ICONERROR)
  else
    Application.MessageBox('A alteração deste registro foi abortada.', 'Atenção', MB_OK + MB_ICONERROR);

  btn_Salvar.Enabled   := False;
  btn_Cancelar.Enabled := False;
  btn_Sair.Enabled     := True;
  Pn1Ficha.Enabled     := False;

  LimpaTela;
end;

procedure TFrmCadCargo.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadCargo.btn_SalvarClick(Sender: TObject);
var CodCar : integer;
begin
  if DBEdit1.Text = '' then
    begin
      Application.MessageBox('O campo "Descrição" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit1.SetFocus;
      Abort;
    end;

  if DBEdit2.Text = '' then
    begin
      Application.MessageBox('O campo "Salário Base" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit2.SetFocus;
      Abort;
    end;

  if Acao = 'I' then
    begin
      CodCar := ADOQRY_CodCar.FieldByName('Codigo').AsInteger;
      CodCar := CodCar + 1;

      DBEdit11.Text := IntToStr(CodCar);
    end;

  DM.ADODS_Cargo.Post;

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

procedure TFrmCadCargo.DBEdit1Exit(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    begin
      Application.MessageBox('O campo "Descrição" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit1.SetFocus;
      Abort;
    end;
end;

procedure TFrmCadCargo.FormActivate(Sender: TObject);
begin
  ADOQRY_CodCar.Close;
  ADOQRY_CodCar.Open;
end;

procedure TFrmCadCargo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOQRY_CodCar.Close;
end;

procedure TFrmCadCargo.LimpaTela;
begin
  DBEdit1.Clear;
  DBEdit2.Clear;
  DBMemo1.Clear;
  DBEdit11.Clear;
end;

procedure TFrmCadCargo.DBEdit2Exit(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    begin
      Application.MessageBox('O campo "Salário Base" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit2.SetFocus;
      Abort;
    end;
end;

end.
