unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Math, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmWoordSpeeltjie = class(TForm)
    edtWoord: TEdit;
    btnBereken: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    lblVoorigeW: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnBerekenClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWoordSpeeltjie: TfrmWoordSpeeltjie;
  cVoorigeL : char;
implementation

{$R *.dfm}

//custom procedure
procedure Beginfrm;
var
iLetter : integer;
begin
  randomize;
  iLetter := 97 + random(25);// n random letter se ascii kode
  cVoorigeL := char(iLetter);//chr = char
  frmWoordSpeeltjie.lblVoorigeW.caption := cVoorigeL;
end;

procedure BerekenW;
var
sWoord : string;
iLength : integer;
cHuidigeL : char;
begin
  sWoord := frmWoordSpeeltjie.edtWoord.Text;
  iLength := length(sWoord);  //lente van die woord vir die laste letter
  cHuidigeL := sWoord[1];    // eerste letter
  // toets of hulle korrek is
  if cHuidigeL = cVoorigeL then
    begin
      frmWoordSpeeltjie.edtWoord.Clear;
      cVoorigeL := sWoord[iLength];
      frmWoordSpeeltjie.lblVoorigeW.caption := cVoorigeL ;
    end
  else
    begin
      showmessage('Jy het die nie die regte woord gebruik nie, probeer weer.');
    end;
  frmWoordSpeeltjie.edtWoord.setfocus;
end;

procedure Beginoor;
var
iLetter : integer;
begin
  iLetter := 97 + random(25);// n random letter se ascii kode
  cVoorigeL := char(iLetter);
  frmWoordSpeeltjie.lblVoorigeW.caption := cVoorigeL;
end;

procedure TfrmWoordSpeeltjie.bmbRetryClick(Sender: TObject);
begin
  Beginoor;
end;

procedure TfrmWoordSpeeltjie.btnBerekenClick(Sender: TObject);
begin
  BerekenW;
end;

procedure TfrmWoordSpeeltjie.FormActivate(Sender: TObject);
begin
  Beginfrm;
end;

end.
