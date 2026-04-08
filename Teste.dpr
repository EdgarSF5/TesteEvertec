program Teste;

uses
  Vcl.Forms,
  Main in 'Main.pas' {FMenu},
  CRUD in 'CRUD.pas' {FCrud},
  Banco in 'Banco.pas' {dmBanco: TDataModule},
  Cidade in 'Cidade.pas' {FCidade},
  Cliente in 'Cliente.pas' {FCliente},
  Relatorio in 'Relatorio.pas' {FRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TFCrud, FCrud);
  Application.CreateForm(TdmBanco, dmBanco);
  Application.CreateForm(TFCidade, FCidade);
  Application.CreateForm(TFCliente, FCliente);
  Application.CreateForm(TFRelatorio, FRelatorio);
  Application.Run;
end.
