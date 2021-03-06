object DM_dados1: TDM_dados1
  OldCreateOrder = False
  Height = 575
  Width = 798
  object DConexao: TDatabase
    AliasName = 'PostgreSQL30'
    Connected = True
    DatabaseName = 'ProjetoTcc'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=postgres')
    SessionName = 'Default'
    Left = 16
    Top = 8
  end
  object DSClienteFisico: TDataSource
    DataSet = TCLienteFisico
    Left = 16
    Top = 136
  end
  object TCLienteFisico: TTable
    Active = True
    DatabaseName = 'ProjetoTcc'
    TableName = 'public.clientefisico'
    Left = 16
    Top = 80
    object TCLienteFisicocod_cliente: TIntegerField
      FieldName = 'cod_cliente'
      Required = True
    end
    object TCLienteFisiconome_cliente: TStringField
      FieldName = 'nome_cliente'
      Required = True
      Size = 45
    end
    object TCLienteFisicoemail_cliente: TStringField
      FieldName = 'email_cliente'
      Size = 40
    end
    object TCLienteFisicorg_cliente: TStringField
      FieldName = 'rg_cliente'
      Required = True
      Size = 15
    end
    object TCLienteFisicocpf_cliente: TStringField
      FieldName = 'cpf_cliente'
      Required = True
      EditMask = '000\.000\.000-00;1;_'
      Size = 15
    end
    object TCLienteFisicosexo_cliente: TStringField
      FieldName = 'sexo_cliente'
      Required = True
      Size = 2
    end
    object TCLienteFisicoendereco_cliente: TStringField
      FieldName = 'endereco_cliente'
      Required = True
      Size = 40
    end
    object TCLienteFisicocomplemento_cliente: TStringField
      FieldName = 'complemento_cliente'
      Size = 25
    end
    object TCLienteFisicoreferencia_cliente: TStringField
      FieldName = 'referencia_cliente'
      Size = 35
    end
    object TCLienteFisicobairro_cliente: TStringField
      FieldName = 'bairro_cliente'
      Required = True
      Size = 30
    end
    object TCLienteFisicocidade_cliente: TStringField
      FieldName = 'cidade_cliente'
      Required = True
      FixedChar = True
      Size = 100
    end
    object TCLienteFisicoestado_cliente: TStringField
      FieldName = 'estado_cliente'
      Required = True
      FixedChar = True
      Size = 50
    end
    object TCLienteFisicocep_cliente: TStringField
      FieldName = 'cep_cliente'
      Required = True
    end
    object TCLienteFisicotelefone_cliente: TStringField
      FieldName = 'telefone_cliente'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TCLienteFisicodatanascimento_cliente: TDateField
      FieldName = 'datanascimento_cliente'
      EditMask = '!99/99/00;1;_'
    end
    object TCLienteFisicocelular_cliente: TStringField
      FieldName = 'celular_cliente'
      Required = True
      EditMask = '!\(99\)00000-0000;1;_'
    end
    object TCLienteFisicodatacadastro_cliente: TDateField
      FieldName = 'datacadastro_cliente'
      EditMask = '!99/99/0000;1;_'
    end
    object TCLienteFisicoprofissao_cliente: TStringField
      FieldName = 'profissao_cliente'
      Size = 35
    end
    object TCLienteFisicolocaltrabalho_cliente: TStringField
      FieldName = 'localtrabalho_cliente'
      Size = 35
    end
    object TCLienteFisicotelefonecomercial_cliente: TStringField
      FieldName = 'telefonecomercial_cliente'
      EditMask = '!\(99\)0000-0000;1;_'
    end
  end
  object DSFuncionario: TDataSource
    DataSet = TFuncionario
    Left = 88
    Top = 136
  end
  object TFuncionario: TTable
    Active = True
    DatabaseName = 'ProjetoTcc'
    TableName = 'public.funcionario'
    Left = 88
    Top = 80
    object TFuncionariocod_funcionario: TIntegerField
      FieldName = 'cod_funcionario'
      Required = True
    end
    object TFuncionariocargo_funcionario: TStringField
      FieldName = 'cargo_funcionario'
      Required = True
      Size = 30
    end
    object TFuncionariousuario_funcionario: TStringField
      FieldName = 'usuario_funcionario'
      Size = 25
    end
    object TFuncionariosenha_funcionario: TStringField
      FieldName = 'senha_funcionario'
    end
    object TFuncionarionome_funcionario: TStringField
      FieldName = 'nome_funcionario'
      Required = True
      Size = 45
    end
    object TFuncionarioemail_funcionario: TStringField
      FieldName = 'email_funcionario'
      Size = 40
    end
    object TFuncionariorg_funcionario: TStringField
      FieldName = 'rg_funcionario'
      Required = True
      Size = 15
    end
    object TFuncionariocpf_funcionario: TStringField
      FieldName = 'cpf_funcionario'
      Required = True
      EditMask = '000\.000\.000-00;1;_'
      Size = 15
    end
    object TFuncionariosexo_funcionario: TStringField
      FieldName = 'sexo_funcionario'
      Required = True
      Size = 10
    end
    object TFuncionarioendereco_funcionario: TStringField
      FieldName = 'endereco_funcionario'
      Required = True
      Size = 40
    end
    object TFuncionariocomplemento_funcionario: TStringField
      FieldName = 'complemento_funcionario'
      Size = 25
    end
    object TFuncionarioreferencia_funcionario: TStringField
      FieldName = 'referencia_funcionario'
      Size = 30
    end
    object TFuncionariobairro_funcionario: TStringField
      FieldName = 'bairro_funcionario'
      Required = True
      Size = 30
    end
    object TFuncionariocidade_funcionario: TStringField
      FieldName = 'cidade_funcionario'
      Required = True
      FixedChar = True
      Size = 100
    end
    object TFuncionarioestado_funcionario: TStringField
      FieldName = 'estado_funcionario'
      Required = True
      FixedChar = True
      Size = 50
    end
    object TFuncionariocep_funcionario: TStringField
      FieldName = 'cep_funcionario'
      Required = True
      Size = 15
    end
    object TFuncionariotelefone_funcionario: TStringField
      FieldName = 'telefone_funcionario'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TFuncionariodatacadastro_funcionario: TDateField
      FieldName = 'datacadastro_funcionario'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object TFuncionariocelular_funcionario: TStringField
      FieldName = 'celular_funcionario'
      Required = True
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
  end
  object DSCidade: TDataSource
    DataSet = TCidade
    Left = 152
    Top = 136
  end
  object TCidade: TTable
    Active = True
    DatabaseName = 'ProjetoTcc'
    TableName = 'public.cidade'
    Left = 152
    Top = 80
  end
  object DSMaterial: TDataSource
    DataSet = TMaterial
    Left = 584
    Top = 120
  end
  object TMaterial: TTable
    Active = True
    DatabaseName = 'ProjetoTcc'
    TableName = 'public.material'
    Left = 584
    Top = 64
  end
  object DSFornecedor: TDataSource
    DataSet = TFornecedor
    Left = 280
    Top = 136
  end
  object TFornecedor: TTable
    Active = True
    DatabaseName = 'ProjetoTcc'
    TableName = 'public.fornecedor'
    Left = 280
    Top = 80
    object TFornecedorcod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
      Required = True
    end
    object TFornecedornomefantasia_fornecedor: TStringField
      FieldName = 'nomefantasia_fornecedor'
      Size = 40
    end
    object TFornecedorrazaosocial_fornecedor: TStringField
      FieldName = 'razaosocial_fornecedor'
      Required = True
      Size = 40
    end
    object TFornecedorramoatividade_fornecedor: TStringField
      FieldName = 'ramoatividade_fornecedor'
      Required = True
      Size = 40
    end
    object TFornecedorcnpj_fornecedor: TStringField
      FieldName = 'cnpj_fornecedor'
      Required = True
      EditMask = '00\.000\.000\/0000\-00;1;_'
    end
    object TFornecedorinscricaoestadual_fornecedor: TStringField
      FieldName = 'inscricaoestadual_fornecedor'
      Required = True
    end
    object TFornecedoremail_fornecedor: TStringField
      FieldName = 'email_fornecedor'
      Required = True
      Size = 35
    end
    object TFornecedorinscricaomunicipal_fornecedor: TStringField
      FieldName = 'inscricaomunicipal_fornecedor'
      Size = 15
    end
    object TFornecedorendereco_fornecedor: TStringField
      FieldName = 'endereco_fornecedor'
      Required = True
      Size = 30
    end
    object TFornecedorcomplemento_fornecedor: TStringField
      FieldName = 'complemento_fornecedor'
    end
    object TFornecedorreferencia_fornecedor: TStringField
      FieldName = 'referencia_fornecedor'
    end
    object TFornecedorbairro_fornecedor: TStringField
      FieldName = 'bairro_fornecedor'
      Required = True
      Size = 30
    end
    object TFornecedorcidade_fornecedor: TStringField
      FieldName = 'cidade_fornecedor'
      Required = True
      FixedChar = True
      Size = 100
    end
    object TFornecedorestado_fornecedor: TStringField
      FieldName = 'estado_fornecedor'
      Required = True
      FixedChar = True
      Size = 50
    end
    object TFornecedorcep_fornecedor: TStringField
      FieldName = 'cep_fornecedor'
      Required = True
      Size = 15
    end
    object TFornecedortelefone_fornecedor: TStringField
      FieldName = 'telefone_fornecedor'
      Required = True
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TFornecedordatacadastro_fornecedor: TDateField
      FieldName = 'datacadastro_fornecedor'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object TFornecedorcelular_fornecedor: TStringField
      FieldName = 'celular_fornecedor'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
  end
  object DSEstado: TDataSource
    DataSet = TEstado
    Left = 216
    Top = 136
  end
  object TEstado: TTable
    Active = True
    DatabaseName = 'ProjetoTcc'
    TableName = 'public.estado'
    Left = 216
    Top = 80
  end
  object DSServico: TDataSource
    DataSet = TServico
    Left = 352
    Top = 136
  end
  object TServico: TTable
    Active = True
    DatabaseName = 'ProjetoTcc'
    TableName = 'public.servico'
    Left = 352
    Top = 80
    object TServicocod_servico: TIntegerField
      FieldName = 'cod_servico'
      Required = True
    end
    object TServiconome_servico: TStringField
      FieldName = 'nome_servico'
      Required = True
      Size = 40
    end
    object TServicodescricao_servico: TStringField
      FieldName = 'descricao_servico'
      Required = True
      Size = 40
    end
    object TServicovalor_servico: TStringField
      FieldName = 'valor_servico'
      Required = True
      Size = 30
    end
    object TServicomaterial1_servico: TStringField
      FieldName = 'material1_servico'
      Size = 30
    end
    object TServicomaterial2_servico: TStringField
      FieldName = 'material2_servico'
      Size = 30
    end
    object TServicomaterial3_servico: TStringField
      FieldName = 'material3_servico'
      Size = 30
    end
    object TServicomaterial4_servico: TStringField
      FieldName = 'material4_servico'
      Size = 30
    end
    object TServicomaterial5_servico: TStringField
      FieldName = 'material5_servico'
      Size = 30
    end
    object TServicomaterial6_servico: TStringField
      FieldName = 'material6_servico'
      Size = 30
    end
  end
  object DSEntradaMaterial: TDataSource
    AutoEdit = False
    DataSet = TEntradaMaterial
    Left = 512
    Top = 136
  end
  object TEntradaMaterial: TTable
    Active = True
    DatabaseName = 'ProjetoTcc'
    TableName = 'public.ordementrada'
    Left = 512
    Top = 80
    object TEntradaMaterialcod_ordementrada: TIntegerField
      FieldName = 'cod_ordementrada'
      Required = True
    end
    object TEntradaMaterialfuncionario_ordementrada: TStringField
      FieldName = 'funcionario_ordementrada'
      Required = True
      Size = 30
    end
    object TEntradaMaterialmaterial_ordementrada: TStringField
      FieldName = 'material_ordementrada'
      Required = True
      Size = 30
    end
    object TEntradaMaterialquantidade_ordementrada: TStringField
      FieldName = 'quantidade_ordementrada'
      Required = True
      Size = 40
    end
    object TEntradaMaterialdataentrada_ordementrada: TStringField
      FieldName = 'dataentrada_ordementrada'
      Required = True
      EditMask = '!99/99/0000;1;_'
      Size = 40
    end
  end
  object SqlConsultaCidade: TQuery
    CachedUpdates = True
    DatabaseName = 'ProjetoTcc'
    SQL.Strings = (
      'select *,es.cod_estado from cidade inner join estado es on'
      'codigo_estado = es.cod_estado')
    Left = 152
    Top = 32
  end
  object DSSaidaMaterial: TDataSource
    AutoEdit = False
    DataSet = TSaidaMaterial
    Left = 656
    Top = 136
  end
  object TSaidaMaterial: TTable
    Active = True
    DatabaseName = 'ProjetoTcc'
    TableName = 'public.ordemsaida'
    Left = 656
    Top = 80
    object TSaidaMaterialcod_ordemsaida: TIntegerField
      FieldName = 'cod_ordemsaida'
      Required = True
    end
    object TSaidaMaterialfuncionario_ordemsaida: TStringField
      FieldName = 'funcionario_ordemsaida'
      Required = True
      Size = 30
    end
    object TSaidaMaterialmaterial_ordemsaida: TStringField
      FieldName = 'material_ordemsaida'
      Required = True
      Size = 30
    end
    object TSaidaMaterialquantidade_ordemsaida: TStringField
      FieldName = 'quantidade_ordemsaida'
      Required = True
      Size = 40
    end
    object TSaidaMaterialdatasaida_ordemsaida: TDateField
      FieldName = 'datasaida_ordemsaida'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
  end
  object DSSistema: TDataSource
    DataSet = TSistema
    Left = 408
    Top = 16
  end
  object TSistema: TTable
    Active = True
    DatabaseName = 'ProjetoTcc'
    TableName = 'public.sistema'
    Left = 352
    Top = 16
    object TSistemacor_sistema: TIntegerField
      FieldName = 'cor_sistema'
    end
  end
  object SqlConsultaVendaV: TQuery
    Active = True
    DatabaseName = 'ProjetoTcc'
    SQL.Strings = (
      'select * from orcamento '
      'where nomevendedor_orcamento =:ven and situacao_orcamento =:sit'
      ''
      ''
      '')
    Left = 232
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'ven'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'sit'
        ParamType = ptUnknown
      end>
  end
  object DSConVendav: TDataSource
    DataSet = SqlConsultaVendaV
    Left = 232
    Top = 280
  end
  object DSOrcamento: TDataSource
    DataSet = TOrcamento
    Left = 424
    Top = 136
  end
  object TOrcamento: TTable
    Active = True
    DatabaseName = 'ProjetoTcc'
    TableName = 'public.orcamento'
    Left = 424
    Top = 80
    object TOrcamentocod_orcamento: TIntegerField
      FieldName = 'cod_orcamento'
      Required = True
    end
    object TOrcamentonomecliente_orcamento: TStringField
      FieldName = 'nomecliente_orcamento'
      Required = True
      Size = 40
    end
    object TOrcamentonomevendedor_orcamento: TStringField
      FieldName = 'nomevendedor_orcamento'
      Required = True
      Size = 40
    end
    object TOrcamentotelefone_orcamento: TStringField
      FieldName = 'telefone_orcamento'
      Required = True
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TOrcamentonomecontato_orcamento: TStringField
      FieldName = 'nomecontato_orcamento'
      Required = True
      Size = 40
    end
    object TOrcamentotelefonecontato_orcamento: TStringField
      FieldName = 'telefonecontato_orcamento'
      Required = True
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TOrcamentoendereco_obra_orcamento: TStringField
      FieldName = 'endereco_obra_orcamento'
      Required = True
      Size = 40
    end
    object TOrcamentocomplemento_orcamento: TStringField
      FieldName = 'complemento_orcamento'
    end
    object TOrcamentoreferencia_orcamento: TStringField
      FieldName = 'referencia_orcamento'
      Size = 35
    end
    object TOrcamentobairro_orcamento: TStringField
      FieldName = 'bairro_orcamento'
      Required = True
      Size = 40
    end
    object TOrcamentocidade_orcamento: TStringField
      FieldName = 'cidade_orcamento'
      Required = True
      FixedChar = True
      Size = 100
    end
    object TOrcamentoestado_orcamento: TStringField
      FieldName = 'estado_orcamento'
      Required = True
      FixedChar = True
      Size = 50
    end
    object TOrcamentotiposervico_orcamento: TStringField
      FieldName = 'tiposervico_orcamento'
      Required = True
      Size = 40
    end
    object TOrcamentovalorservico_orcamento: TStringField
      FieldName = 'valorservico_orcamento'
      Required = True
      Size = 30
    end
    object TOrcamentodata_orcamento: TDateField
      FieldName = 'data_orcamento'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object TOrcamentoprevisao_orcamento: TDateField
      FieldName = 'previsao_orcamento'
      EditMask = '!99/99/00;1;_'
    end
    object TOrcamentosituacao_orcamento: TStringField
      FieldName = 'situacao_orcamento'
      Required = True
      Size = 10
    end
  end
  object SqlConsultaServico: TQuery
    Active = True
    DatabaseName = 'ProjetoTcc'
    SQL.Strings = (
      'select * from servico'
      'where nome_servico =:nome')
    Left = 24
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptUnknown
        Value = '%'
      end>
    object SqlConsultaServicocod_servico: TIntegerField
      FieldName = 'cod_servico'
      Origin = 'PROJETOTCC."public.servico".cod_servico'
    end
    object SqlConsultaServiconome_servico: TStringField
      FieldName = 'nome_servico'
      Origin = 'PROJETOTCC."public.servico".nome_servico'
      Size = 40
    end
    object SqlConsultaServicodescricao_servico: TStringField
      FieldName = 'descricao_servico'
      Origin = 'PROJETOTCC."public.servico".descricao_servico'
      Size = 40
    end
    object SqlConsultaServicovalor_servico: TStringField
      FieldName = 'valor_servico'
      Origin = 'PROJETOTCC."public.servico".valor_servico'
      Size = 30
    end
    object SqlConsultaServicomaterial1_servico: TStringField
      FieldName = 'material1_servico'
      Origin = 'PROJETOTCC."public.servico".material1_servico'
      Size = 30
    end
    object SqlConsultaServicomaterial2_servico: TStringField
      FieldName = 'material2_servico'
      Origin = 'PROJETOTCC."public.servico".material2_servico'
      Size = 30
    end
    object SqlConsultaServicomaterial3_servico: TStringField
      FieldName = 'material3_servico'
      Origin = 'PROJETOTCC."public.servico".material3_servico'
      Size = 30
    end
    object SqlConsultaServicomaterial4_servico: TStringField
      FieldName = 'material4_servico'
      Origin = 'PROJETOTCC."public.servico".material4_servico'
      Size = 30
    end
    object SqlConsultaServicomaterial5_servico: TStringField
      FieldName = 'material5_servico'
      Origin = 'PROJETOTCC."public.servico".material5_servico'
      Size = 30
    end
    object SqlConsultaServicomaterial6_servico: TStringField
      FieldName = 'material6_servico'
      Origin = 'PROJETOTCC."public.servico".material6_servico'
      Size = 30
    end
  end
  object ConsultaAgentamento: TQuery
    Active = True
    DatabaseName = 'ProjetoTcc'
    SQL.Strings = (
      
        'select cod_orcamento, nomecliente_orcamento, tiposervico_orcamen' +
        'to, previsao_orcamento, situacao_orcamento from orcamento'
      'where situacao_orcamento =:nome')
    Left = 40
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptUnknown
        Value = 'aprovado'
      end>
  end
  object DSAgendamento: TDataSource
    AutoEdit = False
    DataSet = ConsultaAgentamento
    Left = 40
    Top = 280
  end
  object ConsultaServicoF: TQuery
    Active = True
    DatabaseName = 'ProjetoTcc'
    SQL.Strings = (
      'select * from servico'
      'where nome_servico =:nome')
    Left = 336
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptUnknown
      end>
  end
  object RelatorioClienteContato: TQuery
    Active = True
    DatabaseName = 'ProjetoTcc'
    SQL.Strings = (
      'select * from clientefisico')
    Left = 24
    Top = 456
  end
  object RelatorioFunContato: TQuery
    Active = True
    DatabaseName = 'ProjetoTcc'
    SQL.Strings = (
      'select * from funcionario')
    Left = 144
    Top = 456
  end
  object RelatorioForContato: TQuery
    Active = True
    DatabaseName = 'ProjetoTcc'
    SQL.Strings = (
      'select * from fornecedor')
    Left = 256
    Top = 456
  end
  object RelatorioEntMaterialData: TQuery
    Active = True
    DatabaseName = 'ProjetoTcc'
    SQL.Strings = (
      'select * from ordementrada'
      'where dataentrada_ordementrada =:dataini and'
      'dataentrada_ordementrada =:datafim')
    Left = 376
    Top = 456
    ParamData = <
      item
        DataType = ftDate
        Name = 'dataini'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'datafim'
        ParamType = ptUnknown
      end>
  end
  object RelatorioSaiMaterialData: TQuery
    Active = True
    DatabaseName = 'ProjetoTcc'
    SQL.Strings = (
      'select * from ordemsaida'
      'where datasaida_ordemsaida =:dataini and'
      'datasaida_ordemsaida =:datafim')
    Left = 504
    Top = 456
    ParamData = <
      item
        DataType = ftDate
        Name = 'dataini'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'datafim'
        ParamType = ptUnknown
      end>
  end
  object SqlConsultaFornecedor: TQuery
    Active = True
    DatabaseName = 'ProjetoTcc'
    SQL.Strings = (
      'select * from fornecedor'
      'where nomefantasia_fornecedor =:nome')
    Left = 144
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptUnknown
        Value = '%'
      end>
  end
  object SqlConsultaCliente: TQuery
    Active = True
    DatabaseName = 'ProjetoTcc'
    SQL.Strings = (
      'select * from clientefisico'
      'where nome_cliente =:nome')
    Left = 256
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptUnknown
        Value = '%'
      end>
  end
  object Export_Material: TQuery
    Active = True
    DatabaseName = 'ProjetoTcc'
    SQL.Strings = (
      'select * from material')
    Left = 640
    Top = 408
    object Export_Materialcod_material: TIntegerField
      FieldName = 'cod_material'
      Origin = 'PROJETOTCC."public.material".cod_material'
    end
    object Export_Materialdescricao_material: TStringField
      FieldName = 'descricao_material'
      Origin = 'PROJETOTCC."public.material".descricao_material'
      Size = 40
    end
    object Export_Materialquantidade_material: TStringField
      FieldName = 'quantidade_material'
      Origin = 'PROJETOTCC."public.material".quantidade_material'
      Size = 10
    end
    object Export_Materialunidade_material: TStringField
      FieldName = 'unidade_material'
      Origin = 'PROJETOTCC."public.material".unidade_material'
      Size = 25
    end
    object Export_Materialvalor_material: TStringField
      FieldName = 'valor_material'
      Origin = 'PROJETOTCC."public.material".valor_material'
    end
  end
  object DS_ExportMaterial: TDataSource
    DataSet = Export_Material
    Left = 640
    Top = 456
  end
  object DSConsultaServicoF: TDataSource
    AutoEdit = False
    DataSet = ConsultaServicoF
    Left = 336
    Top = 280
  end
  object DSClienteJuridico: TDataSource
    DataSet = TClienteJuridico
    Left = 736
    Top = 136
  end
  object TClienteJuridico: TTable
    Active = True
    DatabaseName = 'ProjetoTcc'
    TableName = 'public.clientejuridico'
    Left = 736
    Top = 80
    object TClienteJuridicocod_clienteju: TIntegerField
      FieldName = 'cod_clienteju'
      Required = True
    end
    object TClienteJuridiconomefantasia_clienteju: TStringField
      FieldName = 'nomefantasia_clienteju'
      Size = 40
    end
    object TClienteJuridicorazaosocial_clienteju: TStringField
      FieldName = 'razaosocial_clienteju'
      Required = True
      Size = 40
    end
    object TClienteJuridicoramoatividade_clienteju: TStringField
      FieldName = 'ramoatividade_clienteju'
      Required = True
      Size = 40
    end
    object TClienteJuridicocnpj_clienteju: TStringField
      FieldName = 'cnpj_clienteju'
      Required = True
      EditMask = '00\.000\.000\/0000\-00;1;_'
    end
    object TClienteJuridicoinscricaoestadual_clienteju: TStringField
      FieldName = 'inscricaoestadual_clienteju'
      Required = True
    end
    object TClienteJuridicoemail_clienteju: TStringField
      FieldName = 'email_clienteju'
      Required = True
      Size = 35
    end
    object TClienteJuridicoinscricaomunicipal_clienteju: TStringField
      FieldName = 'inscricaomunicipal_clienteju'
      Size = 15
    end
    object TClienteJuridicoendereco_clienteju: TStringField
      FieldName = 'endereco_clienteju'
      Required = True
      Size = 30
    end
    object TClienteJuridicocomplemento_clienteju: TStringField
      FieldName = 'complemento_clienteju'
    end
    object TClienteJuridicoreferencia_clienteju: TStringField
      FieldName = 'referencia_clienteju'
    end
    object TClienteJuridicobairro_clienteju: TStringField
      FieldName = 'bairro_clienteju'
      Required = True
      Size = 30
    end
    object TClienteJuridicocidade_clienteju: TStringField
      FieldName = 'cidade_clienteju'
      Required = True
      FixedChar = True
      Size = 100
    end
    object TClienteJuridicoestado_clienteju: TStringField
      FieldName = 'estado_clienteju'
      Required = True
      FixedChar = True
      Size = 50
    end
    object TClienteJuridicocep_clienteju: TStringField
      FieldName = 'cep_clienteju'
      Required = True
      Size = 15
    end
    object TClienteJuridicotelefone_clienteju: TStringField
      FieldName = 'telefone_clienteju'
      Required = True
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TClienteJuridicodatacadastro_clienteju: TDateField
      FieldName = 'datacadastro_clienteju'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object TClienteJuridicocelular_clienteju: TStringField
      FieldName = 'celular_clienteju'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
  end
  object DSConsultaEstoque: TDataSource
    AutoEdit = False
    DataSet = TMaterial
    Left = 584
    Top = 176
  end
  object ConsultaGeral: TQuery
    Active = True
    DatabaseName = 'ProjetoTcc'
    SQL.Strings = (
      'select * from orcamento'
      'where situacao_orcamento =:nome')
    Left = 136
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptUnknown
      end>
  end
  object DSConsultaGeral: TDataSource
    DataSet = ConsultaGeral
    Left = 136
    Top = 280
  end
end
