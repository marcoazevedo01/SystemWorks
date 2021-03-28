unit TelaEscolhaRelatorioFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave, StdCtrls,
  ExtCtrls, Mask, Buttons;

type
  TfmTelaEscolhaRelatorioFornecedor = class(TForm)
    Label1: TLabel;
    PRelatorioPorDataFornecedor: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    btnRelatorioFuncionarioPorData: TBitBtn;
    edtDataInicialCliente: TMaskEdit;
    edtDataFinalCliente: TMaskEdit;
    RGRelatoriosFornecedor: TRadioGroup;
    btnCancelar: TBitBtn;
    RvProjectFornecedorContato: TRvProject;
    RvSystemFornecedor: TRvSystem;
    RvDataSetConnectionForContato: TRvDataSetConnection;
    RvProjectFornecedorDetalhado: TRvProject;
    RvDataSetConnectionoForDetalhado: TRvDataSetConnection;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RGRelatoriosFornecedorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaEscolhaRelatorioFornecedor: TfmTelaEscolhaRelatorioFornecedor;

implementation

uses DMConexao, TelaFornecedor, TelaBuscarFornecedor;

{$R *.dfm}

procedure TfmTelaEscolhaRelatorioFornecedor.btnCancelarClick(Sender: TObject);
begin
  PRelatorioPorDataFornecedor.Visible := false;
  edtDataInicialCliente.Text          := '';
  edtDataFinalCliente.Text            := '';
  RGRelatoriosFornecedor.ItemIndex    := -1;
  btnCancelar.Visible                 := false;
  RGRelatoriosFornecedor.Visible      := true;
end;

procedure TfmTelaEscolhaRelatorioFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  relatorioFo := '';
  RGRelatoriosFornecedor.ItemIndex := -1;
  PRelatorioPorDataFornecedor.Visible := false;
end;

procedure TfmTelaEscolhaRelatorioFornecedor.FormShow(Sender: TObject);
begin
  PRelatorioPorDataFornecedor.Visible := false;
  RGRelatoriosFornecedor.Visible := true;
  btnCancelar.Visible := false;
end;

procedure TfmTelaEscolhaRelatorioFornecedor.RGRelatoriosFornecedorClick(
  Sender: TObject);
begin
if RGRelatoriosFornecedor.ItemIndex = 0  then
    begin
      RGRelatoriosFornecedor.ItemIndex := -1;
      RvProjectFornecedorContato.Open;
      RvProjectFornecedorContato.ExecuteReport('Relatorio_FornecedorContato');
      RvProjectFornecedorContato.Close;
    end
  else if RGRelatoriosFornecedor.ItemIndex = 1 then
    begin
      RGRelatoriosFornecedor.ItemIndex := -1;
      fmTelaBuscarFornecedor.ShowModal;
    end;
end;

end.
