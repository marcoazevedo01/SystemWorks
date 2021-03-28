unit TelaBuscarMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB;

type
  TfmTelaBuscarMaterial = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    GridBuscarMaterial: TDBGrid;
    edtBuscar: TEdit;
    procedure GridBuscarMaterialDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaBuscarMaterial: TfmTelaBuscarMaterial;

implementation

uses DMConexao, TelaMaterial, TelaOrdemEntradaMaterial,
  TelaOrdemSaidaMaterial, TelaServico;

{$R *.dfm}

procedure TfmTelaBuscarMaterial.edtBuscarKeyPress(Sender: TObject;
  var Key: Char);
begin
DM_dados1.TMaterial.Locate('descricao_material',edtBuscar.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TfmTelaBuscarMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
deletarMa := '';
editarSer := '';
servico   := '';
edtBuscar.Text := '';
end;

procedure TfmTelaBuscarMaterial.FormShow(Sender: TObject);
begin

if (servico = 'true') or (saida = 'true') or (entrada = 'true')then
  begin
    Label2.Caption := 'Selecione o material desejado';
    DM_dados1.TMaterial.Open;
  end
else if (deletarMa = 'true') then
  begin
    Label2.Caption := 'Selecione o material que deseja deletar';
  end
else if (deletarMa = '') then
  begin
    Label2.Caption := 'Selecione o material que deseja editar';
  end;
end;

procedure TfmTelaBuscarMaterial.GridBuscarMaterialDblClick(Sender: TObject);
begin
if servico = 'true' then
  begin
    if DM_dados1.TServico.FieldByName('material1_servico').AsString = '' then
      begin
        DM_dados1.TServico.FieldByName('material1_servico').AsString := DM_dados1.TMaterial.FieldByName('descricao_material').AsString;
        fmTelaBuscarMaterial.Close;
      end
    else if DM_dados1.TServico.FieldByName('material2_servico').AsString = '' then
      begin
        DM_dados1.TServico.FieldByName('material2_servico').AsString := DM_dados1.TMaterial.FieldByName('descricao_material').AsString;
        fmTelaBuscarMaterial.Close;
      end
    else if DM_dados1.TServico.FieldByName('material3_servico').AsString = '' then
      begin
        DM_dados1.TServico.FieldByName('material3_servico').AsString := DM_dados1.TMaterial.FieldByName('descricao_material').AsString;
        fmTelaBuscarMaterial.Close;
      end
    else if DM_dados1.TServico.FieldByName('material4_servico').AsString = '' then
      begin
        DM_dados1.TServico.FieldByName('material4_servico').AsString := DM_dados1.TMaterial.FieldByName('descricao_material').AsString;
        fmTelaBuscarMaterial.Close;
      end
    else if DM_dados1.TServico.FieldByName('material5_servico').AsString = '' then
      begin
        DM_dados1.TServico.FieldByName('material5_servico').AsString := DM_dados1.TMaterial.FieldByName('descricao_material').AsString;
        fmTelaBuscarMaterial.Close;
      end
    else begin
      ShowMessage('Não é permitido atribuir mais materiais a este serviço');
      fmTelaBuscarMaterial.Close;
    end;
  end
else if deletarMa = 'true' then
  begin
    Label2.Caption := 'Selecione o material que deseja excluir';
    if (MessageDlg('Deseja realmente deletar ?'#13'O Material: '+ DM_dados1.TMaterial.FieldByName('descricao_material').AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
      begin
        DM_dados1.TMaterial.Delete;
      end
    else
      begin
        Abort;
      end;
  end
else if saida = 'true' then
  begin
    fmTelaOrdemSaidaMaterial.edtMaterialSaida.Text := DM_dados1.TMaterial.FieldByName('descricao_material').AsString;
    fmTelaBuscarMaterial.Close;
  end
else if entrada = 'true' then
  begin
    fmTelaOrdemEntradaMaterial.edtMaterialEntrada.Text := DM_dados1.TMaterial.FieldByName('descricao_material').AsString;
    fmTelaBuscarMaterial.Close;
  end
else if editarMart = 'true' then
  begin
    fmTelaMaterial.GroupBox1.Visible := true;
    fmTelaMaterial.btnGravar.Visible := true;
    fmTelaMaterial.btnIncluir.Enabled   := false;
    fmTelaMaterial.btnEditar.Enabled    := false;
    fmTelaMaterial.btnRelatorio.Visible := false;
    fmTelaMaterial.btnEntrada.Visible   := false;
    fmTelaMaterial.btnSaida.Visible     := false;
    fmTelaMaterial.btnExcluir.Enabled   := false;
    fmTelaBuscarMaterial.Close;
  end;
end;

end.
