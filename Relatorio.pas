unit Relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, ppDesignLayer, ppParameter, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, Data.DB, ppCtrls, ppVar, ppPrnabl, ppBands, ppCache;

type
  TFRelatorio = class(TForm)
    pnTitulo: TPanel;
    Label1: TLabel;
    edCodigoCliente: TEdit;
    cbCidade: TDBLookupComboBox;
    cbEstado: TComboBox;
    pnAcoes: TPanel;
    sbExcel: TSpeedButton;
    sbClose: TSpeedButton;
    sbPDF: TSpeedButton;
    sbVisualizar: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dsDadosRel: TDataSource;
    ppDbDadosRel: TppDBPipeline;
    ppRel: TppReport;
    ppParameterList1: TppParameterList;
    dsLookCidade: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppGroup1: TppGroup;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroup2: TppGroup;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel3: TppLabel;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppShape2: TppShape;
    ppLine1: TppLine;
    procedure sbCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbVisualizarClick(Sender: TObject);
    procedure sbPDFClick(Sender: TObject);
    procedure sbExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure prepararRelatorio;
  public
    { Public declarations }
  end;

var
  FRelatorio: TFRelatorio;

implementation

uses Banco;

{$R *.dfm}

procedure TFRelatorio.FormShow(Sender: TObject);
begin
  dsLookCidade.DataSet.Close;
  dsLookCidade.DataSet.Open;
end;

procedure TFRelatorio.prepararRelatorio;
begin
  with dmBanco.fdRelCliCidEst do
  begin

    Close;

    if edCodigoCliente.Text <> '' then
      ParamByName('CodigoCli').AsInteger := StrToIntDef(edCodigoCliente.Text, 0)
    else
      ParamByName('CodigoCli').AsInteger := 0;

    if cbCidade.Text <> '' then
      ParamByName('CodigoCid').AsInteger := cbCidade.KeyValue
    else
      ParamByName('CodigoCid').AsInteger := 0;

     if cbEstado.Text <> '' then
      ParamByName('Estado').AsString := cbEstado.Text
    else
      ParamByName('Estado').AsString := '';

    Open;

  end;

end;

procedure TFRelatorio.sbCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFRelatorio.sbExcelClick(Sender: TObject);
var
  SaveDlg: TSaveDialog;
begin
  prepararRelatorio;

  SaveDlg := TSaveDialog.Create(nil);
  try
    SaveDlg.Filter := 'Arquivo Excel|*.xlsx';
    SaveDlg.DefaultExt := 'xlsx';

    if SaveDlg.Execute then
    begin
      ppRel.AllowPrintToFile := True;
      ppRel.ShowPrintDialog  := False;
      ppRel.DeviceType       := 'XLSX';
      ppRel.TextFileName     := SaveDlg.FileName;
      ppRel.Print;
    end;
  finally
    SaveDlg.Free;
  end;
end;

procedure TFRelatorio.sbPDFClick(Sender: TObject);
var
  SaveDlg: TSaveDialog;
begin
  prepararRelatorio;

  SaveDlg := TSaveDialog.Create(nil);
  try
    SaveDlg.Filter := 'Arquivo PDF|*.pdf';
    SaveDlg.DefaultExt := 'pdf';

    if SaveDlg.Execute then
    begin
      ppRel.AllowPrintToFile := True;
      ppRel.ShowPrintDialog  := False;
      ppRel.DeviceType       := 'PDF';
      ppRel.TextFileName     := SaveDlg.FileName;
      ppRel.Print;
    end;
  finally
    SaveDlg.Free;
  end;
end;

procedure TFRelatorio.sbVisualizarClick(Sender: TObject);
begin
  prepararRelatorio;

  ppRel.DeviceType       := 'Screen';
  ppRel.AllowPrintToFile := False;
  ppRel.ShowPrintDialog  := True;

  ppRel.Print;
end;

end.
