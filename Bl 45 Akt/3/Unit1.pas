unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, Buttons, ExtCtrls, Spin;

type
  TfrmTaxiBestuurder = class(TForm)
    edtNaam: TEdit;
    sedPassesiers: TSpinEdit;
    edtKostePRit: TEdit;
    sedWPMaand: TSpinEdit;
    lblNaam: TLabel;
    lblPassesiers: TLabel;
    lblKostePRit: TLabel;
    lblDPMaand: TLabel;
    lblPDag: TLabel;
    lblPMaand: TLabel;
    btnBewerk: TButton;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    procedure btnBewerkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTaxiBestuurder: TfrmTaxiBestuurder;

implementation

{$R *.dfm}

procedure TfrmTaxiBestuurder.bmbResetClick(Sender: TObject);
var
sNiks : string;
begin
//maak ales skoon
sNiks := ' ';
edtNaam.Clear;
sedPassesiers.Clear;
edtKostePRit.Clear;
sedWPMaand.Clear;
lblPDag.Caption := sNiks;
lblPMaand.Caption := sNiks;
//stel focus
edtNaam.SetFocus;
end;

procedure TfrmTaxiBestuurder.btnBewerkClick(Sender: TObject);
var
iPass, iDPMaand : integer;
sNaam, sPDag, sPMaand : string;
eKPRit, ePDag, ePMaand : extended;
begin
sNaam := edtNaam.text; // naam
iPass := sedPassesiers.value; // passesiers per dag
eKPRit := StrToFloat(edtKostePRit.text); //koste per rit
iDPMaand := sedWPMaand.value; // dae werk per maand
//berekeninge
ePDag := eKPRit * iPass; // daaglikse geld
ePMaand := ePDag * iDPMaand ; // maandlikse inkomste
//strings
sPDag := sNaam + ' sal daagliks R' + FloatToStrF(ePDag,ffFixed,5,2)
  + ' verdien';  //daaglikse inkm
sPMaand := sNaam + ' sal R' + FloatToStrF(ePMaand,ffFixed,5,2)
  + ' vir ' + IntToStr(iDPMaand) + ' dae per maand verdien.'; //maandlikse inkm
// vertoonings
lblPDag.Caption := sPDag;
lblPMaand.Caption := sPMaand;
end;

procedure TfrmTaxiBestuurder.FormActivate(Sender: TObject);
begin
edtNaam.SetFocus;   //stel focus
end;

end.
