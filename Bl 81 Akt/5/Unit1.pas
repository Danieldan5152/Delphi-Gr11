unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, Math;

type
  TfrmStemme = class(TForm)
    sedGr11L: TSpinEdit;
    sedGr12L: TSpinEdit;
    sedGr11Stem: TSpinEdit;
    sedGr12Stem: TSpinEdit;
    btnBewerk: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    edtAfvoer: TEdit;
    lblGr11L: TLabel;
    lblGr12L: TLabel;
    lblGr11Stem: TLabel;
    lblGr12Stem: TLabel;
    procedure btnBewerkClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStemme: TfrmStemme;

implementation

{$R *.dfm}
// custom procedures
procedure Beginfrm;
begin //frm activation
  frmStemme.sedGr11L.SetFocus;
end;

procedure Verwerking;
var
sAfvoer : string;
iGr11L, iGr12L, iGr11Stem, iGr12Stem,
iTotaleL, iTotaleStem, iPStem : integer;
begin
// kry toevoer
  iGr11L := frmStemme.sedGr11L.Value;
  iGr12L := frmStemme.sedGr12L.Value;
  iGr11Stem := frmStemme.sedGr11Stem.Value;
  iGr12Stem := frmStemme.sedGr12Stem.Value;

//tel ales op
  iTotaleL := iGr11L + iGr12L;
  iTotaleStem := iGr11Stem + iGr12Stem;
  iPStem := Floor((iTotaleStem)/(iTotaleL)*100);

// besluit neeming van moontelikhede
  if iPStem >= 60 then
        sAfvoer := 'Defeentiewe kans om n SCR leerder te word.';
  if (iPStem > 47) and (iPStem < 60) then
        sAfvoer := 'Goeie kans om n SCR leerder te word.';
  if (iPStem >= 40) and (iPStem <=47) then
        sAfvoer := 'Moontelike kans om n SCR leerder te word.';
  if iPStem < 40 then
        sAfvoer := 'Heel waarskynlik nie n SCR leerder word.';

 frmStemme.edtAfvoer.Text := sAfvoer; //vertoon afvoer
end;

procedure Beginoor;
begin //maak ales skoon vir volgende leerder
  frmStemme.sedGr11L.Clear;
  frmStemme.sedGr12L.Clear;
  frmStemme.sedGr11Stem.Clear;
  frmStemme.sedGr12Stem.Clear;
  frmStemme.edtAfvoer.Clear;
end;

procedure TfrmStemme.bmbRetryClick(Sender: TObject);
begin
 Beginoor;
end;

procedure TfrmStemme.btnBewerkClick(Sender: TObject);
begin
  Verwerking;
end;

procedure TfrmStemme.FormActivate(Sender: TObject);
begin
  Beginfrm;
end;

end.
