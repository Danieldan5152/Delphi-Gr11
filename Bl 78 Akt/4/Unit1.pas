unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Math;

type
  TfrmCourier = class(TForm)
    radTipeVervoer: TRadioGroup;
    cbxVersekering: TCheckBox;
    cbxHoeP: TCheckBox;
    lblAfstand: TLabel;
    lblTotaal: TLabel;
    edtTotaal: TEdit;
    btnBewerk: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    edtGewig: TEdit;
    edtAfstand: TEdit;
    lblGewig: TLabel;
    procedure btnBewerkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCourier: TfrmCourier;
  eKostePKilo, eKostePadPKM, eKosteTreinPKM, eKosteLugPKM,
  eKosteSkipPKM : extended;
implementation

{$R *.dfm}
// custom procedures
procedure Beginfrm;
begin
  frmCourier.edtGewig.setfocus;
  eKostePKilo := 1.23;
  eKostePadPKM := 0.15;
  eKosteTreinPKM := 0.12;
  eKosteLugPKM := 0.36;
  eKosteSkipPKM := 0.25;
end;

procedure Verwerk;
var
iTipeVervoer : integer;
eVersekering, eHoeP, eGewig, eAfstand, eGewigKoste, eVervoerKoste, eTotaalSBTW,
 eBTW, eTotaal   : extended;
sAfvoer : string;
begin
//skoon net ingeval
  eVersekering := 0;
  eHoeP := 0 ;
//kry alle toevoer
  eGewig := StrToFloat(frmCourier.edtGewig.text);
  eAfstand := StrToFloat(frmCourier.edtAfstand.Text);
  iTipeVervoer := frmCourier.radTipeVervoer.ItemIndex ;
//doen vervoer bewerkings
  eGewigKoste := eGewig * eKostePKilo;
  //Pad
  if iTipeVervoer = 0 then
    eVervoerKoste := eGewigKoste + (eAfstand * eKostePadPKM);
  //Trein
  if iTipeVervoer = 1 then
    eVervoerKoste := eGewigKoste + (eAfstand * eKosteTreinPKM);
  //Lug
  if iTipeVervoer = 2 then
    eVervoerKoste := eGewigKoste + (eAfstand * eKosteLugPKM);
  //Skip
  if iTipeVervoer = 3 then
    eVervoerKoste := eGewigKoste + (eAfstand * eKosteSkipPKM);
  //Versekering by voeg
  if frmCourier.cbxVersekering.Checked = true then
    eVersekering := eVervoerKoste * 0.11;
  //Hoe Prioriteit
  if frmCourier.cbxHoeP.Checked = true then
    eHoeP := eVervoerKoste * 0.15;
  eTotaalSBTW := eVervoerKoste + eVersekering + eHoeP;
  eBTW := eTotaalSBTW * 0.14;
  eTotaal := eTotaalSBTW + eBTW ;
  sAfvoer := FloatToStrF(eTotaal,ffFixed,5,2);
  frmCourier.edtTotaal.text := sAfvoer
end;
procedure Beginoor;
var
sNiks : string;
begin
  sNiks := ' ';
  frmCourier.edtGewig.text := sNiks;
  frmCourier.edtAfstand.text := sNiks;
  frmCourier.radTipeVervoer.ItemIndex := 0;
  frmCourier.cbxVersekering.Checked := false;
  frmCourier.cbxHoeP.Checked := false;
  frmCourier.edtTotaal.text := sNiks;
  frmCourier.edtGewig.setfocus;
end;

procedure TfrmCourier.bmbRetryClick(Sender: TObject);
begin
  Beginoor;
end;

procedure TfrmCourier.btnBewerkClick(Sender: TObject);
begin
  Verwerk;
end;

procedure TfrmCourier.FormActivate(Sender: TObject);
begin
  Beginfrm;
end;

end.
