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
    ADODS_VeiculoValor: TBCDField;
    ADODS_VeiculoCor: TStringField;
    ADODS_VeiculoKm: TBCDField;
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
    ADODS_VeiculoAno: TIntegerField;
    DS_Venda_Itens: TDataSource;
    ADODS_Venda_Itens: TADODataSet;
    ADODS_Venda_ItensCodigo: TIntegerField;
    ADODS_Venda_ItensVeiculo: TIntegerField;
    ADODS_Venda_ItensValTotVei: TBCDField;
    ADODS_Venda_ItensDescUnit: TBCDField;
    ADODS_VendaCodigo: TIntegerField;
    ADODS_VendaCliente: TIntegerField;
    ADODS_VendaFuncionario: TIntegerField;
    ADODS_VendaDtVen: TDateTimeField;
    ADODS_VendaValTotal: TBCDField;
    ADODS_VendaQtdParcela: TIntegerField;
    ADODS_Venda_ItensPlaca: TStringField;
    ADODS_Venda_ItensValorUnit: TFloatField;
    ADOC_Atualiza: TADOCommand;
    ADODS_FuncionarioNomeCargo: TStringField;
    ADODS_VeiculoNomeFab: TStringField;
    ADODS_VeiculoNomeMod: TStringField;
    ADODS_VeiculoNomeCom: TStringField;
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
    procedure ADODS_Venda_ItensNewRecord(DataSet: TDataSet);
    procedure ADODS_VeiculoStatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADODS_VeiculoDocumGetText(Sender: TField; var Text: string;
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

procedure TDM.ADODS_ModeloStatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.AsString = 'A' then
    Text := 'Ativo'
  else
    Text := 'Inativo';
end;

procedure TDM.ADODS_VeiculoDocumGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.AsString = 'S' then
    Text := 'Sim'
  else
    Text := 'N�o';
end;

procedure TDM.ADODS_VeiculoStatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.AsString = 'A' then
    Text := 'Ativo'
  else
    if Sender.AsString = 'M' then
      Text := 'Mec�nico'
    else
      Text := 'Vendido';
end;

procedure TDM.ADODS_Venda_ItensNewRecord(DataSet: TDataSet);
begin
  ADODS_Venda_ItensCodigo.AsInteger := ADODS_VendaCodigo.AsInteger;
end;

end.
