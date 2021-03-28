unit TelaAgendamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TfmTelaAgenda = class(TForm)
    gridagendamento: TDBGrid;
    procedure btnConsultaServicoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure gridagendamentoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaAgenda: TfmTelaAgenda;

implementation

uses DMConexao, TelaConsultaServico;

{$R *.dfm}

procedure TfmTelaAgenda.btnConsultaServicoClick(Sender: TObject);
begin
fmTelaConsultaServico.ShowModal;
end;

procedure TfmTelaAgenda.gridagendamentoDblClick(Sender: TObject);
begin
if (MessageDlg('Deseja consultar este serviço ?',mtConfirmation,[mbYes,mbno], 0)=mrYes) then
  begin
    DM_dados1.ConsultaAgentamento.Open;
    fmTelaConsultaServico.Edit1.Text := DM_dados1.ConsultaAgentamento.FieldByName('tiposervico_orcamento').AsString;
    fmTelaConsultaServico.ShowModal;
  end;
end;

procedure TfmTelaAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM_dados1.ConsultaAgentamento.Close;
end;

procedure TfmTelaAgenda.FormShow(Sender: TObject);
begin
DM_dados1.ConsultaAgentamento.Open;
end;

end.
