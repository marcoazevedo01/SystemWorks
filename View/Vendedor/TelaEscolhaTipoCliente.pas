unit TelaEscolhaTipoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfmTelaEscolhaTipoCliente = class(TForm)
    RadioGroup1: TRadioGroup;
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaEscolhaTipoCliente: TfmTelaEscolhaTipoCliente;

implementation

uses TelaCadastroCliente;

{$R *.dfm}

procedure TfmTelaEscolhaTipoCliente.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 0 then
begin
    fmTelaCadastroCliente.Show;
    fmTelaEscolhaTipoCliente.Close;
  end
else if RadioGroup1.ItemIndex = 1 then
  begin
  //fmTelaCadastroClienteJuridico.Show;
    fmTelaEscolhaTipoCliente.Close;
  end;
end;

end.
