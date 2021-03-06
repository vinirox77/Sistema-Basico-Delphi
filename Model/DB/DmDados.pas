unit DmDados;

interface

uses
    System.SysUtils
  , System.Classes
  , FireDAC.Stan.Intf
  , FireDAC.Stan.Option
  , FireDAC.Stan.Error
  , FireDAC.UI.Intf
  , FireDAC.Phys.Intf
  , FireDAC.Stan.Def
  , FireDAC.Stan.Pool
  , FireDAC.Stan.Async
  , FireDAC.Phys
  , FireDAC.Phys.FB
  , FireDAC.Phys.FBDef
  , FireDAC.VCLUI.Wait
  , Data.DB
  , FireDAC.Comp.Client
  , View.ConfigBanco
  , Model.Biblioteca.Functions
  , Vcl.Forms
  ;

type
  TDataModuleDados = class(TDataModule)
    fdCon: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaBanco;
  public
    { Public declarations }
  end;

var
  DataModuleDados: TDataModuleDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModuleDados.CarregaBanco;
begin
  try
    fdCon.Params.Database := GetValorIni(ExtractFilePath(Application.ExeName) + 'config.ini',
    'CONFIGURACAO', 'LOCAL_DB');
    fdCon.Connected := True;

    Except on E: Exception do
    begin
      frmConfigBanco.ShowModal;
    end;
  end;
end;

procedure TDataModuleDados.DataModuleCreate(Sender: TObject);
begin
  CarregaBanco;
end;

end.
