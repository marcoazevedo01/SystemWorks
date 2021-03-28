unit TelaCadastroCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, dblookup, DB, ADODB,
  RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  TfmTelaCadastroCliente = class(TForm)
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnEditar: TBitBtn;
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
    Label15: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBLookupCombo1: TDBLookupCombo;
    DBLookupCombo2: TDBLookupCombo;
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
    ADOTable1: TADOTable;
    RvProject1: TRvProject;
    RvSystem1: TRvSystem;
    RvDataSetConnection1: TRvDataSetConnection;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaCadastroCliente: TfmTelaCadastroCliente;

implementation

uses classeCliente, comtroleCliente, TelaRelatorioCliente, DMConexao;

{$R *.dfm}

procedure TfmTelaCadastroCliente.btnEditarClick(Sender: TObject);
begin
  fmTelaRelatorioCliente.Show;
end;

procedure TfmTelaCadastroCliente.btnGravarClick(Sender: TObject);
begin
if (MessageDlg('Deseja realmente gravar ?', mtConfirmation, [mbOk, mbCancel], 0)=mrYes) then
  begin
    Abort;
  end
else
  begin
    btnIncluir.Enabled  := true;
    btnEditar.Enabled   := true;
    btnRelatorio.Enabled:= true;
    DM_dados1.TCLienteFisico.post;
if (MessageDlg('Deseja realizar mais alguma operação ?', mtConfirmation, [mbYes, mbno], 0)=mrYes) then
  begin
    fmTelaCadastroCliente.Close;
    fmTelaCadastroCliente.Show;
    GroupBox1.Visible := false;
  end
else
  begin
    fmTelaCadastroCliente.Close;
  end;
end;
end;

procedure TfmTelaCadastroCliente.btnIncluirClick(Sender: TObject);
var Proxnum : Integer;
begin
if (MessageDlg('Desaja incluir um novo cliente ?',mtConfirmation,[mbYes,mbno], 0)=mrYes) then
  begin
    RadioGroup1.Visible := true;
    btnIncluir.Enabled  := false;
    btnEditar.Enabled   := false;
    btnRelatorio.Enabled:= false;
    DM_dados1.TCLienteFisico.Insert;
    DM_dados1.TCLienteFisico.Last;

    Proxnum:=DM_dados1.TCLienteFisico.FieldByName('cod_cliente').AsInteger+1;
    DM_dados1.TCLienteFisico.Append;
    DM_dados1.TCLienteFisico.FieldByName('cod_cliente').AsInteger := Proxnum;
    //DBEdit2.SetFocus;
  end
else
  begin
    Abort;
  end;
end;

procedure TfmTelaCadastroCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    GroupBox1.Visible  := false;
    btnGravar.Visible  := false;
    RadioGroup1.ItemIndex := -1;
    RadioGroup1.Visible := false;
    RadioGroup1.Enabled := true;
    RadioGroup1.Height  := 39;
    RadioGroup1.Left    := 24;
    RadioGroup1.Top     := 71;
end;

procedure TfmTelaCadastroCliente.FormCreate(Sender: TObject);
begin
    btnGravar.Caption     := 'Gravar Cliente';
    btnIncluir.Caption    := 'Novo Cliente';
    btnEditar.Caption     := 'Editar Cliente';
    btnRelatorio.Caption  := 'Emitir Relatorio';
    GroupBox1.Visible     := false;
    btnGravar.Visible     := false;
    RadioGroup1.Visible   := false;
end;

procedure TfmTelaCadastroCliente.RadioGroup1Click(Sender: TObject);
begin
    RadioGroup1.Height  := 39;
    RadioGroup1.Left    := 320;
    RadioGroup1.Top     := 98;
    RadioGroup1.Enabled := false;
if RadioGroup1.ItemIndex = 0 then
  begin
    GroupBox1.Visible := true;
    btnGravar.Visible := true;
    Label6.Caption    := 'Nome';
    Label8.Caption    := 'Rg';
    Label5.Caption    := 'Cpf';
    Label4.Caption    := 'Data de Nascimento';
    Label14.Caption   := 'Profissão';
    Label9.Caption    := 'Local de Trabalho';
    Label15.Caption   := 'Telefone Comercial';
  end
else if RadioGroup1.ItemIndex = 1 then
  begin
    //pessoaJuridica
    Label6.Caption    := '';
    Label8.Caption    := '';
    Label5.Caption    := '';
    Label4.Caption    := '';
    Label14.Caption   := '';
    Label9.Caption    := '';
    Label15.Caption   := '';
    GroupBox2.Caption := '';
    GroupBox1.Caption := '';
    GroupBox1.Visible := true;
    btnGravar.Visible := true;
  end;
end;

end.
