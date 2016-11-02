unit frmGymCalc_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Math, Buttons;

type
  TfrmGymCalc = class(TForm)
    rgpIntensity: TRadioGroup;
    btnTimes: TButton;
    redOut: TRichEdit;
    lblMsg: TLabel;
    lblIntensity: TLabel;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    procedure btnTimesClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    arrTreadmill : array[1..7] of real;
  public
    { Public declarations }
  end;

var
  frmGymCalc: TfrmGymCalc;
  eTotalCal : extended;


implementation

{$R *.dfm}

procedure TfrmGymCalc.bmbRetryClick(Sender: TObject);
begin//retry ales
  rgpIntensity.ItemIndex := 0;
  redOut.Clear;
  btnTimes.SetFocus;
end;

procedure TfrmGymCalc.btnTimesClick(Sender: TObject);
var
  K, iIntensity :integer;
  eRate : extended;
  sMessage, sIntensity, sAdd : string;
begin
  iIntensity := rgpIntensity.ItemIndex;
  case iIntensity of//what intensity 
    0 : sIntensity := 'At LOW intensity';
    1 : sIntensity := 'At MEDIUM intensity';
    2 : sIntensity := 'At HIGH intensity';
  end;
  case iIntensity of //what intensity will be calc
    0 : eRate := 20;
    1 : eRate := 28.3333;
    2 : eRate := 33.3333;
  end;
  for K := 1 to 7 do//split to do everything one shot
    Begin
      sMessage := 'Enter the minutes spent on day ' + IntToStr(K) ;
      arrTreadmill[K] := eRate * (StrToInt(InputBox('Time Spent on treadmil', sMessage, ' ')));//cals burnt
      eTotalCal := eTotalCal + arrTreadmill[K];//total cals week
    End;
  redOut.Lines.Add(sIntensity);
  redOut.Lines.Add(' ');//space
  for K := 1 to 7 do
    begin
      sAdd := 'Day ' + IntToStr(K) + ': ' + FloatToStrF(arrTreadmill[K], ffFixed, 5, 2);
      redOut.Lines.Add(sAdd);
    end;
  redOut.Lines.Add(' ');
  redOut.Lines.Add('TOTAL: ' + FloatToStrF(eTotalCal, ffFixed, 5, 2));
end;

end.
