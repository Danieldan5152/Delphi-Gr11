unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Math;

type
  TfrmMuurPapier = class(TForm)
    edtBreedte: TEdit;
    edtHoogte: TEdit;
    btnBewerk: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    lblBreedte: TLabel;
    lblHoogte: TLabel;
    lblAfvoerK: TLabel;
    lblInfo: TLabel;
    lblAfvoer: TLabel;
    procedure bmbRetryClick(Sender: TObject);
    procedure btnBewerkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMuurPapier: TfrmMuurPapier;
  eOppK, eOppR, eRKoste : extended;
implementation

{$R *.dfm}

procedure TfrmMuurPapier.bmbRetryClick(Sender: TObject);
begin

end;
// Custom Procedures
procedure BeginBerekening;
var
sInfo : string;
eBreedteR, eLenteR : extended;
begin
frmMuurPapier.edtBreedte.SetFocus;

eRKoste := 58.50; //Koste per rol
eBreedteR := 0.5;//breedte vir een rol in mm
eLenteR := 5; //lente vaqn n rol in mm
eOppR := eBreedteR * eLenteR; //Opp van een rol in m^2

sInfo := 'Een rol muur papier kos R' + FloatToStr(eRKoste) +
    ' en is ' + FloatToStrF(eOppR,ffFixed,5,2) +
    'm^2, ons verkoop nie halwe rolle nie.';
frmMuurPapier.lblInfo.Caption := sInfo;

end;

procedure BerekenRolleNodig;
var
iRolleN : integer ;
 eHoogte, eBreedte, eKoste : extended;
sAfvoerK, sAfvoer : string;
begin
  eBreedte := StrToFloat(frmMuurPapier.edtBreedte.Text); // Breedte van kamer ingesleutel in mm
  eHoogte := StrToFloat(frmMuurPapier.edtHoogte.Text); // Hoogte van kamer in gesleutel in mm
  eOppK := eBreedte * eHoogte; // werk uit hoe groot die kamer is m^2
  iRolleN := CEIL(eOppK/eOppR);// rolle nodig afgrond na volle rolle
  eKoste := iRolleN * eRKoste; //koste vir die rolle nodig
  //afvoer stringe
  if iRolleN = 1 then
    sAfvoer := 'Kamer se oppervlak is ' + FloatToStrF(eOppK,ffFixed, 5, 2)
    + 'm^2 jy sal '+ IntToStr(iRolleN) + ' rol nodig he.'; //net een rol
  if iRolleN > 1 then
    sAfvoer := 'Kamer se oppervlak is ' + FloatToStrF(eOppK,ffFixed, 5, 2)
    + 'm^2 jy sal ' + IntToStr(iRolleN) + ' rolle nodig he.'; // meer as net een rol

  sAfvoerK := 'Die totale koste is R' + FloatToStrF(eKoste, ffFixed,5 ,2);

  //vertoon afvoer
  frmMuurPapier.lblAfvoer.Caption := sAfvoer;
  frmMuurPapier.lblAfvoerK.Caption := sAfvoerK;
end;

procedure BeginOor; //maak var skoon
var
iNull : integer;
sNiks : string;
begin //maak ales skoon om oor te begin
  iNull := 0;
  eOppK := iNull ;
  sNiks := ' ';
  frmMuurPapier.lblAfvoer.Caption := sNiks;
  frmMuurPapier.lblAfvoerK.Caption := sNiks;
  frmMuurPapier.edtBreedte.Clear;
  frmMuurPapier.edtHoogte.clear;
  frmMuurPapier.edtBreedte.SetFocus;
end;

procedure TfrmMuurPapier.btnBewerkClick(Sender: TObject);
begin
BerekenRolleNodig;
end;

procedure TfrmMuurPapier.FormActivate(Sender: TObject);
begin
  BeginBerekening;
end;
end.
