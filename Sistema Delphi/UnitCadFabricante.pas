unit UnitCadFabricante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB;

type
  TFrmCadFabricante = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    btn_Salvar: TToolButton;
    ToolButton2: TToolButton;
    btn_Cancelar: TToolButton;
    ToolButton4: TToolButton;
    btn_Sair: TToolButton;
    Pn1Ficha: TPanel;
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
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    DS_CodFab: TDataSource;
    ADOQRY_CodFab: TADOQuery;
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
  private
    procedure LimpaTela;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadFabricante: TFrmCadFabricante;

implementation

{$R *.dfm}

uses UnitDM, UnitManFabricante;

procedure TFrmCadFabricante.btn_CancelarClick(Sender: TObject);
begin
  DM.ADODS_Fabricante.Cancel;

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

procedure TFrmCadFabricante.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadFabricante.btn_SalvarClick(Sender: TObject);
var CodFab : integer;
begin
  if DBEdit1.Text = '' then
    begin
      Application.MessageBox('O campo "Razão Social" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit1.SetFocus;
      Abort
    end;

  if DBEdit2.Text = '' then
    begin
      Application.MessageBox('O campo "Nome Fantasia" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit2.SetFocus;
      Abort
    end;

  if DBEdit3.Text = '  .   .   /    -  ' then
    begin
      Application.MessageBox('O campo "CNPJ" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit3.SetFocus;
      Abort
    end;

  if DBEdit4.Text = '' then
    begin
      Application.MessageBox('O campo "Email" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit4.SetFocus;
      Abort
    end;

  if DBEdit5.Text = '' then
    begin
      Application.MessageBox('O campo "País" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit5.SetFocus;
      Abort
    end;

  if DBEdit6.Text = '' then
    begin
      Application.MessageBox('O campo "Cidade" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit6.SetFocus;
      Abort
    end;

  if DBEdit7.Text = '' then
    begin
      Application.MessageBox('O campo "Endereço" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit7.SetFocus;
      Abort
    end;

  if DBEdit8.Text = '' then
    begin
      Application.MessageBox('O campo "Bairro" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit8.SetFocus;
      Abort
    end;

  if DBEdit9.Text = '      -   ' then
    begin
      Application.MessageBox('O campo "CEP" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit9.SetFocus;
      Abort
    end;

  if DBEdit10.Text = '' then
    begin
      Application.MessageBox('O campo "Nro. Conta" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit10.SetFocus;
      Abort
    end;

  if DBEdit12.Text = '(   )    -    ' then
    begin
      Application.MessageBox('O campo "Telefone" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit12.SetFocus;
      Abort
    end;

  if Acao = 'I' then
    begin
      CodFab := ADOQRY_CodFab.FieldByName('Codigo').AsInteger;
      CodFab := CodFab + 1;

      DBEdit11.Text := IntToStr(CodFab);
    end;

  DM.ADODS_Fabricante.Post;

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

procedure TFrmCadFabricante.FormActivate(Sender: TObject);
begin
  ADOQRY_CodFab.Close;
  ADOQRY_CodFab.Open;
end;

procedure TFrmCadFabricante.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.ADODS_Funcionario.Close;
  ADOQRY_CodFab.Close;
end;

procedure TFrmCadFabricante.LimpaTela;
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
  DBEdit12.Clear;
end;

procedure TFrmCadFabricante.DBEdit10Exit(Sender: TObject);
begin
  if DBEdit10.Text = '' then
    begin
      Application.MessageBox('O campo "Nro. Conta" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit10.SetFocus;
      Abort
    end;
end;

procedure TFrmCadFabricante.DBEdit12Exit(Sender: TObject);
begin
  if DBEdit12.Text = '(   )    -    ' then
    begin
      Application.MessageBox('O campo "Telefone" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit12.SetFocus;
      Abort
    end;
end;

procedure TFrmCadFabricante.DBEdit1Exit(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    begin
      Application.MessageBox('O campo "Razão Social" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit1.SetFocus;
      Abort
    end;
end;

procedure TFrmCadFabricante.DBEdit2Exit(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    begin
      Application.MessageBox('O campo "Nome Fantasia" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit2.SetFocus;
      Abort
    end;
end;

procedure TFrmCadFabricante.DBEdit3Exit(Sender: TObject);
begin
  if DBEdit3.Text = '  .   .   /    -  ' then
    begin
      Application.MessageBox('O campo "CNPJ" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit3.SetFocus;
      Abort
    end;
end;

procedure TFrmCadFabricante.DBEdit4Exit(Sender: TObject);
begin
  if DBEdit4.Text = '' then
    begin
      Application.MessageBox('O campo "Email" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit4.SetFocus;
      Abort
    end;
end;

procedure TFrmCadFabricante.DBEdit5Exit(Sender: TObject);
begin
  if DBEdit5.Text = '' then
    begin
      Application.MessageBox('O campo "País" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit5.SetFocus;
      Abort
    end;
end;

procedure TFrmCadFabricante.DBEdit6Exit(Sender: TObject);
begin
  if DBEdit6.Text = '' then
    begin
      Application.MessageBox('O campo "Cidade" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit6.SetFocus;
      Abort
    end;
end;

procedure TFrmCadFabricante.DBEdit7Exit(Sender: TObject);
begin
  if DBEdit7.Text = '' then
    begin
      Application.MessageBox('O campo "Endereço" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit7.SetFocus;
      Abort
    end;
end;

procedure TFrmCadFabricante.DBEdit8Exit(Sender: TObject);
begin
  if DBEdit8.Text = '' then
    begin
      Application.MessageBox('O campo "Bairro" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit8.SetFocus;
      Abort
    end;
end;

procedure TFrmCadFabricante.DBEdit9Exit(Sender: TObject);
begin
  if DBEdit9.Text = '     -   ' then
    begin
      Application.MessageBox('O campo "CEP" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      DBEdit9.SetFocus;
      Abort
    end;
end;

end.
