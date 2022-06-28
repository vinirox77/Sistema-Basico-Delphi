inherited frmCadastroCidades: TfrmCadastroCidades
  Caption = 'Cadastro de Cidades'
  ClientHeight = 172
  ClientWidth = 495
  ExplicitWidth = 501
  ExplicitHeight = 201
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 64
    Width = 55
    Height = 13
    Caption = 'ID_CIDADE'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 104
    Width = 29
    Height = 13
    Caption = 'NOME'
  end
  inherited pnlCabecalho: TPanel
    Width = 495
    inherited btnSair: TBitBtn
      Left = 405
      Top = 1
      Height = 39
      Align = alRight
    end
  end
  object DBEdit1: TDBEdit [3]
    Left = 8
    Top = 80
    Width = 81
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [4]
    Left = 8
    Top = 120
    Width = 241
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 2
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CIDADE_ID'
    UpdateOptions.AutoIncFields = 'ID_CIDADE'
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 368
    Top = 48
    object fdQryCadastroID_CIDADE: TFDAutoIncField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 280
    Top = 104
  end
  inherited fdTransactionCadastro: TFDTransaction
    Left = 360
    Top = 104
  end
  inherited dsCadastro: TDataSource
    Left = 280
    Top = 48
  end
end
