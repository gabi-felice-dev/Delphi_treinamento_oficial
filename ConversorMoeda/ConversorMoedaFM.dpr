program ConversorMoedaFM;

uses
  System.StartUpCopy,
  FMX.Forms,
  uConversorMoedaFireMonkey in 'uConversorMoedaFireMonkey.pas' {FrmConversorFM},
  Classe.ConversorMoeda in 'Classe.ConversorMoeda.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmConversorFM, FrmConversorFM);
  Application.Run;
end.
