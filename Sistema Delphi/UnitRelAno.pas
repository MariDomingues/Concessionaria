unit UnitRelAno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, frxClass, frxDBSet;

type
  TFormRelAno = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    frxDBDataset5: TfrxDBDataset;
    frxReport5: TfrxReport;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ADOQRY_Ano: TADOQuery;
    ADOQRY_AnoSoma: TFMTBCDField;
    ADOQRY_AnoAno: TIntegerField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelAno: TFormRelAno;

implementation

{$R *.dfm}

procedure TFormRelAno.Edit1Exit(Sender: TObject);
begin
  if Edit1.Text = '' then
    begin
      Application.MessageBox('O campo "Ano" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      Edit1.SetFocus;
      Abort;
    end;
end;

procedure TFormRelAno.Edit2Exit(Sender: TObject);
begin
  if Edit1.Text = '' then
    begin
      Application.MessageBox('O campo "Ano" � de preenchimento obrigat�rio.', 'Aten��o', MB_OK + MB_ICONERROR);
      Edit2.SetFocus;
      Abort;
    end;
end;

procedure TFormRelAno.SpeedButton1Click(Sender: TObject);
var StrLiga: String;
begin
  StrLiga:= 'where ';

  ADOQRY_Ano.Close;
    with ADOQRY_Ano.SQL do
      begin
        Clear;
        Add('select sum(valtotal) as ''Soma'', (year(DtVen)) as ''Ano'' from Venda where (year(Venda.DtVen) > = ' + Edit1.Text + ' and year(Venda.DtVen) = ' + Edit2.Text + ') group by year(DtVen)');
      end;
  ADOQRY_Ano .Open;
  frxreport5.ShowReport;
end;

procedure TFormRelAno.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
