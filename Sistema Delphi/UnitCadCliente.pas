unit UnitCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitManCliente, Vcl.ToolWin,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, UnitDM, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFrmCadCliente = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    bnt_Salvar: TToolButton;
    ToolButton2: TToolButton;
    btn_Cancelar: TToolButton;
    ToolButton4: TToolButton;
    btn_Sair: TToolButton;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCliente: TFrmCadCliente;

implementation

{$R *.dfm}
end.