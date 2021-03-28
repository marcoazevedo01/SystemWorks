object fmTelaEscolhaRelatorioCliente: TfmTelaEscolhaRelatorioCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio Cliente'
  ClientHeight = 174
  ClientWidth = 292
  Color = clInactiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 251
    Height = 18
    Caption = 'Escolha o tipo de relat'#243'rio desejado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object RGRelatoriosCliente: TRadioGroup
    Left = 35
    Top = 38
    Width = 105
    Height = 98
    Caption = 'Tipos de Relat'#243'rios'
    Items.Strings = (
      'De Contato'
      'Detalhado'
      'Des')
    TabOrder = 0
    OnClick = RGRelatoriosClienteClick
  end
  object ToolBar1: TToolBar
    Left = 8
    Top = 107
    Width = 150
    Height = 29
    Align = alCustom
    Caption = 'ToolBar1'
    TabOrder = 1
  end
  object RvProjectClienteContato: TRvProject
    Engine = RvSystemClienteF
    ProjectFile = 
      'C:\Users\Marco\Documents\RAD Studio\Projects\ProjetoTcc\Relatori' +
      'os\RelatorioClienteContato.rav'
    Left = 120
    Top = 56
  end
  object RvSystemClienteF: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Rave Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 304
    Top = 56
  end
  object RvDataSetConnectionClienteDetalhado: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM_dados1.TCLienteFisico
    Left = 192
    Top = 104
  end
  object RvProjectClienteDetalhado: TRvProject
    Engine = RvSystemClienteF
    ProjectFile = 
      'C:\Users\Marco\Documents\RAD Studio\Projects\ProjetoTcc\Relatori' +
      'os\RelatorioClienteDetalhado.rav'
    Left = 216
    Top = 64
  end
  object RvDataSetConnectionContato: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM_dados1.RelatorioClienteContato
    Left = 64
    Top = 120
  end
end
