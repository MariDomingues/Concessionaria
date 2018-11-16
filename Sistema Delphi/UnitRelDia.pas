unit UnitRelDia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFormRelDia = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label2: TLabel;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    ADOQRY_Dia: TADOQuery;
    ADOQRY_DiaCodigo: TIntegerField;
    ADOQRY_DiaCliente: TStringField;
    ADOQRY_DiaFuncion�rio: TStringField;
    ADOQRY_DiaData: TStringField;
    ADOQRY_DiaValTotal: TBCDField;
    ADOQRY_DiaQtdParcela: TIntegerField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelDia: TFormRelDia;

implementation

{$R *.dfm}

procedure TFormRelDia.Edit1Exit(Sender: TObject);
begin
  if Edit1.Text = '' then
    begin
      Application.MessageBox('O campo "Ano" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      Edit1.SetFocus;
      Abort;
    end;
end;

procedure TFormRelDia.SpeedButton1Click(Sender: TObject);
var StrLiga : String;
    MesCb   : integer;
begin
  StrLiga:= 'where ';

  case ComboBox1.ItemIndex of
    0: MesCb := 1;
    1: MesCb := 2;
    2: MesCb := 3;
    3: MesCb := 4;
    4: MesCb := 5;
    5: MesCb := 6;
    6: MesCb := 7;
    7: MesCb := 8;
    8: MesCb := 9;
    9: MesCb := 10;
    10: MesCb := 11;
    11: MesCb := 12;
  end;

  ADOQRY_Dia.Close;
  ADOQRY_Dia.Parameters.ParamByName('Mes').Value := IntToStr(MesCb);
  ADOQRY_Dia.Parameters.ParamByName('Ano').Value := Edit1.Text;
  ADOQRY_Dia .Open;
  frxReport4.ShowReport;
end;

procedure TFormRelDia.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
