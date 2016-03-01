unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Spin;

type
  TfrmFunDay = class(TForm)
    sedOuderdom: TSpinEdit;
    lblNaam: TLabel;
    lblOuderdom: TLabel;
    lblAfvoer: TLabel;
    lblKinders: TLabel;
    lblOuers: TLabel;
    btnVertoon: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    lblTotaal: TLabel;
    procedure btnVertoonClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFunDay: TfrmFunDay;
  sTotaalB, sOuersB, sKindersB :string;
  iKinders, iOuers, iTotaal : integer;

implementation

{$R *.dfm}
//eie Procedures
procedure Beginfrm;
begin
    sTotaalB := frmFunDay.lblTotaal.Caption;
    sOuersB := frmFunDay.lblOuers.Caption;
    sKindersB := frmFunDay.lblKinders.Caption;
end;
procedure Vertoon;
var
sNaam, sAfvoer, sKinders, sOuers, sTotaal : string;
iOuderdom : integer;
begin
  sNaam := frmFunDay.edtNaam.Text;
  iOuderdom := frmFunDay.sedOuderdom.value;
  inc(iTotaal);// totaale mense vir die dag
  if iOuderdom <= 13 then
    inc(iKinders); // jonger as 13
  if iOuderdom > 13 then
    inc(iOuers); // ouer as 13
  sAfvoer := 'Welkom by ons pret dag ' + sNaam ;
  sKinders := 'Kinders al hier ' + IntToStr(iKinders);
  sOuers := 'Ouers al hier ' + IntToStr(IOuers);
  sTotaal := 'Mense al hier ' + IntToStr(iTotaal);
  frmFunDay.lblAfvoer.Caption := sAfvoer;
  frmFunDay.lblKinders.Caption := sKinders;
  frmFunDay.lblOuers.Caption := sOuers;
  frmFunDay.lblTotaal.Caption := sTotaal;
end;

procedure Beginoor;
begin
  frmFunDay.lblAfvoer.Caption := ' ';
  frmFunDay.lblKinders.Caption := sKindersB;
  frmFunDay.lblOuers.Caption := sOuersB;
  frmFunDay.lblTotaal.Caption := sTotaalB;
  frmFunDay.edtNaam.Clear;
  frmFunDay.sedOuderdom.Clear;
  frmFunDay.edtNaam.SetFocus;
end;
procedure TfrmFunDay.bmbRetryClick(Sender: TObject);
begin
  Beginoor;
end;

procedure TfrmFunDay.btnVertoonClick(Sender: TObject);
begin
  Vertoon;
end;

procedure TfrmFunDay.FormActivate(Sender: TObject);
begin
  Beginfrm;
end;

end.
