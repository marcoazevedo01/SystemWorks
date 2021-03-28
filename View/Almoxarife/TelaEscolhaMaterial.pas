unit TelaEscolhaMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmTelaEscolhaMaterial = class(TForm)
    btnRelatorio: TBitBtn;
    btnOrdemEntrada: TBitBtn;
    btnOrdemSaida: TBitBtn;
    btnVoltar: TBitBtn;
    btnCadastrar: TBitBtn;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure btnOrdemEntradaClick(Sender: TObject);
    procedure btnOrdemSaidaClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaEscolhaMaterial: TfmTelaEscolhaMaterial;

implementation

uses TelaCadastrarMaterial, TelaOrdemEntradaMaterial, TelaOrdemSaidaMaterial,
  TelaRelatorioMaterial, TelaPrincipal;

{$R *.dfm}

procedure TfmTelaEscolhaMaterial.btnCadastrarClick(Sender: TObject);
begin
fmTelaCadastrarMaterial.Show;
fmTelaEscolhaMaterial.Close;
end;

procedure TfmTelaEscolhaMaterial.btnOrdemEntradaClick(Sender: TObject);
begin
fmTelaOrdemEntradaMaterial.Show;
fmTelaEscolhaMaterial.Close;
end;

procedure TfmTelaEscolhaMaterial.btnOrdemSaidaClick(Sender: TObject);
begin
fmTelaOrdemSaidaMaterial.Show;
fmTelaEscolhaMaterial.Close;
end;

procedure TfmTelaEscolhaMaterial.btnRelatorioClick(Sender: TObject);
begin
fmTelaRelatorioMaterial.Show;
fmTelaEscolhaMaterial.Close;
end;

procedure TfmTelaEscolhaMaterial.btnVoltarClick(Sender: TObject);
begin
fmTelaPrincipal.Show;
fmTelaEscolhaMaterial.Close;
end;

end.
