object fmTelaEscolhaMaterial: TfmTelaEscolhaMaterial
  Left = 526
  Top = 177
  Caption = 'Escolha'
  ClientHeight = 326
  ClientWidth = 358
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
  object btnRelatorio: TBitBtn
    Left = 120
    Top = 88
    Width = 121
    Height = 41
    Caption = 'Relatorios'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = btnRelatorioClick
  end
  object btnOrdemEntrada: TBitBtn
    Left = 120
    Top = 152
    Width = 121
    Height = 41
    Caption = 'emitir ordem de entrada'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnOrdemEntradaClick
  end
  object btnOrdemSaida: TBitBtn
    Left = 120
    Top = 216
    Width = 121
    Height = 41
    Caption = 'emitir ordem de saida'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnOrdemSaidaClick
  end
  object btnVoltar: TBitBtn
    Left = 256
    Top = 272
    Width = 81
    Height = 33
    Caption = 'Voltar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnVoltarClick
  end
  object btnCadastrar: TBitBtn
    Left = 120
    Top = 24
    Width = 121
    Height = 41
    Caption = 'Cadastrar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = btnCadastrarClick
  end
end
