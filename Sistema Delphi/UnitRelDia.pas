unit UnitRelDia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, frxDBSet, UnitDm, Vcl.DBCtrls,
  Datasnap.DBClient, Vcl.DdeMan;

type
  TFormRelDia = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    ComboBox2: TComboBox;
    ADOQRY_Dia: TADOQuery;
    ADOQRY_DiaCodigo: TIntegerField;
    ADOQRY_DiaCliente: TStringField;
    ADOQRY_DiaFuncionário: TStringField;
    ADOQRY_DiaData: TStringField;
    ADOQRY_DiaValTotal: TBCDField;
    ADOQRY_DiaQtdParcela: TIntegerField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
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
  if ComboBox2.Text = '' then
    begin
      Application.MessageBox('O campo "Ano" é de preenchimento obrigatório.', 'Atenção', MB_OK + MB_ICONERROR);
      ComboBox2.SetFocus;
      Abort;
    end;
end;

procedure TFormRelDia.FormActivate(Sender: TObject);
begin
  ComboBox1.ItemIndex := 0;

  DM.ADODS_Ano.Close;
  DM.ADODS_Ano.Open;

  DM.ADODS_Ano.First;

  while not DM.ADODS_Ano.Eof do
    begin
      ComboBox2.Items.Add(IntToStr(DM.ADODS_Ano.FieldByName('DtAno').AsInteger));
      DM.ADODS_Ano.Next;
    end;
end;

procedure TFormRelDia.SpeedButton1Click(Sender: TObject);
var MesCb   : integer;
begin
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
  ADOQRY_Dia.Parameters.ParamByName('Ano').Value := ComboBox2.Text;
  ADOQRY_Dia .Open;
  frxReport4.ShowReport;
end;

procedure TFormRelDia.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
