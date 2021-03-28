program ProjetoTcc;

uses
  Forms,
  TelaPrincipal in 'View\TelaPrincipal.pas' {fmTelaPrincipal},
  TelaLogin in 'View\TelaLogin.pas' {fmTelaLogin},
  TelaAgendamento in 'View\Vendedor\TelaAgendamento.pas' {fmTelaAgenda},
  TelaOrcamento in 'View\Vendedor\TelaOrcamento.pas' {fmTelaOrcamento},
  TelaRelatorioVendasV in 'View\Vendedor\TelaRelatorioVendasV.pas' {fmTelaRelatorioVendasV},
  TelaRelatorioVendasG in 'View\Gerente\TelaRelatorioVendasG.pas' {fmTelaRelatorioVendasG},
  TelaCliente in 'View\Vendedor\TelaCliente.pas' {fmTelaCliente},
  TelaBuscarCliente in 'View\Vendedor\TelaBuscarCliente.pas' {fmTelaBuscarCliente},
  TelaMaterial in 'View\Almoxarife\TelaMaterial.pas' {fmTelaMaterial},
  TelaRelatorioMaterial in 'View\Almoxarife\TelaRelatorioMaterial.pas' {fmTelaRelatorioMaterial},
  TelaOrdemEntradaMaterial in 'View\Almoxarife\TelaOrdemEntradaMaterial.pas' {fmTelaOrdemEntradaMaterial},
  TelaOrdemSaidaMaterial in 'View\Almoxarife\TelaOrdemSaidaMaterial.pas' {fmTelaOrdemSaidaMaterial},
  TelaExportMaterial in 'View\Gerente\TelaExportMaterial.pas' {fmTelaExpotMaterial},
  TelaServico in 'View\Gerente\TelaServico.pas' {fmTelaServico},
  TelaFuncionario in 'View\Gerente\TelaFuncionario.pas' {fmTelaFuncionario},
  TelaFornecedor in 'View\Gerente\TelaFornecedor.pas' {fmTelaFornecedor},
  DMConexao in 'connection\DMConexao.pas' {DM_dados1: TDataModule},
  TelaBuscarFornecedor in 'View\Gerente\TelaBuscarFornecedor.pas' {fmTelaBuscarFornecedor},
  TelaBuscarFuncionario in 'View\Gerente\TelaBuscarFuncionario.pas' {fmTelaBuscarFuncionario},
  TelaCor in 'View\TelaCor.pas' {fmTelaCor},
  TelaBuscarMaterial in 'View\Almoxarife\TelaBuscarMaterial.pas' {fmTelaBuscarMaterial},
  TelaBuscarServico in 'View\Gerente\TelaBuscarServico.pas' {fmTelaBuscarServico},
  TelaEscolhaRelatorioCliente in 'View\Vendedor\TelaEscolhaRelatorioCliente.pas' {fmTelaEscolhaRelatorioCliente},
  TelaEscolhaRelatorioFuncionario in 'View\Gerente\TelaEscolhaRelatorioFuncionario.pas' {fmTelaEscolhaRelatorioFuncionario},
  TelaBuscarEntrada in 'View\Almoxarife\TelaBuscarEntrada.pas' {fmTelaBuscarEntrada},
  TelaBuscarSaida in 'View\Almoxarife\TelaBuscarSaida.pas' {fmTelaBuscarSaida},
  TelaEscolhaRelatorioFornecedor in 'View\Gerente\TelaEscolhaRelatorioFornecedor.pas' {fmTelaEscolhaRelatorioFornecedor},
  TelaConsultaServico in 'View\Almoxarife\TelaConsultaServico.pas' {fmTelaConsultaServico},
  TelaEstoqueMaterial in 'View\Almoxarife\TelaEstoqueMaterial.pas' {fmTelaEstoqueMaterial},
  TelaSobre in 'View\TelaSobre.pas' {fmTelaSobre};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'System Works';
  Application.CreateForm(TfmTelaPrincipal, fmTelaPrincipal);
  Application.CreateForm(TfmTelaLogin, fmTelaLogin);
  Application.CreateForm(TfmTelaAgenda, fmTelaAgenda);
  Application.CreateForm(TfmTelaOrcamento, fmTelaOrcamento);
  Application.CreateForm(TfmTelaRelatorioVendasV, fmTelaRelatorioVendasV);
  Application.CreateForm(TfmTelaRelatorioVendasG, fmTelaRelatorioVendasG);
  Application.CreateForm(TfmTelaCliente, fmTelaCliente);
  Application.CreateForm(TfmTelaBuscarCliente, fmTelaBuscarCliente);
  Application.CreateForm(TfmTelaMaterial, fmTelaMaterial);
  Application.CreateForm(TfmTelaRelatorioMaterial, fmTelaRelatorioMaterial);
  Application.CreateForm(TfmTelaOrdemEntradaMaterial, fmTelaOrdemEntradaMaterial);
  Application.CreateForm(TfmTelaOrdemSaidaMaterial, fmTelaOrdemSaidaMaterial);
  Application.CreateForm(TfmTelaExpotMaterial, fmTelaExpotMaterial);
  Application.CreateForm(TfmTelaServico, fmTelaServico);
  Application.CreateForm(TfmTelaFuncionario, fmTelaFuncionario);
  Application.CreateForm(TfmTelaFornecedor, fmTelaFornecedor);
  Application.CreateForm(TDM_dados1, DM_dados1);
  Application.CreateForm(TfmTelaBuscarFornecedor, fmTelaBuscarFornecedor);
  Application.CreateForm(TfmTelaBuscarFuncionario, fmTelaBuscarFuncionario);
  Application.CreateForm(TfmTelaCor, fmTelaCor);
  Application.CreateForm(TfmTelaBuscarMaterial, fmTelaBuscarMaterial);
  Application.CreateForm(TfmTelaBuscarServico, fmTelaBuscarServico);
  Application.CreateForm(TfmTelaEscolhaRelatorioCliente, fmTelaEscolhaRelatorioCliente);
  Application.CreateForm(TfmTelaEscolhaRelatorioFuncionario, fmTelaEscolhaRelatorioFuncionario);
  Application.CreateForm(TfmTelaBuscarEntrada, fmTelaBuscarEntrada);
  Application.CreateForm(TfmTelaBuscarSaida, fmTelaBuscarSaida);
  Application.CreateForm(TfmTelaEscolhaRelatorioFornecedor, fmTelaEscolhaRelatorioFornecedor);
  Application.CreateForm(TfmTelaConsultaServico, fmTelaConsultaServico);
  Application.CreateForm(TfmTelaEstoqueMaterial, fmTelaEstoqueMaterial);
  Application.CreateForm(TfmTelaSobre, fmTelaSobre);
  Application.Run;
end.
