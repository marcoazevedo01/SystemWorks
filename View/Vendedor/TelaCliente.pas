unit TelaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, dblookup, DB, ADODB,
  RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  TfmTelaCliente = class(TForm)
    btnIncluir: TBitBtn;
    btnEditar: TBitBtn;
    GBClienteFisico: TGroupBox;
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
    Label15: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
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
    Label17: TLabel;
    DBEdit17: TDBEdit;
    RadioGroup1: TRadioGroup;
    btnGravar: TBitBtn;
    Timer1: TTimer;
    GBclienteJuridico: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    BitBtn1: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnIncluirMouseEnter(Sender: TObject);
    procedure btnIncluirMouseLeave(Sender: TObject);
    procedure btnEditarMouseEnter(Sender: TObject);
    procedure btnEditarMouseLeave(Sender: TObject);
    procedure btnRelatorioMouseEnter(Sender: TObject);
    procedure btnRelatorioMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaCliente: TfmTelaCliente;
var
  editarCli: String;

implementation

uses TelaBuscarCliente, DMConexao, TelaEscolhaRelatorioCliente;

{$R *.dfm}

procedure TfmTelaCliente.BitBtn1Click(Sender: TObject);
begin
try
  if (MessageDlg('Deseja realmente gravar ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
  begin
    DM_dados1.TClienteJuridico.post;
    btnIncluir.Enabled  := true;
    btnEditar.Enabled   := true;
    btnRelatorio.Enabled:= true;
  if (MessageDlg('Deseja realizar mais alguma operação ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
    begin
      fmTelaCliente.Close;
      fmTelaCliente.Show;
    end
  end
else
  begin
    fmTelaCliente.Close;
    fmTelaCliente.Show;
  end;
     except
    ShowMessage('Preencha todos os campos corretamente');
  end;
end;

procedure TfmTelaCliente.btnEditarClick(Sender: TObject);
begin
  editarCli := 'true';
  fmTelaBuscarCliente.ShowModal;
end;

procedure TfmTelaCliente.btnEditarMouseEnter(Sender: TObject);
begin
btnEditar.Font.Color := clMenuHighlight;
end;

procedure TfmTelaCliente.btnEditarMouseLeave(Sender: TObject);
begin
btnEditar.Font.Color := clBlack;
end;

procedure TfmTelaCliente.btnGravarClick(Sender: TObject);
begin
try
if (MessageDlg('Deseja realmente gravar ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
  begin
    DM_dados1.TCLienteFisico.post;
    btnIncluir.Enabled  := true;
    btnEditar.Enabled   := true;
    btnRelatorio.Enabled:= true;
  if (MessageDlg('Deseja realizar mais alguma operação ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
    begin
      fmTelaCliente.Close;
      fmTelaCliente.Show;
      GBClienteFisico.Visible := false;
    end
  end
else
  begin
    fmTelaCliente.Close;
    fmTelaCliente.Show;
  end;
   except
    ShowMessage('Preencha todos os campos corretamente');
  end;
end;

procedure TfmTelaCliente.btnIncluirClick(Sender: TObject);
begin
if (MessageDlg('Deseja incluir um novo cliente ?',mtConfirmation,[mbYes,mbno], 0)=mrYes) then
  begin
    RadioGroup1.Visible := true;
  end
else
  begin
    Abort;
  end;
end;

procedure TfmTelaCliente.btnIncluirMouseEnter(Sender: TObject);
begin
btnIncluir.Font.Color := clMenuHighlight;
end;

procedure TfmTelaCliente.btnIncluirMouseLeave(Sender: TObject);
begin
btnIncluir.Font.Color := clBlack
end;

procedure TfmTelaCliente.btnRelatorioClick(Sender: TObject);
begin
  fmTelaEscolhaRelatorioCliente.ShowModal;
end;


procedure TfmTelaCliente.btnRelatorioMouseEnter(Sender: TObject);
begin
btnRelatorio.Font.Color := clMenuHighlight;
end;

procedure TfmTelaCliente.btnRelatorioMouseLeave(Sender: TObject);
begin
btnRelatorio.Font.Color := clBlack;
end;

procedure TfmTelaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DM_dados1.TCLienteFisico.Close;
    DM_dados1.TClienteJuridico.Close;
    GBClienteFisico.Visible  := false;
    GBclienteJuridico.Visible := false;
    btnGravar.Visible  := false;
    RadioGroup1.ItemIndex := -1;
    RadioGroup1.Visible := false;
    RadioGroup1.Enabled := true;
    RadioGroup1.Height  := 39;
    RadioGroup1.Left    := 24;
    RadioGroup1.Top     := 71;
    btnIncluir.Enabled  := true;
    btnEditar.Enabled   := true;
    btnRelatorio.Enabled:= true;
end;

procedure TfmTelaCliente.FormCreate(Sender: TObject);
begin
    btnGravar.Caption     := 'Gravar Cliente';
    btnIncluir.Caption    := 'Novo Cliente';
    btnEditar.Caption     := 'Editar Cliente';
    btnRelatorio.Caption  := 'Emitir Relatório';
   GBClienteFisico.Visible     := false;
    btnGravar.Visible     := false;
    RadioGroup1.Visible   := false;
end;

procedure TfmTelaCliente.FormShow(Sender: TObject);
begin
  DM_dados1.TCLienteFisico.Open;
  DM_dados1.TClienteJuridico.Open;
end;

procedure TfmTelaCliente.RadioGroup1Click(Sender: TObject);
var Proxnum : Integer;
begin
    RadioGroup1.Height  := 39;
    RadioGroup1.Left    := 312;
    RadioGroup1.Top     := 69;
    RadioGroup1.Enabled := false;
if RadioGroup1.ItemIndex = 0 then
  begin
    //incluindo cliente fisico
    GBclienteJuridico.Visible := false;
    GBClienteFisico.Visible := true;
    btnIncluir.Enabled  := false;
    btnEditar.Enabled   := false;
    btnRelatorio.Enabled:= false;
    DM_dados1.TCLienteFisico.Insert;
    DM_dados1.TCLienteFisico.Last;
    Proxnum:=DM_dados1.TCLienteFisico.FieldByName('cod_cliente').AsInteger+1;
    DM_dados1.TCLienteFisico.Append;
    DM_dados1.TCLienteFisico.FieldByName('cod_cliente').AsInteger := Proxnum;
    //fim
    GBClienteFisico.Visible := true;
    btnGravar.Visible := true;
    Label6.Caption    := 'Nome';
    Label8.Caption    := 'Rg';
    Label5.Caption    := 'Cpf';
    Label4.Caption    := 'Data de Nascimento';
    Label14.Caption   := 'Profissão';
    Label9.Caption    := 'Local de Trabalho';
    Label15.Caption   := 'Telefone Comercial';
    DBEdit2.SetFocus;
  end
else if RadioGroup1.ItemIndex = 1 then
  begin
   //incluindo cliente Juridico
    GBClienteFisico.Visible := false;
    GBclienteJuridico.Visible := true;
    btnIncluir.Enabled  := false;
    btnEditar.Enabled   := false;
    btnRelatorio.Enabled:= false;
    DM_dados1.TClienteJuridico.Insert;
    DM_dados1.TClienteJuridico.Last;
    Proxnum:=DM_dados1.TClienteJuridico.FieldByName('cod_clienteju').AsInteger+1;
    DM_dados1.TClienteJuridico.Append;
    DM_dados1.TClienteJuridico.FieldByName('cod_clienteju').AsInteger := Proxnum;
    //fim
    GBClienteFisico.Visible := true;
    btnGravar.Visible := true;
    DBEdit19.SetFocus;
  end;
end;

procedure TfmTelaCliente.Timer1Timer(Sender: TObject);
begin
DBEdit17.Text := ''+FormatDateTime('dd"/"mm"/"yyyy', now);
DBEdit33.Text := ''+FormatDateTime('dd"/"mm"/"yyyy', now);
end;

end.
