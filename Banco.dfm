object dmBanco: TdmBanco
  OldCreateOrder = False
  Height = 279
  Width = 525
  object fdBanco: TFDConnection
    Params.Strings = (
      'SERVER=DESENV-EDGAR'
      'OSAuthent=Yes'
      'ApplicationName=Architect'
      'Workstation=DESENV-EDGAR'
      'Database=Teste'
      'DriverID=MSSQL')
    TxOptions.AutoStop = False
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object fdsCidade: TFDStoredProc
    Connection = fdBanco
    StoredProcName = 'Teste.dbo.stp_CUDCidade'
    Left = 48
    Top = 144
    ParamData = <
      item
        Position = 2
        Name = '@Operacao'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Codigo_Cidade'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 4
        Name = '@Nome'
        DataType = ftString
        ParamType = ptInput
        Size = 80
      end
      item
        Position = 5
        Name = '@Estado'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 6
        Name = '@Cep_Inicial'
        DataType = ftString
        ParamType = ptInput
        Size = 9
      end
      item
        Position = 7
        Name = '@Cep_Final'
        DataType = ftString
        ParamType = ptInput
        Size = 9
      end>
  end
  object fdCidade: TFDQuery
    CachedUpdates = True
    Connection = fdBanco
    SQL.Strings = (
      'SELECT Codigo_Cidade,'
      '       Nome,'
      '       Estado,'
      '       Cep_Inicial,'
      '       Cep_Final'
      '  FROM Cidades')
    Left = 48
    Top = 80
    object fdCidadeCodigo_Cidade: TFDAutoIncField
      AutoGenerateValue = arNone
      FieldName = 'Codigo_Cidade'
      Origin = 'Codigo_Cidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ServerAutoIncrement = False
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
      IdentityInsert = True
    end
    object fdCidadeNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 80
    end
    object fdCidadeEstado: TStringField
      FieldName = 'Estado'
      Origin = 'Estado'
      Required = True
      FixedChar = True
      Size = 2
    end
    object fdCidadeCep_Inicial: TStringField
      FieldName = 'Cep_Inicial'
      Origin = 'Cep_Inicial'
      Required = True
      EditMask = '99999-999;1;_'
      Size = 9
    end
    object fdCidadeCep_Final: TStringField
      FieldName = 'Cep_Final'
      Origin = 'Cep_Final'
      Required = True
      EditMask = '99999-999;1;_'
      Size = 9
    end
  end
  object fdsCliente: TFDStoredProc
    Connection = fdBanco
    StoredProcName = 'Teste.dbo.stp_CUDCliente'
    Left = 112
    Top = 144
    ParamData = <
      item
        Position = 2
        Name = '@Operacao'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Codigo_Cliente'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 4
        Name = '@CGC_CPF_Cliente'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 5
        Name = '@Nome'
        DataType = ftString
        ParamType = ptInput
        Size = 120
      end
      item
        Position = 6
        Name = '@Telefone'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 7
        Name = '@Endereco'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 8
        Name = '@Bairro'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 9
        Name = '@Complemento'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 10
        Name = '@E_mail'
        DataType = ftString
        ParamType = ptInput
        Size = 80
      end
      item
        Position = 11
        Name = '@Codigo_Cidade'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@Cep'
        DataType = ftString
        ParamType = ptInput
        Size = 9
      end>
  end
  object fdCliente: TFDQuery
    CachedUpdates = True
    Connection = fdBanco
    SQL.Strings = (
      '    SELECT Cli.Codigo_Cliente,'
      '           Cli.CGC_CPF_Cliente,'
      '           Cli.Nome,'
      '           Cli.Telefone,'
      '           Cli.Endereco,'
      '           Cli.Bairro,'
      '           Cli.Complemento,'
      '           Cli.E_mail,'
      '           Cli.Cep,'
      '           Cid.Nome AS Cidade,'
      '           Cli.Codigo_Cidade'
      '      FROM Clientes AS Cli'
      
        'INNER JOIN Cidades  AS Cid ON Cli.Codigo_Cidade = Cid.Codigo_Cid' +
        'ade')
    Left = 112
    Top = 80
    object fdClienteCodigo_Cliente: TFDAutoIncField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Cliente'
      Origin = 'Codigo_Cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ServerAutoIncrement = False
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
      IdentityInsert = True
    end
    object fdClienteCGC_CPF_Cliente: TStringField
      FieldName = 'CGC_CPF_Cliente'
      Origin = 'CGC_CPF_Cliente'
      Required = True
    end
    object fdClienteNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 120
    end
    object fdClienteTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'Telefone'
      EditMask = '!\(99\)99999-9999;1;_'
    end
    object fdClienteEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'Endereco'
      Required = True
      Size = 100
    end
    object fdClienteBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'Bairro'
      Required = True
      Size = 100
    end
    object fdClienteComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'Complemento'
      Size = 50
    end
    object fdClienteE_mail: TStringField
      FieldName = 'E_mail'
      Origin = 'E_mail'
      Size = 80
    end
    object fdClienteCep: TStringField
      FieldName = 'Cep'
      Origin = 'Cep'
      Required = True
      EditMask = '99999-999;1;_'
      Size = 9
    end
    object fdClienteCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'Cidade'
      Required = True
      Size = 80
    end
    object fdClienteCodigo_Cidade: TIntegerField
      FieldName = 'Codigo_Cidade'
      Origin = 'Codigo_Cidade'
      Required = True
    end
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 448
    Top = 8
  end
  object fdLookCidade: TFDQuery
    Connection = fdBanco
    SQL.Strings = (
      'SELECT Codigo_Cidade,'
      '       Nome'
      '  FROM Cidades')
    Left = 112
    Top = 208
    object fdLookCidadeCodigo_Cidade: TFDAutoIncField
      FieldName = 'Codigo_Cidade'
      Origin = 'Codigo_Cidade'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdLookCidadeNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 80
    end
  end
  object fdRelCidade: TFDQuery
    Active = True
    Connection = fdBanco
    SQL.Strings = (
      'SELECT Codigo_Cidade,'
      '       Nome,'
      '       Estado,'
      '       Cep_Inicial,'
      '       Cep_Final'
      '  FROM Cidades'
      'ORDER BY Nome')
    Left = 456
    Top = 136
    object FDAutoIncField1: TFDAutoIncField
      AutoGenerateValue = arNone
      FieldName = 'Codigo_Cidade'
      Origin = 'Codigo_Cidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ServerAutoIncrement = False
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
      IdentityInsert = True
    end
    object StringField1: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 80
    end
    object StringField2: TStringField
      FieldName = 'Estado'
      Origin = 'Estado'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'Cep_Inicial'
      Origin = 'Cep_Inicial'
      Required = True
      EditMask = '99999-999;1;_'
      Size = 9
    end
    object StringField4: TStringField
      FieldName = 'Cep_Final'
      Origin = 'Cep_Final'
      Required = True
      EditMask = '99999-999;1;_'
      Size = 9
    end
  end
  object fdRelCliente: TFDQuery
    Active = True
    Connection = fdBanco
    SQL.Strings = (
      '    SELECT Cli.Codigo_Cliente,'
      '           Cli.CGC_CPF_Cliente,'
      '           Cli.Nome,'
      '           Cli.Telefone,'
      '           Cli.Endereco,'
      '           Cli.Bairro,'
      '           Cli.Complemento,'
      '           Cli.E_mail,'
      '           Cli.Cep,'
      '           Cid.Nome AS Cidade,'
      '           Cli.Codigo_Cidade'
      '      FROM Clientes AS Cli'
      
        'INNER JOIN Cidades  AS Cid ON Cli.Codigo_Cidade = Cid.Codigo_Cid' +
        'ade'
      'ORDER BY Cid.Nome, Cli.Nome')
    Left = 456
    Top = 80
    object FDAutoIncField2: TFDAutoIncField
      AutoGenerateValue = arNone
      FieldName = 'Codigo_Cliente'
      Origin = 'Codigo_Cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ServerAutoIncrement = False
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
      IdentityInsert = True
    end
    object StringField5: TStringField
      FieldName = 'CGC_CPF_Cliente'
      Origin = 'CGC_CPF_Cliente'
      Required = True
    end
    object StringField6: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 120
    end
    object StringField7: TStringField
      FieldName = 'Telefone'
      Origin = 'Telefone'
      EditMask = '!\(99\)99999-9999;1;_'
    end
    object StringField8: TStringField
      FieldName = 'Endereco'
      Origin = 'Endereco'
      Required = True
      Size = 100
    end
    object StringField9: TStringField
      FieldName = 'Bairro'
      Origin = 'Bairro'
      Required = True
      Size = 100
    end
    object StringField10: TStringField
      FieldName = 'Complemento'
      Origin = 'Complemento'
      Size = 50
    end
    object StringField11: TStringField
      FieldName = 'E_mail'
      Origin = 'E_mail'
      Size = 80
    end
    object StringField12: TStringField
      FieldName = 'Cep'
      Origin = 'Cep'
      Required = True
      EditMask = '99999-999;1;_'
      Size = 9
    end
    object StringField13: TStringField
      FieldName = 'Cidade'
      Origin = 'Cidade'
      Required = True
      Size = 80
    end
    object IntegerField1: TIntegerField
      FieldName = 'Codigo_Cidade'
      Origin = 'Codigo_Cidade'
      Required = True
    end
  end
  object fdRelCliCidEst: TFDQuery
    Connection = fdBanco
    SQL.Strings = (
      '    SELECT Cli.Nome,'
      '           Cli.Cep,'
      '           Cid.Estado,'
      '           Cid.Nome AS Cidade'
      '      FROM Clientes AS Cli'
      
        'INNER JOIN Cidades  AS Cid ON Cli.Codigo_Cidade = Cid.Codigo_Cid' +
        'ade'
      
        '     WHERE ((:CodigoCli = 0) OR (Cli.Codigo_Cliente = :CodigoCli' +
        '))'
      
        '       AND ((:CodigoCid = 0) OR (Cli.Codigo_Cidade = :CodigoCid)' +
        ')'
      '       AND ((:Estado = '#39#39') OR (Cid.Estado = :Estado))'
      '  ORDER BY Cid.Estado,'
      '           Cid.Nome,'
      '           Cli.Nome')
    Left = 456
    Top = 208
    ParamData = <
      item
        Name = 'CODIGOCLI'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGOCID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ESTADO'
        DataType = ftString
        ParamType = ptInput
      end>
    object fdRelCliCidEstNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 120
    end
    object fdRelCliCidEstCep: TStringField
      FieldName = 'Cep'
      Origin = 'Cep'
      Required = True
      Size = 9
    end
    object fdRelCliCidEstEstado: TStringField
      FieldName = 'Estado'
      Origin = 'Estado'
      Required = True
      FixedChar = True
      Size = 2
    end
    object fdRelCliCidEstCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'Cidade'
      Required = True
      Size = 80
    end
  end
end
