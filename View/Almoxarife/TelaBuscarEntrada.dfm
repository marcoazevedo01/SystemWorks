object fmTelaBuscarEntrada: TfmTelaBuscarEntrada
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscar Entrada'
  ClientHeight = 286
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 192
    Height = 16
    Caption = 'Selecione o registro desejado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GridOrdemEntrada: TDBGrid
    Left = -4
    Top = 39
    Width = 669
    Height = 250
    DataSource = DM_dados1.DSEntradaMaterial
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'cod_ordementrada'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funcionario_ordementrada'
        Title.Caption = 'Funcion'#225'rio'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'material_ordementrada'
        Title.Caption = 'Material'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade_ordementrada'
        Title.Caption = 'Quantidade'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataentrada_ordementrada'
        Title.Caption = 'Data de Entrada'
        Width = 92
        Visible = True
      end>
  end
  object btnIM: TBitBtn
    Left = 581
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnIMClick
  end
end
