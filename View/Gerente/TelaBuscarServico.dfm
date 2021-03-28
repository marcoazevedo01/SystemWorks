object fmTelaBuscarServico: TfmTelaBuscarServico
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscar Servi'#231'o'
  ClientHeight = 374
  ClientWidth = 584
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
    Top = 53
    Width = 145
    Height = 13
    Caption = 'Insira o servi'#231'o desejado:'
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
    Width = 289
    Height = 20
    Caption = 'Selecione o funcion'#225'rio que deseja alterar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
  end
  object GridBuscarServico: TDBGrid
    Left = 0
    Top = 77
    Width = 585
    Height = 298
    DataSource = DM_dados1.DSServico
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = GridBuscarServicoDblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'cod_servico'
        Title.Caption = 'C'#243'digo'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_servico'
        Title.Caption = 'Nome Servi'#231'o'
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao_servico'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_servico'
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'material1_servico'
        Title.Caption = 'Material 1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'material2_servico'
        Title.Caption = 'Material 2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'material3_servico'
        Title.Caption = 'Material 3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'material4_servico'
        Title.Caption = 'Material 4'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'material5_servico'
        Title.Caption = 'Material 5'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'material6_servico'
        Title.Caption = 'Material 6'
        Visible = True
      end>
  end
  object edtBuscar: TEdit
    Left = 159
    Top = 50
    Width = 410
    Height = 21
    TabOrder = 1
    OnKeyPress = edtBuscarKeyPress
  end
end
