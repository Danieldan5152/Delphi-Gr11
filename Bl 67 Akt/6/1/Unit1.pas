unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TfrmKosteSMS = class(TForm)
    edtSMSString: TEdit;
    lblSMSString: TLabel;
    edtAfvoerK: TEdit;
    btnBewerk: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    procedure btnBewerkClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
    procedure z(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKosteSMS: TfrmKosteSMS;

implementation

{$R *.dfm}

procedure TfrmKosteSMS.bmbRetryClick(Sender: TObject);
begin    // maak ales skoon
edtSMSString.Clear;
edtAfvoerK.Clear;
// stel focus
edtSMSString.SetFocus;
end;

procedure TfrmKosteSMS.btnBewerkClick(Sender: TObject);
var
sSMSString, sAfvoerK : string;
iSL, iKoste, i1Char : integer;
eKoste : extended;
begin
 i1Char := 2; //hoeveel een karakter kos
 sSMSString := edtSMSString.Text; //watse string se koster uit tewerk
 iSL := Length(sSMSString);// verwerking van lente van string
 iKoste := iSL * i1Char; // verwerking van koste in sent
 eKoste := iKoste / 100 ;
 sAfvoerK := 'Dit kos R' + FloatToStrF(eKoste,ffFixed,5,2) + ' vir n ' +
   IntToStr(iSL) + ' karakter lente sms.'; //string om te vertoon
edtAfvoerK.Text := sAfvoerK;  //vertoon
end;

procedure TfrmKosteSMS.z(Sender: TObject);
begin  // stel focus
edtSMSString.SetFocus;
end;

end.
