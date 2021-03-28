unit TelaEscolhaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmTelaEscolhaCliente = class(TForm)
    btnCadastrar: TBitBtn;
    btnRelatorio: TBitBtn;
    btnVoltar: TBitBtn;
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaEscolhaCliente: TfmTelaEscolhaCliente;

implementation

uses TelaPrincipal, TelaCadastroCliente, TelaRelatorioCliente;

{$R *.dfm}

procedure TfmTelaEscolhaCliente.btnCadastrarClick(Sender: TObject);
begin
fmTelaCadastroCliente.Show;
fmTelaEscolhaCliente.Close;
end;

procedure TfmTelaEscolhaCliente.btnRelatorioClick(Sender: TObject);
begin
fmTelaRelatorioCliente.Show;
fmTelaEscolhaCliente.Close;
end;

procedure TfmTelaEscolhaCliente.btnVoltarClick(Sender: TObject);
begin
fmTelaPrincipal.Show;
fmTelaEscolhaCliente.Close;
end;

end.
