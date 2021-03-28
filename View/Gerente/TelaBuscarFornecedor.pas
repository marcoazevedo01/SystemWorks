unit TelaBuscarFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB;

type
  TfmTelaBuscarFornecedor = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    edtBuscar: TEdit;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaBuscarFornecedor: TfmTelaBuscarFornecedor;

implementation

uses DMConexao, TelaFornecedor, TelaEscolhaRelatorioFornecedor;

{$R *.dfm}

procedure TfmTelaBuscarFornecedor.DBGrid1DblClick(Sender: TObject);
begin
if relatorioFo = 'true' then
  begin
    fmTelaEscolhaRelatorioFornecedor.RvProjectFornecedorDetalhado.Open;
    fmTelaEscolhaRelatorioFornecedor.RvProjectFornecedorDetalhado.ExecuteReport('Relatorio_FornecedorDetalhado');
    fmTelaEscolhaRelatorioFornecedor.RvProjectFornecedorDetalhado.Close;
    fmTelaBuscarFornecedor.Close;
  end
else if deletarFo = '' then
  begin
    fmTelaFornecedor.GroupBox1.Visible  := true;
    fmTelaFornecedor.btnGravar.Visible  := true;
    fmTelaFornecedor.btnIncluir.Enabled := false;
    fmTelaFornecedor.btnEditar.Enabled := false;
    fmTelaFornecedor.btnRelatorio.Enabled := false;
    fmTelaFornecedor.btnExcluir.Enabled := false;
    fmTelaBuscarFornecedor.Close;
  end
else if deletarFo = 'true' then
  begin
    if (MessageDlg('Deseja realmente deletar ?'#13'O Fornecedor: '+ DM_dados1.TFornecedor.FieldByName('nomefantasia_fornecedor').AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
      begin
        DM_dados1.TFornecedor.Delete;
      end
    end
else
  begin
    Abort;
  end;
end;

procedure TfmTelaBuscarFornecedor.edtBuscarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
DM_dados1.TFornecedor.Locate('nomefantasia_fornecedor',edtBuscar.Text,[loPartialKey,loCaseInsensitive]);
DM_dados1.SqlConsultaFornecedor.close;
DM_dados1.SqlConsultaFornecedor.ParamByName('nome').AsString:='%'+edtBuscar.Text+'%';
DM_dados1.SqlConsultaFornecedor.open;
end;

procedure TfmTelaBuscarFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
deletarFo     := '';
relatorioFo   := '';
edtBuscar.Text:= '';
end;

procedure TfmTelaBuscarFornecedor.FormShow(Sender: TObject);
begin
if deletarFo = 'true' then
  begin
    Label2.Caption := 'Selecione o fornecedor que deseja excluir';
  end
else if relatorioFo = 'true' then
  begin
    DM_dados1.TFornecedor.Open;
    Label2.Caption := 'Selecione o fornecedor que desejado';
  end
else if deletarFo = '' then
  begin
    Label2.Caption := 'Selecione o fornecedor que deseja alterar';
  end;
end;

end.
