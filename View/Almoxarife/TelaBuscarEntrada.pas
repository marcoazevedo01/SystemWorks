unit TelaBuscarEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, RpBase, RpSystem, RpCon, RpConDS, RpDefine,
  RpRave, Buttons;

type
  TfmTelaBuscarEntrada = class(TForm)
    Label1: TLabel;
    GridOrdemEntrada: TDBGrid;
    btnIM: TBitBtn;
    procedure btnIMClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaBuscarEntrada: TfmTelaBuscarEntrada;

implementation

uses DMConexao, TelaRelatorioMaterial;

{$R *.dfm}

procedure TfmTelaBuscarEntrada.btnIMClick(Sender: TObject);
begin
  //exbir o relatorio pela opção escolhida
  fmTelaRelatorioMaterial.RvProjectEntrada.Open;
  fmTelaRelatorioMaterial.RvProjectEntrada.ExecuteReport('Relatorio_EntradaMaterialData');
  fmTelaRelatorioMaterial.RvProjectEntrada.Close;
end;

end.
