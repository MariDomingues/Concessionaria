unit UnitCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, UnitDM, Vcl.Mask,
  Vcl.DBCtrls, Data.Win.ADODB;

type
  TFrmCadCliente = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    btn_Salvar: TToolButton;
    ToolButton2: TToolButton;
    btn_Cancelar: TToolButton;
    ToolButton4: TToolButton;
    btn_Sair: TToolButton;
    StatusBar1: TStatusBar;
    Pn1Ficha: TPanel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQRY_Veiculo: TADOQuery;
    DS_Veiculo: TDataSource;
    DS_CodCli: TDataSource;
    ADOQRY_CodCli: TADOQuery;
    DBEdit11: TDBEdit;
    procedure btn_SalvarClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    procedure LimpaTela;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCliente: TFrmCadCliente;

implementation

{$R *.dfm}

uses UnitManCliente;

procedure TFrmCadCliente.btn_CancelarClick(Sender: TObject);
begin
  DM.ADODS_Cliente.Cancel;

  Application.MessageBox('A inclus�o ou altera��o deste registro foi abortada.', 'Aten��o', MB_OK + MB_ICONERROR);

  btn_Salvar.Enabled   := False;
  btn_Cancelar.Enabled := False;
  btn_Sair.Enabled     := True;
  Pn1Ficha.Enabled     := False;

  LimpaTela;
end;

procedure TFrmCadCliente.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadCliente.btn_SalvarClick(Sender: TObject);
var CodCli : integer;
begin
  if Acao = 'I' then
    begin
      CodCli := ADOQRY_CodCli.FieldByName('Codigo').AsInteger;
      CodCli := CodCli + 1;

      DBEdit11.Text := IntToStr(CodCli);
    end;

  DM.ADODS_Cliente.Post;

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

procedure TFrmCadCliente.FormActivate(Sender: TObject);
begin
  ADOQRY_Veiculo.Close;
  ADOQRY_Veiculo.Open;

	ADOQRY_CodCli.Close;
  ADOQRY_CodCli.Open;

  DBComboBox1.ItemIndex := 0;
end;

procedure TFrmCadCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.ADODS_Veiculo.Close;

	ADOQRY_Veiculo.Close;
	ADOQRY_CodCli.Close;
end;

procedure TFrmCadCliente.LimpaTela;
begin
  DBEdit1.Clear;
  DBEdit2.Clear;
  DBEdit3.Clear;
  DBEdit4.Clear;
  DBEdit5.Clear;
  DBEdit6.Clear;
  DBEdit7.Clear;
  DBEdit8.Clear;
  DBEdit9.Clear;
  DBEdit10.Clear;
  DBEdit11.Clear;
  DBComboBox1.ItemIndex := 0;
end;

end.
