unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, Buttons, ExtCtrls, Spin;

type
  TfrmConcert = class(TForm)
    edtKAdult: TEdit;
    edtKKid: TEdit;
    sedAdults: TSpinEdit;
    sedKids: TSpinEdit;
    btnBewerk: TButton;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    lblKAdult: TLabel;
    lblKKid: TLabel;
    lblAdults: TLabel;
    lblKids: TLabel;
    lblKAdults: TLabel;
    lblKKids: TLabel;
    lblKTotale: TLabel;
    procedure btnBewerkClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConcert: TfrmConcert;
  sTotale, sKids, sAdults : string ;
  iAdults, iKids :integer ;
  eKTotale, eKKids, eKAdults, eKKid, eKAdult : extended ;

implementation

{$R *.dfm}

procedure TfrmConcert.bmbResetClick(Sender: TObject);
var
sNiks : string;
begin
//maak ales skoon en stel focus
sNiks := ' ';
lblKAdults.caption := sNiks ;
lblKKids.caption := sNiks ;
lblKTotale.caption := sNiks ;
sedAdults.Clear;
sedKids.Clear;
edtKAdult.clear;
edtKKid.Clear;
edtKAdult.setfocus;
end;

procedure TfrmConcert.btnBewerkClick(Sender: TObject);
begin
eKAdult := StrToFloat(edtkAdult.Text); //koste per groot persoon
eKKid := StrToFloat(edtkKid.Text); //koste per kind
iAdults := sedAdults.Value; //Groot mense
iKids := sedKids.Value; //kinders
eKAdults := eKAdult * iAdults ; //koste vir groot mense
eKKids := eKKid * iKids ; //koste vir kinders
eKTotale := eKKids + eKAdults; //groot totale
//ales in strings vir maklike veranderinge
sAdults := 'Koste vir ' + IntToStr(iAdults) + ' groot mense is R'
  + FloatToStrF(eKAdults,ffFixed,5,2);
sKids := 'Koste vir ' + IntToStr(iKids) + ' kinders is R'
  + FloatToStrF(eKKids,ffFixed,5,2);
sTotale := 'Koste vir almal is R'
  + FloatToStrF(eKTotale,ffFixed,5,2);
//vertoon ales
lblKAdults.caption := sAdults ;
lblKKids.caption := sKids ;
lblKTotale.caption := sTotale ;
end;

procedure TfrmConcert.FormActivate(Sender: TObject);
begin
edtKAdult.setfocus; //stel fokus op begin
end;

end.
