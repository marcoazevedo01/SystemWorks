unit TelaMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons;

type
  TfmTelaMaterial = class(TForm)
    btnIncluir: TBitBtn;
    btnEditar: TBitBtn;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnRelatorio: TBitBtn;
    btnEntrada: TBitBtn;
    btnSaida: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEntradaClick(Sender: TObject);
    procedure btnSaidaClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirMouseEnter(Sender: TObject);
    procedure btnIncluirMouseLeave(Sender: TObject);
    procedure btnEditarMouseEnter(Sender: TObject);
    procedure btnEditarMouseLeave(Sender: TObject);
    procedure btnExcluirMouseEnter(Sender: TObject);
    procedure btnExcluirMouseLeave(Sender: TObject);
    procedure btnRelatorioMouseEnter(Sender: TObject);
    procedure btnRelatorioMouseLeave(Sender: TObject);
    procedure btnEntradaMouseEnter(Sender: TObject);
    procedure btnEntradaMouseLeave(Sender: TObject);
    procedure btnSaidaMouseEnter(Sender: TObject);
    procedure btnSaidaMouseLeave(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaMaterial: TfmTelaMaterial;
var
  deletarMa, editarMart,ordemS: String;

implementation

uses TelaOrdemEntradaMaterial, TelaOrdemSaidaMaterial, DMConexao,
  TelaBuscarMaterial, TelaRelatorioMaterial, TelaEstoqueMaterial;


{$R *.dfm}

procedure TfmTelaMaterial.btnEditarClick(Sender: TObject);
begin
  editarMart := 'true';
  fmTelaBuscarMaterial.ShowModal;
end;

procedure TfmTelaMaterial.btnEditarMouseEnter(Sender: TObject);
begin
btnEditar.Font.Color := clMenuHighlight;
end;

procedure TfmTelaMaterial.btnEditarMouseLeave(Sender: TObject);
begin
btnEditar.Font.Color := clBlack;
end;

procedure TfmTelaMaterial.btnEntradaClick(Sender: TObject);
begin
fmTelaOrdemEntradaMaterial.ShowModal;
end;

procedure TfmTelaMaterial.btnEntradaMouseEnter(Sender: TObject);
begin
btnEntrada.Font.Color := clMenuHighlight;
end;

procedure TfmTelaMaterial.btnEntradaMouseLeave(Sender: TObject);
begin
btnEntrada.Font.Color := clBlack;
end;

procedure TfmTelaMaterial.btnExcluirClick(Sender: TObject);
begin
  deletarMa := 'true';
  fmTelaBuscarMaterial.ShowModal;
end;

procedure TfmTelaMaterial.btnExcluirMouseEnter(Sender: TObject);
begin
btnExcluir.Font.Color := clMenuHighlight;
end;

procedure TfmTelaMaterial.btnExcluirMouseLeave(Sender: TObject);
begin
btnExcluir.Font.Color := clBlack;
end;

procedure TfmTelaMaterial.btnGravarClick(Sender: TObject);
begin
try
if (MessageDlg('Deseja realmente gravar ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
  begin
    DM_dados1.TMaterial.post;
    btnIncluir.Enabled  := true;
    btnEditar.Enabled   := true;
    btnRelatorio.Visible:= true;
    btnEntrada.Visible  := true;
    btnSaida.Visible    := true;
    btnExcluir.Enabled  := true;
  if (MessageDlg('Deseja realizar mais alguma operação ?', mtConfirmation, [mbYes, mbno], 0)=mrYes) then
    begin
      fmTelaMaterial.Close;
      fmTelaMaterial.Show;
      GroupBox1.Visible := false;
    end
  end
else begin
    fmTelaMaterial.Close;
    fmTelaMaterial.Show;
  end;
     except
    ShowMessage('Preencha todos os campos corretamente');
  end;
end;

procedure TfmTelaMaterial.btnIncluirClick(Sender: TObject);
var Proxnum: Integer;
begin
if (MessageDlg('Deseja incluir um novo material ?',mtConfirmation,[mbYes,mbno], 0)=mrYes) then
  begin
    GroupBox1.Visible    := true;
    btnGravar.Visible    := true;
    btnIncluir.Enabled   := false;
    btnEditar.Enabled    := false;
    btnRelatorio.Visible := false;
    btnEntrada.Visible   := false;
    btnSaida.Visible     := false;
    btnExcluir.Enabled   := false;
    DM_dados1.TMaterial.Insert;
    DM_dados1.TMaterial.Last;
    Proxnum:=DM_dados1.TMaterial.FieldByName('cod_material').AsInteger+1;
    DM_dados1.TMaterial.Append;
    DM_dados1.TMaterial.FieldByName('cod_Material').AsInteger := Proxnum;
    DM_dados1.TMaterial.FieldByName('quantidade_material').AsString := '0';
    DBEdit2.SetFocus;
  end
else
  begin
    Abort;
  end;
end;

procedure TfmTelaMaterial.btnIncluirMouseEnter(Sender: TObject);
begin
btnIncluir.Font.Color := clMenuHighlight;
end;

procedure TfmTelaMaterial.btnIncluirMouseLeave(Sender: TObject);
begin
btnIncluir.Font.Color := clBlack;
end;

procedure TfmTelaMaterial.btnRelatorioClick(Sender: TObject);
begin
  fmTelaRelatorioMaterial.ShowModal;
end;

procedure TfmTelaMaterial.btnRelatorioMouseEnter(Sender: TObject);
begin
btnRelatorio.Font.Color := clMenuHighlight;
end;

procedure TfmTelaMaterial.btnRelatorioMouseLeave(Sender: TObject);
begin
btnRelatorio.Font.Color := clBlack;
end;

procedure TfmTelaMaterial.btnSaidaClick(Sender: TObject);
begin
fmTelaOrdemSaidaMaterial.ShowModal;
end;

procedure TfmTelaMaterial.btnSaidaMouseEnter(Sender: TObject);
begin
btnSaida.Font.Color := clMenuHighlight;
end;

procedure TfmTelaMaterial.btnSaidaMouseLeave(Sender: TObject);
begin
btnSaida.Font.Color := clBlack;
end;

procedure TfmTelaMaterial.DBEdit4Exit(Sender: TObject);
var
  valor2, resultado: string;
var
  teste1 : Double;
begin
  valor2 := DBEdit4.Text;
  try
    teste1 := StrToFloat(DBEdit4.Text);
    teste1  := ((teste1 * 2) / 2);
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

procedure TfmTelaMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DM_dados1.TMaterial.Close;
    DBEdit1.Text := '';
    DBEdit2.Text := '';
    DBEdit4.Text := '';
    DBEdit5.Text := '';
    GroupBox1.Visible    := false;
    btnGravar.Visible    := false;
    btnIncluir.Enabled   := true;
    btnEditar.Enabled    := true;
    btnEntrada.Visible   := true;
    btnRelatorio.Visible := true;
    btnSaida.Visible     := true;
    btnExcluir.Enabled   := true;

    fmTelaEstoqueMaterial.Close;
end;

procedure TfmTelaMaterial.FormCreate(Sender: TObject);
begin
    DBEdit1.Text := '';
    DBEdit2.Text := '';
    DBEdit4.Text := '';
    DBEdit5.Text := '';
    btnGravar.Caption   := 'Gravar Material';
    btnIncluir.Caption  := 'Novo Material';
    btnEditar.Caption   := 'Editar Material';
    btnExcluir.Caption  := 'Excluir Material';
    btnSaida.Caption    := 'Dar Saída';
    btnEntrada.Caption  := 'Dar Entrada';
    btnRelatorio.Caption:= 'Emitir Relatório';
    GroupBox1.Caption   := '';
    GroupBox1.Visible   := false;
    btnGravar.Visible   := false;
end;

procedure TfmTelaMaterial.FormShow(Sender: TObject);
begin
DM_dados1.TMaterial.Open;
end;

end.
