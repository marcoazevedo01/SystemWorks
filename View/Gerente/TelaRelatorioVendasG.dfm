object fmTelaRelatorioVendasG: TfmTelaRelatorioVendasG
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Vendas'
  ClientHeight = 416
  ClientWidth = 1117
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
  object GridVendasG: TDBGrid
    Left = -1
    Top = 48
    Width = 1119
    Height = 320
    DataSource = DM_dados1.DSConsultaGeral
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
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
        FieldName = 'cod_orcamento'
        Title.Caption = 'C'#243'digo'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_orcamento'
        Title.Caption = 'Data da Venda'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomevendedor_orcamento'
        Title.Caption = 'Vendedor'
        Width = 209
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomecliente_orcamento'
        Title.Caption = 'Cliente'
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tiposervico_orcamento'
        Title.Caption = 'Tipo de Servi'#231'o'
        Width = 233
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valorservico_orcamento'
        Title.Caption = 'Valor'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'previsao_orcamento'
        Title.Caption = 'Previs'#227'o de entrega'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'situacao_orcamento'
        Title.Caption = 'Situa'#231#227'o'
        Width = 67
        Visible = True
      end>
  end
  object btnImprimir: TBitBtn
    Left = 856
    Top = 374
    Width = 105
    Height = 34
    Caption = 'Imprimir'
    DoubleBuffered = True
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000232E0000232E00000000000000000001FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9F5FCEDDCFCEDDCFCEDDCFCEDDCFCED
      DCFCEDDCFCEDDCFCEDDCFCEDDCFCEDDCFCEDDCFCEDDCFCEDDCFCEDDCFCEDDCFC
      EDDCFDF9F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEFE0F9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90FCEFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEFE0F9CA90F9CA90F7C78BE9A85FE9A8
      5FE9A85FE9A85FE9A85FE9A85FE9A85FE9A85FF6C488F9CA90F9CA90F9CA90F9
      CA90FCEFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEFE0F9CA90F9CA90F5C386D68128D681
      28D68128D68128D68128D68128D68128D68128F3BD7EF9CA90F9CA90F9CA90F9
      CA90FCEFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE6E6E6ABABABA2A2A2BBAD9EF9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90BBAD9EA2A2A2ABABABE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFD7D7D7494949424242424242756858F9CA90F9CA90F5C386D7822AD782
      2AD7822AD7822AD7822AD7822AD7822AD7822AD7822AD7822AE09545F9CA90F9
      CA90756858424242424242484848DADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF808080424242424242424242756858F9CA90F9CA90F7C68BE9A65EE9A6
      5EE9A65EE9A65EE9A65EE9A65EE9A65EE9A65EE9A65EE9A65EEDB06BF9CA90F9
      CA90756858424242424242424242858585FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF7171714242424242424141416D5D4BD0A168D0A168D0A168D0A168D0A1
      68D0A168D0A168D0A168D0A168D0A168D0A168D0A168D0A168D0A168D0A168D0
      A1686D5D4B414141424242424242747474FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF7171714242424242423333335D472CEFA141EFA141EFA141EFA141EFA1
      41EFA141EFA141EFA141EFA141EFA141EFA141EFA141EFA141EFA141EFA141EF
      A1415D472C333333424242424242747474FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF7171714242424242423E3E3E3030303030303030303030303030303030
      3030303030303030303030303030303030303030303030303030303030303030
      30303030303D3D3D424242424242747474FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF7171714242424242424242424242424242424242424242424242424242
      4242424242424242424242424242424242424242424242424242424242424242
      4242424242424242424242424242747474FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF6161614242424242424242424242424242424242424242424242424242
      4242424242424242424242424242424242424242424242424242424242424242
      4242424242424242424242424242646464FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF8080805C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C
      5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C
      5C5C5C5C5C5C5C5C5C5C5C5C5C5C828282FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF8787876161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      61616161616161616161616161618A8A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF8787876161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      61616161616161616161616161618A8A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF8787876161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      6161616161657E4C6B9E356161618A8A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF9494946161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      6161616161657B4E6A9938616161979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFDCDCDC6666666161616161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      6161616161616161616161666666DEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE6E6E6B3B3B3959595918B83B9A187B9A187B9A187B9A187B9A1
      87B9A187B9A187B9A187B9A187B9A187B9A187B9A187B9A187B9A187B9A187B9
      A187918B83959595B3B3B3E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF949494756858F9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90756858979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFCFCFCFC1B4A5F9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90C1B4A5D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEFE0F9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90FCEFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEFE0F9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90FCEFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEFE0F9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90FCEFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF1E3F9CF9CF9CF9CF9CF9CF9CF9CF9CF
      9CF9CF9CF9CF9CF9CF9CF9CF9CF9CF9CF9CF9CF9CF9CF9CF9CF9CF9CF9CF9CF9
      CF9CFCF1E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnImprimirClick
  end
  object btnAVEnda: TBitBtn
    Left = 992
    Top = 374
    Width = 117
    Height = 34
    Caption = 'Aprovar Venda'
    DoubleBuffered = True
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000232E0000232E00000000000000000001FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFBF0EFEEF0EFEDF0EFEDF0EFEDF0EF
      EDF0EFEDF0EFEDF0EFEDF0EFEDF0EFEDF0EFEDF0EFEDF0EFEDF0EFEDF0EFEDF0
      EFEEFCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFC0BCB46C614E645A45645A45645A45645A45645A
      45645A45645A45645A45645A45645A45645A45645A45645A45645A45645A4564
      5A456C614EC2BEB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFE6E4E1635945665D487A715F7A715F7A715F7A715F7A71
      5F7A715F7A715F7A715F7A715F7A715F7A715F7A715F7A715F7A715F7A715F7A
      715F665C47635945E7E6E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC5C3BB645A45A39D91FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA09A8D645A45C5C3BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFEFEFEBDE1BCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FE91CC8E50AF4C93CD90FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFFDFEFD8ECC
      8C50AF4C50AF4C50AF4C93CD90FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFCFEFC8CCB8A50AF
      4C50AF4C73BF7050AF4C50AF4C93CD90FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFF95CE9250AF4C50AF
      4CA6D6A4FEFFFE95CF9350AF4C50AF4C93CD90FEFEFEFFFFFFFFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFDDEFDC5CB458A1D4
      9FFFFFFFFFFFFFFEFFFE95CF9350AF4C50AF4C93CD90FEFEFEFFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFEBF6EBFFFF
      FFFFFFFFFFFFFFFFFFFFFEFFFE95CF9350AF4C50AF4C93CD90FEFEFEFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFE95CF9350AF4C50AF4C9BD299FFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFE95CF935AB356D9EED8FFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEE6F3E5FFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFFFFFFFFDFDFDFCFC
      FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFDFDFDFFFFFFFFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC4C1B9645A45A8A297FFFFFFFFFFFFD5D0C5AEA490AEA4
      90AEA490AEA490AEA490AEA490AEA490AEA490AEA490AEA490D6D1C7FFFFFFFF
      FFFFA6A094645A45C4C1B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFCAC5BF645A45968F81F1F0EEF1F0EEB9B09EAEA490AEA4
      90AEA490AEA490AEA490AEA490AEA490AEA490AEA490AEA490BAB1A0F1F0EEF1
      F0EE938C7E645A45CAC5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFF2F0EF6D614E645A45645A45645A45A29985AEA490AEA4
      90AEA490AEA490AA9F8EA9A08EAEA490AEA490AEA490AEA490A29784645A4564
      5A45645A456D614EF2F0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFDDDBD78D85777A705E78715F9F9480A79D87A79D
      87AAA18DABA28DFFFFFFFFFFFFAAA08FAAA18CA79D87A79D879E938078715F7A
      705E8D8576DDDBD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFD5CFC6B7B09DFAF9F9FBF9F8B7AE9AD6D2C8FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF6F6F3B5AC9DB1A895B1AA97B8AD9DF7F7F5FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFAF9F8E0DBD4DFDBD4FAFAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnAVEndaClick
  end
  object btnExcluir: TBitBtn
    Left = 8
    Top = 374
    Width = 83
    Height = 34
    Caption = 'Excluir'
    DoubleBuffered = True
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000232E0000232E00000000000000000001FFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFCFCFCFBFBFBE4E4F5A5A5E67474DA5454D04444CC4444
      CC5454D07474DAA4A4E5E5E5F5FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7F88080D74242C64141C84141CC
      4141CD4141CD4141CD4141CD4141CD4141CC4141C68080D7E3E3F2FEFEFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBEC4848CD4141CC41
      41C64141C54141C64141CC4141CD4141CD4141CD4141CD4141CD4141CC4141C6
      4949C5B6B6E4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFA8A8E74141
      CD4141CD4141CD4141CC4141C64141C54141C64141CC4141CD4141CD4141CD41
      41CD4141CD4141CC4141C64141C5A4A4E0FDFDFDFFFFFFFFFFFFFFFFFFFCFCFC
      B9B9EC4141CD4141CD4141CD4141CD4141CD4141CC4141C64141C54141C64141
      CC4141CD4141CD4141CD4141CD4141CD4141CC4141C64141C5B6B6E4FEFEFEFF
      FFFFFFFFFFE4E4F54747CA4141CC4141CD4141CD4141CD4141CD4141CD4141CC
      4141C64141C54141C64141CC4141CD4141CD4141CD4141CD4141CD4141CC4141
      C64949C5E3E3F2FEFEFEFFFFFF7F7FDA4141C84141C64141CC4141CD4949CFC6
      C6F0ADADE94242CD4141CC4141C64141C54141C64242CCB0B0EAC4C4F04848CF
      4141CD4141CD4141CC4141C68080D7FCFCFCE5E5F84242CB4141C84141C54141
      C64141CCC9C9F1FFFFFFFFFFFFB3B3EB4242CD4141CC4141C64242C5B1B1E3FE
      FEFEFFFFFFC4C4F04141CD4141CD4141CD4141CC4141C6E5E5F5A3A3E64141CD
      4141CC4141C64141C54141C6B3B3EAFFFFFFFFFFFFFFFFFFB2B2EB4242CD4242
      CCB1B1E3F4F4F4F5F5F5FEFEFEB0B0EA4141CD4141CD4141CD4141CD4141CCA4
      A4E57373D84141CD4141CD4141CC4141C64141C54242C6B8B8ECFFFFFFFFFFFF
      FFFFFFB2B2EBB7B7ECFEFEFEF5F5F5F4F4F4AFAFE34242CC4141CD4141CD4141
      CD4141CD4141CD7474DA5454D24141CD4141CD4141CD4141CC4141C64141C542
      42C6B7B7EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEAEAEE24242C54141C6
      4141CC4141CD4141CD4141CD4141CD5454D04545CE4141CD4141CD4141CD4141
      CD4141CC4141C64141C54242C6B6B6EBFFFFFFFFFFFFFFFFFFFFFFFFB4B4EB42
      42CC4141C64141C54141C64141CC4141CD4141CD4141CD4444CC4545CE4141CD
      4141CD4141CD4141CD4141CD4141CC4141C64242C5B1B1E3FEFEFEFFFFFFFFFF
      FFFFFFFFB4B4EB4242CD4141CC4141C64141C54141C64141CC4141CD4141CD44
      44CC5353D14141CD4141CD4141CD4141CD4141CD4141CD4242CCB1B1E3F4F4F4
      F5F5F5FEFEFEFFFFFFFFFFFFFFFFFFB4B4EB4242CD4141CC4141C64141C54141
      C64141CC4141CD5454D07373D84141CB4141CC4141CD4141CD4141CD4242CDB7
      B7ECFEFEFEF5F5F5F4F4F4B1B1E3B6B6EBFFFFFFFFFFFFFFFFFFB4B4EB4242CD
      4141CC4141C64141C54141C64141CC7474DAA3A3E64141CA4141C84141CC4141
      CD4141CDB1B1EAFFFFFFFFFFFFFEFEFEB1B1E34242C54242C6B7B7EBFFFFFFFF
      FFFFFFFFFFAEAEEA4141CD4141CC4141C64141C54141C8A5A5E6E5E5F74242C9
      4141C84141C64141CC4141CDCACAF1FFFFFFFFFFFFB7B7EC4242CC4141C64141
      C54242C6B8B8ECFFFFFFFFFFFFC6C6F04141CD4141CD4141CC4141C64242C6E4
      E4F5FFFFFF8080DC4141C84141C54141C64141CC4A4ACFCACAF1B1B1EA4242CD
      4141CD4141CC4141C64141C54242C6B3B3EAC9C9F14949CF4141CD4141CD4141
      CD4141CC8080D7FBFBFBFFFFFFE6E6F74848CD4141C64141C54141C64141CC41
      41CD4141CD4141CD4141CD4141CD4141CC4141C64141C54141C64141CC4141CD
      4141CD4141CD4141CD4848CDE7E7F8FCFCFCFFFFFFFFFFFFB9B9ED4141CC4141
      C64141C54141C64141CC4141CD4141CD4141CD4141CD4141CD4141CC4141C641
      41C54141C64141CC4141CD4141CD4141CDBBBBECFFFFFFFEFEFEFFFFFFFFFFFF
      FFFFFFA5A5E74141CC4141C64141C54141C64141CC4141CD4141CD4141CD4141
      CD4141CD4141CC4141C64141C54141C64141CC4141CDA8A8E7FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9ED4848CD4141C84141C84141C84141CC
      4141CD4141CD4141CD4141CD4141CD4141CC4141C84141C84747CAB9B9ECFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6F77F7FDC42
      42C94141CA4141CB4141CD4141CD4141CD4141CD4141CD4141CD4242CB7F7FDA
      E4E4F5FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFE5E5F7A3A3E67373D85353D14545CE4545CE5454D27373D8A3
      A3E6E5E5F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnExcluirClick
  end
  object btnEditar: TBitBtn
    Left = 120
    Top = 374
    Width = 83
    Height = 34
    Caption = 'Editar'
    DoubleBuffered = True
    Glyph.Data = {
      42090000424D4209000000000000420000002800000018000000180000000100
      20000300000000090000000000000000000000000000000000000000FF0000FF
      0000FF0000000000000000000000000000000000000040444401404444044044
      440522609C081E9CEF441F9BF1881F9CEFB31E9CF1C91E9CF1C91F9CEFB31E9C
      F0872096E4462969880840444404404444010000000000000000000000000000
      00000000000000000000000000000000000000000000000000002D9AE1072196
      E4752096E8E62099EBFF1F9CF0FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9C
      F1FF1F9CF0FF2098E9E52193E2743B62860E4044440100000000000000000000
      000000000000000000000000000000000000000000001E9DF22A1F9AF0D31F9B
      F0FF2197E8FF2197E7FF2197E8FF1F9BF0FF1F9CF1FF1F9CF1FF1F9CF1FF1F9C
      F1FF1F9CF1FF1F9BF0FF2197E8FF2096E5D42883C53340444402000000000000
      0000000000000000000040444401000000001D9AF23D1D9AF1F11F9CF1FF1F9C
      F1FF1F9BF0FF2197E8FF2197E7FF2197E8FF1F9BF0FF1F9CF1FF1F9CF1FF1F9C
      F1FF1F9CF1FF1F9CF1FF1F9BF0FF2197E8FF1F96E6F1248AD145404444020000
      00000000000000000000404444041E98EF2C1D9AF1F21F9CF1FF1F9CF1FF1F9C
      F1FF1F9CF1FF1F9BF0FF2197E8FF2197E7FF2197E8FF1F9BF0FF1F9CF1FF1F9C
      F1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9BF0FF2197E8FF1F96E6F12883C5334044
      44010000000000000000347BA80B2098E9D51F9BF0FF1F9CF1FF1F9CF1FF1F9C
      F1FF1F9CF1FF1F9CF1FF1F9BF0FF2197E8FF2197E7FF2197E8FF1F9BF0FF1F9C
      F1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9BF0FF2197E8FF2096E5D43B62
      860E40444401000000002099EA742098EAFF2197E8FF1F9BF0FF1F9CF1FF44AC
      F3FF78C3F7FF33A5F2FF1F9CF1FF1F9BF0FF2197E8FF2197E7FF2197E8FF1F9B
      F0FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9BF0FF2197E8FF2193
      E27440444404007FFF041F9CEFE62099EBFF2197E7FF2197E8FF1F9BF0FF7EC6
      F7FFFFFFFFFFFDFEFFFFC7E6FBFF38A7F3FF1F9BF0FF2197E8FF2197E7FF2197
      E8FF1F9BF0FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9BF0FF2098
      E9E529698808209CF0461F9CF1FF1F9CF0FF2197E8FF2197E7FF2197E8FF36A5
      F1FFFEFFFFFFFFFFFFFF8ACBF8FF7EC6F7FF6EBFF6FF1F9BF0FF2197E8FF2197
      E7FF2197E8FF1F9BF0FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9C
      F0FF2096E4461F9CF0891F9CF1FF1F9CF1FF1F9BF0FF2197E8FF2197E7FF2197
      E8FFC9E7FBFF89CBF8FF27A0F1FFD0EAFCFFFCFEFFFF6FBFF6FF1F9BF0FF2197
      E8FF2197E7FF2197E8FF1F9BF0FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9C
      F1FF1E9CF0871D9CEFB51F9CF1FF1F9CF1FF1F9CF1FF1F9BF0FF2197E8FF2197
      E7FF38A2EAFF82C7F6FFCAE8FCFF37A7F3FFD1EBFCFFFDFEFFFF70C0F6FF1F9B
      F0FF2197E8FF2197E7FF2197E8FF1F9BF0FF1F9CF1FF1F9CF1FF1F9CF1FF1F9C
      F1FF1F9CEFB31F9CF1CA1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9BF0FF2197
      E8FF2197E7FF75BCEEFFFDFEFEFFCAE8FCFF37A7F3FFD1EBFCFFFDFEFFFF71C0
      F6FF1F9BF0FF2197E8FF2197E7FF2197E8FF1F9BF0FF1F9CF1FF1F9CF1FF1F9C
      F1FF1E9CF1C91F9CF1CA1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9B
      F0FF2197E8FF2197E7FF75BCEEFFFDFEFEFFCBE8FCFF37A7F3FFD1EBFCFFFDFE
      FFFF71C0F6FF1F9BF0FF2197E8FF2197E7FF2197E8FF1F9BF0FF1F9CF1FF1F9C
      F1FF1E9CF1C91D9BEFB61F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9C
      F1FF1F9BF0FF2197E8FF2197E7FF74BCEDFFFDFEFEFFCBE8FCFF37A7F3FFD1EB
      FCFFB4DEFAFF249EF1FF1F9BF0FF2197E8FF2197E7FF2197E8FF1F9BF0FF1F9C
      F1FF1F9CEFB31F9BF08A209AEEFF1F9CF0FF1F9CF1FF1F9CF1FF1F9CF1FF1F9C
      F1FF1F9CF1FF1F9BF0FF2197E8FF2197E7FF73BBEDFFFDFEFEFFCCE8FCFF36A6
      F3FF3FAAF3FFE0F1FDFF5BB6F5FF1F9BF0FF2197E8FF2197E7FF2197E8FF1F9C
      F0FF1F9BF188209AF047209AEEFF2099EBFF1F9BF0FF1F9CF1FF1F9CF1FF1F9C
      F1FF1F9CF1FF1F9CF1FF1F9BF0FF2197E8FF2197E7FF72BBEDFFB3DDF9FF3FAA
      F3FFE4F3FDFFC3E5FBFF279FF1FF1F9CF1FF1F9BF0FF2197E8FF2197E7FF2099
      EBFF1E9CEF443399FF051E98ECE72098EAFF2197E8FF1F9BF0FF1F9CF1FF1F9C
      F1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9BF0FF2197E8FF2197E7FF269AE8FFE0F1
      FCFFC4E5FBFF279FF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9BF0FF2197E8FF2096
      E8E622609C08000000001E9CF0742099EBFF2197E7FF2197E8FF1F9BF0FF1F9C
      F1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9BF0FF2197E8FF2197E7FF5DB2
      ECFF279EF0FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9BF0FF2196
      E47540444405000000002491FE071D9CEED62197E8FF2197E7FF2197E8FF1F9B
      F0FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9BF0FF2197E8FF2197
      E7FF2197E8FF1F9BF0FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9AF0D32D9A
      E1074044440400000000000000001C9EF32D1F9BF0F32197E8FF2197E7FF2197
      E8FF1F9BF0FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9BF0FF2197
      E8FF2197E7FF2197E8FF1F9BF0FF1F9CF1FF1F9CF1FF1D9AF1F11E9DF22A0000
      000040444401000000000000000000000000209DF23F1D99F0F22197E8FF2197
      E7FF2197E8FF1F9BF0FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9B
      F0FF2197E8FF2197E7FF2197E8FF1F9BF0FF1D9AF1F21D9AF23D000000000000
      000000000000000000000000000000000000000000001C9EF32D1D9CEED62099
      EBFF2098EAFF2099EBFF1F9CF0FF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9C
      F1FF1F9CF0FF2099EBFF2098EAFF2098E9D51E98EF2C00000000000000000000
      00000000000000000000000000000000000000000000000000002491FE071E9C
      F0741E98ECE7209AEEFF209AEEFF1F9CF1FF1F9CF1FF1F9CF1FF1F9CF1FF1F9C
      F1FF1F9CF1FF1F9CEFE62099EA74347BA80B4044440440444401000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003399FF05209AF0471F9BF08A1D9BEFB61F9CF1CA1F9CF1CA1D9CEFB51F9C
      F089209CF046007FFF0400000000000000000000000000000000000000000000
      000000000000}
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = btnEditarClick
  end
  object RGEscolhaTVenda: TRadioGroup
    Left = 924
    Top = -7
    Width = 194
    Height = 56
    Columns = 2
    Items.Strings = (
      'Or'#231'amentos'
      'Vendas')
    TabOrder = 5
    OnClick = RGEscolhaTVendaClick
  end
  object RvSystemOrcamento: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Rave Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 608
    Top = 368
  end
  object RvProjectOrcamento: TRvProject
    Engine = RvSystemOrcamento
    ProjectFile = 
      'C:\Users\Marco\Documents\RAD Studio\Projects\ProjetoTcc\Relatori' +
      'os\RelatorioOrcamento.rav'
    Left = 448
    Top = 368
  end
  object DataSetOrcamento: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM_dados1.TOrcamento
    Left = 536
    Top = 368
  end
end
