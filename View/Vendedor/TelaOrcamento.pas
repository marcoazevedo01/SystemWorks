unit TelaOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, dblookup, DB,
  RpRave, RpDefine, RpBase, RpSystem, RpCon, RpConDS, ExtCtrls;

type
  TfmTelaOrcamento = class(TForm)
    btnSalvar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    btnBuscarCliente: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    btnBuscarMaterial: TBitBtn;
    GridMOrcamentos: TDBGrid;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    DBEdit13: TDBEdit;
    Label7: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    Timer1: TTimer;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarMaterialClick(Sender: TObject);
    procedure btnBuscarClienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaOrcamento: TfmTelaOrcamento;
var
  orcamento: String;

implementation

uses TelaBuscarServico, DMConexao, TelaBuscarCliente, TelaLogin,
  TelaRelatorioVendasG, TelaRelatorioVendasV;

{$R *.dfm}

procedure TfmTelaOrcamento.BitBtn1Click(Sender: TObject);
begin
fmTelaRelatorioVendasG.Show
end;

procedure TfmTelaOrcamento.btnBuscarClienteClick(Sender: TObject);
begin
  orcamento :=  'true';
  fmTelaBuscarCliente.ShowModal;
end;

procedure TfmTelaOrcamento.btnBuscarMaterialClick(Sender: TObject);
begin
  orcamento :=  'true';
  GridMOrcamentos.Visible := true;
  Label11.Visible := true;
  //mover edits
  Label17.Height := 13;
  Label17.Left := 400;
  Label17.Top := 485;
  Label17.Width := 79;
  Label18.Height := 13;
  Label18.Left := 536;
  Label18.Top := 485;
  Label18.Width := 41;
  //2
  DBEdit14.Height := 21;
  DBEdit14.Left := 400;
  DBEdit14.Top := 504;
  DBEdit14.Width := 105;
  DBEdit15.Height := 21;
  DBEdit15.Left := 536;
  DBEdit15.Top := 503;
  DBEdit15.Width := 121;
  //fim
  fmTelaBuscarServico.ShowModal;
end;

procedure TfmTelaOrcamento.btnSalvarClick(Sender: TObject);
begin
try
if (MessageDlg('Deseja realmente gravar ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
  begin
  DM_dados1.TOrcamento.Post;
    if (MessageDlg('Deseja realizar mais alguma operação ?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
      begin
        fmTelaOrcamento.Close;
        fmTelaOrcamento.Show;
      end
    else begin
        fmTelaOrcamento.Close;
      end;
  end
else
  begin
    fmTelaOrcamento.Close;
  end;
      except
    ShowMessage('Preencha todos os campos corretamente');
  end;
end;

procedure TfmTelaOrcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ediVenda := '';
DM_dados1.TOrcamento.Close;
//mover edits
  Label17.Height := 13;
  Label17.Left := 400;
  Label17.Top := 420;
  Label17.Width := 79;
  Label18.Height := 18;
  Label18.Left := 536;
  Label18.Top := 420;
  Label18.Width := 41;
  //2
  DBEdit14.Height := 21;
  DBEdit14.Left := 400;
  DBEdit14.Top := 439;
  DBEdit14.Width := 105;
  DBEdit15.Height := 21;
  DBEdit15.Left := 536;
  DBEdit15.Top := 438;
  DBEdit15.Width := 121;
  //fim
end;

procedure TfmTelaOrcamento.FormCreate(Sender: TObject);
begin
  btnSalvar.Caption := 'Salvar';
end;

procedure TfmTelaOrcamento.FormShow(Sender: TObject);
var Proxnum : Integer;
begin
if ediVenda = '' then
  begin
    DM_dados1.TOrcamento.Open;
    DM_dados1.TOrcamento.Insert;
    DM_dados1.TOrcamento.Last;
    Proxnum:=DM_dados1.TOrcamento.FieldByName('cod_orcamento').AsInteger+1;
    DM_dados1.TOrcamento.Append;
    DM_dados1.TOrcamento.FieldByName('cod_orcamento').AsInteger := Proxnum;
    btnBuscarCliente.SetFocus;

    DBEdit7.Text  := usuario;
    DBEdit15.Text := 'pendente';
    //movimentar componentes
    Label11.Visible := false;
    GridMOrcamentos.Visible := false;
    //fim
  end
  else if ediVenda = 'true' then
    begin
      try
        DM_dados1.TOrcamento.Open;
        Label11.Visible := false;
        GridMOrcamentos.Visible := false;
        DM_dados1.TOrcamento.Locate('cod_orcamento',pegarid,[loPartialKey,loCaseInsensitive]);
      except
        ShowMessage('Erro!! Não é possivel editar');
        Abort;
      end
  end;
end;

procedure TfmTelaOrcamento.Timer1Timer(Sender: TObject);
begin
DBEdit14.Text := ''+FormatDateTime('dd"/"mm"/"yyyy', now);
end;

end.
