program Project1;

uses
  Vcl.Forms,
  UnitLogin in 'UnitLogin.pas' {Frm_Login},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  UnitManCliente in 'UnitManCliente.pas' {Frm_Man_Cliente},
  UnitCadCliente in 'UnitCadCliente.pas' {FrmCadCliente},
  UnitMenu in 'UnitMenu.pas' {Frm_Menu},
  UnitManVeiculo in 'UnitManVeiculo.pas' {Frm_Man_Veiculo},
  UnitCadVeiculo in 'UnitCadVeiculo.pas' {FrmCadVeiculo},
  UnitManFabricante in 'UnitManFabricante.pas' {Frm_Man_Fabricante},
  UnitCadFabricante in 'UnitCadFabricante.pas' {FrmCadFabricante},
  UnitManUsuario in 'UnitManUsuario.pas' {Frm_Man_Usuario},
  UnitCadUsuario in 'UnitCadUsuario.pas' {FrmCadUsuario},
  UnitManModelo in 'UnitManModelo.pas' {Frm_Man_Modelo},
  UnitCadModelo in 'UnitCadModelo.pas' {FrmCadModelo},
  UnitManCombustivel in 'UnitManCombustivel.pas' {Frm_Man_Combustivel},
  UnitCadCombustivel in 'UnitCadCombustivel.pas' {FrmCadCombustivel};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Login, Frm_Login);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_Man_Cliente, Frm_Man_Cliente);
  Application.CreateForm(TFrmCadCliente, FrmCadCliente);
  Application.CreateForm(TFrm_Menu, Frm_Menu);
  Application.CreateForm(TFrm_Man_Veiculo, Frm_Man_Veiculo);
  Application.CreateForm(TFrmCadVeiculo, FrmCadVeiculo);
  Application.CreateForm(TFrm_Man_Fabricante, Frm_Man_Fabricante);
  Application.CreateForm(TFrmCadFabricante, FrmCadFabricante);
  Application.CreateForm(TFrm_Man_Usuario, Frm_Man_Usuario);
  Application.CreateForm(TFrmCadUsuario, FrmCadUsuario);
  Application.CreateForm(TFrm_Man_Modelo, Frm_Man_Modelo);
  Application.CreateForm(TFrmCadModelo, FrmCadModelo);
  Application.CreateForm(TFrm_Man_Combustivel, Frm_Man_Combustivel);
  Application.CreateForm(TFrmCadCombustivel, FrmCadCombustivel);
  Application.Run;
end.
