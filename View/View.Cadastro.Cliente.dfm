inherited frmCadastroCliente: TfrmCadastroCliente
  Caption = 'Cadastro de Clientes'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 64
    Width = 58
    Height = 13
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 88
    Top = 64
    Width = 78
    Height = 13
    Caption = 'RAZAO_SOCIAL'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 294
    Top = 64
    Width = 50
    Height = 13
    Caption = 'FANTASIA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 500
    Top = 64
    Width = 50
    Height = 13
    Caption = 'CPF_CPNJ'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 24
    Top = 120
    Width = 41
    Height = 13
    Caption = 'TIPO_FJ'
  end
  object Label6: TLabel [5]
    Left = 143
    Top = 120
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit5
  end
  object Label7: TLabel [6]
    Left = 349
    Top = 120
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit6
  end
  object Label8: TLabel [7]
    Left = 24
    Top = 174
    Width = 22
    Height = 13
    Caption = 'SITE'
    FocusControl = DBEdit7
  end
  object Label9: TLabel [8]
    Left = 230
    Top = 174
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit8
  end
  object Label10: TLabel [9]
    Left = 24
    Top = 232
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit9
  end
  object Label11: TLabel [10]
    Left = 230
    Top = 232
    Width = 10
    Height = 13
    Caption = 'IE'
    FocusControl = DBEdit10
  end
  object Label12: TLabel [11]
    Left = 392
    Top = 232
    Width = 12
    Height = 13
    Caption = 'IM'
    FocusControl = DBEdit11
  end
  object DBEdit1: TDBEdit [13]
    Left = 24
    Top = 80
    Width = 58
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [14]
    Left = 88
    Top = 80
    Width = 200
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [15]
    Left = 294
    Top = 80
    Width = 200
    Height = 21
    DataField = 'FANTASIA'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [16]
    Left = 500
    Top = 80
    Width = 120
    Height = 21
    DataField = 'CPF_CPNJ'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object ComboBoxTipoFJ: TDBComboBox [17]
    Left = 24
    Top = 139
    Width = 113
    Height = 21
    DataField = 'TIPO_FJ'
    DataSource = dsCadastro
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [18]
    Left = 143
    Top = 139
    Width = 200
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [19]
    Left = 349
    Top = 139
    Width = 271
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [20]
    Left = 24
    Top = 190
    Width = 200
    Height = 21
    DataField = 'SITE'
    DataSource = dsCadastro
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [21]
    Left = 230
    Top = 190
    Width = 320
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsCadastro
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [22]
    Left = 24
    Top = 248
    Width = 200
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsCadastro
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [23]
    Left = 230
    Top = 248
    Width = 150
    Height = 21
    DataField = 'IE'
    DataSource = dsCadastro
    TabOrder = 11
  end
  object DBEdit11: TDBEdit [24]
    Left = 392
    Top = 248
    Width = 158
    Height = 21
    DataField = 'IM'
    DataSource = dsCadastro
    TabOrder = 12
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CLIENTE_ID'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 608
    Top = 232
    object fdQryCadastroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object fdQryCadastroFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object fdQryCadastroCPF_CPNJ: TWideStringField
      FieldName = 'CPF_CPNJ'
      Origin = 'CPF_CPNJ'
    end
    object fdQryCadastroTIPO_FJ: TWideStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      Size = 1
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object fdQryCadastroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryCadastroSITE: TWideStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object fdQryCadastroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryCadastroCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object fdQryCadastroNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdQryCadastroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryCadastroIE: TWideStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 30
    end
    object fdQryCadastroIM: TWideStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 30
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 608
    Top = 288
  end
  inherited fdTransactionCadastro: TFDTransaction
    Left = 608
    Top = 352
  end
  inherited dsCadastro: TDataSource
    Left = 608
    Top = 184
  end
end
