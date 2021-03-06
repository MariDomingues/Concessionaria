unit UnitRelCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFormRelCli = class(TForm)
    EdtCidade: TLabeledEdit;
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
    ADOQRY_Cliente: TADOQuery;
    ADOQRY_ClienteCodigo: TIntegerField;
    ADOQRY_ClienteNome: TStringField;
    ADOQRY_ClienteCPF: TStringField;
    ADOQRY_ClienteCNH: TStringField;
    ADOQRY_ClienteEndereco: TStringField;
    ADOQRY_ClienteCidade: TStringField;
    ADOQRY_ClienteBairro: TStringField;
    ADOQRY_ClienteCEP: TStringField;
    ADOQRY_ClienteTelefone: TStringField;
    ADOQRY_ClienteEmail: TStringField;
    ADOQRY_ClienteNroConta: TStringField;
    ADOQRY_ClienteStatus: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelCli: TFormRelCli;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormRelCli.SpeedButton1Click(Sender: TObject);
var StrLiga: String;
begin
  StrLiga:= 'where ';

  ADOQRY_Cliente.Close;
    with ADOQRY_Cliente.SQL do
      begin
        Clear;
        Add('SELECT * FROM Cliente ');

        if EdtCodigoDe.Text <> '' then
          try
            StrToInt(EdtCodigoDe.Text);
            Add(StrLiga + 'Codigo > = ' + EdtCodigoDe.Text);
            StrLiga:= 'and ';
            except
              on EConvertError do;
          end;

        if EdtCodigoAte.Text <> '' then
          try
            StrToInt(EdtCodigoAte.Text);
            Add(StrLiga + 'Codigo < = ' + EdtCodigoAte.Text);
            StrLiga:= 'and ';
            except
              on EConvertError do;
          end;

        if EdtNomeDe.Text <> '' then
          begin
            Add(StrLiga + 'Nome >= ''' + EdtNomeDe.Text + '''');
            StrLiga:= 'and ';
          end;

        if EdtNomeAte.Text <> '' then
          begin
            Add(StrLiga + 'Nome <= ''' + EdtNomeAte.Text + 'zzz''');
            StrLiga:= 'and ';
          end;

        if EdtCidade.Text <> '' then
          begin
            Add(StrLiga + 'Cidade like ' + #39 +
              '%' + EdtCidade.Text + '%' + #39 );

          end;

        case RadioGroup1.ItemIndex of
          0: Add('order by Codigo');
          1: Add('order by Nome');
          2: Add('order by Cidade');
        end;
      end;
  ADOQRY_Cliente.Open;
  frxreport1.ShowReport;
end;

procedure TFormRelCli.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
