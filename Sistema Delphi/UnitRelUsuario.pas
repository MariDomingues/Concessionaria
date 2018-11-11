unit UnitRelUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFormRelUsu = class(TForm)
    EdtCodigoAte: TLabeledEdit;
    EdtCodigoDe: TLabeledEdit;
    EdtNomeAte: TLabeledEdit;
    EdtNomeDe: TLabeledEdit;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Panel1: TPanel;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ADOQRY_Usuario: TADOQuery;
    DataSource1: TDataSource;
    ADOQRY_UsuarioCodigo: TIntegerField;
    ADOQRY_UsuarioUsuario: TStringField;
    ADOQRY_UsuarioNome: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelUsu: TFormRelUsu;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormRelUsu.SpeedButton1Click(Sender: TObject);
var StrLiga: String;
begin
  StrLiga:= 'where ';

  ADOQRY_Usuario.Close;
    with ADOQRY_Usuario.SQL do
      begin
        Clear;
        Add('SELECT Login.Codigo, Login.Usuario, Funcionario.Nome FROM Login LEFT JOIN Funcionario ON Login.Funcionario = Funcionario.Codigo ');

        if EdtCodigoDe.Text <> '' then
          try
            StrToInt(EdtCodigoDe.Text);
            Add(StrLiga + 'Login.Codigo > = ' + EdtCodigoDe.Text);
            StrLiga:= 'and ';
            except
              on EConvertError do;
          end;

        if EdtCodigoAte.Text <> '' then
          try
            StrToInt(EdtCodigoAte.Text);
            Add(StrLiga + 'Login.Codigo < = ' + EdtCodigoAte.Text);
            StrLiga:= 'and ';
            except
              on EConvertError do;
          end;

        if EdtNomeDe.Text <> '' then
          begin
            Add(StrLiga + 'Login.Usuario >= ''' + EdtNomeDe.Text + '''');
            StrLiga:= 'and ';
          end;

        if EdtNomeAte.Text <> '' then
          begin
            Add(StrLiga + 'Login.Usuario <= ''' + EdtNomeAte.Text + 'zzz''');
            StrLiga:= 'and ';
          end;

        case RadioGroup1.ItemIndex of
          0: Add('order by Login.Codigo');
          1: Add('order by Login.Usuario');
        end;
      end;
  ADOQRY_Usuario.Open;
  frxreport1.ShowReport;
end;

procedure TFormRelUsu.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
