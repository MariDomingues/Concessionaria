unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADODS_Veiculo: TADODataSet;
    DS_Veiculo: TDataSource;
    DS_Login: TDataSource;
    ADODS_Login: TADODataSet;
    ADODS_LoginCodigo: TIntegerField;
    ADODS_LoginUsuario: TStringField;
    ADODS_LoginSenha: TStringField;
    ADODS_LoginFuncionario: TIntegerField;
    ADODS_LoginStatus: TStringField;
    DS_Combustivel: TDataSource;
    ADODS_Combustivel: TADODataSet;
    DS_Fabricante: TDataSource;
    ADODS_Fabricante: TADODataSet;
    DS_Modelo: TDataSource;
    ADODS_Modelo: TADODataSet;
    ADODS_CombustivelCodigo: TIntegerField;
    ADODS_CombustivelDescricao: TStringField;
    ADODS_FabricanteCodigo: TIntegerField;
    ADODS_FabricanteRazaoSocial: TStringField;
    ADODS_FabricanteNomeFantasia: TStringField;
    ADODS_FabricanteCNPJ: TStringField;
    ADODS_FabricantePais: TStringField;
    ADODS_FabricanteEndereco: TStringField;
    ADODS_FabricanteCidade: TStringField;
    ADODS_FabricanteBairro: TStringField;
    ADODS_FabricanteCEP: TStringField;
    ADODS_FabricanteTelefone: TStringField;
    ADODS_FabricanteEmail: TStringField;
    ADODS_FabricanteNroConta: TStringField;
    ADODS_FabricanteStatus: TStringField;
    ADODS_ModeloCodigo: TIntegerField;
    ADODS_ModeloDescricao: TStringField;
    ADODS_ModeloObs: TStringField;
    ADODS_ModeloStatus: TStringField;
    ADODS_Cliente: TADODataSet;
    DS_Cliente: TDataSource;
    ADODS_ClienteCodigo: TIntegerField;
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
    DS_Funcionario: TDataSource;
    ADODS_Funcionario: TADODataSet;
    ADODS_FuncionarioCodigo: TIntegerField;
    ADODS_FuncionarioNome: TStringField;
    ADODS_FuncionarioCPF: TStringField;
    ADODS_FuncionarioEndereco: TStringField;
    ADODS_FuncionarioCidade: TStringField;
    ADODS_FuncionarioBairro: TStringField;
    ADODS_FuncionarioCEP: TStringField;
    ADODS_FuncionarioTelefone: TStringField;
    ADODS_FuncionarioNroConta: TStringField;
    ADODS_FuncionarioCargo: TIntegerField;
    ADODS_FuncionarioStatus: TStringField;
    ADODS_VeiculoCodigo: TIntegerField;
    ADODS_VeiculoCliente: TIntegerField;
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
    ADODS_Cargo: TADODataSet;
    DS_Cargo: TDataSource;
    ADODS_CargoCodigo: TIntegerField;
    ADODS_CargoDescricao: TStringField;
    ADODS_CargoSalBase: TBCDField;
    ADODS_CargoObs: TStringField;
    ADODS_CargoStatus: TStringField;
    DS_Venda: TDataSource;
    ADODS_Venda: TADODataSet;
    ADODS_VendaCodigo: TIntegerField;
    ADODS_VendaProgressivo: TIntegerField;
    ADODS_VendaCliente: TIntegerField;
    ADODS_VendaVeiculo: TIntegerField;
    ADODS_VendaFuncionario: TIntegerField;
    ADODS_VendaDtVen: TDateTimeField;
    ADODS_VendaValTotal: TBCDField;
    ADODS_VendaQtdVeiculo: TIntegerField;
    ADODS_VendaQtdParcela: TIntegerField;
    ADODS_VendaDesconto: TBCDField;
    procedure ADODS_FabricanteStatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADODS_ClienteStatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADODS_LoginStatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADODS_ModeloStatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADODS_FuncionarioStatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADODS_MecanicoStatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
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

procedure TDM.ADODS_ClienteStatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.AsString = 'A' then
    Text := 'Ativo'
  else
    Text := 'Inativo';
end;

procedure TDM.ADODS_FabricanteStatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.AsString = 'A' then
    Text := 'Ativo'
  else
    Text := 'Inativo';
end;

procedure TDM.ADODS_FuncionarioStatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.AsString = 'A' then
    Text := 'Ativo'
  else
    Text := 'Inativo';
end;

procedure TDM.ADODS_LoginStatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.AsString = 'A' then
    Text := 'Ativo'
  else
    Text := 'Inativo';
end;

procedure TDM.ADODS_MecanicoStatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.AsString = 'A' then
    Text := 'Ativo'
  else
    Text := 'Inativo';
end;

procedure TDM.ADODS_ModeloStatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.AsString = 'A' then
    Text := 'Ativo'
  else
    Text := 'Inativo';
end;

end.
