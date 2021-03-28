unit TelaSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, pngimage;

type
  TfmTelaSobre = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelaSobre: TfmTelaSobre;

implementation

{$R *.dfm}

procedure TfmTelaSobre.FormCreate(Sender: TObject);
begin
Label2.Caption := '            SYSTEM WORKS'+
#13+'SISTEMA DE INFORMATIZAÇÃO';

Label4.Caption := 'Trabalho de Conclusão de Curso';
end;

end.
