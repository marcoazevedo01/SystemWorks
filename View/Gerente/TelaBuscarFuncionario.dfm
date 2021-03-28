object fmTelaBuscarFuncionario: TfmTelaBuscarFuncionario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscar Funcion'#225'rio'
  ClientHeight = 388
  ClientWidth = 683
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
    Width = 167
    Height = 13
    Caption = 'Insira o funcion'#225'rio desejado:'
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 78
    Width = 684
    Height = 312
    DataSource = DM_dados1.DSFuncionario
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
        FieldName = 'cod_funcionario'
        Title.Caption = 'C'#243'digo'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_funcionario'
        Title.Caption = 'Nome'
        Width = 233
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cargo_funcionario'
        Title.Caption = 'Cargo'
        Width = 161
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rg_funcionario'
        Title.Caption = 'Rg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf_funcionario'
        Title.Caption = 'Cpf'
        Width = 98
        Visible = True
      end>
  end
  object edtBuscar: TEdit
    Left = 181
    Top = 51
    Width = 484
    Height = 21
    TabOrder = 1
    OnKeyPress = edtBuscarKeyPress
  end
end
