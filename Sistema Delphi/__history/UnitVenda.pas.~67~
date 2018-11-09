{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit UnitVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Data.Win.ADODB;

type
  TFrmVenda = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    Panel1: TPanel;
    PnlFicha: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    PnlItens: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    Bbt_Inserir: TBitBtn;
    Bbt_Excluir: TBitBtn;
    Bbt_Confirma: TBitBtn;
    Bbt_Cancelar: TBitBtn;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    Btn_Primeiro: TToolButton;
    Btn_Anterior: TToolButton;
    Btn_Proximo: TToolButton;
    Btn_Ultimo: TToolButton;
    ToolButton7: TToolButton;
    Btn_Inserir: TToolButton;
    Btn_Alterar: TToolButton;
    Btn_Excluir: TToolButton;
    ToolButton11: TToolButton;
    Btn_Salvar: TToolButton;
    Btn_Cancelar: TToolButton;
    ToolButton15: TToolButton;
    Btn_Imprimir: TToolButton;
    ToolButton16: TToolButton;
    Btn_Sair: TToolButton;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    DS_Cliente: TDataSource;
    ADOQRY_Cliente: TADOQuery;
    DS_Funcionario: TDataSource;
    ADOQRY_Funcionario: TADOQuery;
    DS_Veiculo: TDataSource;
    ADOQRY_Veiculo: TADOQuery;
    ADOQRY_VeiculoCodigo: TIntegerField;
    ADOQRY_VeiculoPlaca: TStringField;
    Label8: TLabel;
    ADOQRY_VeiculoValor: TBCDField;
    MaskEdit1: TMaskEdit;
    DBEdit3: TDBEdit;
    DBG_Vei: TDBGrid;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DS_CodVen: TDataSource;
    ADOQRY_CodVen: TADOQuery;
    DS_Delete: TDataSource;
    ADOQRY_Delete: TADOQuery;
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Bbt_ConfirmaClick(Sender: TObject);
    procedure Bbt_ExcluirClick(Sender: TObject);
    procedure Bbt_InserirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_AnteriorClick(Sender: TObject);
    procedure Bbt_CancelarClick(Sender: TObject);
    procedure Btn_InserirClick(Sender: TObject);
    procedure Btn_PrimeiroClick(Sender: TObject);
    procedure Btn_ProximoClick(Sender: TObject);
    procedure Btn_SairClick(Sender: TObject);
    procedure Btn_SalvarClick(Sender: TObject);
    procedure Btn_UltimoClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
  private
    procedure Botoes(Ativa: Boolean);
    procedure CarregaItens;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVenda  : TFrmVenda;
  Operacao  : integer;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFrmVenda.Bbt_CancelarClick(Sender: TObject);
begin
  Bbt_Inserir.Enabled:= True;
  Bbt_Cancelar.Enabled:= False;
  Bbt_Confirma.Enabled:= False;
  Bbt_Excluir.Enabled:= True;

  PnlItens.Enabled:= False;

  DM.ADODS_Venda_Itens.Cancel;
end;

procedure TFrmVenda.Bbt_ConfirmaClick(Sender: TObject);
begin
  if DBLookupComboBox3.Text = '' then
    begin
      Application.MessageBox('O campo [Veículo] não pode ficar em branco.','Aviso',MB_OK+MB_ICONWARNING);
      DBLookupComboBox3.SetFocus;
      Abort;
    end;

  Bbt_Inserir.Enabled:= True;
  Bbt_Cancelar.Enabled:= False;
  Bbt_Confirma.Enabled:= False;
  Bbt_Excluir.Enabled:= True;

  PnlItens.Enabled:= False;

  DM.ADODS_Venda_Itens.Post;
  DM.ADOC_Atualiza.CommandText := '';
  DM.ADOC_Atualiza.CommandText := 'update Veiculo set Status = ''V'' where Codigo = ' + IntToStr(DM.ADODS_Venda_ItensVeiculo.Value) + ';';
  DM.ADOC_Atualiza.Execute;
end;

procedure TFrmVenda.Bbt_ExcluirClick(Sender: TObject);
begin
  Bbt_Inserir.Enabled:= True;
  Bbt_Cancelar.Enabled:= False;
  Bbt_Confirma.Enabled:= False;
  Bbt_Excluir.Enabled:= True;

  PnlItens.Enabled:= False;

  DM.ADOC_Atualiza.CommandText := '';
  DM.ADOC_Atualiza.CommandText := 'update Veiculo set Status = ''A'' where Codigo = ' + IntToStr(DM.ADODS_Venda_ItensVeiculo.Value) + ';';
  DM.ADOC_Atualiza.Execute;
  DM.ADODS_Venda_Itens.Delete;
end;

procedure TFrmVenda.Bbt_InserirClick(Sender: TObject);
begin
  Bbt_Inserir.Enabled:= False;
  Bbt_Cancelar.Enabled:= True;
  Bbt_Confirma.Enabled:= True;
  Bbt_Excluir.Enabled:= False;

  PnlItens.Enabled:= True;

  DM.ADODS_Venda_Itens.Insert;
  DM.ADODS_Venda_ItensCodigo.AsInteger := DM.ADODS_VendaCodigo.AsInteger;
  DBLookupComboBox3.SetFocus;
end;

procedure TFrmVenda.Btn_AlterarClick(Sender: TObject);
begin
  DM.ADODS_Venda.Edit;

  CarregaItens;

  Operacao:= 0;
  Botoes(False);
end;

procedure TFrmVenda.Btn_AnteriorClick(Sender: TObject);
begin
  DM.ADODS_Venda.Prior;

  CarregaItens;

  Botoes(True);
end;

procedure TFrmVenda.Btn_CancelarClick(Sender: TObject);
begin
  DM.ADODS_Venda.Cancel;

  Application.MessageBox('Registro cancelado com sucesso.','Aviso',MB_OK+MB_ICONERROR);

  Operacao:= 1;
  Botoes(True);
end;

procedure TFrmVenda.Btn_ExcluirClick(Sender: TObject);
begin
  ADOQRY_Delete.Close;
  ADOQRY_Delete.SQL.Clear;
  ADOQRY_Delete.SQL.Add('select count (*) as Total from Venda_Itens where Codigo = ' + IntToStr(DM.ADODS_VendaCodigo.AsInteger));
  ADOQRY_Delete.Open;

  if ADOQRY_Delete.FieldByName('Total').AsInteger > 0 then
    begin
      Application.MessageBox('Pedido de Venda com Itens adicionados. Não é possível excluir.','Aviso',MB_OK+MB_ICONERROR);
      Operacao:= 1;
      Botoes(True);
    end
  else
    begin
      DM.ADOC_Atualiza.CommandText := '';
      DM.ADOC_Atualiza.CommandText := 'delete from Venda_Itens where Codigo = ' + IntToStr(DM.ADODS_VendaCodigo.Value) + ';';
      DM.ADOC_Atualiza.Execute;
      DM.ADODS_Venda.Delete;
    end;
end;

procedure TFrmVenda.Btn_InserirClick(Sender: TObject);
begin
  ADOQRY_CodVen.Close;
  ADOQRY_CodVen.Open;

  DM.ADODS_Venda.Insert;

  DM.ADODS_VendaCodigo.AsInteger:= ADOQRY_CodVen.FieldByName('Codigo').AsInteger + 1;
  DM.ADODS_VendaDtVen.AsDateTime:= Date;

  ADOQRY_CodVen.Close;

  CarregaItens;

  Operacao:= 0;
  Botoes(False);
  DBLookupComboBox1.SetFocus;
end;

procedure TFrmVenda.Btn_PrimeiroClick(Sender: TObject);
begin
  DM.ADODS_Venda.First;

  CarregaItens;

  Botoes(True);
end;

procedure TFrmVenda.Btn_ProximoClick(Sender: TObject);
begin
  DM.ADODS_Venda.Next;

  CarregaItens;

  Botoes(True);
end;

procedure TFrmVenda.Btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmVenda.Btn_SalvarClick(Sender: TObject);
begin
  DM.ADODS_Venda.Post;

  Application.MessageBox('O registro foi salvo com sucesso.','Informação',MB_OK+MB_ICONINFORMATION);

  operacao:= 1;
  Botoes(True);
end;

procedure TFrmVenda.Btn_UltimoClick(Sender: TObject);
begin
  DM.ADODS_Venda.Last;

  CarregaItens;

  Botoes(True);
end;

procedure TFrmVenda.DBEdit2Exit(Sender: TObject);
var Desconto : real;
begin
  if DBEdit2.Text <> '' then
    begin
      Desconto := StrToFloat(DBEdit2.Text);
      DBEdit3.Text := FloatToStr(ADOQRY_VeiculoValor.AsFloat - ((Desconto / 100) * ADOQRY_VeiculoValor.AsFloat));
    end
  else
    DBEdit3.Text := FloatToStr(ADOQRY_VeiculoValor.AsFloat);
end;

procedure TFrmVenda.DBLookupComboBox3Enter(Sender: TObject);
begin
  ADOQRY_Veiculo.Close;
  ADOQRY_Veiculo.Open;
end;

procedure TFrmVenda.DBLookupComboBox3Exit(Sender: TObject);
begin
  MaskEdit1.Text := FloatToStr(ADOQRY_VeiculoValor.AsFloat);
end;

procedure TFrmVenda.FormActivate(Sender: TObject);
begin
  DM.ADODS_Venda.Close;
  DM.ADODS_Venda.CommandText:= '';
  DM.ADODS_Venda.CommandText:= 'select * from Venda order by Codigo';
  DM.ADODS_Venda.Open;

  CarregaItens;

  Operacao:= 1;

  Botoes(True);

  ADOQRY_Cliente.Close;
  ADOQRY_Cliente.Open;

  ADOQRY_Funcionario.Close;
  ADOQRY_Funcionario.Open;

  ADOQRY_Veiculo.Close;
  ADOQRY_Veiculo.Open;
end;

procedure TFrmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.ADODS_Venda.Close;
  DM.ADODS_Venda_Itens.Close;

  ADOQRY_Cliente.Close;
  ADOQRY_Funcionario.Close;
  ADOQRY_Veiculo.Close;
end;

procedure TFrmVenda.Botoes(Ativa: Boolean);
begin
  if operacao = 1 then
    begin
      //Verifica se esta no final da tabela
      if DM.ADODS_Venda.Eof then
        begin
          Btn_Proximo.Enabled := False;
          Btn_Ultimo.Enabled  := False;
        end

      else
        begin
          Btn_Proximo.Enabled := True;
          Btn_Ultimo.Enabled  := True;
        end;

      //Verifica se esta no inicio da tabela
      if DM.ADODS_Venda.Bof then
        begin
          Btn_Anterior.Enabled := False;
          Btn_Primeiro.Enabled := False;
        end

      else
        begin
          Btn_Anterior.Enabled := True;
          Btn_Primeiro.Enabled := True;
        end;
    end

  else
    begin
      Btn_Primeiro.Enabled := False;
      Btn_Anterior.Enabled := False;
      Btn_Proximo.Enabled  := False;
      Btn_Ultimo.Enabled   := False;
    end;

  Btn_Inserir.Enabled := Ativa;
  Btn_Sair.Enabled    := Ativa;

  if (DM.ADODS_Venda.RecordCount > 0) then
    begin
      Btn_Imprimir.Enabled := Ativa;
      Btn_Alterar.Enabled  := Ativa;
      Btn_Excluir.Enabled  := Ativa;
    end

  else
    begin
      Btn_Imprimir.Enabled := not Ativa;
      Btn_Alterar.Enabled  := not Ativa;
      Btn_Excluir.Enabled  := not Ativa;
    end;

  Btn_Salvar.Enabled   := not Ativa;
  Btn_Cancelar.Enabled := not Ativa;
  PnlFicha.Enabled     := not Ativa;
  DBEdit4.Enabled      := not Ativa;
end;

procedure TFrmVenda.CarregaItens;
begin
  DM.ADODS_Venda_Itens.Close;
  DM.ADODS_Venda_Itens.CommandText:= '';
  DM.ADODS_Venda_Itens.CommandText:= 'select * from Venda_Itens where Codigo = ' + IntToStr(DM.ADODS_VendaCodigo.AsInteger)  + ' order by Codigo';
  DM.ADODS_Venda_Itens.Open;
end;

end.
