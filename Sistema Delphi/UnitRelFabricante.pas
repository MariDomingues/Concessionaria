unit UnitRelFabricante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFormRelFab = class(TForm)
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
    ADOQRY_Fabricante: TADOQuery;
    ADOQRY_FabricanteCodigo: TIntegerField;
    ADOQRY_FabricanteRazaoSocial: TStringField;
    ADOQRY_FabricanteNomeFantasia: TStringField;
    ADOQRY_FabricanteCNPJ: TStringField;
    ADOQRY_FabricantePais: TStringField;
    ADOQRY_FabricanteEndereco: TStringField;
    ADOQRY_FabricanteCidade: TStringField;
    ADOQRY_FabricanteBairro: TStringField;
    ADOQRY_FabricanteCEP: TStringField;
    ADOQRY_FabricanteTelefone: TStringField;
    ADOQRY_FabricanteEmail: TStringField;
    ADOQRY_FabricanteNroConta: TStringField;
    ADOQRY_FabricanteStatus: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelFab: TFormRelFab;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormRelFab.SpeedButton1Click(Sender: TObject);
var StrLiga: String;
begin
  StrLiga:= 'where ';

  ADOQRY_Fabricante.Close;
    with ADOQRY_Fabricante.SQL do
      begin
        Clear;
        Add('SELECT * FROM Fabricante ');

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
            Add(StrLiga + 'NomeFantasia >= ''' + EdtNomeDe.Text + '''');
            StrLiga:= 'and ';
          end;

        if EdtNomeAte.Text <> '' then
          begin
            Add(StrLiga + 'NomeFantasia <= ''' + EdtNomeAte.Text + 'zzz''');
            StrLiga:= 'and ';
          end;

        if EdtCidade.Text <> '' then
          begin
            Add(StrLiga + 'Cidade like ' + #39 +
              '%' + EdtCidade.Text + '%' + #39 );

          end;

        case RadioGroup1.ItemIndex of
          0: Add('order by Codigo');
          1: Add('order by NomeFantasia');
          2: Add('order by Cidade');
        end;
      end;
  ADOQRY_Fabricante.Open;
  frxreport1.ShowReport;
end;

procedure TFormRelFab.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
