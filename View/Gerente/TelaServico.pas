unit TelaServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, DBCGrids;

type
  TfmTelaServico = class(TForm)
    btnIncluir: TBitBtn;
    btnEditar: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Nome: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    btnExcluir: TBitBtn;
    btnBuscarMaterial: TBitBtn;
    btnGravar: TBitBtn;
    GridServicoMaterial: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnBuscarMaterialClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure btnIncluirMouseEnter(Sender: TObject);
    procedure btnIncluirMouseLeave(Sender: TObject);
    procedure btnEditarMouseEnter(Sender: TObject);
    procedure btnEditarMouseLeave(Sender: TObject);
    procedure btnExcluirMouseLeave(Sender: TObject);
    procedure btnExcluirMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaServico: TfmTelaServico;
var
  servico, deletarSer, editarSer: String;

implementation

uses TelaBuscarServico, DMConexao, TelaBuscarMaterial;

{$R *.dfm}

procedure TfmTelaServico.btnBuscarMaterialClick(Sender: TObject);
begin
  servico := 'true';
  GridServicoMaterial.Visible := true;
  fmTelaBuscarMaterial.ShowModal;
end;

procedure TfmTelaServico.btnEditarClick(Sender: TObject);
begin
  editarSer := 'true';
  fmTelaBuscarServico.ShowModal;
end;

procedure TfmTelaServico.btnEditarMouseEnter(Sender: TObject);
begin
btnEditar.Font.Color := clMenuHighlight;
end;

procedure TfmTelaServico.btnEditarMouseLeave(Sender: TObject);
begin
btnEditar.Font.Color := clBlack;
end;

procedure TfmTelaServico.btnExcluirClick(Sender: TObject);
begin
  deletarSer := 'true';
  fmTelaBuscarServico.ShowModal;
end;

procedure TfmTelaServico.btnExcluirMouseEnter(Sender: TObject);
begin
btnExcluir.Font.Color := clMenuHighlight;
end;

procedure TfmTelaServico.btnExcluirMouseLeave(Sender: TObject);
begin
btnExcluir.Font.Color := clBlack;
end;

procedure TfmTelaServico.btnGravarClick(Sender: TObject);
begin
try
if (MessageDlg('Deseja realmente gravar ?', mtConfirmation, [mbYes, mbno], 0)=mrYes) then
  begin
    DM_dados1.TServico.post;
    btnIncluir.Enabled:= true;
    btnEditar.Enabled := true;
    btnExcluir.Enabled:= true;
  if (MessageDlg('Deseja realizar mais alguma operação ?', mtConfirmation, [mbYes, mbno], 0)=mrYes) then
    begin
      fmTelaServico.Close;
      fmTelaServico.Show;
      GroupBox1.Visible := false;
    end
  else
    begin
      fmTelaServico.Close;
    end
  end
else begin
    fmTelaServico.close;
    fmTelaServico.Show;
  end
    except
    ShowMessage('Preencha todos os campos corretamente');
  end;
end;


procedure TfmTelaServico.btnIncluirClick(Sender: TObject);
var Proxnum : Integer;
begin
if (MessageDlg('Deseja incluir um novo Serviço ?',mtConfirmation,[mbYes,mbno], 0)=mrYes) then
  begin
    btnIncluir.Enabled:= false;
    btnEditar.Enabled := false;
    btnExcluir.Enabled:= false;
    GroupBox1.Visible := true;
    btnGravar.Visible := true;
    DM_dados1.TServico.Insert;
    DM_dados1.TServico.Last;
    Proxnum:=DM_dados1.TServico.FieldByName('cod_servico').AsInteger+1;
    DM_dados1.TServico.Append;
    DM_dados1.TServico.FieldByName('cod_servico').AsInteger := Proxnum;
    DBEdit2.SetFocus;
  end
else
  begin
    Abort;
  end;
end;

procedure TfmTelaServico.btnIncluirMouseEnter(Sender: TObject);
begin
btnIncluir.Font.Color := clMenuHighlight;
end;

procedure TfmTelaServico.btnIncluirMouseLeave(Sender: TObject);
begin
btnIncluir.Font.Color := clBlack;
end;

procedure TfmTelaServico.DBEdit4Exit(Sender: TObject);
var
  valor2, resultado: string;
var
  teste1: Double;
begin
  valor2 := DBEdit4.Text;
  try
  teste1 := StrToFloat(DBEdit4.Text);
  teste1 := ((teste1 * 2) / 2);
  except
    Abort;
  end;
//comparar
if valor2 = floattostr(teste1) then
  begin
    resultado:= (DBEdit4.Text + '.00');
    DBEdit4.Text := resultado;
  end
end;

procedure TfmTelaServico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM_dados1.TServico.Close;
  btnIncluir.Enabled:= true;
  btnEditar.Enabled := true;
  btnExcluir.Enabled:= true;
  GroupBox1.Visible  := false;
  btnGravar.Visible  := false;
  GridServicoMaterial.Visible := false;
  servico := '';
end;

procedure TfmTelaServico.FormCreate(Sender: TObject);
begin
    btnGravar.Caption     := 'Gravar Serviço';
    btnIncluir.Caption    := 'Novo Serviço';
    btnEditar.Caption     := 'Editar Serviço';
    btnExcluir.Caption    := 'Excluir Serviço';
    GroupBox1.Visible     := false;
    btnGravar.Visible     := false;
end;

procedure TfmTelaServico.FormShow(Sender: TObject);
begin
DM_dados1.TServico.Open;
end;

end.
