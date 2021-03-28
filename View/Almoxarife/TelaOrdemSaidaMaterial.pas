unit TelaOrdemSaidaMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls,DB;

type
  TfmTelaOrdemSaidaMaterial = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtNomeSaida: TDBEdit;
    DBEdit3: TDBEdit;
    edtMaterialSaida: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    btnBuscarMaterial: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    Timer1: TTimer;
    procedure btnBuscarMaterialClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edtMaterialSaidaExit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaOrdemSaidaMaterial: TfmTelaOrdemSaidaMaterial;
var
  saida, valorM, valorCampo, total: String;

implementation

uses DMConexao, TelaBuscarFuncionario, TelaBuscarMaterial, TelaLogin;

{$R *.dfm}

 procedure TfmTelaOrdemSaidaMaterial.btnBuscarMaterialClick(Sender: TObject);
begin
fmTelaBuscarMaterial.ShowModal;
end;

procedure TfmTelaOrdemSaidaMaterial.btnCancelarClick(Sender: TObject);
begin
fmTelaOrdemSaidaMaterial.Close;
end;

procedure TfmTelaOrdemSaidaMaterial.btnGravarClick(Sender: TObject);
begin
try
if (MessageDlg('Deseja realmente gravar ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
  begin
    DM_dados1.TSaidaMaterial.Post;
    valorM := DM_dados1.TMaterial.FieldByName('quantidade_material').AsString;
    total  :=  floattostr((strtofloat(valorM)) - (strtofloat(valorCampo)));
    DM_dados1.TMaterial.Edit;
    DM_dados1.TMaterial.FieldByName('quantidade_material').AsString := total;
    DM_dados1.TMaterial.Post;
    fmTelaOrdemSaidaMaterial.Close;
  end
else
  begin
    fmTelaOrdemSaidaMaterial.Close;
  end
    except
    ShowMessage('Preencha todos os campos corretamente');
  end;
end;

procedure TfmTelaOrdemSaidaMaterial.DBEdit4Exit(Sender: TObject);
begin
 valorCampo := DBEdit4.Text;
end;

procedure TfmTelaOrdemSaidaMaterial.edtMaterialSaidaExit(Sender: TObject);
begin
if not (DM_dados1.TMaterial.Locate('descricao_material',edtMaterialSaida.Text,[lopartialkey,loCaseInsensitive]))  then
  begin
    //a
  end;
end;

procedure TfmTelaOrdemSaidaMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM_dados1.TSaidaMaterial.Close;
saida := '';
end;

procedure TfmTelaOrdemSaidaMaterial.FormShow(Sender: TObject);
var Proxnum : Integer;
begin
    DM_dados1.TSaidaMaterial.Open;
    //puchar o nome da pessoa logada
    saida := 'true';
    DM_dados1.TSaidaMaterial.Insert;
    DM_dados1.TSaidaMaterial.Last;
    Proxnum:=DM_dados1.TSaidaMaterial.FieldByName('cod_ordemsaida').AsInteger+1;
    DM_dados1.TSaidaMaterial.Append;
    DM_dados1.TSaidaMaterial.FieldByName('cod_ordemsaida').AsInteger := Proxnum;

    edtNomeSaida.Text := usuario;
    valorM := '';
    valorCampo := '';
    total := '';
end;

procedure TfmTelaOrdemSaidaMaterial.Timer1Timer(Sender: TObject);
begin
DBEdit6.Text := ''+FormatDateTime('dd"/"mm"/"yyyy', now);
end;

end.
