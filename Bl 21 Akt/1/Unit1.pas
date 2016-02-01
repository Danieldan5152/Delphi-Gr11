unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Math, Vcl.Buttons;

type
  TfrmSimCal = class(TForm)
    sedEersteG: TSpinEdit;
    edtAfvoer: TEdit;
    btnPlus: TButton;
    btnMinus: TButton;
    btnMaal: TButton;
    btnDeel: TButton;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    sedTweedeG: TSpinEdit;
    procedure btnPlusClick(Sender: TObject);
    procedure btnMinusClick(Sender: TObject);
    procedure btnMaalClick(Sender: TObject);
    procedure btnDeelClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSimCal: TfrmSimCal;
  iEersteG, iTweedeG : integer;
  eAfvoer : extended;

implementation

{$R *.dfm}

procedure TfrmSimCal.bmbResetClick(Sender: TObject);
begin
edtAfvoer.clear;
sedEersteG.Clear;
sedTweedeG.Clear;
sedEersteG.SetFocus;
end;

procedure TfrmSimCal.btnDeelClick(Sender: TObject);
begin
iEersteG := sedEersteG.Value;
iTweedeG := sedTweedeG.Value;
eAfvoer := iEersteG / iTweedeG;
edtAfvoer.Text := FloatToStrf(eAfvoer,ffFixed,5,2)
end;

procedure TfrmSimCal.btnMaalClick(Sender: TObject);
begin
iEersteG := sedEersteG.Value;
iTweedeG := sedTweedeG.Value;
eAfvoer := iEersteG * iTweedeG;
edtAfvoer.Text := FloatToStrf(eAfvoer,ffFixed,5,2)
end;

procedure TfrmSimCal.btnMinusClick(Sender: TObject);
begin
iEersteG := sedEersteG.Value;
iTweedeG := sedTweedeG.Value;
eAfvoer := iEersteG - iTweedeG;
edtAfvoer.Text := FloatToStrf(eAfvoer,ffFixed,5,2)
end;

procedure TfrmSimCal.btnPlusClick(Sender: TObject);
begin
iEersteG := sedEersteG.Value;
iTweedeG := sedTweedeG.Value;
eAfvoer := iEersteG + iTweedeG;
edtAfvoer.Text := FloatToStrf(eAfvoer,ffFixed,5,2)
end;

procedure TfrmSimCal.FormActivate(Sender: TObject);
begin
sedEersteG.SetFocus;
end;

end.
