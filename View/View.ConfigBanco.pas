unit View.ConfigBanco;

interface

uses
    Winapi.Windows
  , Winapi.Messages
  , System.SysUtils
  , System.Variants
  , System.Classes
  , Vcl.Graphics
  , Vcl.Controls
  , Vcl.Forms
  , Vcl.Dialogs
  , Vcl.ExtCtrls
  , Vcl.StdCtrls
  , Vcl.Imaging.pngimage
  , Model.Biblioteca.Functions
  ;

type
  TfrmConfigBanco = class(TForm)
    imgBd: TImage;
    edtLocal: TEdit;
    lblLocalBanco: TLabel;
    btnConfigurar: TButton;
    opnPastas: TOpenDialog;
    procedure btnConfigurarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure Configurar;
  public
    { Public declarations }
  end;

var
  frmConfigBanco: TfrmConfigBanco;

implementation

{$R *.dfm}

{ TfrmConfigBanco }

procedure TfrmConfigBanco.btnConfigurarClick(Sender: TObject);
begin
  Configurar;
end;

procedure TfrmConfigBanco.Configurar;
var
  vFileName: string;
begin
  if opnPastas.Execute then
  begin
    edtLocal.Text := opnPastas.FileName;
    vFileName     := ExtractFilePath(Application.ExeName) + 'config.ini';
    SetValorIni(vFileName, 'CONFIGURACAO', 'LOCAL_DB', edtLocal.Text);
    Application.MessageBox('Banco Configurado com sucesso', 'Mensagem',  MB_OK + MB_ICONINFORMATION);
    Self.Close;
  end;
end;

procedure TfrmConfigBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
