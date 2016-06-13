unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1frmString = class(TForm)
    btnTest: TButton;
    edtSms: TEdit;
    edtInput: TEdit;
    procedure btnTestClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1frmString: TForm1frmString;

implementation

{$R *.dfm}

procedure TForm1frmString.btnTestClick(Sender: TObject);
var
  K                 : integer;
  sSentence, sNewS  : string;
begin
  sSentence := edtInput.Text;
  sNewS := '';
  for K := 1 to Length(sSentence) do
    if NOT(Upcase(sSentence[K]) IN ['A','E','I','O','U'])//if the sentence letter isn't one of these
      then sNewS := sNewS + sSentence[K];
  edtSMS.Text := sNewS;

end;

end.
