unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ComCtrls;

type
  TUnt_Login = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Unt_Login: TUnt_Login;

implementation

{$R *.dfm}

uses UnitManCliente;

procedure TUnt_Login.Button1Click(Sender: TObject);
begin
  Frm_Man_Cliente.ShowModal;
end;

procedure TUnt_Login.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
