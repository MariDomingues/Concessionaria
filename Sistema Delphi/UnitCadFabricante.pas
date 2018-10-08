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
    Application.MessageBox('A inclus�o deste registro foi abortada.', 'Aten��o', MB_OK + MB_ICONERROR)
  else
    Application.MessageBox('A altera��o deste registro foi abortada.', 'Aten��o', MB_OK + MB_ICONERROR);

  btn_Salvar.Enabled   := False;
  btn_Cancelar.Enabled := False;
  btn_Sair.Enabled     := True;
  Pn1Ficha.Enabled     := False;

  LimpaTela;
end;

procedure TFrmCadFabricante.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadFabricante.btn_SalvarClick(Sender: TObject);
var CodFab : integer;
begin
  if Acao = 'I' then
    begin
      CodFab := ADOQRY_CodFab.FieldByName('Codigo').AsInteger;
      CodFab := CodFab + 1;

      DBEdit11.Text := IntToStr(CodFab);
    end;

  DM.ADODS_Fabricante.Post;

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

procedure TFrmCadFabricante.FormActivate(Sender: TObject);
begin
  ADOQRY_CodFab.Close;
  ADOQRY_CodFab.Open;

  DBComboBox1.ItemIndex := 0;
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
  DBComboBox1.ItemIndex := 0;
end;

end.
