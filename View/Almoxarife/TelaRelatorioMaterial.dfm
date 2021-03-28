object fmTelaRelatorioMaterial: TfmTelaRelatorioMaterial
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio Material'
  ClientHeight = 221
  ClientWidth = 270
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
    Width = 228
    Height = 17
    Caption = 'Escoha o tipo de relat'#243'rio desejado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 80
    Top = 104
    Width = 113
    Height = 41
    Caption = 'Entrada de Materiais'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 80
    Top = 164
    Width = 113
    Height = 41
    Caption = 'Sa'#237'da de Materiais'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object btnR: TBitBtn
    Left = 80
    Top = 48
    Width = 113
    Height = 41
    Caption = 'Estoque de Materiais'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = btnRClick
  end
  object RvSystemRecMaterial: TRvSystem
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
    Left = 248
    Top = 112
  end
  object RvProjectEntrada: TRvProject
    Engine = RvSystemRecMaterial
    ProjectFile = 
      'C:\Users\Marco\Documents\RAD Studio\Projects\ProjetoTcc\Relatori' +
      'os\RelatorioEntradaMaterialData.rav'
    Left = 56
    Top = 40
  end
  object RvDataSetConnectionEntrada: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM_dados1.TEntradaMaterial
    Left = 152
    Top = 112
  end
  object RvProjectSaida: TRvProject
    Engine = RvSystemRecMaterial
    ProjectFile = 
      'C:\Users\Marco\Documents\RAD Studio\Projects\ProjetoTcc\Relatori' +
      'os\RelatorioSaidaMaterialData.rav'
    Left = 56
    Top = 96
  end
  object RvDataSetConnectionSaida: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM_dados1.TSaidaMaterial
    Left = 160
    Top = 64
  end
end
