program prjCursoBasico;

uses
  Vcl.Forms,
  View.Main in 'View\View.Main.pas' {frmMain},
  DmDados in 'Model\DB\DmDados.pas' {DataModuleDados: TDataModule},
  Model.Biblioteca.Functions in 'Model\Classes\Model.Biblioteca.Functions.pas',
  View.ConfigBanco in 'View\View.ConfigBanco.pas' {frmConfigBanco},
  View.Cadastro.Pai in 'View\View.Cadastro.Pai.pas' {frmCadastroPai},
  View.Cadastro.Cliente in 'View\View.Cadastro.Cliente.pas' {frmCadastroCliente},
  View.Cadastro.Estado in 'View\View.Cadastro.Estado.pas' {frmCadastroEstado},
  View.Cadastro.Cidade in 'View\View.Cadastro.Cidade.pas' {frmCadastroCidades};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmConfigBanco, frmConfigBanco);
  Application.CreateForm(TDataModuleDados, DataModuleDados);
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.CreateForm(TfrmCadastroEstado, frmCadastroEstado);
  Application.CreateForm(TfrmCadastroCidades, frmCadastroCidades);
  Application.Run;
end.
