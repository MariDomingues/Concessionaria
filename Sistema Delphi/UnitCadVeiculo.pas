unit UnitCadVeiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrmCadVeiculo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Pn1Ficha: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit11: TDBEdit;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    btn_Salvar: TToolButton;
    ToolButton2: TToolButton;
    btn_Cancelar: TToolButton;
    ToolButton4: TToolButton;
    btn_Sair: TToolButton;
    ADOQRY_Fabricante: TADOQuery;
    DS_Fabricante: TDataSource;
    ADOQRY_CodVei: TADOQuery;
    DS_CodVei: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DS_Modelo: TDataSource;
    DBComboBox3: TDBComboBox;
    ADOQRY_Modelo: TADOQuery;
    Label14: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    DS_Cliente: TDataSource;
    ADOQRY_Cliente: TADOQuery;
    DS_Combustivel: TDataSource;
    ADOQRY_Combustivel: TADOQuery;
    Label3: TLabel;
    DBComboBox2: TDBComboBox;
    procedure btn_SalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
  private
    procedure LimpaTela;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadVeiculo: TFrmCadVeiculo;

implementation

{$R *.dfm}

uses UnitManVeiculo, UnitDM;

procedure TFrmCadVeiculo.btn_CancelarClick(Sender: TObject);
begin
  DM.ADODS_Veiculo.Cancel;

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

procedure TFrmCadVeiculo.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadVeiculo.btn_SalvarClick(Sender: TObject);
var CodVei : integer;
begin
  if DBEdit1.Text = '   -    ' then
    begin
      Application.MessageBox('O campo "Placa" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBEdit1.SetFocus;
      Abort;
    end;

  if DBEdit2.Text = '' then
    begin
      Application.MessageBox('O campo "Ano" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBEdit2.SetFocus;
      Abort;
    end;

  if varisnull(DBLookupComboBox1.KeyValue)  then
    begin
      Application.MessageBox('O campo "Fabricante" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBLookupComboBox1.SetFocus;
      Abort;
    end;

  if varisnull(DBLookupComboBox2.KeyValue)  then
    begin
      Application.MessageBox('O campo "Modelo" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBLookupComboBox2.SetFocus;
      Abort;
    end;

  if varisnull(DBLookupComboBox3.KeyValue)  then
    begin
      Application.MessageBox('O campo "Combust�vel" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBLookupComboBox3.SetFocus;
      Abort;
    end;

  if varisnull(DBLookupComboBox4.KeyValue)  then
    begin
      Application.MessageBox('O campo "Cliente" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBLookupComboBox4.SetFocus;
      Abort;
    end;

  if DBEdit5.Text = '' then
    begin
      Application.MessageBox('O campo "Valor" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBEdit5.SetFocus;
      Abort
    end;

  if DBEdit6.Text = '' then
    begin
      Application.MessageBox('O campo "Km Rodado" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBEdit6.SetFocus;
      Abort
    end;

  if DBEdit7.Text = '' then
    begin
      Application.MessageBox('O campo "Cor" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBEdit7.SetFocus;
      Abort
    end;

  if Acao = 'I' then
    begin
      CodVei := ADOQRY_CodVei.FieldByName('Codigo').AsInteger;
      CodVei := CodVei + 1;

      DBEdit11.Text := IntToStr(CodVei);
    end;

  DM.ADODS_Veiculo.Post;

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

procedure TFrmCadVeiculo.DBEdit1Exit(Sender: TObject);
begin
  if DBEdit1.Text = '   -    ' then
    begin
      Application.MessageBox('O campo "Placa" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBEdit1.SetFocus;
      Abort;
    end;
end;

procedure TFrmCadVeiculo.DBEdit2Exit(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    begin
      Application.MessageBox('O campo "Ano" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBEdit2.SetFocus;
      Abort;
    end;
end;

procedure TFrmCadVeiculo.DBEdit5Exit(Sender: TObject);
begin
  if DBEdit5.Text = '' then
    begin
      Application.MessageBox('O campo "Valor" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBEdit5.SetFocus;
      Abort
    end;
end;

procedure TFrmCadVeiculo.DBEdit6Exit(Sender: TObject);
begin
  if DBEdit6.Text = '' then
    begin
      Application.MessageBox('O campo "Km Rodado" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBEdit6.SetFocus;
      Abort
    end;
end;

procedure TFrmCadVeiculo.DBEdit7Exit(Sender: TObject);
begin
  if DBEdit7.Text = '' then
    begin
      Application.MessageBox('O campo "Cor" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBEdit7.SetFocus;
      Abort
    end;
end;

procedure TFrmCadVeiculo.DBLookupComboBox1Exit(Sender: TObject);
begin
  if varisnull(DBLookupComboBox1.KeyValue)  then
    begin
      Application.MessageBox('O campo "Fabricante" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBLookupComboBox1.SetFocus;
      Abort;
    end;
end;

procedure TFrmCadVeiculo.DBLookupComboBox2Exit(Sender: TObject);
begin
  if varisnull(DBLookupComboBox2.KeyValue)  then
    begin
      Application.MessageBox('O campo "Modelo" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBLookupComboBox2.SetFocus;
      Abort;
    end;
end;

procedure TFrmCadVeiculo.DBLookupComboBox3Exit(Sender: TObject);
begin
  if varisnull(DBLookupComboBox3.KeyValue)  then
    begin
      Application.MessageBox('O campo "Combust�vel" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBLookupComboBox3.SetFocus;
      Abort;
    end;
end;

procedure TFrmCadVeiculo.DBLookupComboBox4Exit(Sender: TObject);
begin
  if varisnull(DBLookupComboBox4.KeyValue)  then
    begin
      Application.MessageBox('O campo "Cliente" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      DBLookupComboBox4.SetFocus;
      Abort;
    end;
end;

procedure TFrmCadVeiculo.FormActivate(Sender: TObject);
begin
  ADOQRY_Fabricante.Close;
  ADOQRY_Fabricante.Open;

  ADOQRY_Modelo.Close;
  ADOQRY_Modelo.Open;

  ADOQRY_CodVei.Close;
  ADOQRY_CodVei.Open;

  ADOQRY_Cliente.Close;
  ADOQRY_Cliente.Open;

  ADOQRY_Combustivel.Close;
  ADOQRY_Combustivel.Open;
end;

procedure TFrmCadVeiculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.ADODS_Fabricante.Close;
  ADOQRY_Fabricante.Close;

  DM.ADODS_Modelo.Close;
	ADOQRY_Modelo.Close;

  DM.ADODS_Cliente.Close;
	ADOQRY_Cliente.Close;

  DM.ADODS_Combustivel.Close;
	ADOQRY_Combustivel.Close;

  ADOQRY_CodVei.Close;
end;

procedure TFrmCadVeiculo.LimpaTela;
begin
  DBEdit1.Clear;
  DBEdit2.Clear;
  DBEdit5.Clear;
  DBEdit6.Clear;
  DBEdit7.Clear;
  DBEdit11.Clear;
  DBLookupComboBox1.KeyValue := 0;
  DBLookupComboBox2.KeyValue := 0;
  DBLookupComboBox3.KeyValue := 0;
  DBLookupComboBox4.KeyValue := 0;
end;

end.
