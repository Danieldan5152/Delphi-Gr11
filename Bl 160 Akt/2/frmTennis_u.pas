unit frmTennis_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Spin, Buttons;

type
  TfrmTennis = class(TForm)
    sedSelect: TSpinEdit;
    btnDisplay: TButton;
    redA: TRichEdit;
    redB: TRichEdit;
    lblName: TLabel;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    procedure btnDisplayClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  frmTennis: TfrmTennis;
  arrNames : array[1..8] of string;
implementation

{$R *.dfm}
procedure Odds;//odd Numbers
begin
  frmTennis.redA.Lines.Add(arrNames[1]);
  frmTennis.redB.Lines.Add(arrNames[2]);
  frmTennis.redA.Lines.Add(arrNames[3]);
  frmTennis.redB.Lines.Add(arrNames[4]);
  frmTennis.redA.Lines.Add(arrNames[5]);
  frmTennis.redB.Lines.Add(arrNames[6]);
  frmTennis.redA.Lines.Add(arrNames[7]);
  frmTennis.redB.Lines.Add(arrNames[8]);
end;

procedure Evens;//even numbers
begin
  frmTennis.redA.Lines.Add(arrNames[2]);
  frmTennis.redB.Lines.Add(arrNames[1]);
  frmTennis.redA.Lines.Add(arrNames[4]);
  frmTennis.redB.Lines.Add(arrNames[3]);
  frmTennis.redA.Lines.Add(arrNames[6]);
  frmTennis.redB.Lines.Add(arrNames[5]);
  frmTennis.redA.Lines.Add(arrNames[8]);
  frmTennis.redB.Lines.Add(arrNames[7]);
end;

procedure TfrmTennis.bmbRetryClick(Sender: TObject);
begin
  redA.Clear;
  redB.clear;
  sedSelect.Value := 1 ;
  btnDisplay.SetFocus;
  redA.Lines.Add('Team A');
  redB.Lines.Add('Team B');
end;

procedure TfrmTennis.btnDisplayClick(Sender: TObject);
var
  iNum, K: integer;
begin
  iNum := sedSelect.Value;
  for K := 1 to 8 do
    begin
      arrNames[K] := InputBox('Fun day', 'Enter player names', '');
    end;
  case iNum of
    1,3,5,7,9 : Odds;
    2,4,6,8,10 : Evens;
  end;

end;

end.



