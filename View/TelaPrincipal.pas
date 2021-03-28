unit TelaPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, ToolWin, ComCtrls, Buttons, Menus, pngimage, StdCtrls;

type
  TfmTelaPrincipal = class(TForm)
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ToolBar2: TToolBar;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton9: TSpeedButton;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    trocarUsuario1: TMenuItem;
    Configuraces1: TMenuItem;
    Sair1: TMenuItem;
    MudarTemadaInterface1: TMenuItem;
    ToolBar3: TToolBar;
    ToolBar4: TToolBar;
    ToolBar5: TToolBar;
    ToolBar6: TToolBar;
    ToolBar7: TToolBar;
    ToolBar8: TToolBar;
    ToolBar9: TToolBar;
    ToolBar10: TToolBar;
    Image1: TImage;
    Relatrios1: TMenuItem;
    Sobre1: TMenuItem;
    Funcionario1: TMenuItem;
    Fornecedor1: TMenuItem;
    Materiais1: TMenuItem;
    Cliente1: TMenuItem;
    Detalhado1: TMenuItem;
    Contato1: TMenuItem;
    Contato2: TMenuItem;
    Detalhado2: TMenuItem;
    Entrada1: TMenuItem;
    Saida1: TMenuItem;
    Contato3: TMenuItem;
    detalhado3: TMenuItem;
    Utilitarios1: TMenuItem;
    Calculadora1: TMenuItem;
    BlocodeNotas1: TMenuItem;
    Calendario1: TMenuItem;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure trocarUsuario1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure MudarTemadaInterface1Click(Sender: TObject);
    procedure ToolBar12Click(Sender: TObject);
    procedure ToolBar11Click(Sender: TObject);
    procedure Contato1Click(Sender: TObject);
    procedure Detalhado1Click(Sender: TObject);
    procedure Contato2Click(Sender: TObject);
    procedure Detalhado2Click(Sender: TObject);
    procedure Contato3Click(Sender: TObject);
    procedure detalhado3Click(Sender: TObject);
    procedure Entrada1Click(Sender: TObject);
    procedure Saida1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure BlocodeNotas1Click(Sender: TObject);
    procedure Calendario1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaPrincipal: TfmTelaPrincipal;

implementation



{$R *.dfm}
uses TelaOrcamento, TelaAgendamento, TelaRelatorioVendasV, TelaLogin,
  TelaServico, TelaFuncionario, TelaFornecedor, TelaCliente,
  TelaMaterial, DMConexao, TelaCor, TelaRelatorioVendasG, TelaBuscarCliente,
  TelaBuscarEntrada, TelaBuscarFornecedor, TelaBuscarFuncionario,
  TelaBuscarMaterial, TelaBuscarSaida, TelaBuscarServico, TelaConsultaServico,
  TelaEscolhaRelatorioCliente, TelaEscolhaRelatorioFornecedor,
  TelaEscolhaRelatorioFuncionario, TelaEstoqueMaterial,
  TelaOrdemEntradaMaterial, TelaOrdemSaidaMaterial, TelaRelatorioMaterial,
  TelaSobre, SHELLAPI;

procedure TfmTelaPrincipal.BlocodeNotas1Click(Sender: TObject);
begin
shellexecute(handle, 'open', 'notepad.exe', '', nil,sw_shownormal);
end;

procedure TfmTelaPrincipal.Calculadora1Click(Sender: TObject);
begin
WinExec('Calc.Exe',SW_Show);
end;

procedure TfmTelaPrincipal.Calendario1Click(Sender: TObject);
begin
WinExec('Projeto_Calendario.exe',SW_Show);
end;

procedure TfmTelaPrincipal.Contato1Click(Sender: TObject);
begin
fmTelaEscolhaRelatorioFuncionario.RvProjectFuncionarioContato.Open;
fmTelaEscolhaRelatorioFuncionario.RvProjectFuncionarioContato.ExecuteReport('Relatorio_FuncionarioContato');
fmTelaEscolhaRelatorioFuncionario.RvProjectFuncionarioContato.Close;
end;

procedure TfmTelaPrincipal.Contato2Click(Sender: TObject);
begin
fmTelaEscolhaRelatorioFornecedor.RvProjectFornecedorContato.Open;
fmTelaEscolhaRelatorioFornecedor.RvProjectFornecedorContato.ExecuteReport('Relatorio_FornecedorContato');
fmTelaEscolhaRelatorioFornecedor.RvProjectFornecedorContato.Close;
end;

procedure TfmTelaPrincipal.Contato3Click(Sender: TObject);
begin
fmTelaEscolhaRelatorioCliente.RvProjectClienteContato.Open;
fmTelaEscolhaRelatorioCliente.RvProjectClienteContato.ExecuteReport('Relatorio_ClienteContato');
fmTelaEscolhaRelatorioCliente.RvProjectClienteContato.Close;
end;

procedure TfmTelaPrincipal.Detalhado1Click(Sender: TObject);
begin
relatorioFun := 'true';
fmTelaBuscarFuncionario.ShowModal;
end;

