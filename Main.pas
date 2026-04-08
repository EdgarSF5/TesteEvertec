unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Sair1: TMenuItem;
    Cidade1: TMenuItem;
    Cliente1: TMenuItem;
    Relatrios1: TMenuItem;
    Clientes1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

uses Cidade, Cliente, Relatorio;

{$R *.dfm}

procedure TFMenu.Cidade1Click(Sender: TObject);
begin
  Application.CreateForm(TFCidade, FCidade);
  try
    FCidade.ShowModal;
  finally
    FCidade.Free;
  end;
end;

procedure TFMenu.Cliente1Click(Sender: TObject);
begin
  Application.CreateForm(TFCliente, FCliente);
  try
    FCliente.ShowModal;
  finally
    FCliente.Free;
  end;
end;

procedure TFMenu.Clientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFRelatorio, FRelatorio);
  try
    FRelatorio.ShowModal;
  finally
    FRelatorio.Free;
  end;
end;

procedure TFMenu.Sair1Click(Sender: TObject);
begin
  close;
end;

end.
