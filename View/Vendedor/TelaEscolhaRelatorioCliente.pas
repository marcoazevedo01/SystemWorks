unit TelaEscolhaRelatorioCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RpCon, RpConDS, RpBase, RpSystem, DB, ADODB,
  RpDefine, RpRave, Mask, ExtCtrls, ToolWin, ComCtrls;

type
  TfmTelaEscolhaRelatorioCliente = class(TForm)
    RvProjectClienteContato: TRvProject;
    RvSystemClienteF: TRvSystem;
    RvDataSetConnectionClienteDetalhado: TRvDataSetConnection;
    Label1: TLabel;
    RGRelatoriosCliente: TRadioGroup;
    RvProjectClienteDetalhado: TRvProject;
    RvDataSetConnectionContato: TRvDataSetConnection;
    ToolBar1: TToolBar;
    procedure RGRelatoriosClienteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaEscolhaRelatorioCliente: TfmTelaEscolhaRelatorioCliente;
var
  relatorioCli: String;

implementation

uses DMConexao, TelaBuscarCliente;

{$R *.dfm}

procedure TfmTelaEscolhaRelatorioCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//
end;

procedure TfmTelaEscolhaRelatorioCliente.FormShow(Sender: TObject);
begin
  RGRelatoriosCliente.Visible := true;
end;

procedure TfmTelaEscolhaRelatorioCliente.RGRelatoriosClienteClick(
  Sender: TObject);
begin
  if RGRelatoriosCliente.ItemIndex = 0  then
    begin
      RGRelatoriosCliente.ItemIndex := 2;
      RvProjectClienteContato.Open;
      RvProjectClienteContato.ExecuteReport('Relatorio_ClienteContato');
      RvProjectClienteContato.Close;
    end
  else if RGRelatoriosCliente.ItemIndex = 1  then
    begin
      relatorioCli := 'true';
      RGRelatoriosCliente.ItemIndex := 2;
      fmTelaBuscarCliente.ShowModal;
    end;
end;

end.
