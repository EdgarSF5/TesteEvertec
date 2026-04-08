unit Banco;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

type
  TdmBanco = class(TDataModule)
    fdBanco: TFDConnection;
    fdsCidade: TFDStoredProc;
    fdCidade: TFDQuery;
    fdCidadeCodigo_Cidade: TFDAutoIncField;
    fdCidadeNome: TStringField;
    fdCidadeEstado: TStringField;
    fdCidadeCep_Inicial: TStringField;
    fdCidadeCep_Final: TStringField;
    fdsCliente: TFDStoredProc;
    fdCliente: TFDQuery;
    fdClienteCodigo_Cliente: TFDAutoIncField;
    fdClienteCGC_CPF_Cliente: TStringField;
    fdClienteNome: TStringField;
    fdClienteTelefone: TStringField;
    fdClienteEndereco: TStringField;
    fdClienteBairro: TStringField;
    fdClienteComplemento: TStringField;
    fdClienteE_mail: TStringField;
    fdClienteCep: TStringField;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    fdClienteCidade: TStringField;
    fdLookCidade: TFDQuery;
    fdLookCidadeCodigo_Cidade: TFDAutoIncField;
    fdLookCidadeNome: TStringField;
    fdClienteCodigo_Cidade: TIntegerField;
    fdRelCidade: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    fdRelCliente: TFDQuery;
    FDAutoIncField2: TFDAutoIncField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    IntegerField1: TIntegerField;
    fdRelCliCidEst: TFDQuery;
    fdRelCliCidEstNome: TStringField;
    fdRelCliCidEstCep: TStringField;
    fdRelCliCidEstEstado: TStringField;
    fdRelCliCidEstCidade: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBanco: TdmBanco;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
