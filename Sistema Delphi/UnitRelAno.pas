unit UnitRelAno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, frxClass, frxDBSet, UnitDM;

type
  TFormRelAno = class(TForm)
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
    ComboBox2: TComboBox;
    ComboBox1: TComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelAno: TFormRelAno;

implementation

{$R *.dfm}

procedure TFormRelAno.ComboBox1Exit(Sender: TObject);
begin
  if ComboBox2.Text = '' then
    begin
      Application.MessageBox('O campo "Ano" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      ComboBox2.SetFocus;
      Abort;
    end;
end;

procedure TFormRelAno.ComboBox2Exit(Sender: TObject);
begin
  if ComboBox2.Text = '' then
    begin
      Application.MessageBox('O campo "Ano" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      ComboBox2.SetFocus;
      Abort;
    end;
end;

procedure TFormRelAno.FormActivate(Sender: TObject);
begin
  DM.ADODS_Ano.Close;
  DM.ADODS_Ano.Open;

  DM.ADODS_Ano.First;

  while not DM.ADODS_Ano.Eof do
    begin
      ComboBox2.Items.Add(IntToStr(DM.ADODS_Ano.FieldByName('DtAno').AsInteger));
      ComboBox1.Items.Add(IntToStr(DM.ADODS_Ano.FieldByName('DtAno').AsInteger));
      DM.ADODS_Ano.Next;
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
        Add('select sum(valtotal) as ''Soma'', (year(DtVen)) as ''Ano'' from Venda where (year(Venda.DtVen) > = ' + ComboBox2.Text + ' and year(Venda.DtVen) = ' + ComboBox1.Text + ') group by year(DtVen)');
      end;
  ADOQRY_Ano .Open;
  frxreport5.ShowReport;
end;

procedure TFormRelAno.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
