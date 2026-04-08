unit Cidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CRUD, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDesignLayer,
  ppParameter, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport;

type
  TFCidade = class(TFCrud)
    Label2: TLabel;
    edNome: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    cbEstado: TDBComboBox;
    edCodigo: TDBEdit;
    Label5: TLabel;
    edCepInicial: TDBEdit;
    Label6: TLabel;
    edCepFinal: TDBEdit;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
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
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppShape1: TppShape;
    ppShape2: TppShape;
    procedure sbPostClick(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure acaoSalvar; override;
    procedure acaoExcluir; override;
  end;

var
  FCidade: TFCidade;

implementation

uses Banco;

{$R *.dfm}

procedure TFCidade.acaoExcluir;
begin
  with dmBanco.fdsCidade do
  begin

    Close;

    ParamByName('@Operacao').AsInteger := 3;
    ParamByName('@Codigo_Cidade').AsInteger := StrToIntDef(edCodigo.Text, 0);

    ExecProc;

  end;
end;

procedure TFCidade.acaoSalvar;
begin

  with dmBanco.fdsCidade do
  begin

    Close;

    if dsDados.DataSet.State in [dsInsert, dsBrowse] then
      ParamByName('@Operacao').AsInteger := 1
    else
      ParamByName('@Operacao').AsInteger := 2;

    ParamByName('@Codigo_Cidade').AsInteger := StrToIntDef(edCodigo.Text, 0);
    ParamByName('@Nome').AsString           := edNome.Text;
    ParamByName('@Estado').AsString         := cbEstado.Text;
    ParamByName('@Cep_Inicial').AsString    := edCepInicial.Text;
    ParamByName('@Cep_Final').AsString      := edCepFinal.Text;

    ExecProc;

    dsDados.DataSet.FieldByName('Codigo_Cidade').AsInteger := ParamByName('@Codigo_Cidade').AsInteger;

  end;

end;

procedure TFCidade.sbEditClick(Sender: TObject);
begin
  inherited;

  if edNome.CanFocus then
    edNome.SetFocus;
end;

procedure TFCidade.sbInsertClick(Sender: TObject);
begin
  inherited;

  if edNome.CanFocus then
    edNome.SetFocus;
end;

procedure TFCidade.sbPostClick(Sender: TObject);
begin

  if Trim(edNome.Text) = '' then
  begin
    msg('O Campo nome é obrigatório!');
    if edNome.CanFocus then
      edNome.SetFocus;
    exit;
  end
  else if Trim(cbEstado.Text) = '' then
  begin
    msg('O Campo estado é obrigatório!');
    if cbEstado.CanFocus then
      cbEstado.SetFocus;
    exit;
  end
  else if Trim(edCepInicial.Text) = '' then
  begin
    msg('O Campo CEP (Inicial) é obrigatório!');
    if edCepInicial.CanFocus then
      edCepInicial.SetFocus;
    exit;
  end
  else if Trim(edCepFinal.Text) = '' then
  begin
    msg('O Campo CEP (Final) é obrigatório!');
    if edCepFinal.CanFocus then
      edCepFinal.SetFocus;
    exit;
  end;

  inherited;

end;

end.
