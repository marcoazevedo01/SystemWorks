object fmTelaBuscarCliente: TfmTelaBuscarCliente
  Left = 370
  Top = 162
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscar Cliente'
  ClientHeight = 376
  ClientWidth = 713
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
    Top = 51
    Width = 143
    Height = 13
    Caption = 'Insira o Cliente desejado:'
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
    Width = 256
    Height = 20
    Caption = 'Selecione o cliente que deseja alterar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
  end
  object GridBuscarCliente: TDBGrid
    Left = -5
    Top = 75
    Width = 721
    Height = 302
    DataSource = DM_dados1.DSClienteFisico
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = GridBuscarClienteDblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'cod_cliente'
        Title.Caption = 'C'#243'digo'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_cliente'
        Title.Caption = 'Nome'
        Width = 286
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rg_cliente'
        Title.Caption = 'Rg'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf_cliente'
        Title.Caption = 'Cpf'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sexo_cliente'
        Title.Caption = 'Sexo'
        Width = 90
        Visible = True
      end>
  end
  object edtBuscar: TEdit
    Left = 165
    Top = 48
    Width = 532
    Height = 21
    TabOrder = 1
    OnKeyPress = edtBuscarKeyPress
  end
  object RadioGroup1: TRadioGroup
    Left = 512
    Top = 8
    Width = 185
    Height = 34
    Caption = 'Tipo Cliente'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Fisico'
      'Juridico')
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object GridBuscarCliJuridico: TDBGrid
    Left = 0
    Top = 75
    Width = 713
    Height = 302
    DataSource = DM_dados1.DSClienteJuridico
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    OnDblClick = GridBuscarCliJuridicoDblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'cod_clienteju'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomefantasia_clienteju'
        Title.Caption = 'Nome Fantasia'
        Width = 246
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'razaosocial_clienteju'
        Title.Caption = 'Raz'#227'o Social'
        Width = 254
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cnpj_clienteju'
        Title.Caption = 'Cnpj'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'inscricaoestadual_clienteju'
        Title.Caption = 'Inscri'#231#227'o Estadual'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'inscricaomunicipal_clienteju'
        Title.Caption = 'Inscri'#231#227'o Municipal'
        Width = 95
        Visible = True
      end>
  end
end