procedure TfmTelaPrincipal.Detalhado2Click(Sender: TObject);
begin
relatorioFo := 'true';
fmTelaBuscarFornecedor.ShowModal;
end;

procedure TfmTelaPrincipal.detalhado3Click(Sender: TObject);
begin
relatorioCli := 'true';
fmTelaBuscarCliente.ShowModal;
end;

procedure TfmTelaPrincipal.Entrada1Click(Sender: TObject);
begin
fmTelaRelatorioMaterial.RvProjectEntrada.Open;
fmTelaRelatorioMaterial.RvProjectEntrada.ExecuteReport('Relatorio_EntradaMaterialData');
fmTelaRelatorioMaterial.RvProjectEntrada.Close;
end;

procedure TfmTelaPrincipal.FormShow(Sender: TObject);
begin
if entrou = '' then
    begin
      ToolBar1.Visible := false;
      ToolBar2.Visible := false;
      MainMenu1.Items[1].Enabled := false;
    end
else if entrou = 'true' then
    begin
      ToolBar1.Visible := True;
      ToolBar2.Visible := True;
      Image1.Enabled   := False;
      MainMenu1.Items[1].Enabled := true;
      entrou := '';
  //puxa a cor gravarda no banco e seta nas telas
  fmTelaPrincipal.Color            := cor_sistema;
  fmTelaCor.Color                  := cor_sistema;
  fmTelaServico.Color              := cor_sistema;
  fmTelaMaterial.Color             := cor_sistema;
  fmTelaOrcamento.Color            := cor_sistema;
  fmTelaCliente.Color              := cor_sistema;
  fmTelaFuncionario.Color          := cor_sistema;
  fmTelaFornecedor.Color           := cor_sistema;
  fmTelaAgenda.Color               := cor_sistema;

  fmTelaRelatorioVendasV.Color     := cor_sistema;
  fmTelaRelatorioVendasG.Color     := cor_sistema;
  fmTelaOrdemSaidaMaterial.Color   := cor_sistema;
  fmTelaOrdemEntradaMaterial.Color := cor_sistema;
  fmTelaRelatorioMaterial.Color    := cor_sistema;

  fmTelaBuscarServico.Color        := cor_sistema;
  fmTelaBuscarMaterial.Color       := cor_sistema;
  fmTelaBuscarFuncionario.Color    := cor_sistema;
  fmTelaBuscarFornecedor.Color     := cor_sistema;
  fmTelaBuscarCliente.Color        := cor_sistema;
  fmTelaBuscarEntrada.Color        := cor_sistema;
  fmTelaBuscarSaida.Color          := cor_sistema;

  fmTelaEscolhaRelatorioFuncionario.Color := cor_sistema;
  fmTelaEscolhaRelatorioFornecedor.Color  := cor_sistema;
  fmTelaConsultaServico.Color             := cor_sistema;
  fmTelaEscolhaRelatorioCliente.Color     := cor_sistema;
  fmTelaEstoqueMaterial.Color             := cor_sistema;
  //fim
    end;
if  nivel_acesso = 'ALMOXARIFE' then
    begin
    //volta do toolbar >> pro lado  ,,de ven
      ToolBar1.Left := 693;
      ToolBar1.ButtonHeight := 121;
      ToolBar1.Width := 652;
      ToolBar1.Height := 129;
    //fim

    //volta toolbar do ven
      ToolBar6.Left := 680;
      ToolBar7.Left := 841;
    //fim
      SpeedButton3.Top     := 0;
      SpeedButton3.Width   := 161;
      SpeedButton3.Height  := 121;
      SpeedButton3.Left    := 0;
      SpeedButton1.Visible := false;
      SpeedButton2.Visible := false;
      SpeedButton4.Visible := false;
      SpeedButton5.Visible := false;
      SpeedButton6.Visible := false;
      SpeedButton7.Visible := false;
    //desativando menu item
      MainMenu1.Items[1].Items[0].Enabled :=false;
      MainMenu1.Items[1].Items[1].Enabled :=false;
      MainMenu1.Items[1].Items[2].Enabled :=false;
      MainMenu1.Items[1].Items[3].Enabled :=true;
    //fim
    //ajusta grid do estoque
      fmTelaEstoqueMaterial.ClientWidth := 397;
    //fim
    end
else if nivel_acesso = 'VENDEDOR' then
    begin
    //alinhar tela
      ToolBar1.Left := 349;
      ToolBar1.ButtonHeight := 121;
      ToolBar1.Width := 668;
      ToolBar1.Height := 123;
      ToolBar2.Visible := false;
    //fim

    //alinhar toolbars para ven
      ToolBar6.Left := 660;
      ToolBar7.Left := 817;
    //fim

    //troca usuario de aml
      SpeedButton3.Top     := 0;
      SpeedButton3.Width   := 160;
      SpeedButton3.Height  := 121;
      SpeedButton3.Left    := 322;
      SpeedButton1.Visible := true;
      SpeedButton2.Visible := true;
      SpeedButton4.Visible := true;
      SpeedButton5.Visible := true;
      SpeedButton6.Visible := true;
      SpeedButton7.Visible := true;
    //fim
    //desativando menu item
      MainMenu1.Items[1].Items[0].Enabled :=true;
      MainMenu1.Items[1].Items[1].Enabled :=false;
      MainMenu1.Items[1].Items[2].Enabled :=false;
      MainMenu1.Items[1].Items[3].Enabled :=false;
    //fim
    end
