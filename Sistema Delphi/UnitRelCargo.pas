unit UnitRelCargo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFormRelCar = class(TForm)
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
    ADOQRY_Cargo: TADOQuery;
    ADOQRY_CargoCodigo: TIntegerField;
    ADOQRY_CargoDescricao: TStringField;
    ADOQRY_CargoSalBase: TBCDField;
    ADOQRY_CargoStatus: TStringField;
    ADOQRY_CargoObs: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelCar: TFormRelCar;

implementation

{$R *.dfm}

procedure TFormRelCar.SpeedButton1Click(Sender: TObject);
var StrLiga: String;
begin
  StrLiga:= 'where ';

  ADOQRY_Cargo.Close;
    with ADOQRY_Cargo.SQL do
      begin
        Clear;
        Add('SELECT * FROM Cargo ');

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
            Add(StrLiga + 'Descricao >= ''' + EdtNomeDe.Text + '''');
            StrLiga:= 'and ';
          end;

        if EdtNomeAte.Text <> '' then
          begin
            Add(StrLiga + 'Descricao <= ''' + EdtNomeAte.Text + 'zzz''');
            StrLiga:= 'and ';
          end;

        case RadioGroup1.ItemIndex of
          0: Add('order by Codigo');
          1: Add('order by Descricao');
        end;
      end;
  ADOQRY_Cargo.Open;
  frxreport1.ShowReport;
end;

procedure TFormRelCar.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
