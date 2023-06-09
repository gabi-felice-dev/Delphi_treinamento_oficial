unit uFuncoes;

interface

uses System.SysUtils, System.Variants, IdBaseComponent, IdComponent, System.Classes,
   IdTCPConnection, IdTCPClient, IdHTTP, System.JSON,  Winapi.WinSock;

function GetDollarQuote: Double;

implementation

function GetDollarQuote: Double;
var
  http: TIdHTTP;
  response: TStringStream;
  jsonResponse: TJSONObject;
  exchangeRate: Double;
  obj, data: TJSONObject;
  url: string;
begin
  // Crie um objeto TIdHTTP para fazer a solicita��o HTTP � API do Banco Central do Brasil
  http := TIdHTTP.Create(nil);
  response := TStringStream.Create('');

  try
    // Fa�a a solicita��o GET para a API do Banco Central do Brasil
    http.Get('https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoDolarDia', response);

    // Parseie a resposta JSON da API para obter a cota��o do d�lar
    jsonResponse := TJSONObject.ParseJSONValue(response.DataString) as TJSONObject;
    //exchangeRate := jsonResponse.GetValue('value').GetValue(0).GetValue('cotacaoVenda').Value.ToDouble;

    data := obj.Values['value'] as TJSONObject;
    url := data.Values['cotacaoVenda'].Value;
    exchangeRate := StrToFloat(url);
  finally
    // Libere os recursos usados
    response.Free();
    http.Free();
  end;

  Result := exchangeRate;
end;


end.

