object fmTelaRelatorioCliente: TfmTelaRelatorioCliente
  Left = 370
  Top = 162
  Caption = 'fmTelaRelatorioCliente'
  ClientHeight = 421
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 140
    Height = 13
    Caption = 'Insira o Cliente desejado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 73
    Width = 542
    Height = 280
    DataSource = DM_dados1.DSClienteFisico
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edtBuscar: TEdit
    Left = 162
    Top = 29
    Width = 396
    Height = 21
    TabOrder = 1
    Text = 'edtBuscar'
    OnKeyPress = edtBuscarKeyPress
  end
  object btnBuscar: TBitBtn
    Left = 587
    Top = 27
    Width = 75
    Height = 25
    Caption = 'btnBuscar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
  end
end
