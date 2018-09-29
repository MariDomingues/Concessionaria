unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADODS_Cliente: TADODataSet;
    ADODS_ClienteCodigo: TIntegerField;
    ADODS_ClienteVeiculo: TIntegerField;
    ADODS_ClienteNome: TStringField;
    ADODS_ClienteCPF: TStringField;
    ADODS_ClienteCNH: TStringField;
    ADODS_ClienteEndereco: TStringField;
    ADODS_ClienteCidade: TStringField;
    ADODS_ClienteBairro: TStringField;
    ADODS_ClienteCEP: TStringField;
    ADODS_ClienteTelefone: TStringField;
    ADODS_ClienteEmail: TStringField;
    ADODS_ClienteNroConta: TStringField;
    ADODS_ClienteStatus: TStringField;
    DS_Cliente: TDataSource;
    ADODS_Veiculo: TADODataSet;
    ADOConnection2: TADOConnection;
    ADODS_VeiculoCodigo: TIntegerField;
    ADODS_VeiculoFabricante: TIntegerField;
    ADODS_VeiculoModelo: TIntegerField;
    ADODS_VeiculoCombustivel: TIntegerField;
    ADODS_VeiculoPlaca: TStringField;
    ADODS_VeiculoAno: TWideStringField;
    ADODS_VeiculoValor: TBCDField;
    ADODS_VeiculoCor: TStringField;
    ADODS_VeiculoKm: TBCDField;
    ADODS_VeiculoZeroKm: TStringField;
    ADODS_VeiculoQuantidade: TIntegerField;
    ADODS_VeiculoStatus: TStringField;
    ADODS_VeiculoDocum: TStringField;
    DS_Veiculo: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
