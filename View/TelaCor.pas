unit TelaCor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, DBCtrls;

type
  TfmTelaCor = class(TForm)
    CheckBox1: TCheckBox;
    ColorListBox1: TColorListBox;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    procedure ColorListBox1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaCor: TfmTelaCor;
var
  cor_sistema: Integer;

implementation

uses TelaAgendamento, TelaBuscarCliente, TelaBuscarFornecedor,
  TelaBuscarFuncionario, TelaBuscarMaterial, TelaBuscarServico, TelaCliente,
  TelaFornecedor, TelaFuncionario, TelaMaterial,
  TelaOrcamento, TelaOrdemEntradaMaterial, TelaOrdemSaidaMaterial,
  TelaRelatorioVendasG, TelaRelatorioVendasV, TelaServico,
  TelaRelatorioMaterial, DMConexao, TelaEscolhaRelatorioFuncionario,
  TelaBuscarEntrada, TelaBuscarSaida, TelaConsultaServico,
  TelaEscolhaRelatorioCliente, TelaEscolhaRelatorioFornecedor, TelaPrincipal,
  TelaEstoqueMaterial;

{$R *.dfm}

procedure TfmTelaCor.btnCancelarClick(Sender: TObject);
begin
  fmTelaPrincipal.Color            := clInactiveBorder;
  fmTelaCor.Color                  := clInactiveBorder;
  fmTelaServico.Color              := clInactiveBorder;
  fmTelaMaterial.Color             := clInactiveBorder;
  fmTelaOrcamento.Color            := clInactiveBorder;
  fmTelaCliente.Color              := clInactiveBorder;
  fmTelaFuncionario.Color          := clInactiveBorder;
  fmTelaFornecedor.Color           := clInactiveBorder;
  fmTelaAgenda.Color               := clInactiveBorder;

  fmTelaRelatorioVendasV.Color     := clInactiveBorder;
  fmTelaRelatorioVendasG.Color     := clInactiveBorder;
  fmTelaOrdemSaidaMaterial.Color   := clInactiveBorder;
  fmTelaOrdemEntradaMaterial.Color := clInactiveBorder;
  fmTelaRelatorioMaterial.Color    := clInactiveBorder;

  fmTelaBuscarServico.Color        := clInactiveBorder;
  fmTelaBuscarMaterial.Color       := clInactiveBorder;
  fmTelaBuscarFuncionario.Color    := clInactiveBorder;
  fmTelaBuscarFornecedor.Color     := clInactiveBorder;
  fmTelaBuscarCliente.Color        := clInactiveBorder;
  //novos
  fmTelaEscolhaRelatorioFuncionario.Color := clInactiveBorder;
  fmTelaEscolhaRelatorioFornecedor.Color  := clInactiveBorder;
  fmTelaBuscarEntrada.Color               := clInactiveBorder;
  fmTelaBuscarSaida.Color                 := clInactiveBorder;
  fmTelaConsultaServico.Color             := clInactiveBorder;
  fmTelaEscolhaRelatorioCliente.Color     := clInactiveBorder;
  fmTelaEstoqueMaterial.Color             := clInactiveBorder;
  //
  CheckBox1.State := cbUnchecked;
  ColorListBox1.Enabled := false;
  fmTelaCor.Close;
end;

procedure TfmTelaCor.btnSalvarClick(Sender: TObject);
begin

  DM_dados1.TSistema.Open;
  DM_dados1.TSistema.Edit;
  DM_dados1.TSistema.FieldByName('cor_sistema').AsInteger := ColorListBox1.Selected;
  DM_dados1.TSistema.Post;
  DM_dados1.TSistema.Close;

  ShowMessage('Alteração da cor de fundo aplicada com sucesso');
  fmTelaCor.Close;
end;

procedure TfmTelaCor.CheckBox1Click(Sender: TObject);
begin
  if TCheckBoxState.cbChecked = cbChecked then
    begin
      ColorListBox1.Enabled := true;
      btnSalvar.Enabled := true;
      btnCancelar.Enabled := true;
    end;
end;

procedure TfmTelaCor.ColorListBox1Click(Sender: TObject);
begin
if (ColorListBox1.Selected <> clBlack) and (ColorListBox1.Selected <> clBackground) and (ColorListBox1.Selected <> clBtnText) and
(ColorListBox1.Selected <> clCaptionText) and (ColorListBox1.Selected <> clDefault) and (ColorListBox1.Selected <> clInactiveCaptionText) and
(ColorListBox1.Selected <> clInfoText) and (ColorListBox1.Selected <> clMenuText) and (ColorListBox1.Selected <> clNone) and
(ColorListBox1.Selected <> clWindowText) then
  begin
  fmTelaPrincipal.Color            := ColorListBox1.Selected;
  fmTelaCor.Color                  := ColorListBox1.Selected;
  fmTelaServico.Color              := ColorListBox1.Selected;
  fmTelaMaterial.Color             := ColorListBox1.Selected;
  fmTelaOrcamento.Color            := ColorListBox1.Selected;
  fmTelaCliente.Color              := ColorListBox1.Selected;
  fmTelaFuncionario.Color          := ColorListBox1.Selected;
  fmTelaFornecedor.Color           := ColorListBox1.Selected;
  fmTelaAgenda.Color               := ColorListBox1.Selected;

  fmTelaRelatorioVendasV.Color     := ColorListBox1.Selected;
  fmTelaRelatorioVendasG.Color     := ColorListBox1.Selected;
  fmTelaOrdemSaidaMaterial.Color   := ColorListBox1.Selected;
  fmTelaOrdemEntradaMaterial.Color := ColorListBox1.Selected;
  fmTelaRelatorioMaterial.Color    := ColorListBox1.Selected;

  fmTelaBuscarServico.Color        := ColorListBox1.Selected;
  fmTelaBuscarMaterial.Color       := ColorListBox1.Selected;
  fmTelaBuscarFuncionario.Color    := ColorListBox1.Selected;
  fmTelaBuscarFornecedor.Color     := ColorListBox1.Selected;
  fmTelaBuscarCliente.Color        := ColorListBox1.Selected;
  fmTelaBuscarEntrada.Color        := ColorListBox1.Selected;
  fmTelaBuscarSaida.Color          := ColorListBox1.Selected;

  fmTelaEscolhaRelatorioFuncionario.Color := ColorListBox1.Selected;
  fmTelaEscolhaRelatorioFornecedor.Color  := ColorListBox1.Selected;
  fmTelaConsultaServico.Color := ColorListBox1.Selected;
  fmTelaEscolhaRelatorioCliente.Color := ColorListBox1.Selected;
  fmTelaEstoqueMaterial.Color := ColorListBox1.Selected;
end
else begin
  ShowMessage('Este tipo de cor de fundo não é permitido');
end;
end;

procedure TfmTelaCor.FormCreate(Sender: TObject);
begin
btnSalvar.Caption     := 'Salvar';
btnCancelar.Caption   := 'Cancelar';
ColorListBox1.Enabled := false;
btnSalvar.Enabled     := false;
btnCancelar.Enabled   := false;
end;

end.
