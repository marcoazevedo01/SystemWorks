object fmTelaBuscarMaterial: TfmTelaBuscarMaterial
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscar Material'
  ClientHeight = 384
  ClientWidth = 552
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
    Left = 8
    Top = 56
    Width = 152
    Height = 13
    Caption = 'Insira o Material Desejado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 266
    Height = 20
    Caption = 'Selecione o material que deseja alterar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
  end
  object GridBuscarMaterial: TDBGrid
    Left = 0
    Top = 80
    Width = 553
    Height = 304
    DataSource = DM_dados1.DSMaterial
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = GridBuscarMaterialDblClick
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
        Width = 285
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'unidade_material'
        Title.Caption = 'Unidade'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_material'
        Title.Caption = 'Valor'
        Width = 80
        Visible = True
      end>
  end
  object edtBuscar: TEdit
    Left = 166
    Top = 53
    Width = 371
    Height = 21
    TabOrder = 1
    OnKeyPress = edtBuscarKeyPress
  end
end
