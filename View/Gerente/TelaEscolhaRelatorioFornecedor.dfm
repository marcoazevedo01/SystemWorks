object fmTelaEscolhaRelatorioFornecedor: TfmTelaEscolhaRelatorioFornecedor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio Fornecedor'
  ClientHeight = 224
  ClientWidth = 343
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
    Left = 35
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
  object PRelatorioPorDataFornecedor: TPanel
    Left = 24
    Top = 32
    Width = 279
    Height = 177
    TabOrder = 0
    object Label2: TLabel
      Left = 11
      Top = 17
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label3: TLabel
      Left = 108
      Top = 17
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object btnRelatorioFuncionarioPorData: TBitBtn
      Left = 188
      Top = 135
      Width = 79
      Height = 26
      Caption = 'Gerar Relatorio'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object edtDataInicialCliente: TMaskEdit
      Left = 108
      Top = 36
      Width = 78
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 1
      Text = '  /  /  '
    end
    object edtDataFinalCliente: TMaskEdit
      Left = 11
      Top = 36
      Width = 78
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 2
      Text = '  /  /  '
    end
  end
  object RGRelatoriosFornecedor: TRadioGroup
    Left = 35
    Top = 49
    Width = 105
    Height = 73
    Caption = 'Tipos de Relat'#243'rios'
    Items.Strings = (
      'De Contato'
      'Detalhado')
    TabOrder = 1
    OnClick = RGRelatoriosFornecedorClick
  end
  object btnCancelar: TBitBtn
    Left = 212
    Top = 133
    Width = 79
    Height = 25
    Caption = 'Cancelar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnCancelarClick
  end
  object RvProjectFornecedorContato: TRvProject
    Engine = RvSystemFornecedor
    ProjectFile = 
      'C:\Users\Marco\Documents\RAD Studio\Projects\ProjetoTcc\Relatori' +
      'os\RelatorioFornecedorContato.rav'
    Left = 72
    Top = 128
  end
  object RvSystemFornecedor: TRvSystem
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
  object RvDataSetConnectionForContato: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM_dados1.RelatorioForContato
    Left = 296
    Top = 104
  end
  object RvProjectFornecedorDetalhado: TRvProject
    Engine = RvSystemFornecedor
    ProjectFile = 
      'C:\Users\Marco\Documents\RAD Studio\Projects\ProjetoTcc\Relatori' +
      'os\RelatorioFornecedorDetalhado.rav'
    Left = 168
    Top = 112
  end
  object RvDataSetConnectionoForDetalhado: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM_dados1.TFornecedor
    Left = 216
    Top = 168
  end
end
