unit DMConexao;

interface

uses
  SysUtils, Classes, DB, DBTables, IBCustomDataSet, IBQuery, WideStrings,
  FMTBcd, SqlExpr, ADODB;

type
  TDM_dados1 = class(TDataModule)
    DConexao: TDatabase;
    DSClienteFisico: TDataSource;
    TCLienteFisico: TTable;
    DSFuncionario: TDataSource;
    TFuncionario: TTable;
    TCidade: TTable;
    DSMaterial: TDataSource;
    TMaterial: TTable;
    DSFornecedor: TDataSource;
    TFornecedor: TTable;
    DSEstado: TDataSource;
    TEstado: TTable;
    DSServico: TDataSource;
    TServico: TTable;
    DSEntradaMaterial: TDataSource;
    TEntradaMaterial: TTable;
    SqlConsultaCidade: TQuery;
    DSCidade: TDataSource;
    DSSaidaMaterial: TDataSource;
    TSaidaMaterial: TTable;
    DSSistema: TDataSource;
    TSistema: TTable;
    SqlConsultaVendaV: TQuery;
    DSConVendav: TDataSource;
    DSOrcamento: TDataSource;
    TOrcamento: TTable;
    SqlConsultaServico: TQuery;
    ConsultaAgentamento: TQuery;
    TFuncionariocod_funcionario: TIntegerField;
    TFuncionariocargo_funcionario: TStringField;
    TFuncionariousuario_funcionario: TStringField;
    TFuncionariosenha_funcionario: TStringField;
    TFuncionarionome_funcionario: TStringField;
    TFuncionarioemail_funcionario: TStringField;
    TFuncionariorg_funcionario: TStringField;
    TFuncionariocpf_funcionario: TStringField;
    TFuncionariosexo_funcionario: TStringField;
    TFuncionarioendereco_funcionario: TStringField;
    TFuncionariocomplemento_funcionario: TStringField;
    TFuncionarioreferencia_funcionario: TStringField;
    TFuncionariobairro_funcionario: TStringField;
    TFuncionariocidade_funcionario: TStringField;
    TFuncionarioestado_funcionario: TStringField;
    TFuncionariocep_funcionario: TStringField;
    TFuncionariotelefone_funcionario: TStringField;
    TFuncionariodatacadastro_funcionario: TDateField;
    TFuncionariocelular_funcionario: TStringField;
    TCLienteFisicocod_cliente: TIntegerField;
    TCLienteFisiconome_cliente: TStringField;
    TCLienteFisicoemail_cliente: TStringField;
    TCLienteFisicorg_cliente: TStringField;
    TCLienteFisicocpf_cliente: TStringField;
    TCLienteFisicosexo_cliente: TStringField;
    TCLienteFisicoendereco_cliente: TStringField;
    TCLienteFisicocomplemento_cliente: TStringField;
    TCLienteFisicoreferencia_cliente: TStringField;
    TCLienteFisicobairro_cliente: TStringField;
    TCLienteFisicocidade_cliente: TStringField;
    TCLienteFisicoestado_cliente: TStringField;
    TCLienteFisicocep_cliente: TStringField;
    TCLienteFisicotelefone_cliente: TStringField;
    TCLienteFisicodatanascimento_cliente: TDateField;
    TCLienteFisicocelular_cliente: TStringField;
    TCLienteFisicodatacadastro_cliente: TDateField;
    TCLienteFisicoprofissao_cliente: TStringField;
    TCLienteFisicolocaltrabalho_cliente: TStringField;
    TCLienteFisicotelefonecomercial_cliente: TStringField;
    TFornecedorcod_fornecedor: TIntegerField;
    TFornecedornomefantasia_fornecedor: TStringField;
    TFornecedorrazaosocial_fornecedor: TStringField;
    TFornecedorramoatividade_fornecedor: TStringField;
    TFornecedorcnpj_fornecedor: TStringField;
    TFornecedorinscricaoestadual_fornecedor: TStringField;
    TFornecedoremail_fornecedor: TStringField;
    TFornecedorinscricaomunicipal_fornecedor: TStringField;
    TFornecedorendereco_fornecedor: TStringField;
    TFornecedorcomplemento_fornecedor: TStringField;
    TFornecedorreferencia_fornecedor: TStringField;
    TFornecedorbairro_fornecedor: TStringField;
    TFornecedorcidade_fornecedor: TStringField;
    TFornecedorestado_fornecedor: TStringField;
    TFornecedorcep_fornecedor: TStringField;
    TFornecedortelefone_fornecedor: TStringField;
    TFornecedordatacadastro_fornecedor: TDateField;
    TFornecedorcelular_fornecedor: TStringField;
    TServicocod_servico: TIntegerField;
    TServiconome_servico: TStringField;
    TServicodescricao_servico: TStringField;
    TServicovalor_servico: TStringField;
    TServicomaterial1_servico: TStringField;
    TServicomaterial2_servico: TStringField;
    TServicomaterial3_servico: TStringField;
    TServicomaterial4_servico: TStringField;
    TServicomaterial5_servico: TStringField;
    TServicomaterial6_servico: TStringField;
    SqlConsultaServicocod_servico: TIntegerField;
    SqlConsultaServiconome_servico: TStringField;
    SqlConsultaServicodescricao_servico: TStringField;
    SqlConsultaServicovalor_servico: TStringField;
    SqlConsultaServicomaterial1_servico: TStringField;
    SqlConsultaServicomaterial2_servico: TStringField;
    SqlConsultaServicomaterial3_servico: TStringField;
    SqlConsultaServicomaterial4_servico: TStringField;
    SqlConsultaServicomaterial5_servico: TStringField;
    SqlConsultaServicomaterial6_servico: TStringField;
    DSAgendamento: TDataSource;
    ConsultaServicoF: TQuery;
    RelatorioClienteContato: TQuery;
    RelatorioFunContato: TQuery;
    RelatorioForContato: TQuery;
    RelatorioEntMaterialData: TQuery;
    RelatorioSaiMaterialData: TQuery;
    SqlConsultaFornecedor: TQuery;
    SqlConsultaCliente: TQuery;
    Export_Material: TQuery;
    DS_ExportMaterial: TDataSource;
    Export_Materialcod_material: TIntegerField;
    Export_Materialdescricao_material: TStringField;
    Export_Materialquantidade_material: TStringField;
    Export_Materialunidade_material: TStringField;
    Export_Materialvalor_material: TStringField;
    TOrcamentocod_orcamento: TIntegerField;
    TOrcamentonomecliente_orcamento: TStringField;
    TOrcamentonomevendedor_orcamento: TStringField;
    TOrcamentotelefone_orcamento: TStringField;
    TOrcamentonomecontato_orcamento: TStringField;
    TOrcamentotelefonecontato_orcamento: TStringField;
    TOrcamentoendereco_obra_orcamento: TStringField;
    TOrcamentocomplemento_orcamento: TStringField;
    TOrcamentoreferencia_orcamento: TStringField;
    TOrcamentobairro_orcamento: TStringField;
    TOrcamentocidade_orcamento: TStringField;
    TOrcamentoestado_orcamento: TStringField;
    TOrcamentotiposervico_orcamento: TStringField;
    TOrcamentovalorservico_orcamento: TStringField;
    TOrcamentodata_orcamento: TDateField;
    TOrcamentoprevisao_orcamento: TDateField;
    TSaidaMaterialcod_ordemsaida: TIntegerField;
    TSaidaMaterialfuncionario_ordemsaida: TStringField;
    TSaidaMaterialmaterial_ordemsaida: TStringField;
    TSaidaMaterialquantidade_ordemsaida: TStringField;
    TSaidaMaterialdatasaida_ordemsaida: TDateField;
    TEntradaMaterialcod_ordementrada: TIntegerField;
    TEntradaMaterialfuncionario_ordementrada: TStringField;
    TEntradaMaterialmaterial_ordementrada: TStringField;
    TEntradaMaterialquantidade_ordementrada: TStringField;
    TEntradaMaterialdataentrada_ordementrada: TStringField;
    TOrcamentosituacao_orcamento: TStringField;
    DSConsultaServicoF: TDataSource;
    DSClienteJuridico: TDataSource;
    TClienteJuridico: TTable;
    TClienteJuridicocod_clienteju: TIntegerField;
    TClienteJuridiconomefantasia_clienteju: TStringField;
    TClienteJuridicorazaosocial_clienteju: TStringField;
    TClienteJuridicoramoatividade_clienteju: TStringField;
    TClienteJuridicocnpj_clienteju: TStringField;
    TClienteJuridicoinscricaoestadual_clienteju: TStringField;
    TClienteJuridicoemail_clienteju: TStringField;
    TClienteJuridicoinscricaomunicipal_clienteju: TStringField;
    TClienteJuridicoendereco_clienteju: TStringField;
    TClienteJuridicocomplemento_clienteju: TStringField;
    TClienteJuridicoreferencia_clienteju: TStringField;
    TClienteJuridicobairro_clienteju: TStringField;
    TClienteJuridicocidade_clienteju: TStringField;
    TClienteJuridicoestado_clienteju: TStringField;
    TClienteJuridicocep_clienteju: TStringField;
    TClienteJuridicotelefone_clienteju: TStringField;
    TClienteJuridicodatacadastro_clienteju: TDateField;
    TClienteJuridicocelular_clienteju: TStringField;
    TSistemacor_sistema: TIntegerField;
    DSConsultaEstoque: TDataSource;
    ConsultaGeral: TQuery;
    DSConsultaGeral: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_dados1: TDM_dados1;

implementation

{$R *.dfm}

end.
