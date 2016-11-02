unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPswrdCrck = class(TForm)
    edtPassword: TEdit;
    btnCrack: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    edtC1: TEdit;
    edtC2: TEdit;
    edtC3: TEdit;
    edtC4: TEdit;
    lblPassword: TLabel;
    lblResult: TLabel;
    procedure btnCrackClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPswrdCrck: TfrmPswrdCrck;

implementation

{$R *.dfm}

{Custom procedures}
procedure Beginfrm;
begin
  Randomize;
end;

procedure Crack;
var
  cC1, cC2, cC3, cC4, cP1,
    cP2, cP3, cP4         : char;
  sPassword, sResult      : string;
  iC1, iC2, iC3, iC4      : integer;
  bPassword               : boolean;
begin
  bPassword := false; //password unsolved
  sPassword := frmPswrdCrck.edtPassword.Text; //password in string

  cP1 := sPassword[1]; //char 1 of password
  cP2 := sPassword[2]; //char 2 of password
  cP3 := sPassword[3]; //char 3 of password
  cP4 := sPassword[4]; //char 4 of password

  iC1 := 97;
  iC2 := 97;
  iC3 := 97;
  iC4 := 97;

  repeat
    inc(iC1);
    cC1 := char(iC1);
    frmPswrdCrck.edtC1.Text := cC1;
  until (cC1 = cP1);

  repeat
    inc(iC2);
    cC2 := char(iC2);
    frmPswrdCrck.edtC2.Text := cC2;
  until (cC2 = cP2);

  repeat
    inc(iC3);
    cC3 := char(iC3);
    frmPswrdCrck.edtC3.Text := cC3;
  until (cC3 = cP3);

  repeat
    inc(iC4);
    cC4 := char(iC4);
    frmPswrdCrck.edtC4.Text := cC4;
  until (cC4 = cP4);
  {
    iC1 := random(26) + 97; //password guessing char 1
    iC2 := random(26) + 97; //password guessing char 2
    iC3 := random(26) + 97; //password guessing char 3
    iC4 := random(26) + 97; //password guessing char 4

    cC1 := char(iC1); //password guested char 1
    cC2 := char(iC2); //password guested char 2
    cC3 := char(iC3); //password guested char 3
    cC4 := char(iC4); //password guested char 4

    frmPswrdCrck.edtC1.Text := cC1; //show our result for that char
    frmPswrdCrck.edtC2.Text := cC2; //show our result for that char
    frmPswrdCrck.edtC3.Text := cC3; //show our result for that char
    frmPswrdCrck.edtC4.Text := cC4; //show our result for that char
  }

  if (cC1 = cP1) and (cC2 = cP2) and (cC3 = cP3) and (cC4 = cP4) then
    bPassword := true;

  if bPassword = True then
    sResult := 'This is your password'
    else
    sResult := ' We do not have it yet';

  frmPswrdCrck.lblResult.Caption := sResult;
end;

procedure Restart;
begin

end;
{/Custom procedures}
procedure TfrmPswrdCrck.bmbRetryClick(Sender: TObject);
begin
  Restart;
end;

procedure TfrmPswrdCrck.btnCrackClick(Sender: TObject);
begin
  Crack;
end;

end.
