unit frmletter_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Math, Buttons;

type
  TfrmLetter = class(TForm)
    btnSelect: TButton;
    lblLetter: TLabel;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    procedure btnSelectClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLetter: TfrmLetter;


implementation

{$R *.dfm}


procedure TfrmLetter.bmbRetryClick(Sender: TObject);
begin
  lblLetter.Caption := ' ';
end;

procedure TfrmLetter.btnSelectClick(Sender: TObject);
var
  iLet : integer;
  sLet : string;
begin
  Randomize;
  iLet := Random(26) + 65;
  sLet := Char(iLet);
  lblLetter.Caption := sLet;

end;

end.
