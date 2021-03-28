unit TelaBuscarCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ExtCtrls;

type
  TfmTelaBuscarCliente = class(TForm)
    GridBuscarCliente: TDBGrid;
    edtBuscar: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    GridBuscarCliJuridico: TDBGrid;
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure GridBuscarClienteDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure GridBuscarCliJuridicoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaBuscarCliente: TfmTelaBuscarCliente;

implementation

uses DMConexao, TelaCliente, TelaEscolhaRelatorioCliente, TelaOrcamento;

{$R *.dfm}
//evento disparado ao clica 2 vezes no grid do cliente fisico
procedure TfmTelaBuscarCliente.GridBuscarClienteDblClick(Sender: TObject);
begin
if orcamento = 'true' then
  begin
    fmTelaOrcamento.DBEdit2.Text := DM_dados1.TCLienteFisico.FieldByName('nome_cliente').AsString;
    fmTelaOrcamento.DBEdit3.Text := DM_dados1.TCLienteFisico.FieldByName('telefone_cliente').AsString;
    fmTelaBuscarCliente.Close;
  end;
if relatorioCli = 'true' then
  begin
    fmTelaEscolhaRelatorioCliente.RvProjectClienteDetalhado.Open;
    fmTelaEscolhaRelatorioCliente.RvProjectClienteDetalhado.ExecuteReport('Relatorio_ClienteDetalhado');
    fmTelaEscolhaRelatorioCliente.RvProjectClienteDetalhado.Close;
    fmTelaBuscarCliente.Close;
  end;
if editarCli = 'true' then
  begin
    Label2.Caption := 'Selecione o cliente que deseja alterar';
    fmTelaCliente.GBClienteFisico.Visible := true;
    fmTelaCliente.btnIncluir.Enabled := false;
    fmTelaCliente.btnEditar.Enabled := false;
    fmTelaCliente.btnRelatorio.Enabled := false;
    fmTelaCliente.btnGravar.Visible := true;
    fmTelaBuscarCliente.Close;
  end;
end;

//evendo disparado ao clicar 2 vezes no grid do cliente juridico
procedure TfmTelaBuscarCliente.GridBuscarCliJuridicoDblClick(Sender: TObject);
begin
  if orcamento = 'true' then
  begin
    fmTelaOrcamento.DBEdit2.Text := DM_dados1.TClienteJuridico.FieldByName('nomefantasia_clienteju').AsString;
    fmTelaOrcamento.DBEdit3.Text := DM_dados1.TClienteJuridico.FieldByName('telefone_clienteju').AsString;
    fmTelaBuscarCliente.Close;
  end;
if editarCli = 'true' then
  begin
    Label2.Caption := 'Selecione o cliente que deseja alterar';
    fmTelaCliente.GBclienteJuridico.Visible := true;
    fmTelaCliente.btnIncluir.Enabled := false;
    fmTelaCliente.btnEditar.Enabled := false;
    fmTelaCliente.btnRelatorio.Enabled := false;
    fmTelaBuscarCliente.Close;
  end;
end;
//evento disparado ao clicar no radio grup no ato de escolher o tipo do cliente
procedure TfmTelaBuscarCliente.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 0 then
  begin
    GridBuscarCliJuridico.Visible := false;
    GridBuscarCliente.Visible := true;
  end
else if RadioGroup1.ItemIndex = 1 then
  begin
    GridBuscarCliente.Visible := false;
    GridBuscarCliJuridico.Visible := true;
  end;
end;
//evendo disparado no ato de escrever no edt
procedure TfmTelaBuscarCliente.edtBuscarKeyPress(Sender: TObject;
  var Key: Char);
begin
DM_dados1.SqlConsultaCliente.Open;
DM_dados1.TCLienteFisico.Locate('nome_cliente',edtBuscar.Text,[loPartialKey,loCaseInsensitive]);
DM_dados1.SqlConsultaCliente.ParamByName('nome').AsString:='%'+edtBuscar.Text+'%';
DM_dados1.SqlConsultaCliente.Close;
end;

procedure TfmTelaBuscarCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (orcamento = 'true') or (relatorioCli = 'true') then
  begin
    DM_dados1.TCLienteFisico.Close;
    DM_dados1.TClienteJuridico.Close;
  end;
orcamento := '';
relatorioCli := '';
editarCli := '';
edtBuscar.Text := '';
end;

procedure TfmTelaBuscarCliente.FormShow(Sender: TObject);
begin
if (orcamento = 'true') or (relatorioCli = 'true') then
  begin
    DM_dados1.TCLienteFisico.Open;
    DM_dados1.TClienteJuridico.Open;
    Label2.Caption := 'Selecione o cliente desejado';
  end;
if editarCli = 'true' then
  begin
    Label2.Caption := 'Selecione o cliente que deseja alterar';
  end;
end;

end.
