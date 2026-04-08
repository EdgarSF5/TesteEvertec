unit CRUD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, FireDAC.Comp.Client, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppDesignLayer,
  ppParameter;

type
  TFCrud = class(TForm)
    pnTitulo: TPanel;
    pnAcoes: TPanel;
    sbInsert: TSpeedButton;
    Label1: TLabel;
    sbNext: TSpeedButton;
    sbPrior: TSpeedButton;
    sbFirst: TSpeedButton;
    sbLast: TSpeedButton;
    sbEdit: TSpeedButton;
    sbDelete: TSpeedButton;
    sbPost: TSpeedButton;
    sbCancel: TSpeedButton;
    pgCRUD: TPageControl;
    tsDados: TTabSheet;
    tsCadastro: TTabSheet;
    dsDados: TDataSource;
    gridDados: TDBGrid;
    lblLb2: TLabel;
    cbFiltro: TComboBox;
    edFiltro: TEdit;
    lblLb1: TLabel;
    pnRegistros: TPanel;
    sbRelatorio: TSpeedButton;
    ppRelSimplificado: TppReport;
    ppDbDadosRel: TppDBPipeline;
    dsDadosRel: TDataSource;
    procedure edFiltroChange(Sender: TObject);
    procedure dsDadosStateChange(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbPostClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure dsDadosDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure cbFiltroChange(Sender: TObject);
    procedure sbRelatorioClick(Sender: TObject);
    procedure gridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
    FieldsGrid: TStringList;
    procedure carregaItensCombo;
  public
    { Public declarations }
    procedure msg(Msg: String; btn: LongInt = MB_ICONINFORMATION);
  protected
    procedure acaoSalvar; virtual; abstract;
    procedure acaoExcluir; virtual; abstract;
  end;

var
  FCrud: TFCrud;

implementation

{$R *.dfm}

procedure TFCrud.msg(Msg: String; btn: LongInt = MB_ICONINFORMATION);
begin
   Application.MessageBox(PCHar(Msg),'Aviso', btn);
end;

procedure TFCrud.carregaItensCombo;
  var i: Integer;
begin
  cbFiltro.Clear;

  FieldsGrid := TStringList.Create;

  with gridDados do
  begin
    for I := 0 to Columns.Count - 1 do
    begin
      CbFiltro.Items.Add(Columns.Items[I].Title.Caption);
      FieldsGrid.Add((Columns.Items[I].Field.FieldName));
    end;
  end;

  CbFiltro.ItemIndex := 0;
end;

procedure TFCrud.cbFiltroChange(Sender: TObject);
begin
  DsDadosStateChange(Self);


  dsDados.DataSet.Filtered := False;

  edFiltro.Clear;
  dsDadosStateChange(Self);
end;

procedure TFCrud.dsDadosDataChange(Sender: TObject; Field: TField);
begin
  pnRegistros.Caption := 'Registros: ' + DsDados.DataSet.RecordCount.ToString;
end;

procedure TFCrud.dsDadosStateChange(Sender: TObject);
begin
  sbInsert.Enabled    := (dsDados.State = dsBrowse);
  sbRelatorio.Enabled := (dsDados.State = dsBrowse);
  sbEdit.Enabled      := (dsDados.State = dsBrowse) and (dsDados.DataSet.RecordCount > 0);
  sbDelete.Enabled    := (dsDados.State = dsBrowse) and (dsDados.DataSet.RecordCount > 0);
  sbPost.Enabled      := dsDados.State in [dsEdit, dsInsert];
  sbCancel.Enabled    := dsDados.State in [dsEdit, dsInsert];

  sbFirst.Enabled := (dsDados.State = dsBrowse) and (dsDados.DataSet.RecordCount > 0);
  sbPrior.Enabled := (dsDados.State = dsBrowse) and (dsDados.DataSet.RecordCount > 0);
  sbLast.Enabled  := (dsDados.State = dsBrowse) and (dsDados.DataSet.RecordCount > 0);
  sbNext.Enabled  := (dsDados.State = dsBrowse) and (dsDados.DataSet.RecordCount > 0);

  pnRegistros.Visible := (dsDados.State = dsBrowse);

  tsDados.TabVisible := (((dsDados.State = dsBrowse) and (dsDados.DataSet.RecordCount > 0) and not(dsDados.DataSet.Filtered)) or
                         ((dsDados.State = dsBrowse) and (dsDados.DataSet.Filtered)));
end;

procedure TFCrud.edFiltroChange(Sender: TObject);
begin
  if not(edFiltro.Focused) then
    Exit;

  with DsDados.DataSet do
  begin
    if Trim(edFiltro.Text) <> '' then
    begin

      try
         //Se for string, é utilizado like '%%', se não, é utilizado =
        if FieldByName(FieldsGrid[cbFiltro.ItemIndex]).DataType in [ftString, ftWideString] then
          Filter := 'UPPER(' + FieldsGrid[cbFiltro.ItemIndex] + ') LIKE ''%' + Trim(AnsiUpperCase(edFiltro.Text)) + '%'''
        else
          Filter := FieldsGrid[CbFiltro.ItemIndex] + ' = ' + edFiltro.Text;

        Filtered := True;
      except

        msg('Valor inválido para a filtragem atual!',MB_ICONWARNING);
        if edFiltro.CanFocus then
        begin
          edFiltro.SetFocus;
          edFiltro.SelectAll;
        end;

      end;

    end
    else
      Filtered := False;
  end;
end;

procedure TFCrud.FormShow(Sender: TObject);
begin
  dsDados.DataSet.Close;
  dsDados.DataSet.Open;

  tsCadastro.Show;

  carregaItensCombo;
end;

procedure TFCrud.gridDadosDblClick(Sender: TObject);
begin
  tsCadastro.Show;
end;

procedure TFCrud.sbCancelClick(Sender: TObject);
begin
  dsDados.DataSet.Cancel;

  if dsDados.DataSet is TFDQuery then
    TFDQuery(dsDados.DataSet).CancelUpdates;
end;

procedure TFCrud.sbDeleteClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir este registro?', 'Confirmar', 36) = mrYes then
  begin
    try
      acaoExcluir;

      dsDados.DataSet.Delete;

      if dsDados.DataSet is TFDQuery then
        TFDQuery(dsDados.DataSet).CommitUpdates;

    except on e: Exception do
      msg('Falha ao excluir o registro. Detalhes técnico: ' + e.Message, MB_ICONERROR);
    end;
  end;
end;

procedure TFCrud.sbEditClick(Sender: TObject);
begin
  dsDados.DataSet.Edit;
end;

procedure TFCrud.sbFirstClick(Sender: TObject);
begin
  dsDados.DataSet.First;
end;

procedure TFCrud.sbInsertClick(Sender: TObject);
begin
  dsDados.DataSet.Insert;
end;

procedure TFCrud.sbLastClick(Sender: TObject);
begin
  dsDados.DataSet.Last;
end;

procedure TFCrud.sbNextClick(Sender: TObject);
begin
  dsDados.DataSet.Next;
end;

procedure TFCrud.sbPostClick(Sender: TObject);
begin
  try
    acaoSalvar;

    dsDados.DataSet.Post;

    if dsDados.DataSet is TFDQuery then
      TFDQuery(dsDados.DataSet).CommitUpdates;

  except on e: Exception do
  begin
    msg('Falha ao salvar o registro. Detalhes técnico: ' + e.Message, MB_ICONERROR);
    dsDados.DataSet.Edit;
  end;
  end;
end;

procedure TFCrud.sbPriorClick(Sender: TObject);
begin
  dsDados.DataSet.Prior;
end;

procedure TFCrud.sbRelatorioClick(Sender: TObject);
begin
  dsDadosRel.DataSet.Close;
  dsDadosRel.DataSet.Open;

  ppRelSimplificado.Print;
end;

end.
