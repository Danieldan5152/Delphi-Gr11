unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmDiceOdds = class(TForm)
    btnCalculate: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    lblOdds: TLabel;
    procedure btnCalculateClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiceOdds: TfrmDiceOdds;

implementation

{$R *.dfm}

{Custom procedures}
procedure Beginfrm;
begin
  randomize;
end;
procedure Calculate;
var
  iDice1, iDice2, iTimes : integer;
begin
  iTimes := 0;
  iDice1 := 0;
  iDice2 := 0;
  while (iDice1 < 6) and (iDice2 < 6) do
    begin
      inc(iTimes);
      iDice1 := random(6);
      iDice2 := random(6);
    end;

  frmDiceOdds.lblOdds.Caption := IntToStr(iDice1) + 'd2 '+ IntToStr(iDice2) +' t' + IntToStr(iTImes);
end;

procedure Restart;
begin

end;

procedure TfrmDiceOdds.bmbRetryClick(Sender: TObject);
begin
  Restart;
end;

procedure TfrmDiceOdds.btnCalculateClick(Sender: TObject);
begin
  Calculate;
end;

procedure TfrmDiceOdds.FormActivate(Sender: TObject);
begin
  Beginfrm;
end;

end.
