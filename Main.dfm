object FMenu: TFMenu
  Left = 0
  Top = 0
  ClientHeight = 365
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 808
    Top = 8
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
      object Cidade1: TMenuItem
        Caption = 'C&idade'
        OnClick = Cidade1Click
      end
      object Cliente1: TMenuItem
        Caption = 'C&liente'
        OnClick = Cliente1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = '&Relat'#243'rios'
      object Clientes1: TMenuItem
        Caption = 'Cli&ente por Estado/Cidade'
        OnClick = Clientes1Click
      end
    end
    object Sair1: TMenuItem
      Caption = '&Sair'
      OnClick = Sair1Click
    end
  end
end
