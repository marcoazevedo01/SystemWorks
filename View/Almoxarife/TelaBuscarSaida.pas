unit TelaBuscarSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RpBase, RpSystem, RpCon, RpConDS, RpDefine, RpRave, Grids, DBGrids,
  StdCtrls, Buttons;

type
  TfmTelaBuscarSaida = class(TForm)
    GridOrdemSaida: TDBGrid;
    Label2: TLabel;
    btnIM: TBitBtn;
    procedure btnIMClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaBuscarSaida: TfmTelaBuscarSaida;

implementation

uses DMConexao, TelaRelatorioMaterial;

{$R *.dfm}

procedure TfmTelaBuscarSaida.btnIMClick(Sender: TObject);
begin
//gerar relatorio
  fmTelaRelatorioMaterial.RvProjectSaida.Open;
  fmTelaRelatorioMaterial.RvProjectSaida.ExecuteReport('Relatorio_SaidaMaterialData');
  fmTelaRelatorioMaterial.RvProjectSaida.Close;
end;

end.
