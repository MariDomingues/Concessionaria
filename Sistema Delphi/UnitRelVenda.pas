unit UnitRelVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, frxClass, frxDBSet, Data.Win.ADODB;

type
  TFrmRelVenda = class(TForm)
    ADOQuery1: TADOQuery;
    ADOQuery1ID: TAutoIncField;
    ADOQuery1VEN_DATA: TDateTimeField;
    ADOQuery1VEN_ID_CLIENTE: TIntegerField;
    ADOQuery1VEN_ID_VENDEDOR: TIntegerField;
    ADOQuery1CLI_NOME: TStringField;
    ADOQuery1CLI_ENDERECO: TStringField;
    ADOQuery1CLI_BAIRRO: TStringField;
    ADOQuery1CLI_CIDADE: TStringField;
    ADOQuery1CLI_ESTADO: TStringField;
    ADOQuery1CLI_CEP: TStringField;
    ADOQuery1CLI_TELEFONE: TStringField;
    ADOQuery1CLI_CELULAR: TStringField;
    ADOQuery1VDD_NOME: TStringField;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    ADOQuery2: TADOQuery;
    ADOQuery2VI_VALOR_UNIT: TBCDField;
    ADOQuery2VI_QTDE: TIntegerField;
    ADOQuery2VI_VALOR_TOTAL: TBCDField;
    ADOQuery2PRO_DESCRICAO: TStringField;
    ADOQuery2VI_ID_PRODUTO: TIntegerField;
    frxDBDataset2: TfrxDBDataset;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label2: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelVenda: TFrmRelVenda;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmRelVenda.SpeedButton1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery2.Close;

with ADOQuery1.SQL do
  begin
    Clear;
    Add('SELECT Venda.ID, Venda.VEN_DATA, Venda.VEN_ID_CLIENTE, '+
     'Venda.VEN_ID_VENDEDOR, Cliente.CLI_NOME, '+
     'Cliente.CLI_ENDERECO, Cliente.CLI_BAIRRO, '+
     'Cliente.CLI_CIDADE, Cliente.CLI_ESTADO, Cliente.CLI_CEP, '+
     'Cliente.CLI_TELEFONE, Cliente.CLI_CELULAR, '+
     'Vendedor.VDD_NOME FROM Venda INNER JOIN '+
     'Cliente ON Venda.VEN_ID_CLIENTE = Cliente.ID INNER JOIN '+
     'Vendedor ON Venda.VEN_ID_VENDEDOR = Vendedor.ID ');

     if Edit1.Text <> '' then
      try
        StrToInt(Edit1.Text);
        Add('Where Venda.ID = ' + Edit1.Text);
      except
          on EConvertError do;
      end;
  end;
  ADOQuery1.Open;
  ADOQuery2.Open;

  frxReport1.ShowReport();
end;

end.
