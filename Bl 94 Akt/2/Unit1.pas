unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Samples.Spin;

type
  TfrmKooldrank = class(TForm)
    edtMachNo: TEdit;
    sedUre: TSpinEdit;
    btnMach: TButton;
    btnVertoon: TButton;
    redAfvoer: TRichEdit;
    lblMachNo: TLabel;
    lblUre: TLabel;
    lblMachTot: TLabel;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    procedure btnMachClick(Sender: TObject);
    procedure btnVertoonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKooldrank: TfrmKooldrank;
  iTotLiter : integer;
  eVerKostePL, eKostePL, eKostePLN, eWinsPL, eWinsPLN : extended;

implementation

{$R *.dfm}

//custom procedures
procedure Beginfrm;
begin
  eKostePL := 2.00;//koste per liter koeldrank
  eKostePLN := 1.80;//koste per liter met die nuwe machine
  eVerKostePL := 4.50;//verkoop prys per liter
  eWinsPL := eVerKostePL - eKostePL; //wins per liter
  eWinsPLN := eVerKostePL - eKostePLN;
  frmKooldrank.sedUre.Clear;
  frmKooldrank.edtMachNo.SetFocus;
end;

procedure BerekenMach;
var
cMach : char;
sMach : string;
iLiter, iUre, iMachLiter : integer;
begin
  iUre := frmKooldrank.sedUre.Value;
  cMach := frmKooldrank.edtMachNo.Text[1];//net een letter en dit moet die eerste ene wees
  ///////// kies hoeveel liter
  case cMach of
    'A' : iLiter := 100;
    'B' : iLiter := 150;
    'C' : iLiter := 180;
    'a' : iLiter := 100;
    'b' : iLiter := 150;
    'c' : iLiter := 180;
  else
    begin
    showmessage('Die machine letter is verkeert');//else doen dit
    end
  end;
  //////
  iMachLiter := iUre*iLiter;
  sMach := 'Machine ' + cMach + ' sal ' + IntToStr(iMachLiter) + ' Liter vervaardig.';
  frmKooldrank.lblMachTot.caption := sMach;
  iTotLiter := iTotliter + iMachLiter;// totaal liters verkoop
  // maak skoon vir volgende sleuteling
  frmKooldrank.edtMachNo.Clear;
  frmKooldrank.sedUre.Clear;
  frmKooldrank.edtMachNo.SetFocus;
end;

procedure Vertoon;
var
sTotalL, sTotalK, sTotalW, sTotalWN : string;
eTotKoste, eTotWins, eTotWinsN : extended;
begin
 sTotalL := 'Die totale liters koeldrank: ' + IntToStr(iTotLiter);
 eTotKoste := iTotLiter * eKostePL;// totale koste
 eTotWins := iTotLiter * eWinsPL;//totale wins
 eTotWinsN := iTotLiter * eWinsPLN;//totale wins met nuwe machine
 sTotalK := 'Die koste sal R' + FloatToStrF(eTotKoste,ffFixed,5,2) + ' wees.';
 sTotalW := 'Die wins sal R' + FloatToStrF(eTotWins,ffFixed,5,2) + ' wees.';
 sTotalWN := 'Die wins met nuwe machine sou R'
       + FloatToStrF(eTotWinsN,ffFixed,5,2) + ' wees.';
  //vertoon alle lyne
  frmKooldrank.redAfvoer.Lines.Add(' ');
  frmKooldrank.redAfvoer.Lines.Add(sTotalL);
  frmKooldrank.redAfvoer.Lines.Add(sTotalK);
  frmKooldrank.redAfvoer.Lines.Add(sTotalW);
  frmKooldrank.redAfvoer.Lines.Add(sTotalWN);
  frmKooldrank.redAfvoer.Lines.Add(' ');
  //maak ales skoon
  iTotLiter := 0;
  frmKooldrank.edtMachNo.SetFocus;
end;

procedure Beginoor;
begin
  frmKooldrank.edtMachNo.Clear;
  frmKooldrank.sedUre.Clear;
  frmKooldrank.redAfvoer.Clear;
  iTotLiter := 0;
  frmKooldrank.edtMachNo.SetFocus;
end;

procedure TfrmKooldrank.bmbRetryClick(Sender: TObject);
begin
  Beginoor;
end;

procedure TfrmKooldrank.btnMachClick(Sender: TObject);
begin
  BerekenMach;
end;

procedure TfrmKooldrank.btnVertoonClick(Sender: TObject);
begin
  Vertoon;
end;

procedure TfrmKooldrank.FormActivate(Sender: TObject);
begin
  Beginfrm;
end;

end.
