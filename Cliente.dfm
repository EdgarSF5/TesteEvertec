inherited FCliente: TFCliente
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 19
  inherited pnTitulo: TPanel
    inherited Label1: TLabel
      Width = 276
      Caption = 'Cadastro de Cliente'
      ExplicitWidth = 276
    end
  end
  inherited pgCRUD: TPageControl
    inherited tsCadastro: TTabSheet
      object Label2: TLabel
        Left = 45
        Top = 37
        Width = 56
        Height = 19
        Caption = 'C'#243'digo:'
      end
      object Label3: TLabel
        Left = 45
        Top = 70
        Width = 57
        Height = 19
        Caption = '*Nome:'
      end
      object Label4: TLabel
        Left = 16
        Top = 103
        Width = 85
        Height = 19
        Caption = '*CPF/CNPJ:'
      end
      object Label5: TLabel
        Left = 332
        Top = 103
        Width = 67
        Height = 19
        Caption = 'Telefone:'
      end
      object Label6: TLabel
        Left = 565
        Top = 103
        Width = 51
        Height = 19
        Caption = 'E-mail:'
      end
      object Label7: TLabel
        Left = 38
        Top = 136
        Width = 63
        Height = 19
        Caption = '*Cidade:'
      end
      object Label8: TLabel
        Left = 282
        Top = 136
        Width = 43
        Height = 19
        Caption = '*CEP:'
      end
      object Label9: TLabel
        Left = 474
        Top = 136
        Width = 80
        Height = 19
        Caption = '*Endere'#231'o:'
      end
      object Label10: TLabel
        Left = 44
        Top = 169
        Width = 57
        Height = 19
        Caption = '*Bairro:'
      end
      object Label11: TLabel
        Left = 332
        Top = 169
        Width = 105
        Height = 19
        Caption = 'Complemento:'
      end
      object edCodigo: TDBEdit
        Left = 107
        Top = 34
        Width = 60
        Height = 27
        DataField = 'Codigo_Cliente'
        DataSource = dsDados
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object edNome: TDBEdit
        Left = 108
        Top = 67
        Width = 714
        Height = 27
        DataField = 'Nome'
        DataSource = dsDados
        TabOrder = 1
      end
      object edCpfCnpj: TDBEdit
        Left = 107
        Top = 100
        Width = 219
        Height = 27
        DataField = 'CGC_CPF_Cliente'
        DataSource = dsDados
        TabOrder = 2
      end
      object edTelefone: TDBEdit
        Left = 405
        Top = 100
        Width = 137
        Height = 27
        DataField = 'Telefone'
        DataSource = dsDados
        TabOrder = 3
      end
      object edEmail: TDBEdit
        Left = 622
        Top = 100
        Width = 200
        Height = 27
        DataField = 'E_mail'
        DataSource = dsDados
        TabOrder = 4
      end
      object edCEP: TDBEdit
        Left = 331
        Top = 133
        Width = 137
        Height = 27
        DataField = 'Cep'
        DataSource = dsDados
        TabOrder = 6
      end
      object cbCidade: TDBLookupComboBox
        Left = 107
        Top = 133
        Width = 169
        Height = 27
        DataField = 'Codigo_Cidade'
        DataSource = dsDados
        KeyField = 'Codigo_Cidade'
        ListField = 'Nome'
        ListSource = dsLookCidade
        TabOrder = 5
      end
      object edEndereco: TDBEdit
        Left = 560
        Top = 133
        Width = 263
        Height = 27
        DataField = 'Endereco'
        DataSource = dsDados
        TabOrder = 7
      end
      object edBairro: TDBEdit
        Left = 107
        Top = 166
        Width = 219
        Height = 27
        DataField = 'Bairro'
        DataSource = dsDados
        TabOrder = 8
      end
      object edComplemento: TDBEdit
        Left = 443
        Top = 166
        Width = 173
        Height = 27
        DataField = 'Complemento'
        DataSource = dsDados
        TabOrder = 9
      end
    end
    inherited tsDados: TTabSheet
      inherited gridDados: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo_Cliente'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CGC_CPF_Cliente'
            Title.Caption = 'CPF/CNPJ'
            Width = 200
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
            FieldName = 'Telefone'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Endereco'
            Title.Caption = 'Endere'#231'o'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Bairro'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Complemento'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'E_mail'
            Title.Caption = 'E-mail'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cep'
            Title.Caption = 'CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cidade'
            Width = 300
            Visible = True
          end>
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmBanco.fdCliente
  end
  object dsLookCidade: TDataSource [5]
    AutoEdit = False
    DataSet = dmBanco.fdLookCidade
    Left = 607
    Top = 24
  end
  inherited ppRelSimplificado: TppReport
    AutoStop = False
    DataPipeline = ppDbDadosRel
    DataPipelineName = 'ppDbDadosRel'
    object ppTitleBand1: TppTitleBand [0]
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        Brush.Color = clSilver
        Pen.Color = clSilver
        mmHeight = 12435
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        RTLReading = False
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Clientes Cadastrados'
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
        mmWidth = 92340
        BandType = 1
        LayerName = Foreground1
      end
    end
    object ppHeaderBand1: TppHeaderBand [1]
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand [2]
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
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
        mmLeft = 6888
        mmTop = -266
        mmWidth = 125148
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
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
        mmLeft = 184150
        mmTop = -266
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        RTLReading = False
        Border.mmPadding = 0
        DataField = 'CGC_CPF_Cliente'
        DataPipeline = ppDbDadosRel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDbDadosRel'
        mmHeight = 5027
        mmLeft = 133286
        mmTop = -266
        mmWidth = 46302
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand1: TppFooterBand [3]
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Brush.Color = clSilver
        Pen.Color = clSilver
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
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
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
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
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
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
        LayerName = Foreground1
      end
    end
    object ppGroup1: TppGroup [4]
      BreakName = 'Cidade'
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
        mmHeight = 9790
        mmPrintPosition = 0
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line4'
          Border.mmPadding = 0
          Pen.Color = clGray
          Pen.Width = 3
          Weight = 2.250000000000000000
          mmHeight = 265
          mmLeft = 6888
          mmTop = 8994
          mmWidth = 194998
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line3'
          Border.mmPadding = 0
          Pen.Color = clGray
          Pen.Width = 3
          Weight = 2.250000000000000000
          mmHeight = 1588
          mmLeft = 1323
          mmTop = 5025
          mmWidth = 200555
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label2'
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
          mmLeft = 6888
          mmTop = 5290
          mmWidth = 125148
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label3'
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
          mmLeft = 184150
          mmTop = 5290
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label4'
          RTLReading = False
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'CPF/CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 133286
          mmTop = 5290
          mmWidth = 46302
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText4'
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
          mmLeft = 1323
          mmTop = 794
          mmWidth = 149225
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
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
  end
  inherited ppDbDadosRel: TppDBPipeline
    object ppDbDadosRelppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo_Cliente'
      FieldName = 'Codigo_Cliente'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object ppDbDadosRelppField2: TppField
      FieldAlias = 'CGC_CPF_Cliente'
      FieldName = 'CGC_CPF_Cliente'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
      SelectOrder = 3
    end
    object ppDbDadosRelppField3: TppField
      FieldAlias = 'Nome'
      FieldName = 'Nome'
      FieldLength = 120
      DisplayWidth = 120
      Position = 2
      SelectOrder = 1
    end
    object ppDbDadosRelppField4: TppField
      FieldAlias = 'Telefone'
      FieldName = 'Telefone'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppDbDadosRelppField5: TppField
      FieldAlias = 'Endereco'
      FieldName = 'Endereco'
      FieldLength = 100
      DisplayWidth = 100
      Position = 4
    end
    object ppDbDadosRelppField6: TppField
      FieldAlias = 'Bairro'
      FieldName = 'Bairro'
      FieldLength = 100
      DisplayWidth = 100
      Position = 5
    end
    object ppDbDadosRelppField7: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object ppDbDadosRelppField8: TppField
      FieldAlias = 'E_mail'
      FieldName = 'E_mail'
      FieldLength = 80
      DisplayWidth = 80
      Position = 7
    end
    object ppDbDadosRelppField9: TppField
      FieldAlias = 'Cep'
      FieldName = 'Cep'
      FieldLength = 9
      DisplayWidth = 9
      Position = 8
      SelectOrder = 2
    end
    object ppDbDadosRelppField10: TppField
      FieldAlias = 'Cidade'
      FieldName = 'Cidade'
      FieldLength = 80
      GroupOrder = 0
      DisplayWidth = 80
      Position = 9
      SelectOrder = 0
    end
    object ppDbDadosRelppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo_Cidade'
      FieldName = 'Codigo_Cidade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
  end
  inherited dsDadosRel: TDataSource
    DataSet = dmBanco.fdRelCliente
  end
end
