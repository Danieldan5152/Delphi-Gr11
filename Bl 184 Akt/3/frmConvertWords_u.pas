unit frmConvertWords_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TfrmConvertNumbers = class(TForm)
    edtWord: TEdit;
    lblMsg: TLabel;
    btnConvert: TButton;
    pnlDisplay: TPanel;
    edtPrefix: TEdit;
    lblMsgPre: TLabel;
    procedure btnConvertClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmConvertNumbers: TfrmConvertNumbers;
  iWordLength, iLet : integer;
  b : boolean;
  sWord, sNumber : string;
  cLetter : char;
implementation

{$R *.dfm}
// custom procedures
procedure GetValidWord;
var
  K : integer;
begin
  sWord := frmConvertNumbers.edtWord.text;
  iWordLength := Length(sWord);
  for K := 1 to iWordLength do
    begin
      cLetter := sWord[K];
      //showmessage(cLetter + ' sda');
      if cLetter in ['a'..'z','A'..'Z',' '] then
        begin
          iLet := iLet + 1;
          sNumber := sNumber + ' ';
          //showmessage('is letter');
        end;
    end;
  if iLet = iWordLength then
    b := true
    else
    b := false;
  iLet := 0;
end;

procedure ConvertToNumber;
var
  K : integer;
begin
  for K := 1 to iWordLength do
  begin
    cLetter := sWord[K];
    if cLetter in ['A'..'C', 'a'..'c'] then
      sNumber[K] := '2';
    if cLetter in ['D'..'F', 'd'..'f'] then
      sNumber[K] := '3';
    if cLetter in ['G'..'I', 'g'..'i'] then
      sNumber[K] := '4';
    if cLetter in ['J'..'L', 'j'..'l'] then
      sNumber[K] := '5';
    if cLetter in ['M'..'O', 'm'..'o'] then
      sNumber[K] := '6';
    if cLetter in ['P'..'S', 'p'..'s'] then
      sNumber[K] := '7';
    if cLetter in ['T'..'V', 't'..'v'] then
      sNumber[K] := '8';
    if cLetter in ['W'..'Z', 'w'..'z'] then
      sNumber[K] := '9';
    if cLetter in [' '] then
      sNumber[K] := '0';
  end;

end;

procedure DisplayNumber;
begin
  showmessage('08' + sNumber);

end;

procedure TfrmConvertNumbers.btnConvertClick(Sender: TObject);
begin
  sNumber := '';
  GetValidWord;
  if b = true then
    begin
      ConvertToNumber;
      DisplayNumber;
    end
    else
    Showmessage('Please only type in uppercase/lowercase letters')

end;

end.
