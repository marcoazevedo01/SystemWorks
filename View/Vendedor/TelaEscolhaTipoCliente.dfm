object fmTelaEscolhaTipoCliente: TfmTelaEscolhaTipoCliente
  Left = 526
  Top = 251
  BorderStyle = bsSingle
  Caption = 'Escolha Cliente'
  ClientHeight = 189
  ClientWidth = 302
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 80
    Top = 47
    Width = 137
    Height = 80
    Caption = 'Escolha o tipo de cliente'
    Items.Strings = (
      'Cliente Fisico'
      'Cliente Juridico')
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
end
