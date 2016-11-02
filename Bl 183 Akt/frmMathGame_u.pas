unit frmMathGame_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Spin;

type
  TfrmMathGame = class(TForm)
    btnAdd: TButton;
    btnMultiply: TButton;
    btnSubtract: TButton;
    sedVal1: TSpinEdit;
    sedVal2: TSpinEdit;
    procedure btnAddClick(Sender: TObject);
    procedure btnMultiplyClick(Sender: TObject);
    procedure btnSubtractClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmMathGame: TfrmMathGame;
  iVal1, iVal2 : integer ;
  iCorrect, iUserAns : integer ;
implementation

{$R *.dfm}

procedure GetValues;
begin
  iVal1 := frmMathGame.sedVal1.Value ;
  iVal2 := frmMathGame.sedVal2.Value ;
end;

procedure UserAns;
begin
  iUserAns := StrToInt(InputBox('Math Game', 'Enter the answer','0')) ;
end;

procedure TestAnswer;
begin
   if iUserAns = iCorrect then
      begin
      frmMathGame.Color := clGreen ;
         ShowMessage('Answer is correct') ;
      end
   else
      begin
        frmMathGame.Color := clRed ;
        ShowMessage('No - the answer is ' + IntToStr(iCorrect)) ;
      end ;
   frmMathGame.Color := clSilver ;
end;

procedure TfrmMathGame.btnAddClick(Sender: TObject);
begin
   //iVal1 := sedVal1.Value ;
   //iVal2 := sedVal2.Value ;
   GetValues;
   iCorrect := iVal1 + iVal2 ;
   UserAns;
   //iUserAns := StrToInt(InputBox('Math Game', 'Enter the answer','0')) ;
   TestAnswer ;
end;

procedure TfrmMathGame.btnMultiplyClick(Sender: TObject);
begin
   //iVal1 := sedVal1.Value ;
   //iVal2 := sedVal2.Value ;
   GetValues;
   iCorrect := iVal1 * iVal2 ;
   UserAns;
   //iUserAns := StrToInt(InputBox('Math Game', 'Enter the answer','0')) ;
   TestAnswer ;
end;

procedure TfrmMathGame.btnSubtractClick(Sender: TObject);
begin
   //iVal1 := sedVal1.Value ;
   //iVal2 := sedVal2.Value ;
   GetValues;
   iCorrect := iVal1 - iVal2 ;
   UserAns;
   //iUserAns := StrToInt(InputBox('Math Game', 'Enter the answer','0')) ;
   TestAnswer ;
end;

procedure TfrmMathGame.FormShow(Sender: TObject);
begin
   frmMathGame.Color := clSilver ;
end;

end.
