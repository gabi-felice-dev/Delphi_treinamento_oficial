object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 199
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 453
    Height = 68
    Align = alTop
    Caption = 'Conversor Moedas'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 451
  end
  object Panel1: TPanel
    Left = 0
    Top = 68
    Width = 453
    Height = 45
    Align = alTop
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 451
    object Label1: TLabel
      AlignWithMargins = True
      Left = 27
      Top = 4
      Width = 126
      Height = 37
      Align = alRight
      Caption = 'Valor Real R$:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 25
      ExplicitHeight = 30
    end
    object edtReal: TEdit
      AlignWithMargins = True
      Left = 166
      Top = 4
      Width = 276
      Height = 37
      Margins.Left = 10
      Margins.Right = 10
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = edtRealKeyDown
      ExplicitLeft = 164
      ExplicitHeight = 38
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 453
    Height = 48
    Align = alTop
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 451
    object Label2: TLabel
      AlignWithMargins = True
      Left = 29
      Top = 4
      Width = 124
      Height = 40
      Align = alRight
      Caption = 'Valor Dolar $:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 27
    end
    object edtDolar: TEdit
      AlignWithMargins = True
      Left = 166
      Top = 4
      Width = 276
      Height = 40
      Margins.Left = 10
      Margins.Right = 10
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = edtDolarKeyDown
      ExplicitLeft = 164
      ExplicitTop = 6
    end
  end
  object IdHTTP1: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = []
    Left = 24
    Top = 8
  end
end
