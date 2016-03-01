unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmVoorletter = class(TForm)
    edtNaamENVan: TEdit;
    btnBewerk: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    edtVanENVoorlett: TEdit;
    lblNaamENVan: TLabel;
    lblVanENVoorlett: TLabel;
    procedure btnBewerkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVoorletter: TfrmVoorletter;

implementation

{$R *.dfm}
//custom procedures
procedure Beginfrm;
begin
  frmVoorletter.edtNaamENVan.SetFocus;
end;

procedure Bewerking;
var
sToevoer, sVoorLett, sVan, sAfvoer : string;
iLente, iSpace, iCopy : integer;
begin
  sToevoer := frmVoorletter.edtNaamENVan.Text;
  sVoorLett := Copy(sToevoer,1,1);
  Uppercase(sVoorLett);
  iLente := length(sToevoer);
  iSpace := Pos(' ',sToevoer);
  iCopy := iLente - iSpace ;
  sVan := Copy(sToevoer,iSpace + 1,iCopy);
  sAfvoer := sVan + ' ' + sVoorLett + '.';

  frmVoorletter.edtVanENVoorlett.Text := sAfvoer;
end;

procedure BeginOor;
begin
// maak ales skoon vir volgende persoon
  frmVoorletter.edtNaamENVan.Clear;
  frmVoorletter.edtVanENVoorlett.Clear;
  frmVoorletter.edtNaamENVan.SetFocus;
end;
procedure TfrmVoorletter.btnBewerkClick(Sender: TObject);
begin
Bewerking;
end;

end.
