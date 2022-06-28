unit View.Main;

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
  , FireDAC.Stan.Param
  , FireDAC.DatS
  , FireDAC.DApt.Intf
  , FireDAC.DApt
  , FireDAC.Comp.DataSet
  , Vcl.StdCtrls, Vcl.Menus
  , View.Cadastro.Cliente
  , View.Cadastro.Estado
  , View.Cadastro.Cidade
  ;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Estados1: TMenuItem;
    Cidades1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  showmessage('Ok');
end;

procedure TfrmMain.Cidades1Click(Sender: TObject);
begin
  frmCadastroCidades.Show;
end;

procedure TfrmMain.Clientes1Click(Sender: TObject);
begin
  frmCadastroCliente.Show;
end;

procedure TfrmMain.Estados1Click(Sender: TObject);
begin
  frmCadastroEstado.Show;
end;

end.
