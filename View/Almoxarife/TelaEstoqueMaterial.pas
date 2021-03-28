unit TelaEstoqueMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB;

type
  TfmTelaEstoqueMaterial = class(TForm)
    DBGrid1: TDBGrid;
    edtbuscaM: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure edtbuscaMKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaEstoqueMaterial: TfmTelaEstoqueMaterial;

implementation

uses DMConexao, TelaExportMaterial;

{$R *.dfm}

procedure TfmTelaEstoqueMaterial.BitBtn1Click(Sender: TObject);
begin
fmTelaExpotMaterial.ShowModal;
end;

procedure TfmTelaEstoqueMaterial.edtbuscaMKeyPress(Sender: TObject;
  var Key: Char);
begin
DM_dados1.TMaterial.Locate('descricao_material',edtbuscaM.Text,[loPartialKey,loCaseInsensitive])
end;

procedure TfmTelaEstoqueMaterial.FormShow(Sender: TObject);
begin
edtbuscaM.SetFocus;
end;

end.
