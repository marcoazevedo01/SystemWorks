object fmTelaExpotMaterial: TfmTelaExpotMaterial
  Left = 526
  Top = 266
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Exportar Materias'
  ClientHeight = 188
  ClientWidth = 369
  Color = clInactiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 353
    Height = 120
    DataSource = DM_dados1.DS_ExportMaterial
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 150
    Width = 265
    Height = 25
    TabOrder = 1
  end
  object btnGerar: TBitBtn
    Left = 286
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Gerar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnGerarClick
  end
end