else if nivel_acesso = 'GERENTE' then
    begin
    //troca usuario ven
      ToolBar1.Left := 693;
      ToolBar1.ButtonHeight := 121;
      ToolBar1.Width := 652;
      ToolBar1.Height := 129;
    //fim

    //troca usuario de aml
      SpeedButton3.Top     := 0;
      SpeedButton3.Width   := 160;
      SpeedButton3.Height  := 121;
      SpeedButton3.Left    := 322;
      SpeedButton1.Visible := true;
      SpeedButton2.Visible := true;
      SpeedButton4.Visible := true;
      SpeedButton5.Visible := true;
      SpeedButton6.Visible := true;
      SpeedButton7.Visible := true;
    //fim
    //volta toolbar do ven
      ToolBar6.Left := 683;
      ToolBar7.Left := 841;
    //fim
    //ajusta grid do estoque
      fmTelaEstoqueMaterial.ClientWidth := 487;
    //fim
      MainMenu1.Items[1].Items[0].Enabled :=true;
      MainMenu1.Items[1].Items[1].Enabled :=true;
      MainMenu1.Items[1].Items[2].Enabled :=true;
      MainMenu1.Items[1].Items[3].Enabled :=true;
    end;
end;

procedure TfmTelaPrincipal.Image1Click(Sender: TObject);
begin
fmTelaLogin.Show;
end;

procedure TfmTelaPrincipal.MudarTemadaInterface1Click(Sender: TObject);
begin
fmTelaCor.ShowModal;
end;

procedure TfmTelaPrincipal.trocarUsuario1Click(Sender: TObject);
begin
//fechar telas
  try
    fmTelaSobre.Close;
    fmTelaServico.Close;
    fmTelaRelatorioVendasV.Close;
    fmTelaRelatorioVendasG.Close;
    fmTelaRelatorioMaterial.Close;
    fmTelaOrcamento.Close;
    fmTelaMaterial.Close;
    fmTelaFuncionario.Close;
    fmTelaFornecedor.Close;
    fmTelaCor.Close;
    fmTelaCliente.Close;
    fmTelaAgenda.Close;
  except
    Abort;
  end;
//fim
nivel_acesso := '';
fmTelaPrincipal.Hide;
fmTelaPrincipal.Show;
fmTelaLogin.Show;
end;

procedure TfmTelaPrincipal.Saida1Click(Sender: TObject);
begin
fmTelaRelatorioMaterial.RvProjectSaida.Open;
fmTelaRelatorioMaterial.RvProjectSaida.ExecuteReport('Relatorio_SaidaMaterialData');
fmTelaRelatorioMaterial.RvProjectSaida.Close;
end;

procedure TfmTelaPrincipal.Sair1Click(Sender: TObject);
begin
PostMessage(FindWindow(nil, 'Calculadora'), WM_CLOSE,0,0);
fmTelaPrincipal.Close;
end;

procedure TfmTelaPrincipal.Sobre1Click(Sender: TObject);
begin
fmTelaSobre.ShowModal;
end;

procedure TfmTelaPrincipal.SpeedButton1Click(Sender: TObject);
begin
fmTelaCliente.Show;
end;

procedure TfmTelaPrincipal.SpeedButton2Click(Sender: TObject);
begin
fmTelaOrcamento.Show;
end;

procedure TfmTelaPrincipal.SpeedButton3Click(Sender: TObject);
begin
fmTelaAgenda.Show;
end;

procedure TfmTelaPrincipal.SpeedButton4Click(Sender: TObject);
begin
if nivel_acesso = 'GERENTE' then
  begin
    fmTelaRelatorioVendasG.Show;
  end
else if nivel_acesso = 'VENDEDOR' then
  begin
    fmTelaRelatorioVendasV.Show;
  end;
end;

procedure TfmTelaPrincipal.SpeedButton5Click(Sender: TObject);
begin
fmTelaServico.Show;
end;

procedure TfmTelaPrincipal.SpeedButton6Click(Sender: TObject);
begin
fmTelaFuncionario.Show;
end;

procedure TfmTelaPrincipal.SpeedButton7Click(Sender: TObject);
begin
fmTelaFornecedor.Show;
end;

procedure TfmTelaPrincipal.SpeedButton9Click(Sender: TObject);
begin
fmTelaMaterial.Show;
end;

procedure TfmTelaPrincipal.ToolBar11Click(Sender: TObject);
begin
fmTelaLogin.Show;
end;

procedure TfmTelaPrincipal.ToolBar12Click(Sender: TObject);
begin
fmTelaLogin.Show;
end;

end.
