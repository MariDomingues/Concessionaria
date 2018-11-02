unit UnitMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TFrm_Menu = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Panel2: TPanel;
    TreeView1: TTreeView;
    Panel1: TPanel;
    Image1: TImage;
    Button1: TButton;
    Image2: TImage;
    procedure TreeView1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Menu: TFrm_Menu;

implementation

{$R *.dfm}

uses UnitManCliente, UnitLogin, UnitManVeiculo, UnitManUsuario, UnitManFabricante,
     UnitManModelo, UnitManCombustivel, UnitManMecanico;

procedure TFrm_Menu.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Menu.FormActivate(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := FormatDateTime(' dddd ", " dd " de " mmm " de " yyyy', Now)
end;

procedure TFrm_Menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Frm_Login.Close;
end;

procedure TFrm_Menu.TreeView1Click(Sender: TObject);
begin
  Case (TreeView1.Selected.SelectedIndex) of
    1: Frm_Man_Cliente.ShowModal;
    2: Frm_Man_Veiculo.ShowModal;
    3: Frm_Man_Fabricante.ShowModal;
    4: Frm_Man_Mecanico.ShowModal;
    7: Frm_Man_Modelo.ShowModal;
    8: Frm_Man_Combustivel.ShowModal;
    9: Frm_Man_Usuario.ShowModal;
  End;
end;

end.
