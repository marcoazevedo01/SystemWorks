unit TelaBuscarServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB;

type
  TfmTelaBuscarServico = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    GridBuscarServico: TDBGrid;
    edtBuscar: TEdit;
    procedure GridBuscarServicoDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaBuscarServico: TfmTelaBuscarServico;

implementation

uses DMConexao, TelaServico, TelaOrcamento;

{$R *.dfm}

procedure TfmTelaBuscarServico.FormShow(Sender: TObject);
begin
if deletarSer = 'true' then
  begin
    Label2.Caption := 'Selecione o serviço que deseja excluir';
  end
else if editarSer = 'true' then
  begin
    Label2.Caption := 'Selecione o serviço que deseja alterar';
  end;
if orcamento = 'true' then
  begin
    DM_dados1.TServico.Open;
    Label2.Caption := 'Selecione o serviço desejado';
  end;
end;

procedure TfmTelaBuscarServico.GridBuscarServicoDblClick(Sender: TObject);
var listaServicoOrcamento: String;
begin
if orcamento = 'true' then
  begin
    fmTelaOrcamento.DBEdit5.Text := DM_dados1.TServico.FieldByName('nome_servico').AsString;
    fmTelaOrcamento.DBEdit13.Text := DM_dados1.TServico.FieldByName('valor_servico').AsString;
    fmTelaBuscarServico.Close;
  end
else if deletarSer = 'true' then
  begin
  if (MessageDlg('Deseja realmente deletar ?'#13'O Serviço: '+ DM_dados1.TServico.FieldByName('nome_servico').AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
    begin
      DM_dados1.TServico.Delete;
    end
  else
    begin
      Abort;
    end;
  end
else if editarSer = 'true' then
  begin
    fmTelaServico.GroupBox1.Visible := true;
    fmTelaServico.btnGravar.Visible := true;
    fmTelaServico.btnIncluir.Enabled := false;
    fmTelaServico.btnExcluir.Enabled := false;
    fmTelaServico.btnEditar.Enabled  := false;
    DM_dados1.TServico.Edit;
    fmTelaBuscarServico.Close;
  end;
end;

procedure TfmTelaBuscarServico.edtBuscarKeyPress(Sender: TObject;
  var Key: Char);
begin
DM_dados1.TServico.Locate('nome_servico',edtBuscar.Text,[loPartialKey,loCaseInsensitive]);
DM_dados1.SqlConsultaServico.close;
DM_dados1.SqlConsultaServico.ParamByName('nome').AsString:='%'+edtBuscar.Text+'%';
DM_dados1.SqlConsultaServico.open;
end;

procedure TfmTelaBuscarServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
deletarSer     := '';
editarSer      := '';
orcamento      := '';
edtBuscar.Text := '';
end;

end.
