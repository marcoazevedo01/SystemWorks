object fmTelaBuscarFornecedor: TfmTelaBuscarFornecedor
  Left = 439
  Top = 165
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscar Fornecedor'
  ClientHeight = 388
  ClientWidth = 689
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
    Top = 54
    Width = 168
    Height = 13
    Caption = 'Insira o Fornecedor desejado:'
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
    Width = 285
    Height = 20
    Caption = 'Selecione o fornecedor que deseja alterar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 78
    Width = 689
    Height = 312
    DataSource = DM_dados1.DSFornecedor
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'cod_fornecedor'
        Title.Caption = 'C'#243'digo'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomefantasia_fornecedor'
        Title.Caption = 'Nome Fantasia'
        Width = 235
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'razaosocial_fornecedor'
        Title.Caption = 'Raz'#227'o Social'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cnpj_fornecedor'
        Title.Caption = 'Cnpj'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'inscricaoestadual_fornecedor'
        Title.Caption = 'Inscri'#231#227'o Estadual'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'inscricaomunicipal_fornecedor'
        Title.Caption = 'Inscri'#231#227'o Municipal'
        Visible = True
      end>
  end
  object edtBuscar: TEdit
    Left = 182
    Top = 51
    Width = 491
    Height = 21
    TabOrder = 1
    OnKeyDown = edtBuscarKeyDown
  end
end
