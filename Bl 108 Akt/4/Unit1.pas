unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPasswordTester = class(TForm)
    edtPassword: TEdit;
    btnTest: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    lblPassword: TLabel;
    lblConclusion: TLabel;
    procedure btnTestClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPasswordTester: TfrmPasswordTester;

implementation

{$R *.dfm}

//custom procedures
procedure Test;
var
  sPassword : string;
  bValid : boolean; //has a simple true or false
  K, iSpecialC, iDights, iSLength : integer;
begin
  K := 0; //changeable var that needs to be set otherwise will cause errors
  sPassword := frmPasswordTester.edtPassword.Text; //pass to str
  bValid := false; //if requirements are met
  iSpecialC := 0; //speical chars in string
  iDights := 0; //dights in string
  iSLength := length(sPassword);
  while (K < iSLength)  do //do for how long password is
    begin
      if (sPassword[K] in ['?' , '*', '%', '#']) then //special chars in password
        inc(iSpecialC)
      else
        if (sPassword[K] in ['0'..'9']) then //dights in the password
          inc(iDights);
      if (iSpecialC >= 3) and (iDights >= 3) and (iSLength >= 10) then //meets all the requirements
        bValid := true;
      inc(K); //make K more
    end;{while}
  if bValid = true then //show wether the password meets requirements or not
    frmPasswordTester.lblConclusion.Caption := 'Valid'
  else
    frmPasswordTester.lblConclusion.Caption := 'Invalid';
end;

procedure Startover;
begin //clear everything
  frmPasswordTester.edtPassword.Clear;
  frmPasswordTester.lblConclusion.Caption := ' ';
  frmPasswordTester.edtPassword.SetFocus;
end;

//////////////
procedure TfrmPasswordTester.bmbRetryClick(Sender: TObject);
begin
  Startover;
end;

procedure TfrmPasswordTester.btnTestClick(Sender: TObject);
begin
  Test;
end;

end.
