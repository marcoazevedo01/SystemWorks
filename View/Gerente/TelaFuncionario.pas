unit TelaFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, DBCtrls, dblookup;

type
  TfmTelaFuncionario = class(TForm)
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
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit16: TDBEdit;
    Label15: TLabel;
    btnGravar: TBitBtn;
    Timer1: TTimer;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure DBEdit16MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
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
  fmTelaFuncionario: TfmTelaFuncionario;
var
  deletarFu: String;

implementation

uses DMConexao, TelaBuscarFuncionario, TelaEscolhaRelatorioFuncionario;

{$R *.dfm}

procedure TfmTelaFuncionario.btnEditarClick(Sender: TObject);
begin
  fmTelaBuscarFuncionario.ShowModal;
end;

procedure TfmTelaFuncionario.btnEditarMouseEnter(Sender: TObject);
begin
btnEditar.Font.Color := clMenuHighlight;
end;

procedure TfmTelaFuncionario.btnEditarMouseLeave(Sender: TObject);
begin
btnEditar.Font.Color := clBlack;
end;

procedure TfmTelaFuncionario.btnExcluirClick(Sender: TObject);
begin
  deletarFu := 'true';
  fmTelaBuscarFuncionario.ShowModal;
end;

procedure TfmTelaFuncionario.btnExcluirMouseEnter(Sender: TObject);
begin
btnExcluir.Font.Color := clMenuHighlight;
end;

procedure TfmTelaFuncionario.btnExcluirMouseLeave(Sender: TObject);
begin
btnExcluir.Font.Color := clBlack;
end;

procedure TfmTelaFuncionario.btnGravarClick(Sender: TObject);
begin
try
if (MessageDlg('Deseja realmente gravar ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
  begin
    DM_dados1.TFuncionario.post;
    btnIncluir.Enabled  := true;
    btnEditar.Enabled   := true;
    btnRelatorio.Enabled:= true;
    btnExcluir.Enabled  := true;
  if (MessageDlg('Deseja realizar mais alguma operação ?', mtConfirmation, [mbYes, mbno], 0)=mrYes) then
    begin
      fmTelaFuncionario.Close;
      fmTelaFuncionario.Show;
      GroupBox1.Visible := false;
    end
  else
    begin
    fmTelaFuncionario.Close;
    end
  end
else begin
    fmTelaFuncionario.close;
    fmTelaFuncionario.Show;
  end;
  except
    ShowMessage('Preencha todos os campos corretamente');
  end;
end;

procedure TfmTelaFuncionario.btnIncluirClick(Sender: TObject);
var Proxnum: Integer;
begin
if (MessageDlg('Deseja incluir um novo funcionário ?',mtConfirmation,[mbYes,mbno], 0)=mrYes) then
  begin
    GroupBox1.Visible   := true;
    btnGravar.Visible   := true;
    btnIncluir.Enabled  := false;
    btnEditar.Enabled   := false;
    btnRelatorio.Enabled:= false;
    btnExcluir.Enabled  := false;
    DM_dados1.TFuncionario.Insert;
    DM_dados1.TFuncionario.Last;
    Proxnum:=DM_dados1.TFuncionario.FieldByName('cod_funcionario').AsInteger+1;
    DM_dados1.TFuncionario.Append;
    DM_dados1.TFuncionario.FieldByName('cod_funcionario').AsInteger := Proxnum;
    DBEdit2.SetFocus;
  end
else
  begin
    Abort;
  end;
end;

procedure TfmTelaFuncionario.btnIncluirMouseEnter(Sender: TObject);
begin
btnIncluir.Font.Color := clMenuHighlight;
end;

procedure TfmTelaFuncionario.btnIncluirMouseLeave(Sender: TObject);
begin
btnIncluir.Font.Color := clBlack;
end;

procedure TfmTelaFuncionario.btnRelatorioClick(Sender: TObject);
begin
fmTelaEscolhaRelatorioFuncionario.ShowModal;
end;

procedure TfmTelaFuncionario.btnRelatorioMouseEnter(Sender: TObject);
begin
btnRelatorio.Font.Color := clMenuHighlight;
end;

procedure TfmTelaFuncionario.btnRelatorioMouseLeave(Sender: TObject);
begin
btnRelatorio.Font.Color := clBlack;
end;

procedure TfmTelaFuncionario.DBEdit16MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (DBEdit16.Text = 'ALMOXARIFE') or (DBEdit16.Text = 'VENDEDOR') or (DBEdit16.Text = 'GERENTE') then
    begin
      GroupBox2.Visible := true;
    end;
end;

procedure TfmTelaFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM_dados1.TFuncionario.Close;
  GroupBox2.Visible    := false;
  GroupBox1.Visible    := false;
  btnGravar.Visible    := false;
  btnIncluir.Enabled   := true;
  btnExcluir.Enabled   := true;
  btnRelatorio.Enabled := true;
  btnEditar.Enabled    := true;
end;

procedure TfmTelaFuncionario.FormCreate(Sender: TObject);
begin
    btnGravar.Caption     := 'Gravar';
    btnIncluir.Caption    := 'Novo Funcionário';
    btnEditar.Caption     := 'Editar Funcionário';
    btnRelatorio.Caption  := 'Emitir Relatório';
    btnExcluir.Caption    := 'Excluir Funcionário';
    GroupBox1.Visible     := false;
    btnGravar.Visible     := false;
    GroupBox2.Visible     := false;
end;

procedure TfmTelaFuncionario.FormShow(Sender: TObject);
begin
  DM_dados1.TFuncionario.Open;
end;

procedure TfmTelaFuncionario.Timer1Timer(Sender: TObject);
begin
DBEdit12.Text := ''+FormatDateTime('dd"/"mm"/"yyyy', now);
end;

end.
