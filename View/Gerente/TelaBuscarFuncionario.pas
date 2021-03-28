unit TelaBuscarFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB;

type
  TfmTelaBuscarFuncionario = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    edtBuscar: TEdit;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaBuscarFuncionario: TfmTelaBuscarFuncionario;

implementation

uses DMConexao, TelaFuncionario, TelaOrdemEntradaMaterial,
  TelaOrdemSaidaMaterial, TelaEscolhaRelatorioFuncionario;

{$R *.dfm}

procedure TfmTelaBuscarFuncionario.DBGrid1DblClick(Sender: TObject);
begin
if relatorioFun = 'true' then
  begin
    fmTelaEscolhaRelatorioFuncionario.RvProjectFuncionarioDetalhado.Open;
    fmTelaEscolhaRelatorioFuncionario.RvProjectFuncionarioDetalhado.ExecuteReport('Relatorio_FuncionarioDetalhado');
    fmTelaEscolhaRelatorioFuncionario.RvProjectFuncionarioDetalhado.Close;
    fmTelaBuscarFuncionario.Close;
  end
else if deletarFu = '' then
  begin
    fmTelaFuncionario.GroupBox1.Visible := true;
    fmTelaFuncionario.btnGravar.Visible := true;
    fmTelaFuncionario.btnIncluir.Enabled := false;
    fmTelaFuncionario.btnEditar.Enabled := false;
    fmTelaFuncionario.btnRelatorio.Enabled := false;
    fmTelaFuncionario.btnExcluir.Enabled := false;
    fmTelaBuscarFuncionario.Close;
  end
else if deletarFu = 'true' then
  begin
    if (MessageDlg('Deseja realmente deletar ?'#13'O Funcionario: '+ DM_dados1.TFuncionario.FieldByName('nome_funcionario').AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
      begin
        DM_dados1.TFuncionario.Delete;
      end
  else
    begin
      Abort;
    end;
  end;
end;


procedure TfmTelaBuscarFuncionario.edtBuscarKeyPress(Sender: TObject;
  var Key: Char);
begin
DM_dados1.TFuncionario.Locate('nome_funcionario',edtBuscar.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TfmTelaBuscarFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
deletarFu     := '';
relatorioFun  := '';
edtBuscar.Text:= '';
end;

procedure TfmTelaBuscarFuncionario.FormShow(Sender: TObject);
begin
if deletarFu = 'true' then
  begin
    Label2.Caption := 'Selecione o funcionário que deseja excluir';
  end
else if (entrada = 'true') or (saida = 'true') or (relatorioFun = 'true') then
  begin
    DM_dados1.TFuncionario.Open;
    Label2.Caption := 'Selecione o funcionário desejado';
  end;
end;

end.
