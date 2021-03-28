object fmTelaEstoqueMaterial: TfmTelaEstoqueMaterial
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Estoque De Materiais'
  ClientHeight = 344
  ClientWidth = 487
  Color = clInactiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 33
    Width = 128
    Height = 13
    Caption = 'Digite o Material desejado:'
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 0
    Top = 57
    Width = 489
    Height = 288
    DataSource = DM_dados1.DSConsultaEstoque
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
        FieldName = 'cod_material'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao_material'
        Title.Caption = 'Descri'#231#227'o'
        Width = 242
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade_material'
        Title.Caption = 'Quantidade'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_material'
        Title.Caption = 'Valor'
        Width = 73
        Visible = True
      end>
  end
  object edtbuscaM: TEdit
    Left = 142
    Top = 30
    Width = 331
    Height = 21
    TabOrder = 1
    OnKeyPress = edtbuscaMKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 408
    Top = 4
    Width = 71
    Height = 20
    Caption = 'Exportar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
