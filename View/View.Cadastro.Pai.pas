unit View.Cadastro.Pai;

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
  , Vcl.Buttons
  , FireDAC.Stan.Intf
  , FireDAC.Stan.Option
  , FireDAC.Stan.Param
  , FireDAC.Stan.Error
  , FireDAC.DatS
  , FireDAC.Phys.Intf
  , FireDAC.DApt.Intf
  , FireDAC.Stan.Async
  , FireDAC.DApt
  , FireDAC.Comp.Client
  , Data.DB
  , FireDAC.Comp.DataSet
  , DmDados
  ;

type
  TfrmCadastroPai = class(TForm)
    pnlCabecalho: TPanel;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    fdQryCadastro: TFDQuery;
    fdUpdCadastro: TFDUpdateSQL;
    fdTransactionCadastro: TFDTransaction;
    dsCadastro: TDataSource;
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPai: TfrmCadastroPai;

implementation

{$R *.dfm}

procedure TfrmCadastroPai.btnCancelarClick(Sender: TObject);
begin
  if fdQryCadastro.State in [dsEdit, dsInsert] then
  begin
    fdQryCadastro.Cancel;
    fdTransactionCadastro.RollbackRetaining;
  end;
end;

procedure TfrmCadastroPai.btnExcluirClick(Sender: TObject);
begin
  fdQryCadastro.Edit;
  fdQryCadastro.FieldByName('DT_EXCLUIDO').AsDateTime := Date;
  fdTransactionCadastro.StartTransaction;
  fdQryCadastro.Post;
  fdTransactionCadastro.CommitRetaining;
  ShowMessage('Arquivo Exclu?do com sucesso.');
end;

procedure TfrmCadastroPai.btnGravarClick(Sender: TObject);
begin
  if fdQryCadastro.State in [dsEdit, dsInsert] then
  begin
    fdTransactionCadastro.StartTransaction;
    fdQryCadastro.Post;
    fdTransactionCadastro.CommitRetaining;
    ShowMessage('Arquivo gravado com sucesso.');
  end;
end;

procedure TfrmCadastroPai.btnNovoClick(Sender: TObject);
begin
  if not (fdQryCadastro.State in [dsEdit, dsInsert]) then
  begin
    fdQryCadastro.Insert;
  end;
end;

procedure TfrmCadastroPai.btnSairClick(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmCadastroPai.FormCreate(Sender: TObject);
begin
  fdQryCadastro.Open();
end;

end.
