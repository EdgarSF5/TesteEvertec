inherited FCidade: TFCidade
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 19
  inherited pnTitulo: TPanel
    inherited Label1: TLabel
      Width = 276
      Caption = 'Cadastro de Cidade'
      ExplicitWidth = 276
    end
  end
  inherited pgCRUD: TPageControl
    inherited tsCadastro: TTabSheet
      object Label2: TLabel
        Left = 24
        Top = 68
        Width = 56
        Height = 19
        Caption = 'C'#243'digo:'
      end
      object Label3: TLabel
        Left = 24
        Top = 101
        Width = 57
        Height = 19
        Caption = '*Nome:'
      end
      object Label4: TLabel
        Left = 18
        Top = 134
        Width = 62
        Height = 19
        Caption = '*Estado:'
      end
      object Label5: TLabel
        Left = 346
        Top = 134
        Width = 102
        Height = 19
        Caption = '*CEP (Inicial):'
      end
      object Label6: TLabel
        Left = 581
        Top = 134
        Width = 93
        Height = 19
        Caption = '*CEP (Final):'
      end
      object edNome: TDBEdit
        Left = 87
        Top = 98
        Width = 714
        Height = 27
        DataField = 'Nome'
        DataSource = dsDados
        TabOrder = 1
      end
      object cbEstado: TDBComboBox
        Left = 86
        Top = 131
        Width = 67
        Height = 27
        DataField = 'Estado'
        DataSource = dsDados
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
        TabOrder = 2
      end
      object edCodigo: TDBEdit
        Left = 86
        Top = 65
        Width = 60
        Height = 27
        DataField = 'Codigo_Cidade'
        DataSource = dsDados
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object edCepInicial: TDBEdit
        Left = 454
        Top = 131
        Width = 121
        Height = 27
        DataField = 'Cep_Inicial'
        DataSource = dsDados
        TabOrder = 3
      end
      object edCepFinal: TDBEdit
        Left = 680
        Top = 131
        Width = 120
        Height = 27
        DataField = 'Cep_Final'
        DataSource = dsDados
        TabOrder = 4
      end
    end
    inherited tsDados: TTabSheet
      inherited gridDados: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo_Cidade'
            Title.Caption = 'C'#243'digo'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Width = 500
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cep_Final'
            Title.Caption = 'CEP (Inicial)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cep_Final'
            Title.Caption = 'CEP (Final)'
            Visible = True
          end>
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmBanco.fdCidade
  end
  inherited ppRelSimplificado: TppReport
    AutoStop = False
    DataPipeline = ppDbDadosRel
    DataPipelineName = 'ppDbDadosRel'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
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
        Caption = 'Cidades Cadastradas'
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
        mmWidth = 91546
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 3
        Weight = 2.250000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5292
        mmWidth = 200555
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        RTLReading = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP (Inicial)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 151843
        mmTop = 1323
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        RTLReading = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP (Final)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 170893
        mmTop = 1323
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        RTLReading = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 189943
        mmTop = 1323
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
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
        mmLeft = 1773
        mmTop = 1323
        mmWidth = 149225
        BandType = 0
        LayerName = Foreground
      end
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
        DataField = 'Cep_Final'
        DataPipeline = ppDbDadosRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDbDadosRel'
        mmHeight = 5027
        mmLeft = 151843
        mmTop = 529
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        RTLReading = False
        Border.mmPadding = 0
        DataField = 'Cep_Inicial'
        DataPipeline = ppDbDadosRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDbDadosRel'
        mmHeight = 5027
        mmLeft = 170893
        mmTop = 529
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        RTLReading = False
        Border.mmPadding = 0
        DataField = 'Estado'
        DataPipeline = ppDbDadosRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDbDadosRel'
        mmHeight = 5027
        mmLeft = 189943
        mmTop = 529
        mmWidth = 11377
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
        mmLeft = 1773
        mmTop = 529
        mmWidth = 149225
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
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Brush.Color = clSilver
        Pen.Color = clSilver
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
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
  inherited ppDbDadosRel: TppDBPipeline
    object ppDbDadosRelppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo_Cidade'
      FieldName = 'Codigo_Cidade'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object ppDbDadosRelppField2: TppField
      FieldAlias = 'Nome'
      FieldName = 'Nome'
      FieldLength = 80
      DisplayWidth = 80
      Position = 1
      SelectOrder = 3
    end
    object ppDbDadosRelppField3: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 2
      SelectOrder = 2
    end
    object ppDbDadosRelppField4: TppField
      FieldAlias = 'Cep_Inicial'
      FieldName = 'Cep_Inicial'
      FieldLength = 9
      DisplayWidth = 9
      Position = 3
      SelectOrder = 1
    end
    object ppDbDadosRelppField5: TppField
      FieldAlias = 'Cep_Final'
      FieldName = 'Cep_Final'
      FieldLength = 9
      DisplayWidth = 9
      Position = 4
      SelectOrder = 0
    end
  end
  inherited dsDadosRel: TDataSource
    DataSet = dmBanco.fdRelCidade
  end
end
