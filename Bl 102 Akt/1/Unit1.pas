unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmSMS_K = class(TForm)
    edtToevoer: TEdit;
    btnBewerk: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    lblAfvoer: TLabel;
    procedure btnBewerkClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSMS_K: TfrmSMS_K;
  eKoste : extended;
implementation

{$R *.dfm}

//custom procedures
procedure Beginfrm;
begin
  eKoste := 0.02;
end;

procedure Bereken;
var
sSMS, sAfvoer : string;
iLente, iKeer, iDoen : integer;
eSKoste : extended;
begin
  sSMS := frmSMS_K.edtToevoer.Text; //sms se string\
  iLente := Length(sSMS);//lente van die sms
  iKeer := 0; //letters in die sin
  for iDoen := 1 to iLente do
    Begin
      if sSMS[iDoen] <> ' ' then
        iKeer := iKeer + 1;
    End;
  eSKoste := iKeer * eKoste;
  sAfvoer := 'Die koste van die SMS is : R' + FloatToStrF(eSKoste,ffFixed,5,2);
  frmSMS_K.lblAfvoer.Caption := sAfvoer;
end;

procedure Beginoor;
begin
  frmSMS_K.lblAfvoer.Caption := ' ';
  frmSMS_K.edtToevoer.clear;
  frmSMS_K.edtToevoer.SetFocus;
end;

procedure TfrmSMS_K.bmbRetryClick(Sender: TObject);
begin
  BeginOor;
end;

procedure TfrmSMS_K.btnBewerkClick(Sender: TObject);
begin
  Bereken;
end;

procedure TfrmSMS_K.FormActivate(Sender: TObject);
begin
  Beginfrm;
end;

end.
