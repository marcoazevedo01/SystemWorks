object fmTelaConsultaServico: TfmTelaConsultaServico
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Servi'#231'o'
  ClientHeight = 173
  ClientWidth = 843
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
    Left = 25
    Top = 21
    Width = 65
    Height = 13
    Caption = 'Nome Servi'#231'o'
  end
  object Label2: TLabel
    Left = 213
    Top = 21
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 140
    Height = 13
    Caption = 'Materiais a ultilizar no servi'#231'o'
  end
  object DBGrid1: TDBGrid
    Left = -4
    Top = 91
    Width = 869
    Height = 38
    DataSource = DM_dados1.DSServico
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'material1_servico'
        Title.Caption = 'Material 1'
        Width = 166
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'material2_servico'
        Title.Caption = 'Material 2'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'material3_servico'
        Title.Caption = 'Material 3'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'material4_servico'
        Title.Caption = 'Material 4'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'material5_servico'
        Title.Caption = 'Material 5'
        Width = 167
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 25
    Top = 40
    Width = 169
    Height = 21
    Enabled = False
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 213
    Top = 40
    Width = 300
    Height = 21
    Enabled = False
    TabOrder = 2
  end
end
