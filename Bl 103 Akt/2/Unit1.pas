unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TfrmPswrd = class(TForm)
    edtPswrd: TEdit;
    btnGenerate: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    procedure btnGenerateClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPswrd: TfrmPswrd;

implementation

{$R *.dfm}

//custom procedures
procedure Beginfrm;
begin
  Randomize;
  frmPswrd.edtPswrd.SetFocus;
end;

procedure Generate;
var
  iP1, iP2, iP3, iP4, iP5, iP6 : integer;
  sPswrd : string;
begin
//// all char of passwor
  iP1 := random(26)+65;
  iP2 := random(9);
  iP3 := random(26)+65;
  iP4 := random(9);
  iP5 := random(26)+65;
  iP6 := random(9);
/////
  sPswrd := char(iP1) + IntToStr(iP2) + char(iP3) + IntToStr(iP4) + char(iP5)
    + IntToStr(iP6);// puts all in one char
  frmPswrd.edtPswrd.Text := sPswrd;// vertoon
end;

procedure Beginoor;
begin
  frmPswrd.edtPswrd.Clear;
  frmPswrd.edtPswrd.SetFocus;
end;

procedure TfrmPswrd.bmbRetryClick(Sender: TObject);
begin
  Beginoor;
end;

procedure TfrmPswrd.btnGenerateClick(Sender: TObject);
begin
  Generate;
end;

procedure TfrmPswrd.FormActivate(Sender: TObject);
begin
  Beginfrm;
end;

end.
