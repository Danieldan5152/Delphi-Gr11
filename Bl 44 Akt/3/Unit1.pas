unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, Buttons, ExtCtrls;

type
  TfrmITPunte = class(TForm)
    edtPunt_1: TEdit;
    edtPunt_2: TEdit;
    edtPunt_3: TEdit;
    btnBereken: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    lblPunt_1: TLabel;
    lblPunt_3: TLabel;
    lblPunt_2: TLabel;
    lblAfvoer: TLabel;
    lblNaam: TLabel;
    edtNaam: TEdit;
    procedure btnBerekenClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmITPunte: TfrmITPunte;

implementation

{$R *.dfm}

procedure TfrmITPunte.bmbRetryClick(Sender: TObject);
begin
// Maak ales skoon
edtPunt_1.Clear;
edtPunt_2.Clear;
edtPunt_3.Clear;
lblAfvoer.Caption := ' ';
//stel fokus
edtNaam.SetFocus;
end;

procedure TfrmITPunte.btnBerekenClick(Sender: TObject);
var
sNaam, sAfvoer:string;
ePunt_1, ePunt_2, ePunt_3, eGemid : extended;
begin
//toeken alle Variables
sNaam := edtNaam.Text;
ePunt_1 := StrToFloat(edtPunt_1.text);
ePunt_2 := StrToFloat(edtPunt_2.Text);
ePunt_3 := StrToFloat(edtPunt_3.Text);
eGemid := (ePunt_1 + ePunt_2 + ePunt_3) /3 ;//bewerking
sAfvoer := sNaam + ' se gemiddeld persentasie is ' +
  FloatToStrF(eGemid,ffFixed,5,2) + '%';//afvoer
lblAfvoer.Caption := sAfvoer;//vertoon
end;

procedure TfrmITPunte.FormActivate(Sender: TObject);
begin
edtNaam.SetFocus;//stel fokus
end;

end.
