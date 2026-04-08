object FRelatorio: TFRelatorio
  Left = 0
  Top = 0
  ClientHeight = 295
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Label2: TLabel
    Left = 47
    Top = 112
    Width = 132
    Height = 19
    Caption = 'C'#243'digo do Cliente:'
  end
  object Label3: TLabel
    Left = 127
    Top = 146
    Width = 54
    Height = 19
    Caption = 'Cidade:'
  end
  object Label4: TLabel
    Left = 127
    Top = 178
    Width = 53
    Height = 19
    Caption = 'Estado:'
  end
  object pnTitulo: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 81
    Align = alTop
    Color = 14077867
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -20
    ExplicitWidth = 872
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 251
      Height = 39
      Caption = 'Filtro do Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object edCodigoCliente: TEdit
    Left = 185
    Top = 109
    Width = 64
    Height = 27
    TabOrder = 1
  end
  object cbCidade: TDBLookupComboBox
    Left = 187
    Top = 142
    Width = 145
    Height = 27
    KeyField = 'Codigo_Cidade'
    ListField = 'Nome'
    ListSource = dsLookCidade
    TabOrder = 2
  end
  object cbEstado: TComboBox
    Left = 187
    Top = 175
    Width = 62
    Height = 27
    TabOrder = 3
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
  end
  object pnAcoes: TPanel
    Left = 0
    Top = 234
    Width = 433
    Height = 61
    Align = alBottom
    TabOrder = 4
    ExplicitLeft = -253
    ExplicitTop = 258
    ExplicitWidth = 872
    DesignSize = (
      433
      61)
    object sbExcel: TSpeedButton
      Left = 203
      Top = 10
      Width = 89
      Height = 38
      Caption = '&Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = sbExcelClick
    end
    object sbClose: TSpeedButton
      Left = 328
      Top = 10
      Width = 89
      Height = 38
      Anchors = [akTop, akRight]
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = sbCloseClick
      ExplicitLeft = 514
    end
    object sbPDF: TSpeedButton
      Left = 108
      Top = 10
      Width = 89
      Height = 38
      Caption = '&PDF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = sbPDFClick
    end
    object sbVisualizar: TSpeedButton
      Left = 13
      Top = 10
      Width = 89
      Height = 38
      Caption = '&Visualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = sbVisualizarClick
    end
  end
  object dsDadosRel: TDataSource
    AutoEdit = False
    DataSet = dmBanco.fdRelCliCidEst
    Left = 373
    Top = 27
  end
  object ppDbDadosRel: TppDBPipeline
    DataSource = dsDadosRel
    UserName = 'DbDadosRel'
    Left = 373
    Top = 147
    object ppDbDadosRelppField1: TppField
      FieldAlias = 'Nome'
      FieldName = 'Nome'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDbDadosRelppField2: TppField
      FieldAlias = 'Cep'
      FieldName = 'Cep'
      FieldLength = 9
      DisplayWidth = 9
      Position = 1
    end
    object ppDbDadosRelppField3: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 2
    end
    object ppDbDadosRelppField4: TppField
      FieldAlias = 'Cidade'
      FieldName = 'Cidade'
      FieldLength = 80
      DisplayWidth = 80
      Position = 3
    end
  end
  object ppRel: TppReport
    AutoStop = False
    DataPipeline = ppDbDadosRel
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
    Left = 373
    Top = 91
    Version = '19.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDbDadosRel'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Brush.Color = clSilver
        Pen.Color = clSilver
        mmHeight = 12435
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        RTLReading = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Clientes por Estado/Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'ARIAL'
        Font.Size = 24
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9790
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 112977
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        RTLReading = False
        Border.mmPadding = 0
        DataField = 'Cep'
        DataPipeline = ppDbDadosRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDbDadosRel'
        mmHeight = 5027
        mmLeft = 186002
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        RTLReading = False
        Border.mmPadding = 0
        DataField = 'Nome'
        DataPipeline = ppDbDadosRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDbDadosRel'
        mmHeight = 5027
        mmLeft = 7938
        mmTop = 529
        mmWidth = 176742
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        Brush.Color = clSilver
        Pen.Color = clSilver
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 3
        Weight = 2.250000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5292
        mmWidth = 200555
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        RTLReading = False
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 29898
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        RTLReading = False
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 191559
        mmTop = 1323
        mmWidth = 10319
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Estado'
      DataPipeline = ppDbDadosRel
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDbDadosRel'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText3'
          RTLReading = False
          Border.mmPadding = 0
          DataField = 'Estado'
          DataPipeline = ppDbDadosRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDbDadosRel'
          mmHeight = 4498
          mmLeft = 13498
          mmTop = 265
          mmWidth = 4763
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label4'
          RTLReading = False
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Estado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 530
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Border.mmPadding = 0
          Pen.Color = clGray
          Pen.Width = 3
          Weight = 2.250000000000000000
          mmHeight = 1323
          mmLeft = 1323
          mmTop = 4496
          mmWidth = 201877
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Cidade'
      DataPipeline = ppDbDadosRel
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDbDadosRel'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 10319
        mmPrintPosition = 0
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Border.mmPadding = 0
          Pen.Color = clGray
          Pen.Width = 3
          Weight = 2.250000000000000000
          mmHeight = 1588
          mmLeft = 4493
          mmTop = 5290
          mmWidth = 198702
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label2'
          RTLReading = False
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 186002
          mmTop = 6350
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          RTLReading = False
          Border.mmPadding = 0
          DataField = 'Cidade'
          DataPipeline = ppDbDadosRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDbDadosRel'
          mmHeight = 4498
          mmLeft = 4493
          mmTop = 1059
          mmWidth = 142611
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          RTLReading = False
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 7938
          mmTop = 6350
          mmWidth = 176742
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
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
  object dsLookCidade: TDataSource
    AutoEdit = False
    DataSet = dmBanco.fdLookCidade
    Left = 309
    Top = 27
  end
end
