unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, Math;

type
  TfrmInterest = class(TForm)
    edtCost: TEdit;
    edtMonthlyP: TEdit;
    edtInterestR: TEdit;
    btnCalculate: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    redMonthsToPay: TRichEdit;
    lblCost: TLabel;
    lblMonthlyP: TLabel;
    lblInterestR: TLabel;
    lblMonthsToPay: TLabel;
    procedure btnCalculateClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInterest: TfrmInterest;

implementation

{$R *.dfm}

//custom procedures
procedure Beginfrm;
begin
  frmInterest.edtCost.SetFocus;
end;

procedure Calculate;
var
  iMonth : integer;
  eBeginC, eMonthlyP, eInterestR, eOutstandingP, eInterest : extended;
  sEOMonth, sTMonths : string;
begin
  iMonth := 0; //make it s=zero to avoid errors later
  eBeginC := StrToFloat(frmInterest.edtCost.Text); //Initial Cost
  eMonthlyP := StrToFloat(frmInterest.edtMonthlyP.Text); //monthly payment
  eInterestR := StrToFloat(frmInterest.edtInterestR.text)/100; //the interest rate divided by 100 to make things easier
  eOutstandingP := eBeginC; //sets the outstanding payment the same as the start cost

  while eOutstandingP > (eBeginC / 2) do // outstandingP bigger then half of cost
    begin
      inc(iMonth);
      eInterest := eOutstandingP * eInterestR;
      eOutstandingP := eOutstandingP + eInterest - eMonthlyP;
      sEOMonth := 'End of Month ' + IntToStr(iMonth) + ' Balance = R' +
        FloatToStrF(eOutstandingP,ffFixed,7,2); //how much is still owed at the end of the month
      frmInterest.redMonthsToPay.Lines.Add(sEOMonth);
    end;{While}
  frmInterest.redMonthsToPay.Lines.Add(' '); // space after end
  frmInterest.redMonthsToPay.Lines.Add('Number of Months = ' + IntToStr(iMonth)); //number of months it'll take
end;{Calculate}

procedure Restart;
begin
  frmInterest.edtCost.Clear;
  frmInterest.edtMonthlyP.Clear;
  frmInterest.edtInterestR.Clear;
  frmInterest.redMonthsToPay.Clear;
  frmInterest.edtCost.SetFocus;
end;

///////////////
procedure TfrmInterest.bmbRetryClick(Sender: TObject);
begin
  Restart;
end;

procedure TfrmInterest.btnCalculateClick(Sender: TObject);
begin
  Calculate;
end;

procedure TfrmInterest.FormActivate(Sender: TObject);
begin
  Beginfrm;
end;

end.
