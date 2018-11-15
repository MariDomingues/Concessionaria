unit UnitMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Data.DB, Data.Win.ADODB, frxClass,
  frxDBSet;

type
  TFrm_Menu = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Panel2: TPanel;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Panel4: TPanel;
    TreeView1: TTreeView;
    Button1: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    ADOQRY_TpVei: TADOQuery;
    ADOQRY_TpVeiTotal: TIntegerField;
    ADOQRY_TpVeiTpVei: TStringField;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    ADOQRY_Modelo: TADOQuery;
    ADOQRY_ModeloTotal: TIntegerField;
    ADOQRY_ModeloDescricao: TStringField;
    frxReport3: TfrxReport;
    ADOQRY_Fabricante: TADOQuery;
    frxDBDataset3: TfrxDBDataset;
    ADOQRY_FabricanteTotal: TIntegerField;
    ADOQRY_FabricanteNomeFantasia: TStringField;
    frxDBDataset4: TfrxDBDataset;
    ADOQRY_Mensal: TADOQuery;
    frxReport4: TfrxReport;
    ADOQRY_MensalSoma: TFMTBCDField;
    ADOQRY_MensalDataMesAno: TStringField;
    procedure TreeView1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Menu: TFrm_Menu;

implementation

{$R *.dfm}

uses UnitManCliente, UnitLogin, UnitManVeiculo, UnitManUsuario, UnitManFabricante,
     UnitManModelo, UnitManCombustivel, UnitManCargo, UnitManFuncionario, UnitVenda;

procedure TFrm_Menu.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Menu.FormActivate(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := FormatDateTime(' dddd ", " dd " de " mmm " de " yyyy', Now)
end;

procedure TFrm_Menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Frm_Login.Close;
end;

procedure TFrm_Menu.TreeView1Click(Sender: TObject);
begin
  Case (TreeView1.Selected.SelectedIndex) of
    1: Frm_Man_Cliente.ShowModal;
    2: Frm_Man_Veiculo.ShowModal;
    3: Frm_Man_Fabricante.ShowModal;
    5: Frm_Man_Cargo.ShowModal;
    6: Frm_Man_Funcionario.ShowModal;
    7: Frm_Man_Modelo.ShowModal;
    8: Frm_Man_Combustivel.ShowModal;
    9: Frm_Man_Usuario.ShowModal;
    10: FrmVenda.ShowModal;
    11: frxreport1.ShowReport;
    12: frxreport2.ShowReport;
    13: frxreport3.ShowReport;
    14:
    begin
      ADOQRY_Diario.Parameters.ParamByName('pDt').Value := Date;
      frxreport4.ShowReport;
    end;
  End;
end;

end.
