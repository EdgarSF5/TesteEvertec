unit Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CRUD, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, FireDAC.Comp.Client, FireDAC.Stan.Param,
  ppDB, ppDBPipe, ppDesignLayer, ppParameter, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppCtrls, ppVar, ppPrnabl, ppBands, ppCache;

type
  TFCliente = class(TFCrud)
    edCodigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    edNome: TDBEdit;
    Label4: TLabel;
    edCpfCnpj: TDBEdit;
    Label5: TLabel;
    edTelefone: TDBEdit;
    Label6: TLabel;
    edEmail: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    edCEP: TDBEdit;
    cbCidade: TDBLookupComboBox;
    Label9: TLabel;
    edEndereco: TDBEdit;
    Label10: TLabel;
    edBairro: TDBEdit;
    Label11: TLabel;
    edComplemento: TDBEdit;
    dsLookCidade: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppGroup1: TppGroup;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppShape1: TppShape;
    ppShape2: TppShape;
    procedure FormShow(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure sbPostClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure acaoSalvar; override;
    procedure acaoExcluir; override;
  end;

var
  FCliente: TFCliente;

implementation

uses Banco;

{$R *.dfm}

procedure TFCliente.acaoExcluir;
begin
  with dmBanco.fdsCliente do
  begin

    Close;

    ParamByName('@Operacao').AsInteger := 3;
    ParamByName('@Codigo_Cliente').AsInteger := StrToIntDef(edCodigo.Text, 0);

    ExecProc;

  end;
end;

procedure TFCliente.acaoSalvar;
begin
  with dmBanco.fdsCliente do
  begin

    Close;

    if dsDados.DataSet.State in [dsInsert, dsBrowse] then
      ParamByName('@Operacao').AsInteger := 1
    else
      ParamByName('@Operacao').AsInteger := 2;

    ParamByName('@Codigo_Cliente').AsInteger := StrToIntDef(edCodigo.Text, 0);
    ParamByName('@CGC_CPF_Cliente').AsString := edCpfCnpj.Text;
    ParamByName('@Nome').AsString            := edNome.Text;
    ParamByName('@Telefone').AsString        := edTelefone.Text;
    ParamByName('@Endereco').AsString        := edEndereco.Text;
    ParamByName('@Bairro').AsString          := edBairro.Text;
    ParamByName('@Complemento').AsString     := edComplemento.Text;
    ParamByName('@E_mail').AsString          := edEmail.Text;
    ParamByName('@Codigo_Cidade').AsInteger  := dsDados.DataSet.FieldByName('Codigo_Cidade').AsInteger;
    ParamByName('@Cep').AsString             := edCEP.Text;

    ExecProc;

    dsDados.DataSet.FieldByName('Codigo_Cliente').AsInteger := ParamByName('@Codigo_Cliente').AsInteger;
    dsDados.DataSet.FieldByName('Cidade').AsString := cbCidade.Text;

  end;
end;

procedure TFCliente.FormShow(Sender: TObject);
begin
  dsLookCidade.DataSet.Close;
  dsLookCidade.DataSet.Open;

  inherited;
end;

procedure TFCliente.sbEditClick(Sender: TObject);
begin
  inherited;

  if edNome.CanFocus then
    edNome.SetFocus;
end;

procedure TFCliente.sbInsertClick(Sender: TObject);
begin
  inherited;

  if edNome.CanFocus then
    edNome.SetFocus;
end;

procedure TFCliente.sbPostClick(Sender: TObject);
 var
  qy: TFDQuery;
begin
  if Trim(edNome.Text) = '' then
  begin
    msg('O Campo nome é obrigatório!');
    if edNome.CanFocus then
      edNome.SetFocus;
    exit;
  end
  else if Trim(edCpfCnpj.Text) = '' then
  begin
    msg('O Campo CPF/CNPJ é obrigatório!');
    if edCpfCnpj.CanFocus then
      edCpfCnpj.SetFocus;
    exit;
  end
  else if Trim(cbCidade.Text) = '' then
  begin
    msg('O Campo cidade é obrigatório!');
    if cbCidade.CanFocus then
      cbCidade.SetFocus;
    exit;
  end
  else if Trim(StringReplace(edCEP.Text, '-', '', [rfReplaceAll])) = '' then
  begin
    msg('O Campo CEP é obrigatório!');
    if edCEP.CanFocus then
      edCEP.SetFocus;
    exit;
  end
  else if Trim(edEndereco.Text) = '' then
  begin
    msg('O Campo endereço é obrigatório!');
    if edEndereco.CanFocus then
      edEndereco.SetFocus;
    exit;
  end
  else if Trim(edBairro.Text) = '' then
  begin
    msg('O Campo bairro é obrigatório!');
    if edBairro.CanFocus then
      edBairro.SetFocus;
    exit;
  end;

  //Validando o CEP na cidade escolhida antes de tentar inserir
  qy := TFDQuery.Create(nil);
  with qy do
  begin

    try

      Connection := dmBanco.fdBanco;

      SQL.Text := ' SELECT TOP 1 1 '
                + '   FROM Cidades '
                + '  WHERE REPLACE(:cep, ''-'', '''') BETWEEN REPLACE(Cep_Inicial, ''-'', '''') AND REPLACE(Cep_Final, ''-'', '''') '
                + '    AND Codigo_Cidade = :id ';
      ParamByName('id').AsInteger := dsDados.DataSet.FieldByName('Codigo_Cidade').AsInteger;
      ParamByName('cep').AsString := edCEP.Text;

      Open;

      if IsEmpty then
      begin
        msg('O CEP informado não pertence a cidade escolhida!');
        if edBairro.CanFocus then
          edBairro.SetFocus;
        exit;
      end;

    finally
      free;
    end;

  end;

  inherited;
end;

end.
