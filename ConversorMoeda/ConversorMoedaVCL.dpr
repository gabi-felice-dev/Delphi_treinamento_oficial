program ConversorMoedaVCL;

uses
  Vcl.Forms,
  uConversorMoedaVCL in 'uConversorMoedaVCL.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
