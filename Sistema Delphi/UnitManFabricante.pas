unit UnitManFabricante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrm_Man_Fabricante = class(TForm)
    DBG_Fab: TDBGrid;
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
    procedure btn_InserirClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Man_Fabricante: TFrm_Man_Fabricante;
  Acao : char;

implementation

{$R *.dfm}

uses UnitDM, UnitCadFabricante;

procedure TFrm_Man_Fabricante.btn_AlterarClick(Sender: TObject);
begin
  DM.ADODS_Fabricante.Edit;

  Application.CreateForm(TFrmCadFabricante, FrmCadFabricante);

  FrmCadFabricante.btn_Salvar.Enabled   := True;
  FrmCadFabricante.btn_Cancelar.Enabled := True;
  FrmCadFabricante.btn_Sair.Enabled     := False;
  FrmCadFabricante.Pn1Ficha.Enabled     := True;

  Acao := 'A';

  FrmCadFabricante.ShowModal;
  FrmCadFabricante.Free;
end;

procedure TFrm_Man_Fabricante.btn_ExcluirClick(Sender: TObject);
var confExc : integer;
begin
  confExc := Application.MessageBox('Confirma a exclusão deste registro?', 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);

  if confExc = IDYES then
    begin
      DM.ADODS_Fabricante.Delete;
      Application.MessageBox('O registro foi excluido com sucesso!', 'Informação', MB_OK + MB_ICONINFORMATION);
    end
  else
    Application.MessageBox('A exclusão do registro foi cancelada', 'Informação', MB_OK + MB_ICONERROR);

  FrmCadFabricante.btn_Salvar.Enabled   := True;
  FrmCadFabricante.btn_Cancelar.Enabled := True;
  FrmCadFabricante.btn_Sair.Enabled     := False;
  FrmCadFabricante.Pn1Ficha.Enabled     := True;
  FrmCadFabricante.ShowModal;
end;

procedure TFrm_Man_Fabricante.btn_InserirClick(Sender: TObject);
begin
  Acao := 'I';

  DM.ADODS_Fabricante.Insert;
  FrmCadFabricante.btn_Salvar.Enabled   := True;
  FrmCadFabricante.btn_Cancelar.Enabled := True;
  FrmCadFabricante.btn_Sair.Enabled     := False;
  FrmCadFabricante.Pn1Ficha.Enabled     := True;
  FrmCadFabricante.ShowModal;
end;

procedure TFrm_Man_Fabricante.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Man_Fabricante.Edit1Change(Sender: TObject);
begin
  DM.ADODS_Fabricante.Locate('NomeFantasia', Edit1.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFrm_Man_Fabricante.FormActivate(Sender: TObject);
begin
  DM.ADODS_Fabricante.Close;
  DM.ADODS_Fabricante.CommandText := '';
  DM.ADODS_Fabricante.CommandText := 'select * from Fabricante order by NomeFantasia';
  DM.ADODS_Fabricante.Open;
end;

end.
