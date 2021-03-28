unit TelaCadastrarMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons;

type
  TfmTelaCadastrarMaterial = class(TForm)
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnEditar: TBitBtn;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnEntrada: TBitBtn;
    btnRelatorio: TBitBtn;
    btnSaida: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEntradaClick(Sender: TObject);
    procedure btnSaidaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaCadastrarMaterial: TfmTelaCadastrarMaterial;

implementation

uses TelaOrdemEntradaMaterial, TelaOrdemSaidaMaterial, DMConexao;


{$R *.dfm}

procedure TfmTelaCadastrarMaterial.btnEntradaClick(Sender: TObject);
begin
fmTelaOrdemEntradaMaterial.ShowModal;
end;

procedure TfmTelaCadastrarMaterial.btnGravarClick(Sender: TObject);
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
      btnEntrada.Enabled  := true;
      btnSaida.Enabled    := true;
      DM_dados1.TMAterial.post;
      if (MessageDlg('Deseja realizar mais alguma operação ?', mtConfirmation, [mbYes, mbno], 0)=mrYes) then
        begin
          fmTelaCadastrarMaterial.Close;
          fmTelaCadastrarMaterial.Show;
          GroupBox1.Visible := false;
        end
      else
        begin
          fmTelaCadastrarMaterial.Close;
        end;
    end;
end;

procedure TfmTelaCadastrarMaterial.btnIncluirClick(Sender: TObject);
var Proxnum: Integer;
begin
if (MessageDlg('Desaja incluir um novo material ?',mtConfirmation,[mbYes,mbno], 0)=mrYes) then
  begin
    GroupBox1.Visible    := true;
    btnGravar.Visible    := true;
    btnIncluir.Enabled   := false;
    btnEditar.Enabled    := false;
    btnRelatorio.Enabled := false;
    btnEntrada.Enabled   := false;
    btnSaida.Enabled     := false;
    DM_dados1.TMaterial.Insert;
    DM_dados1.TMaterial.Last;

    Proxnum:=DM_dados1.TMaterial.FieldByName('cod_material').AsInteger+1;
    DM_dados1.TMaterial.Append;
    DM_dados1.TMaterial.FieldByName('cod_Material').AsInteger := Proxnum;
    //DBEdit2.SetFocus;
  end
else
  begin
    Abort;
  end;
end;

procedure TfmTelaCadastrarMaterial.btnSaidaClick(Sender: TObject);
begin
fmTelaOrdemSaidaMaterial.ShowModal;
end;

procedure TfmTelaCadastrarMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DBEdit1.Text := '';
    DBEdit2.Text := '';
    DBEdit3.Text := '';
    DBEdit4.Text := '';
    DBEdit5.Text := '';
    GroupBox1.Visible  := false;
    btnGravar.Visible  := false;
end;

procedure TfmTelaCadastrarMaterial.FormCreate(Sender: TObject);
begin
    DBEdit1.Text := '';
    DBEdit2.Text := '';
    DBEdit3.Text := '';
    DBEdit4.Text := '';
    DBEdit5.Text := '';
    btnGravar.Caption  := 'Gravar Material';
    btnIncluir.Caption := 'Novo Material';
    btnEditar.Caption  := 'Editar Material';
    GroupBox1.Caption  := '';
    GroupBox1.Visible  := false;
    btnGravar.Visible  := false;
end;

end.
