program Project1;

uses
  Vcl.Forms,
  UnitLogin in 'UnitLogin.pas' {Unt_Login},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  UnitManCliente in 'UnitManCliente.pas' {Frm_Man_Cliente},
  UnitCadCliente in 'UnitCadCliente.pas' {FrmCadCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUnt_Login, Unt_Login);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_Man_Cliente, Frm_Man_Cliente);
  Application.CreateForm(TFrmCadCliente, FrmCadCliente);
  Application.Run;
end.
