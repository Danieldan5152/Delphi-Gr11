unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TfrmPass = class(TForm)
    edtToevoer: TEdit;
    edtVoorLetters: TEdit;
    edtPass: TEdit;
    lblToevoer: TLabel;
    lblVoorLetters: TLabel;
    lblPas: TLabel;
    btnBewerk: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnBewerkClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPass: TfrmPass;

implementation

{$R *.dfm}
// custom procedures
procedure Beginfrm;
begin
  Randomize;//Begin Randomize porgram
  frmPass.edtToevoer.SetFocus;
end;

procedure Bewerking;
var
sToevoer, sVoorLett, sCode : string;
iSpace, iToeLente, iCode1, iCode2 , iCode3 : integer;
begin
  sToevoer := Uppercase(frmPass.edtToevoer.Text); // maak ales hoofletters
  iSpace := Pos(' ', sToevoer);//kry die spasie se possiesie
  sVoorLett := Copy(sToevoer,1,1) + '. ' + Copy(sToevoer, iSpace + 1,1) + '. ';
  Delete(sToevoer,iSpace,1); // Haal die spasie uit Naam en van
  iToeLente := Length(sToevoer); //lente van Naam en van
  iCode1 := Random(iToeLente) +1; //Pass Char 1
  iCode2 := Random(iToeLente) +1; //Pass Char 2
  iCode3 := Random(iToeLente) +1; //Pass Char 3
  sCode := Copy(sToevoer,iCode1,1) + Copy(sToevoer,iCode2,1) +
    Copy(sToevoer,iCode3,1);

  frmPass.edtVoorLetters.text := sVoorLett;
  frmPass.edtPass.Text := sCode
end;

procedure BeginOor;
begin
  frmPass.edtToevoer.Clear;
  frmPass.edtVoorLetters.Clear;
  frmPass.edtPass.Clear;
  frmPass.edtToevoer.SetFocus;
end;

procedure TfrmPass.bmbRetryClick(Sender: TObject);
begin
  BeginOor;
end;

procedure TfrmPass.btnBewerkClick(Sender: TObject);
begin
  Bewerking;
end;

procedure TfrmPass.FormActivate(Sender: TObject);
begin
  Beginfrm;
end;

end.
