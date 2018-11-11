unit UnitManCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrm_Man_Cliente = class(TForm)
    DBG_Cli: TDBGrid;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    btn_Inserir: TToolButton;
    ToolButton2: TToolButton;
    btn_Alterar: TToolButton;
    ToolButton4: TToolButton;
    btn_Excluir: TToolButton;
    ToolButton10: TToolButton;
    btn_Imprimir: TToolButton;
    ToolButton12: TToolButton;
    btn_Sair: TToolButton;
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure btn_InserirClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Man_Cliente: TFrm_Man_Cliente;
  Acao : char;

implementation

{$R *.dfm}

uses UnitDM, UnitCadCliente, UnitRelCliente;

procedure TFrm_Man_Cliente.btn_AlterarClick(Sender: TObject);
begin
  DM.ADODS_Cliente.Edit;

  Application.CreateForm(TFrmCadCliente, FrmCadCliente);

  FrmCadCliente.btn_Salvar.Enabled   := True;
  FrmCadCliente.btn_Cancelar.Enabled := True;
  FrmCadCliente.btn_Sair.Enabled     := False;
  FrmCadCliente.Pn1Ficha.Enabled     := True;

  Acao := 'A';

  FrmCadCliente.ShowModal;
  FrmCadCliente.Free;
end;

procedure TFrm_Man_Cliente.btn_ExcluirClick(Sender: TObject);
var confExc : integer;
begin
  confExc := Application.MessageBox('Confirma a exclus�o deste registro?', 'Aten��o', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);

  if confExc = IDYES then
    begin
      DM.ADODS_Cliente.Delete;
      Application.MessageBox('O registro foi excluido com sucesso!', 'Informa��o', MB_OK + MB_ICONINFORMATION);
    end
  else
    Application.MessageBox('A exclus�o do registro foi cancelada', 'Informa��o', MB_OK + MB_ICONERROR);

  FrmCadCliente.btn_Salvar.Enabled   := True;
  FrmCadCliente.btn_Cancelar.Enabled := True;
  FrmCadCliente.btn_Sair.Enabled     := False;
  FrmCadCliente.Pn1Ficha.Enabled     := True;
end;

procedure TFrm_Man_Cliente.btn_ImprimirClick(Sender: TObject);
begin
  Application.CreateForm(TFormRelCli, FormRelCli);
  FormRelCli.ShowModal;
  FormRelCli.Free;
end;

procedure TFrm_Man_Cliente.btn_InserirClick(Sender: TObject);
begin
  Acao := 'I';

  DM.ADODS_Cliente.Insert;
  FrmCadCliente.btn_Salvar.Enabled   := True;
  FrmCadCliente.btn_Cancelar.Enabled := True;
  FrmCadCliente.btn_Sair.Enabled     := False;
  FrmCadCliente.Pn1Ficha.Enabled     := True;
  FrmCadCliente.ShowModal;
end;

procedure TFrm_Man_Cliente.btn_SairClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_Man_Cliente.Edit1Change(Sender: TObject);
begin
  DM.ADODS_Cliente.Locate('Nome', Edit1.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFrm_Man_Cliente.FormActivate(Sender: TObject);
begin
  DM.ADODS_Cliente.Close;
  DM.ADODS_Cliente.CommandText := '';
  DM.ADODS_Cliente.CommandText := 'select * from Cliente order by Codigo';
  DM.ADODS_Cliente.Open;
end;

end.
