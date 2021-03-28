unit TelaOrdemEntradaMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,DB;

type
  TfmTelaOrdemEntradaMaterial = class(TForm)
    edtNomeEntrada: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    edtMaterialEntrada: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    btnBuscarMaterial: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    Timer1: TTimer;
    procedure btnBuscarMaterialClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edtMaterialEntradaExit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaOrdemEntradaMaterial: TfmTelaOrdemEntradaMaterial;
var
  entrada, valorM, valorCampo,total: String;

implementation

uses DMConexao, TelaBuscarMaterial, TelaBuscarFuncionario, TelaLogin;

{$R *.dfm}

procedure TfmTelaOrdemEntradaMaterial.btnBuscarMaterialClick(Sender: TObject);
begin
fmTelaBuscarMaterial.ShowModal;
end;

procedure TfmTelaOrdemEntradaMaterial.btnCancelarClick(Sender: TObject);
begin
fmTelaOrdemEntradaMaterial.Close;
end;

procedure TfmTelaOrdemEntradaMaterial.btnGravarClick(Sender: TObject);
begin
try
if (MessageDlg('Deseja realmente gravar ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
  begin
    DM_dados1.TEntradaMaterial.Post;
    valorM := DM_dados1.TMaterial.FieldByName('quantidade_material').AsString;
    total  :=  floattostr(strtofloat(valorCampo) + strtofloat(valorM));
    DM_dados1.TMaterial.Edit;
    DM_dados1.TMaterial.FieldByName('quantidade_material').AsString := total;
    DM_dados1.TMaterial.Post;
    fmTelaOrdemEntradaMaterial.Close;
  end
else
  begin
    fmTelaOrdemEntradaMaterial.Close;
  end
     except
    ShowMessage('Preencha todos os campos corretamente');
  end;
end;

procedure TfmTelaOrdemEntradaMaterial.DBEdit4Exit(Sender: TObject);
begin
  valorCampo := DBEdit4.Text;
end;

procedure TfmTelaOrdemEntradaMaterial.edtMaterialEntradaExit(Sender: TObject);
begin
  if not (DM_dados1.TMaterial.Locate('descricao_material',edtMaterialEntrada.Text,[lopartialkey,loCaseInsensitive]))  then
  begin
    //a
  end;
end;

procedure TfmTelaOrdemEntradaMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM_dados1.TEntradaMaterial.Close;
  entrada := '';
end;

procedure TfmTelaOrdemEntradaMaterial.FormShow(Sender: TObject);
var Proxnum : Integer;
begin
    DM_dados1.TEntradaMaterial.Open;
    entrada := 'true';
    DM_dados1.TEntradaMaterial.Insert;
    DM_dados1.TEntradaMaterial.Last;
    Proxnum:=DM_dados1.TEntradaMaterial.FieldByName('cod_ordementrada').AsInteger+1;
    DM_dados1.TEntradaMaterial.Append;
    DM_dados1.TEntradaMaterial.FieldByName('cod_ordementrada').AsInteger := Proxnum;

    edtNomeEntrada.Text := usuario;
    valorM := '';
    valorCampo := '';
    total := '';
end;

procedure TfmTelaOrdemEntradaMaterial.Timer1Timer(Sender: TObject);
begin
DBEdit6.Text := ''+FormatDateTime('dd"/"mm"/"yyyy', now);
end;

end.
