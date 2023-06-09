unit uConversorMoedaFireMonkey;

interface

uses
  System.SysUtils, System.Classes, System.Types, System.UITypes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.StdCtrls, FMX.Controls.Presentation, Classe.ConversorMoeda;

type
  TFrmConversorFM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    edtReal: TEdit;
    Label2: TLabel;
    Panel2: TPanel;
    edtDolar: TEdit;
    Label3: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure edtRealKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtDolarKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);

  private
    procedure LimparEdits;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConversorFM: TFrmConversorFM;

implementation

{$R *.fmx}

procedure TFrmConversorFM.Button1Click(Sender: TObject);
begin
  LimparEdits;
end;

procedure TFrmConversorFM.LimparEdits;
var i : integer;
begin
  for i := FrmConversorFM.ComponentCount -1 downto 0 do
  begin
    if (FrmConversorFM.Components[i] is TEdit) then
       (FrmConversorFM.Components[i] as TEdit).text := '';
  end;
end;

procedure TFrmConversorFM.edtDolarKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 var real : double;
  if TryStrToFloat(edtDolar.Text, real) then
  begin
    edtReal.Text  := TConversorMoeda.DolarparaReal(edtDolar.Text);
    edtDolar.Text := FormatFloat('U$ 0.,00', StrToFloat(edtDolar.Text));
  end;
end;

procedure TFrmConversorFM.edtRealKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 var real : double;
  if TryStrToFloat(edtReal.Text, real) then
  begin
    edtDolar.Text := TConversorMoeda.RealparaDolar(edtReal.Text);
    edtReal.Text  := FormatFloat('R$ 0.,00', StrToFloat(edtReal.Text));
  end;
end;

end.
