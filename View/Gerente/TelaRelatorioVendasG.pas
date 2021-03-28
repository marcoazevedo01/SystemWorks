unit TelaRelatorioVendasG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, RpCon, RpConDS, RpRave, RpDefine,
  RpBase, RpSystem,DB, ExtCtrls;

type
  TfmTelaRelatorioVendasG = class(TForm)
    GridVendasG: TDBGrid;
    btnImprimir: TBitBtn;
    RvSystemOrcamento: TRvSystem;
    RvProjectOrcamento: TRvProject;
    DataSetOrcamento: TRvDataSetConnection;
    btnAVEnda: TBitBtn;
    btnExcluir: TBitBtn;
    btnEditar: TBitBtn;
    RGEscolhaTVenda: TRadioGroup;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAVEndaClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure RGEscolhaTVendaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaRelatorioVendasG: TfmTelaRelatorioVendasG;
var
  ediVenda, pegarid: String;

implementation

uses DMConexao, TelaOrcamento;

{$R *.dfm}

procedure TfmTelaRelatorioVendasG.btnAVEndaClick(Sender: TObject);
begin
DM_dados1.TOrcamento.Open;
pegarid := GridVendasG.SelectedField.DataSet.FieldByName('cod_orcamento').AsString;
DM_dados1.TOrcamento.Close;
DM_dados1.TOrcamento.Open;
DM_dados1.TOrcamento.Locate('cod_orcamento',pegarid,[loPartialKey,loCaseInsensitive]);
DM_dados1.TOrcamento.Edit;
DM_dados1.TOrcamentosituacao_orcamento.AsString := 'aprovado';
DM_dados1.TOrcamento.Post;
end;

procedure TfmTelaRelatorioVendasG.btnEditarClick(Sender: TObject);
begin
pegarid := GridVendasG.SelectedField.DataSet.FieldByName('cod_orcamento').AsString;
ediVenda := 'true';
fmTelaRelatorioVendasG.Close;
fmTelaOrcamento.Show;
end;

procedure TfmTelaRelatorioVendasG.btnExcluirClick(Sender: TObject);
begin
DM_dados1.TOrcamento.Open;
pegarid := GridVendasG.SelectedField.DataSet.FieldByName('cod_orcamento').AsString;
DM_dados1.TOrcamento.Close;
DM_dados1.TOrcamento.Open;
DM_dados1.TOrcamento.Locate('cod_orcamento',pegarid,[loPartialKey,loCaseInsensitive]);
  if (MessageDlg('Deseja realmente deletar ?'#13'O Orçamento codigo: '+ DM_dados1.TOrcamento.FieldByName('cod_orcamento').AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
    begin
      DM_dados1.TOrcamento.Delete;
    end
  else
    begin
      Abort;
    end;
end;

procedure TfmTelaRelatorioVendasG.btnImprimirClick(Sender: TObject);
begin
  DM_dados1.TOrcamento.Open;
  pegarid := GridVendasG.SelectedField.DataSet.FieldByName('cod_orcamento').AsString;
  DM_dados1.TOrcamento.Close;
  DM_dados1.TOrcamento.Open;
  DM_dados1.TOrcamento.Locate('cod_orcamento',pegarid,[loPartialKey,loCaseInsensitive]);
  RvProjectOrcamento.Open;
  RvProjectOrcamento.ExecuteReport('Relatorio_Orcamento');
  RvProjectOrcamento.Close;
end;

procedure TfmTelaRelatorioVendasG.RGEscolhaTVendaClick(Sender: TObject);
begin
  if RGEscolhaTVenda.ItemIndex = 0 then
    begin
      DM_dados1.ConsultaGeral.Close;
      DM_dados1.ConsultaGeral.ParamByName('nome').Value := 'pendente';
      DM_dados1.ConsultaGeral.Open;
      btnExcluir.Enabled := true;
      btnEditar.Enabled := true;
      btnAVEnda.Enabled := true;
    end
  else if RGEscolhaTVenda.ItemIndex = 1 then
    begin
      DM_dados1.ConsultaGeral.Close;
      DM_dados1.ConsultaGeral.ParamByName('nome').Value := 'aprovado';
      DM_dados1.ConsultaGeral.Open;
      btnExcluir.Enabled := false;
      btnAVEnda.Enabled := false;
      btnEditar.Enabled := true;
    end;
end;

procedure TfmTelaRelatorioVendasG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM_dados1.TOrcamento.Close;
end;

procedure TfmTelaRelatorioVendasG.FormShow(Sender: TObject);
begin
DM_dados1.TOrcamento.Open;
end;

end.
