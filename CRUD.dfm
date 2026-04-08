object FCrud: TFCrud
  Left = 0
  Top = 0
  Caption = 'FCrud'
  ClientHeight = 424
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    872
    424)
  PixelsPerInch = 96
  TextHeight = 19
  object pnTitulo: TPanel
    Left = 0
    Top = 0
    Width = 872
    Height = 81
    Align = alTop
    Color = 14077867
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      872
      81)
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 206
      Height = 39
      Caption = 'Desc. do Form'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object sbNext: TSpeedButton
      Left = 794
      Top = 25
      Width = 30
      Height = 30
      Anchors = [akTop, akRight]
      Caption = #9654#65039
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = sbNextClick
      ExplicitLeft = 784
    end
    object sbPrior: TSpeedButton
      Left = 750
      Top = 25
      Width = 31
      Height = 30
      Anchors = [akTop, akRight]
      Caption = #9664#65039
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = sbPriorClick
      ExplicitLeft = 740
    end
    object sbFirst: TSpeedButton
      Left = 721
      Top = 25
      Width = 30
      Height = 30
      Anchors = [akTop, akRight]
      Caption = #9198#65039
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = sbFirstClick
      ExplicitLeft = 711
    end
    object sbLast: TSpeedButton
      Left = 823
      Top = 25
      Width = 30
      Height = 30
      Anchors = [akTop, akRight]
      Caption = #9197#65039
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = sbLastClick
      ExplicitLeft = 813
    end
  end
  object pnAcoes: TPanel
    Left = 0
    Top = 363
    Width = 872
    Height = 61
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      872
      61)
    object sbInsert: TSpeedButton
      Left = 16
      Top = 10
      Width = 89
      Height = 38
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = sbInsertClick
    end
    object sbEdit: TSpeedButton
      Left = 111
      Top = 10
      Width = 89
      Height = 38
      Caption = '&Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = sbEditClick
    end
    object sbDelete: TSpeedButton
      Left = 206
      Top = 10
      Width = 89
      Height = 38
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = sbDeleteClick
    end
    object sbPost: TSpeedButton
      Left = 669
      Top = 10
      Width = 89
      Height = 38
      Anchors = [akTop, akRight]
      Caption = '&Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = sbPostClick
      ExplicitLeft = 642
    end
    object sbCancel: TSpeedButton
      Left = 764
      Top = 10
      Width = 89
      Height = 38
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = sbCancelClick
      ExplicitLeft = 737
    end
    object sbRelatorio: TSpeedButton
      Left = 301
      Top = 10
      Width = 89
      Height = 38
      Caption = '&Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = sbRelatorioClick
    end
  end
  object pgCRUD: TPageControl
    Left = 8
    Top = 87
    Width = 856
    Height = 270
    ActivePage = tsCadastro
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object tsCadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
    end
    object tsDados: TTabSheet
      Caption = 'Dados'
      DesignSize = (
        848
        236)
      object lblLb2: TLabel
        Left = 602
        Top = 9
        Width = 42
        Height = 19
        Anchors = [akTop, akRight]
        Caption = 'Filtro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 581
      end
      object lblLb1: TLabel
        Left = 14
        Top = 9
        Width = 67
        Height = 19
        Caption = 'Pesquisa:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object gridDados: TDBGrid
        Left = 14
        Top = 39
        Width = 820
        Height = 194
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsDados
        GradientEndColor = clSilver
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = gridDadosDblClick
      end
      object cbFiltro: TComboBox
        Left = 650
        Top = 6
        Width = 184
        Height = 27
        Cursor = crHandPoint
        Style = csDropDownList
        Anchors = [akTop, akRight]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = cbFiltroChange
      end
      object edFiltro: TEdit
        Left = 87
        Top = 6
        Width = 489
        Height = 27
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = edFiltroChange
      end
    end
  end
  object pnRegistros: TPanel
    Left = 697
    Top = 87
    Width = 165
    Height = 24
    BevelInner = bvLowered
    Caption = 'Registros: 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object dsDados: TDataSource
    AutoEdit = False
    OnStateChange = dsDadosStateChange
    OnDataChange = dsDadosDataChange
    Left = 672
    Top = 24
  end
  object ppRelSimplificado: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279400
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 616
    Top = 371
    Version = '19.0'
    mmColumnWidth = 0
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDbDadosRel: TppDBPipeline
    DataSource = dsDadosRel
    UserName = 'DbDadosRel'
    Left = 534
    Top = 371
  end
  object dsDadosRel: TDataSource
    AutoEdit = False
    Left = 462
    Top = 370
  end
end
