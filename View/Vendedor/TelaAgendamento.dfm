object fmTelaAgenda: TfmTelaAgenda
  Left = 441
  Top = 162
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Agendamentos'
  ClientHeight = 394
  ClientWidth = 731
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
  object gridagendamento: TDBGrid
    Left = 0
    Top = -1
    Width = 682
    Height = 395
    Color = clMenuBar
    DataSource = DM_dados1.DSAgendamento
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = gridagendamentoDblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'cod_orcamento'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomecliente_orcamento'
        Title.Caption = 'Nome Cliente'
        Width = 247
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tiposervico_orcamento'
        Title.Caption = 'Tipo Servi'#231'o'
        Width = 270
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'previsao_orcamento'
        Title.Caption = 'Previs'#227'o'
        Visible = True
      end>
  end
end
