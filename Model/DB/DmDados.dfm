object DataModuleDados: TDataModuleDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 394
  Width = 434
  object fdCon: TFDConnection
    Params.Strings = (
      
        'Database=E:\Vin'#237'cius\Dev\3 - DELPHI\Udemy\Curso Josu'#233'\Model\DB\D' +
        'ADOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3050'
      'CharacterSet=UTF8'
      'DriverID=FB')
    LoginPrompt = False
    Left = 256
    Top = 200
  end
end
