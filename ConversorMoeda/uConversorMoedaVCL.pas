unit uConversorMoedaVCL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,  System.JSON,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    IdHTTP1: TIdHTTP;
    Panel3: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    edtReal: TEdit;
    Panel2: TPanel;
    Label2: TLabel;
    edtDolar: TEdit;
    procedure edtRealKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDolarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.edtDolarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then
 begin
    var resp : TStringStream := TStringStream.Create;
    var templist:  TJSONArray := TJSONArray.Create;
    try
     IdHTTP1.Get('http://127.0.0.1:8080/datasnap/rest/TServerMethods1/ConverteDolarReal/' + edtDolar.Text, resp);

    // templist     := TJSONObject.ParseJSONValue(resp.DataString) as TJSONArray;
    // edtReal.Text := templist.Items[0].GetValue<string>('result');
     edtReal.Text := StringReplace(StringReplace(resp.DataString, '{"result":["','', [] ), '"]}' ,'', []);
    finally
      resp.Free;
      templist.Free;
    end;
 end;
end;

procedure TForm1.edtRealKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then
 begin
    var resp : TStringStream := TStringStream.Create;
    var templist:  TJSONArray := TJSONArray.Create;
    try
     IdHTTP1.Get('http://127.0.0.1:8080/datasnap/rest/TServerMethods1/ConverteRealDolar/' + edtReal.Text, resp);

    // templist     := TJSONObject.ParseJSONValue(resp.DataString) as TJSONArray;
    // edtReal.Text := templist.Items[0].GetValue<string>('result');
     edtDolar.Text := StringReplace(StringReplace(resp.DataString, '{"result":["','', [] ), '"]}' ,'', []);
    finally
      resp.Free;
      templist.Free;
    end;
 end;
end;

end.
