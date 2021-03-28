unit TelaRelatorioMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RpCon, RpConDS, RpDefine, RpBase, RpSystem, DB, ADODB, StdCtrls,
  ExtCtrls, Mask, Buttons, RpRave;

type
  TfmTelaRelatorioMaterial = class(TForm)
    Label1: TLabel;
    RvSystemRecMaterial: TRvSystem;
    RvProjectEntrada: TRvProject;
    RvDataSetConnectionEntrada: TRvDataSetConnection;
    RvProjectSaida: TRvProject;
    RvDataSetConnectionSaida: TRvDataSetConnection;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnR: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaRelatorioMaterial: TfmTelaRelatorioMaterial;
var
  relatorioEntrada, relatorioSaida: String;

implementation

uses DMConexao, TelaBuscarEntrada, TelaBuscarSaida, TelaEstoqueMaterial;

{$R *.dfm}

procedure TfmTelaRelatorioMaterial.BitBtn1Click(Sender: TObject);
begin
relatorioEntrada := 'true';
fmTelaBuscarEntrada.ShowModal;
end;

procedure TfmTelaRelatorioMaterial.BitBtn2Click(Sender: TObject);
begin
relatorioSaida := 'true';
fmTelaBuscarSaida.ShowModal;
end;

procedure TfmTelaRelatorioMaterial.btnRClick(Sender: TObject);
begin
fmTelaRelatorioMaterial.Close;
fmTelaEstoqueMaterial.Show;

end;

procedure TfmTelaRelatorioMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM_dados1.TEntradaMaterial.Close;
  DM_dados1.TSaidaMaterial.Close;
  relatorioEntrada     := '';
  relatorioSaida       := '';
end;

procedure TfmTelaRelatorioMaterial.FormShow(Sender: TObject);
begin
  DM_dados1.TEntradaMaterial.Open;
  DM_dados1.TSaidaMaterial.Open;
end;

end.
