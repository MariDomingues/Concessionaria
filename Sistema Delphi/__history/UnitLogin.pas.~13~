unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ComCtrls, Data.DB, Data.Win.ADODB;

type
  TFrm_Login = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ADOQRY_Login: TADOQuery;
    DS_Login: TDataSource;
    ADOQRY_LoginCodigo: TIntegerField;
    ADOQRY_LoginUsuario: TStringField;
    ADOQRY_LoginSenha: TStringField;
    Panel2: TPanel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Login: TFrm_Login;

implementation

{$R *.dfm}

uses UnitMenu;

procedure TFrm_Login.Button1Click(Sender: TObject);
begin
  ADOQRY_Login.Close;

  ADOQRY_Login.Parameters[0].Value := (Edit1.Text);
  ADOQRY_Login.Parameters[1].Value := (Edit2.Text);

  ADOQRY_Login.Open;

  if ADOQRY_Login.IsEmpty then
    begin
      Application.MessageBox('Usuário ou Senha Inválido.', 'Erro', MB_OK + MB_ICONERROR);
      Edit1.Clear;
      Edit2.Clear;
      Edit1.SetFocus;
    end
  else
    Frm_Menu.ShowModal;
end;

procedure TFrm_Login.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
