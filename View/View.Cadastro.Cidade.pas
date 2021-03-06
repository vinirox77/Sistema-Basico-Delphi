unit View.Cadastro.Cidade;

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
  , View.Cadastro.Pai
  , FireDAC.Stan.Intf
  , FireDAC.Stan.Option
  , FireDAC.Stan.Param
  , FireDAC.Stan.Error
  , FireDAC.DatS
  , FireDAC.Phys.Intf
  , FireDAC.DApt.Intf
  , FireDAC.Stan.Async
  , FireDAC.DApt
  , Vcl.StdCtrls
  , Vcl.Mask
  , Vcl.DBCtrls
  , Data.DB
  , FireDAC.Comp.DataSet
  , FireDAC.Comp.Client
  , Vcl.Buttons
  , Vcl.ExtCtrls
  ;

type
  TfrmCadastroCidades = class(TfrmCadastroPai)
    fdQryCadastroID_CIDADE: TFDAutoIncField;
    fdQryCadastroNOME: TWideStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCidades: TfrmCadastroCidades;

implementation

{$R *.dfm}

end.
