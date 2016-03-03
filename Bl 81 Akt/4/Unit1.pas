unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Math, Vcl.Buttons;

type
  TfrmAtletiek = class(TForm)
    btnBeginSleutel: TButton;
    redAfvoer: TRichEdit;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    procedure btnBeginSleutelClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtletiek: TfrmAtletiek;

implementation

{$R *.dfm}
//custom procedures
procedure Beginfrm;
begin
  frmAtletiek.btnBeginSleutel.SetFocus;
end;

procedure Bereken;
var
iNull, iTyd1, iTyd2, iTyd3, iTotaleTyd, iQT  : integer;
sTotaleTyd, sToekenning : string;
begin
//kry tye
  iTyd1 := StrToInt(InputBox('Sleutel leerders tyd in Minute','Swem',''));
  frmAtletiek.redAfvoer.Lines.Add('Swem = ' + IntToStr(iTyd1));

  iTyd2 := StrToInt(InputBox('Sleutel leerders tyd in Minute','FietsRy',''));
  frmAtletiek.redAfvoer.Lines.Add('FietsRy = ' + IntToStr(iTyd2));

  iTyd3 := StrToInt(InputBox('Sleutel leerders tyd in Minute','Hardloop',''));
  frmAtletiek.redAfvoer.Lines.Add('Hardloop = ' + IntToStr(iTyd1));

  iQT := StrToInt(InputBox('Sleutel in Kwalifiseerings Tyd','QT',''));
  frmAtletiek.redAfvoer.Lines.Add('QT = ' + IntToStr(iQT));

  iTotaleTyd := iTyd1 + iTyd2 + iTyd3;
  sTotaleTyd := 'Totale tyd :' + IntToStr(iTotaleTyd);
//QT besluitneeming
  if iTotaleTyd < iQT then
    sToekenning := 'Provincial Colours';
  if (iTotaleTyd >= iQT) and (iTotaleTyd <= iQT + 5)then
    sToekenning := 'Provincial Half-colours';
  if (iTotaleTyd > iQT + 5) and (iTotaleTyd <= iQT + 10)then
    sToekenning := 'Provincial Scroll';
  if (iTotaleTyd > iQT + 10)then
    sToekenning := 'Participation Certficate';

//Vertooning
  frmAtletiek.redAfvoer.Lines.Add(sTotaleTyd);
  frmAtletiek.redAfvoer.Lines.Add(sToekenning);

// maak ales skoon
   iNull := 0;
   iTyd1 := iNull;
   iTyd2 := iNull;
   iTyd3 := iNull;
   iQT := iNull;
   iTotaleTyd := iNull;
end;

procedure Beginoor;
begin
  frmAtletiek.redAfvoer.Clear;
end;


procedure TfrmAtletiek.bmbRetryClick(Sender: TObject);
begin
  Beginoor;
end;

procedure TfrmAtletiek.btnBeginSleutelClick(Sender: TObject);
begin
  Bereken;
end;

procedure TfrmAtletiek.FormActivate(Sender: TObject);
begin
  Beginfrm;
end;

end.
