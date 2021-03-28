unit TelaExportMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, DBGrids;

type
  TfmTelaExpotMaterial = class(TForm)
    DBGrid1: TDBGrid;
    ProgressBar1: TProgressBar;
    btnGerar: TBitBtn;
    procedure btnGerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaExpotMaterial: TfmTelaExpotMaterial;

implementation

uses DMConexao, ComObj;

{$R *.dfm}

procedure TfmTelaExpotMaterial.btnGerarClick(Sender: TObject);
var planilha: Variant;
linha, cont: Integer;
begin
  cont:=DM_dados1.Export_Material.RecordCount;
  ProgressBar1.Max:=cont;
  ProgressBar1.Position:=0;
  DM_dados1.Export_Material.Filtered:= false;
  linha:=2;

  planilha:=CreateOleObject('Excel.Application');
  planilha.caption:= 'Conversão';
  planilha.visible:=false;
  planilha.workbooks.add(1);

  planilha.cells[1,1]:='Código';
  planilha.cells[1,2]:='Descrição';
  planilha.cells[1,3]:='Quantidade';
  planilha.cells[1,4]:='Unidade';
  planilha.cells[1,5]:='Valor';

  DM_dados1.Export_Material.DisableConstraints;

  try
    while not DM_dados1.Export_Material.Eof do
    begin
      planilha.cells[linha,1]:=DM_dados1.Export_Materialcod_material.Value;
      planilha.cells[linha,2]:=DM_dados1.Export_Materialdescricao_material.Value;
      planilha.cells[linha,3]:=DM_dados1.Export_Materialquantidade_material.Value;
      planilha.cells[linha,4]:=DM_dados1.Export_Materialunidade_material.Value;
      planilha.cells[linha,5]:=DM_dados1.Export_Materialvalor_material.Value;
      linha:=linha+1;
      DM_dados1.Export_Material.Next;
      ProgressBar1.Position:=ProgressBar1.Position+1;
    end;
      planilha.columns.autofit;
      planilha.visible:=true;
  finally
      DM_dados1.Export_Material.EnableControls;
      planilha:=Unassigned;
  end;

end;

procedure TfmTelaExpotMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM_dados1.Export_Material.Close;
ProgressBar1.Position := 0;
end;

procedure TfmTelaExpotMaterial.FormShow(Sender: TObject);
begin
DM_dados1.Export_Material.Open;
end;

end.
