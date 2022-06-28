object frmCadastroPai: TfrmCadastroPai
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  ClientHeight = 396
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 660
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnNovo: TBitBtn
      Left = 0
      Top = 0
      Width = 89
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnGravar: TBitBtn
      Left = 95
      Top = 0
      Width = 89
      Height = 41
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnGravarClick
    end
    object btnCancelar: TBitBtn
      Left = 190
      Top = 0
      Width = 89
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnExcluir: TBitBtn
      Left = 285
      Top = 0
      Width = 89
      Height = 41
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnSair: TBitBtn
      Left = 571
      Top = 0
      Width = 89
      Height = 41
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
  end
  object fdQryCadastro: TFDQuery
    Connection = DataModuleDados.fdCon
    Transaction = fdTransactionCadastro
    UpdateObject = fdUpdCadastro
    Left = 592
    Top = 192
  end
  object fdUpdCadastro: TFDUpdateSQL
    Connection = DataModuleDados.fdCon
    Left = 592
    Top = 248
  end
  object fdTransactionCadastro: TFDTransaction
    Connection = DataModuleDados.fdCon
    Left = 592
    Top = 312
  end
  object dsCadastro: TDataSource
    DataSet = fdQryCadastro
    Left = 592
    Top = 144
  end
end
