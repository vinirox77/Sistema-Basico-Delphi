inherited frmCadastroEstado: TfrmCadastroEstado
  Caption = 'Cadastro de Estados'
  ClientHeight = 165
  ClientWidth = 486
  ExplicitWidth = 492
  ExplicitHeight = 194
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 12
    Top = 56
    Width = 57
    Height = 13
    Caption = 'ID_ESTADO'
  end
  object Label2: TLabel [1]
    Left = 12
    Top = 99
    Width = 29
    Height = 13
    Caption = 'NOME'
  end
  object Label4: TLabel [2]
    Left = 160
    Top = 112
    Width = 29
    Height = 13
    Caption = 'NOME'
  end
  object Label3: TLabel [3]
    Left = 76
    Top = 56
    Width = 29
    Height = 13
    Caption = 'SIGLA'
  end
  inherited pnlCabecalho: TPanel
    Width = 486
    inherited btnSair: TBitBtn
      Left = 396
      Top = 1
      Height = 39
      Align = alRight
      ExplicitLeft = 419
    end
  end
  object DBEdit2: TDBEdit [5]
    Left = 12
    Top = 115
    Width = 185
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit1: TDBEdit [6]
    Left = 12
    Top = 72
    Width = 58
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [7]
    Left = 76
    Top = 72
    Width = 58
    Height = 21
    DataField = 'SIGLA'
    DataSource = dsCadastro
    TabOrder = 3
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ESTADO_ID'
    UpdateOptions.AutoIncFields = 'ID_ESTADO'
    UpdateObject = nil
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    Left = 288
    Top = 48
    object fdQryCadastroID_ESTADO: TFDAutoIncField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object fdQryCadastroSIGLA: TWideStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 2
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 288
    Top = 104
  end
  inherited fdTransactionCadastro: TFDTransaction
    Left = 376
    Top = 104
  end
  inherited dsCadastro: TDataSource
    Left = 368
    Top = 48
  end
end
