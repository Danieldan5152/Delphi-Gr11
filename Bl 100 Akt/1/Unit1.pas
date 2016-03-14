unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls;

type
  TfrmLoops = class(TForm)
    btnA: TButton;
    btnB: TButton;
    btnC: TButton;
    btnD: TButton;
    btnE: TButton;
    redAfvoer: TRichEdit;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    btnF: TButton;
    procedure btnAClick(Sender: TObject);
    procedure btnBClick(Sender: TObject);
    procedure btnCClick(Sender: TObject);
    procedure btnDClick(Sender: TObject);
    procedure btnEClick(Sender: TObject);
    procedure btnFClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoops: TfrmLoops;
  sAfvoer : string;
  iCount : integer;
  cCount : char;
implementation

{$R *.dfm}

//Custom procedures
procedure MaakSkoon;//maak var skoon na elke vertooning
begin
  sAfvoer := ' ';
  iCount := 0;
  cCount := ' ';
end;

procedure LoopA;
var
  iCount: Integer;
begin
  for iCount := 5 to 10 do//count from 5 to 10
    begin
      sAfvoer := IntToStr(iCount);
      frmLoops.redAfvoer.Lines.Add(sAfvoer);
    end;
  MaakSkoon;
  frmLoops.redAfvoer.Lines.Add(' ');
end;

procedure LoopB;
begin
  for iCount := 10 downto 1 do//count from 10 to 1
    begin
      sAfvoer := IntToStr(iCount);
      frmLoops.redAfvoer.Lines.Add(sAfvoer);
    end;
  MaakSkoon;
  frmLoops.redAfvoer.Lines.Add(' ');
end;

procedure LoopC;
begin
  for iCount := -3 to 3 do
    Begin
      sAfvoer := IntToStr(iCount);
      frmLoops.redAfvoer.Lines.Add(sAfvoer);
    End;
  MaakSkoon;
  frmLoops.redAfvoer.Lines.Add(' ');
end;

procedure LoopD;//van groot A tot F
begin
  for cCount := 'A' to 'F' do
    begin
      frmLoops.redAfvoer.Lines.Add(cCount);
    end;
  MaakSkoon;
  frmLoops.redAfvoer.Lines.Add(' ');
end;

procedure LoopE;// van klein z na a
begin
  for cCount := 'z' downto 'a' do
    begin
      frmLoops.redAfvoer.Lines.Add(cCount);
    end;
  MaakSkoon;
  frmLoops.redAfvoer.Lines.Add(' ');
end;

procedure LoopF;//Tel van 1 tot 10 maal 10 elke keer
var
iHonderd, iDuisend : integer;
begin
  for iCount := 1 to 10 do
  begin
    iHonderd := iCount * 100;
    iDuisend := iHonderd * 10;
    sAfvoer := IntToStr(iCount) + #9 + IntToStr(iHonderd) + #9 +
         IntToStr(iDuisend);
    frmLoops.redAfvoer.Lines.Add(sAfvoer);
  end;
  MaakSkoon;
  frmLoops.redAfvoer.Lines.Add(' ');
end;

procedure Beginoor;//maak ales skoon
begin
  frmLoops.redAfvoer.Clear;
  frmLoops.btnA.SetFocus;
  MaakSkoon;
end;

procedure TfrmLoops.bmbRetryClick(Sender: TObject);
begin
  Beginoor;
end;

procedure TfrmLoops.btnAClick(Sender: TObject);
begin
  LoopA;
end;

procedure TfrmLoops.btnBClick(Sender: TObject);
begin
  LoopB;
end;

procedure TfrmLoops.btnCClick(Sender: TObject);
begin
  LoopC;
end;

procedure TfrmLoops.btnDClick(Sender: TObject);
begin
  LoopD;
end;

procedure TfrmLoops.btnEClick(Sender: TObject);
begin
  LoopE;
end;

procedure TfrmLoops.btnFClick(Sender: TObject);
begin
  LoopF;
end;

end.
