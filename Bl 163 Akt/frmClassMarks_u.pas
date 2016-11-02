unit frmClassMarks_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TfrmClassMarks = class(TForm)
    btnEnter: TButton;
    bmbClose: TBitBtn;
    redOut: TRichEdit;
    procedure btnEnterClick(Sender: TObject);
  private
    arrMarks : Array [1..5] of Integer;
    iCount : Integer;

  public
    { Public declarations }
  end;

var
  frmClassMarks: TfrmClassMarks;

implementation

{$R *.dfm}

procedure TfrmClassMarks.btnEnterClick(Sender: TObject);
var
  iNum, iCount : Integer;
begin
  iNum := StrToInt(InputBox('Enter number of marks','Number:',''));
  For iCount := 1 to iNum do
     arrMarks[iCount] := StrToInt(InputBox('Mark for learner '+IntToStr(iNum),'Mark:',''));

  redOut.Lines.Add('Marks entered:');
  For iCount := 1 to iNum do
    redOut.Lines.Add(IntToStr(arrMarks[iCount]));
end;

end.
