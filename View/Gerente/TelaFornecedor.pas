unit TelaFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, dblookup, Buttons;

type
  TfmTelaFornecedor = class(TForm)
    btnIncluir: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    GroupBox1: TGroupBox;
    btnRelatorio: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label15: TLabel;
    DBEdit16: TDBEdit;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    btnGravar: TBitBtn;
    Timer1: TTimer;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnIncluirMouseEnter(Sender: TObject);
    procedure btnIncluirMouseLeave(Sender: TObject);
    procedure btnEditarMouseEnter(Sender: TObject);
    procedure btnEditarMouseLeave(Sender: TObject);
    procedure btnExcluirMouseEnter(Sender: TObject);
    procedure btnExcluirMouseLeave(Sender: TObject);
    procedure btnRelatorioMouseEnter(Sender: TObject);
    procedure btnRelatorioMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaFornecedor: TfmTelaFornecedor;
var
  deletarFo, relatorioFo: String;

implementation

uses DMConexao, TelaBuscarFornecedor, TelaEscolhaRelatorioFornecedor;

{$R *.dfm}

procedure TfmTelaFornecedor.btnEditarClick(Sender: TObject);
begin
 fmTelaBuscarFornecedor.ShowModal;
end;

procedure TfmTelaFornecedor.btnEditarMouseEnter(Sender: TObject);
begin
btnEditar.Font.Color := clMenuHighlight;
end;

procedure TfmTelaFornecedor.btnEditarMouseLeave(Sender: TObject);
begin
btnEditar.Font.Color := clBlack;
end;

procedure TfmTelaFornecedor.btnExcluirClick(Sender: TObject);
begin
  deletarFo := 'true';
  fmTelaBuscarFornecedor.ShowModal;
end;

procedure TfmTelaFornecedor.btnExcluirMouseEnter(Sender: TObject);
begin
btnExcluir.Font.Color := clMenuHighlight;
end;

procedure TfmTelaFornecedor.btnExcluirMouseLeave(Sender: TObject);
begin
btnExcluir.Font.Color := clBlack;
end;

procedure TfmTelaFornecedor.btnGravarClick(Sender: TObject);
begin
try
if (MessageDlg('Deseja realmente gravar ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
  begin
    DM_dados1.TFornecedor.post;
    btnIncluir.Enabled  := true;
    btnEditar.Enabled   := true;
    btnRelatorio.Enabled:= true;
    btnExcluir.Enabled  := true;
  if (MessageDlg('Deseja realizar mais alguma operação ?', mtConfirmation, [mbYes, mbno], 0)=mrYes) then
    begin
      fmTelaFornecedor.Close;
      fmTelaFornecedor.Show;
      GroupBox1.Visible := false;
    end
  end
else begin
    fmTelaFornecedor.Close;
    fmTelaFornecedor.Show;
  end
    except
    ShowMessage('Preencha todos os campos corretamente');
  end;
end;

procedure TfmTelaFornecedor.btnIncluirClick(Sender: TObject);
var Proxnum : Integer;
begin
if (MessageDlg('Deseja incluir um novo fornecedor ?',mtConfirmation,[mbYes,mbno], 0)=mrYes) then
  begin
    GroupBox1.Visible   := true;
    btnGravar.Visible   := true;
    btnIncluir.Enabled  := false;
    btnEditar.Enabled   := false;
    btnRelatorio.Enabled:= false;
    btnExcluir.Enabled  := false;
    DM_dados1.TFornecedor.Insert;
    DM_dados1.TFornecedor.Last;
    Proxnum:=DM_dados1.TFornecedor.FieldByName('cod_fornecedor').AsInteger+1;
    DM_dados1.TFornecedor.Append;
    DM_dados1.TFornecedor.FieldByName('cod_fornecedor').AsInteger := Proxnum;
    DBEdit2.SetFocus;
  end
else
  begin
    Abort;
  end;
end;

procedure TfmTelaFornecedor.btnIncluirMouseEnter(Sender: TObject);
begin
btnIncluir.Font.Color := clMenuHighlight;
end;

procedure TfmTelaFornecedor.btnIncluirMouseLeave(Sender: TObject);
begin
btnIncluir.Font.Color := clBlack;
end;

procedure TfmTelaFornecedor.btnRelatorioClick(Sender: TObject);
begin
relatorioFo := 'true';
fmTelaEscolhaRelatorioFornecedor.ShowModal;
end;

procedure TfmTelaFornecedor.btnRelatorioMouseEnter(Sender: TObject);
begin
btnRelatorio.Font.Color := clMenuHighlight;
end;

procedure TfmTelaFornecedor.btnRelatorioMouseLeave(Sender: TObject);
begin
btnRelatorio.Font.Color := clBlack;
end;

procedure TfmTelaFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DM_dados1.TFornecedor.Close;
    GroupBox1.Visible  := false;
    btnGravar.Visible  := false;
    btnIncluir.Enabled   := true;
    btnExcluir.Enabled   := true;
    btnRelatorio.Enabled := true;
    btnEditar.Enabled    := true;
end;

procedure TfmTelaFornecedor.FormCreate(Sender: TObject);
begin
    btnGravar.Caption     := 'Gravar';
    btnIncluir.Caption    := 'Novo Fornecedor';
    btnEditar.Caption     := 'Editar Fornecedor';
    btnRelatorio.Caption  := 'Emitir Relatório';
    btnExcluir.Caption    := 'Excluir Fornecedor';
    GroupBox1.Visible     := false;
    btnGravar.Visible     := false;
end;

procedure TfmTelaFornecedor.FormShow(Sender: TObject);
begin
  DM_dados1.TFornecedor.Open;
end;

procedure TfmTelaFornecedor.Timer1Timer(Sender: TObject);
begin
DBEdit12.Text := ''+FormatDateTime('dd"/"mm"/"yyyy', now);
end;

end.
