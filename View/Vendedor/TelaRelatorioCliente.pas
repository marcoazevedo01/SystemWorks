unit TelaRelatorioCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TfmTelaRelatorioCliente = class(TForm)
    DBGrid1: TDBGrid;
    edtBuscar: TEdit;
    Label1: TLabel;
    btnBuscar: TBitBtn;
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaRelatorioCliente: TfmTelaRelatorioCliente;

implementation

uses DMConexao;

{$R *.dfm}

procedure TfmTelaRelatorioCliente.edtBuscarKeyPress(Sender: TObject;
  var Key: Char);
begin
//DM_dados1.sqlConsultaClientef.close;
//DM_dados1.sqlConsultaClientef.ParamByName('nome').AsString:='%'+edtBuscar.Text+'%';
//DM_dados1.sqlConsultaClientef.open;
end;

end.
