unit TelaRelatorioVendasV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, RpCon, RpConDS, RpRave, RpDefine,
  RpBase, RpSystem, DB, ExtCtrls;

type
  TfmTelaRelatorioVendasV = class(TForm)
    GridVendas: TDBGrid;
    btnImprimir: TBitBtn;
    RvSystemOrcamentoV: TRvSystem;
    RvProjectOrcamentoV: TRvProject;
    DataSetOrcamentoV: TRvDataSetConnection;
    btnAVEnda: TBitBtn;
    btnEditar: TBitBtn;
    RGEscolhaTVendaV: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnAVEndaClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure RGEscolhaTVendaVClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaRelatorioVendasV: TfmTelaRelatorioVendasV;

implementation

uses DMConexao, TelaLogin, TelaOrcamento, TelaRelatorioVendasG;

{$R *.dfm}

procedure TfmTelaRelatorioVendasV.btnEditarClick(Sender: TObject);
begin
pegarid := GridVendas.SelectedField.DataSet.FieldByName('cod_orcamento').AsString;
ediVenda := 'true';
fmTelaRelatorioVendasV.Close;
fmTelaOrcamento.Show;
end;

procedure TfmTelaRelatorioVendasV.btnAVEndaClick(Sender: TObject);
begin
DM_dados1.TOrcamento.Open;
pegarid := GridVendas.SelectedField.DataSet.FieldByName('cod_orcamento').AsString;
DM_dados1.TOrcamento.Close;
DM_dados1.TOrcamento.Open;
DM_dados1.TOrcamento.Locate('cod_orcamento',pegarid,[loPartialKey,loCaseInsensitive]);
DM_dados1.TOrcamento.Edit;
DM_dados1.TOrcamentosituacao_orcamento.AsString := 'aprovado';
DM_dados1.TOrcamento.Post;
end;

procedure TfmTelaRelatorioVendasV.btnImprimirClick(Sender: TObject);
begin
//vendedor imprimi o orçamento
   DM_dados1.TOrcamento.Open;
   pegarid := GridVendas.SelectedField.DataSet.FieldByName('cod_orcamento').AsString;
   DM_dados1.TOrcamento.Close;
   DM_dados1.TOrcamento.Open;
   DM_dados1.TOrcamento.Locate('cod_orcamento',pegarid,[loPartialKey,loCaseInsensitive]);
   RvProjectOrcamentoV.Open;
   RvProjectOrcamentoV.ExecuteReport('Relatorio_OrcamentoV');
   RvProjectOrcamentoV.Close;
end;

procedure TfmTelaRelatorioVendasV.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM_dados1.TOrcamento.Close;
end;

procedure TfmTelaRelatorioVendasV.FormShow(Sender: TObject);
begin
DM_dados1.TOrcamento.Open;
end;

procedure TfmTelaRelatorioVendasV.RGEscolhaTVendaVClick(Sender: TObject);
begin
  if RGEscolhaTVendav.ItemIndex = 0 then
    begin
      DM_dados1.SqlConsultaVendaV.Close;
      DM_dados1.SqlConsultaVendaV.ParamByName('ven').Value:= usuario;
      DM_dados1.SqlConsultaVendaV.ParamByName('sit').Value := 'pendente';
      DM_dados1.SqlConsultaVendaV.Open;
      btnEditar.Enabled := true;
      btnAVEnda.Enabled := true;
      btnImprimir.Enabled := true;
    end
  else if RGEscolhaTVendav.ItemIndex = 1 then
    begin
      DM_dados1.SqlConsultaVendaV.Close;
      DM_dados1.SqlConsultaVendaV.ParamByName('ven').Value := usuario;
      DM_dados1.SqlConsultaVendaV.ParamByName('sit').Value := 'aprovado';
      DM_dados1.SqlConsultaVendaV.Open;
      btnAVEnda.Enabled := false;
      btnEditar.Enabled := true;
      btnImprimir.Enabled := true;
    end;
end;

end.
