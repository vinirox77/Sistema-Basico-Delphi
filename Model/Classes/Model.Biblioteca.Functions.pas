unit Model.Biblioteca.Functions;

interface

uses
    IniFiles
  , System.SysUtils
  , Vcl.Forms
  ;

  procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor : String);
  function GetValorIni(pLocal, pSessao, pSubSessao : String) : string;

implementation


procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor : String);
var
  vArquivo : TIniFile;
begin
  vArquivo := TIniFile.Create(pLocal);
  try
    vArquivo.WriteString(pSessao, pSubSessao, pValor);

  finally
    vArquivo.Free;
  end;
end;

function GetValorIni(pLocal, pSessao, pSubSessao : String) : string;
var
  vArquivo : TIniFile;
begin
  vArquivo := TIniFile.Create(pLocal);
  try
    Result := vArquivo.ReadString(pSessao, pSubSessao, '');
  finally
    vArquivo.Free;
  end;
end;

end.
