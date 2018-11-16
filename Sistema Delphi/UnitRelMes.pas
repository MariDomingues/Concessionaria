unit UnitRelMes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, frxClass, frxDBSet;

type
  TFormRelMes = class(TForm)
    Edit1: TEdit;
    frxDBDataset5: TfrxDBDataset;
    frxReport5: TfrxReport;
    Label3: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ADOQRY_Mes: TADOQuery;
    ADOQRY_MesSoma: TFMTBCDField;
    ADOQRY_MesDataMesAno: TStringField;
    procedure Edit1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelMes: TFormRelMes;

implementation

{$R *.dfm}

procedure TFormRelMes.Edit1Exit(Sender: TObject);
begin
  if Edit1.Text = '' then
    begin
      Application.MessageBox('O campo "Ano" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      Edit1.SetFocus;
      Abort;
    end;
end;

procedure TFormRelMes.SpeedButton1Click(Sender: TObject);
var StrLiga : String;
begin
  StrLiga:= 'where ';

  ADOQRY_Mes.Close;
    with ADOQRY_Mes.SQL do
      begin
        Clear;
        Add('select sum(valtotal) as ''Soma'', CONCAT (month(DtVen), ''/'', year(DtVen)) as ''DataMesAno'' from Venda where year(DtVen) = ' + Edit1.Text + ' group by CONCAT (month(DtVen), ''/'', year(DtVen))');
      end;
  ADOQRY_Mes.Open;
  frxReport5.ShowReport;
end;

procedure TFormRelMes.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
