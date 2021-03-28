unit TelaConsultaServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, Grids, DBGrids, DB;

type
  TfmTelaConsultaServico = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaConsultaServico: TfmTelaConsultaServico;

implementation

uses DMConexao, TelaAgendamento;

{$R *.dfm}

procedure TfmTelaConsultaServico.Edit1Change(Sender: TObject);
begin
DM_dados1.TServico.Open;
DM_dados1.TServico.Locate('nome_servico',Edit1.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TfmTelaConsultaServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM_dados1.TServico.Close;
end;

procedure TfmTelaConsultaServico.FormShow(Sender: TObject);
begin

Edit2.Text := DM_dados1.TServicodescricao_servico.Value;
end;

end.
