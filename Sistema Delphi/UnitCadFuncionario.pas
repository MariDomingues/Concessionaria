unit UnitCadFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Data.Win.ADODB, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TFrmCadFuncionario = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    btn_Salvar: TToolButton;
    ToolButton2: TToolButton;
    btn_Cancelar: TToolButton;
    ToolButton4: TToolButton;
    btn_Sair: TToolButton;
    DS_CodFun: TDataSource;
    ADOQRY_CodFun: TADOQuery;
    Pn1Ficha: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DS_Cargo: TDataSource;
    ADOQRY_Cargo: TADOQuery;
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure LimpaTela;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadFuncionario: TFrmCadFuncionario;

implementation

{$R *.dfm}

uses UnitDM, UnitManCliente;

procedure TFrmCadFuncionario.LimpaTela;
begin
  DBEdit1.Clear;
  DBEdit2.Clear;
  DBEdit5.Clear;
  DBEdit6.Clear;
  DBEdit7.Clear;
  DBEdit8.Clear;
  DBEdit9.Clear;
  DBEdit10.Clear;
  DBEdit11.Clear;
  DBEdit12.Clear;
  DBComboBox1.ItemIndex := 0;
  DBLookupComboBox3.KeyValue := 0;
end;

procedure TFrmCadFuncionario.btn_CancelarClick(Sender: TObject);
begin
  DM.ADODS_Funcionario.Cancel;

  Application.MessageBox('A inclus�o ou altera��o deste registro foi abortada.', 'Aten��o', MB_OK + MB_ICONERROR);

  btn_Salvar.Enabled   := False;
  btn_Cancelar.Enabled := False;
  btn_Sair.Enabled     := True;
  Pn1Ficha.Enabled     := False;

  LimpaTela;
end;

procedure TFrmCadFuncionario.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadFuncionario.btn_SalvarClick(Sender: TObject);
var CodFun : integer;
begin
  if Acao = 'I' then
    begin
      CodFun := ADOQRY_CodFun.FieldByName('Codigo').AsInteger;
      CodFun := CodFun + 1;

      DBEdit11.Text := IntToStr(CodFun);
    end;

  DM.ADODS_Funcionario.Post;

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

procedure TFrmCadFuncionario.FormActivate(Sender: TObject);
begin
  ADOQRY_CodFun.Close;
  ADOQRY_CodFun.Open;

  ADOQRY_Cargo.Close;
  ADOQRY_Cargo.Open;

  DBComboBox1.ItemIndex := 0;
end;

procedure TFrmCadFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ADOQRY_CodFun.Close;

  DM.ADODS_Funcionario.Close;
	ADOQRY_Cargo.Close;
end;

end.