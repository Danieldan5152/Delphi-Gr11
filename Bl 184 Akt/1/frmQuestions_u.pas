unit frmQuestions_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmQuestions = class(TForm)
    pnlDisplay: TPanel;
    btnSubmit: TButton;
    lblQuestion1: TLabel;
    edtAnswer1: TEdit;
    lblMsg: TLabel;
    btnQuestio1: TButton;
    pnlResult: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure btnQuestio1Click(Sender: TObject);
    procedure btnSubmitClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmQuestions: TfrmQuestions;
  iQst : integer;
  sAnswer : string;
  arrQuestions: array[1..5] of string;
  arrAnswers: array[1..5] of string;
implementation

{$R *.dfm}
procedure AnsCorrect;
begin
  //showmessage('yes');
  Windows.Beep(300,150);
end;

procedure AnsIncorrect;
begin
  //showmessage('no');
  Windows.Beep(450,900);
end;

procedure TfrmQuestions.btnQuestio1Click(Sender: TObject);
begin
  randomize;
  iQst := random(5) + 1 ;
  lblQuestion1.Caption := arrQuestions[iQst];
end;

procedure TfrmQuestions.btnSubmitClick(Sender: TObject);
begin
  sAnswer := edtAnswer1.text;
  if sAnswer = arrAnswers[iQst] then
    AnsCorrect
    else
    AnsIncorrect;

end;

procedure TfrmQuestions.FormActivate(Sender: TObject);
begin
  arrQuestions[1] := '1';
  arrQuestions[2] := '2';
  arrQuestions[3] := '3';
  arrQuestions[4] := '4';
  arrQuestions[5] := '5';

  arrAnswers[1] := '6';
  arrAnswers[2] := '7';
  arrAnswers[3] := '8';
  arrAnswers[4] := '9';
  arrAnswers[5] := '10';

end;

end.
