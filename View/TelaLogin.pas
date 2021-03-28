unit TelaLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, Mask, ComCtrls, ExtCtrls, Grids, DBGrids, DB,
  pngimage;

type
  TfmTelaLogin = class(TForm)
    Label2: TLabel;
    MainMenu1: TMainMenu;
    edtUsuario: TEdit;
    btnLogar: TBitBtn;
    Label3: TLabel;
    edtSenha: TMaskEdit;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Image1: TImage;
    procedure btnLogarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtUsuarioExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaLogin: TfmTelaLogin;
var
  nivel_acesso, entrou, usuario, senha: String;

implementation

{$R *.dfm}
uses TelaPrincipal, DMConexao, TelaCor;
procedure TfmTelaLogin.btnLogarClick(Sender: TObject);
begin
//recebe usuario
  usuario := DM_dados1.TFuncionarionome_funcionario.Value;
//fim
//compara usuario com senha
if (edtSenha.Text = DM_dados1.TFuncionariosenha_funcionario.Value) and (edtUsuario.Text = DM_dados1.TFuncionariousuario_funcionario.Value) then
   begin
    entrou := 'true';
  if DM_dados1.TFuncionariocargo_funcionario.Value = 'ALMOXARIFE' then
    begin
      nivel_acesso := 'ALMOXARIFE';
      ShowMessage('Login efetuado com sucesso'+
      #13+'Você logou como Almoxarife');
    end
  else if DM_dados1.TFuncionariocargo_funcionario.Value = 'VENDEDOR' then
    begin
      nivel_acesso := 'VENDEDOR';
      ShowMessage('Login efetuado com sucesso'+
      #13+'Você logou como Vendedor');
    end
  else if DM_dados1.TFuncionariocargo_funcionario.Value = 'GERENTE' then
    begin
       nivel_acesso := 'GERENTE';
      ShowMessage('Login efetuado com sucesso'+
      #13+'Você logou como Gerente');
    end;
      fmTelaPrincipal.Hide;
      edtUsuario.Text   :=  '';
      edtSenha.Text     :=  '';
      fmTelaLogin.Close;
      fmTelaPrincipal.Show;
    end
  else
    begin
      ShowMessage('Usuario e Senha incorretos');
    end;
end;

procedure TfmTelaLogin.edtUsuarioExit(Sender: TObject);
begin
//seleciona no banco o funcionario que foi digitado
if not (DM_dados1.TFuncionario.Locate('usuario_funcionario',edtUsuario.Text,[lopartialkey,loCaseInsensitive]))  then
end;

procedure TfmTelaLogin.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
ProgressBar1.Visible := true;
end;

procedure TfmTelaLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  edtUsuario.Text   :=  '';
  edtSenha.Text     :=  '';
  ProgressBar1.Position := 0;
  Timer1.Interval :=  0;
end;

procedure TfmTelaLogin.FormCreate(Sender: TObject);
begin
  edtUsuario.Text   :=  '';
  edtSenha.Text     :=  '';
  Label2.Caption    :=  'Usuário';
  Label3.Caption    :=  'Senha';
  btnLogar.Caption  :=  'Entrar';
  fmTelaLogin.Caption := 'Efetuar Login';
end;

procedure TfmTelaLogin.FormShow(Sender: TObject);
begin
  edtUsuario.SetFocus;
  Timer1.Interval :=  350;
  DM_dados1.TFuncionario.Open;
  //chama a cor das telas do banco
  DM_dados1.TSistema.Open;
  cor_sistema := DM_dados1.TSistema.FieldByName('cor_sistema').AsInteger;
end;

procedure TfmTelaLogin.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position := ProgressBar1.Position+1;
if ProgressBar1.Position = 100 then
  begin
    fmTelaPrincipal.Close;
  end;
end;

end.
