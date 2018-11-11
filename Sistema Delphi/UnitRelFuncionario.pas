unit UnitRelFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFormRelFun = class(TForm)
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
    ADOQRY_Funcionario: TADOQuery;
    ADOQRY_FuncionarioCodigo: TIntegerField;
    ADOQRY_FuncionarioNome: TStringField;
    ADOQRY_FuncionarioCPF: TStringField;
    ADOQRY_FuncionarioEndereco: TStringField;
    ADOQRY_FuncionarioDescricao: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelFun: TFormRelFun;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormRelFun.SpeedButton1Click(Sender: TObject);
var StrLiga: String;
begin
  StrLiga:= 'where ';

  ADOQRY_Funcionario.Close;
    with ADOQRY_Funcionario.SQL do
      begin
        Clear;
        Add('select Funcionario.Codigo, Funcionario.Nome, Funcionario.CPF, Funcionario.Endereco, Cargo.Descricao from Funcionario inner join Cargo on Funcionario.Cargo = Cargo.Codigo ');

        if EdtCodigoDe.Text <> '' then
          try
            StrToInt(EdtCodigoDe.Text);
            Add(StrLiga + 'Funcionario.Codigo > = ' + EdtCodigoDe.Text);
            StrLiga:= 'and ';
            except
              on EConvertError do;
          end;

        if EdtCodigoAte.Text <> '' then
          try
            StrToInt(EdtCodigoAte.Text);
            Add(StrLiga + 'Funcionario.Codigo < = ' + EdtCodigoAte.Text);
            StrLiga:= 'and ';
            except
              on EConvertError do;
          end;

        if EdtNomeDe.Text <> '' then
          begin
            Add(StrLiga + 'Funcionario.Nome >= ''' + EdtNomeDe.Text + '''');
            StrLiga:= 'and ';
          end;

        if EdtNomeAte.Text <> '' then
          begin
            Add(StrLiga + 'Funcionario.Nome <= ''' + EdtNomeAte.Text + 'zzz''');
            StrLiga:= 'and ';
          end;

        if EdtCidade.Text <> '' then
          begin
            Add(StrLiga + 'Cargo.Descricao like ' + #39 +
              '%' + EdtCidade.Text + '%' + #39 );

          end;

        case RadioGroup1.ItemIndex of
          0: Add('order by Funcionario.Codigo');
          1: Add('order by Funcionario.Nome');
          2: Add('order by Cargo.Descricao');
        end;
      end;
  ADOQRY_Funcionario.Open;
  frxreport1.ShowReport;
end;

procedure TFormRelFun.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
