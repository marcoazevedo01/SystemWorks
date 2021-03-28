unit TelaEscolhaRelatorioFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave, DB, ADODB,
  StdCtrls, ExtCtrls, Mask, Buttons;

type
  TfmTelaEscolhaRelatorioFuncionario = class(TForm)
    Label1: TLabel;
    PRelatorioPorDataFuncionario: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    btnRelatorioFuncionarioPorData: TBitBtn;
    edtDataInicialCliente: TMaskEdit;
    edtDataFinalCliente: TMaskEdit;
    RGRelatoriosFuncionario: TRadioGroup;
    btnCancelar: TBitBtn;
    RvProjectFuncionarioContato: TRvProject;
    RvSystemFuncionario: TRvSystem;
    RvDataSetConnectionFunContato: TRvDataSetConnection;
    RvProjectFuncionarioDetalhado: TRvProject;
    RvDataSetConnectionFunDetalhado: TRvDataSetConnection;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RGRelatoriosFuncionarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaEscolhaRelatorioFuncionario: TfmTelaEscolhaRelatorioFuncionario;
var
  relatorioFun: String;

implementation

uses TelaBuscarFuncionario, DMConexao;

{$R *.dfm}

procedure TfmTelaEscolhaRelatorioFuncionario.btnCancelarClick(Sender: TObject);
begin
  PRelatorioPorDataFuncionario.Visible  := false;
  edtDataInicialCliente.Text        := '';
  edtDataFinalCliente.Text          := '';
  RGRelatoriosFuncionario.ItemIndex := -1;
  btnCancelar.Visible               := false;
  RGRelatoriosFuncionario.Visible   := true;
end;

procedure TfmTelaEscolhaRelatorioFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RGRelatoriosFuncionario.ItemIndex := -1;
  PRelatorioPorDataFuncionario.Visible := false;
end;

procedure TfmTelaEscolhaRelatorioFuncionario.FormShow(Sender: TObject);
begin
  PRelatorioPorDataFuncionario.Visible := false;
  RGRelatoriosFuncionario.Visible := true;
  btnCancelar.Visible := false;
end;

procedure TfmTelaEscolhaRelatorioFuncionario.RGRelatoriosFuncionarioClick(
  Sender: TObject);
begin
  if RGRelatoriosFuncionario.ItemIndex = 0  then
    begin
      RGRelatoriosFuncionario.ItemIndex := -1;
      RvProjectFuncionarioContato.Open;
      RvProjectFuncionarioContato.ExecuteReport('Relatorio_FuncionarioContato');
      RvProjectFuncionarioContato.Close;
    end
  else if RGRelatoriosFuncionario.ItemIndex = 1  then
    begin
      relatorioFun := 'true';
      RGRelatoriosFuncionario.ItemIndex := -1;
      fmTelaBuscarFuncionario.ShowModal;
    end;
end;

end.
