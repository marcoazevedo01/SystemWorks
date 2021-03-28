object fmTelaBuscarSaida: TfmTelaBuscarSaida
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Buscar Saida'
  ClientHeight = 309
  ClientWidth = 670
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
  object Label2: TLabel
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
  object GridOrdemSaida: TDBGrid
    Left = 0
    Top = 39
    Width = 673
    Height = 271
    DataSource = DM_dados1.DSSaidaMaterial
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
        FieldName = 'cod_ordemsaida'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funcionario_ordemsaida'
        Title.Caption = 'Funcion'#225'rio'
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'material_ordemsaida'
        Title.Caption = 'Material'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade_ordemsaida'
        Title.Caption = 'Quantidade'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datasaida_ordemsaida'
        Title.Caption = 'Data Sa'#237'da'
        Width = 86
        Visible = True
      end>
  end
  object btnIM: TBitBtn
    Left = 587
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
