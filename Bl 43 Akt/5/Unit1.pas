unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Samples.Spin, Math;

type
  TfrmHuisSkool = class(TForm)
    sedMin: TSpinEdit;
    btnBewerk: TButton;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    lblAfvoer: TLabel;
    procedure btnBewerkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHuisSkool: TfrmHuisSkool;

implementation

{$R *.dfm}

procedure TfrmHuisSkool.bmbResetClick(Sender: TObject);
begin //reset alles
sedMin.Clear;
lblAfvoer.Caption :=' ';
sedMin.SetFocus;
end;

procedure TfrmHuisSkool.btnBewerkClick(Sender: TObject);
var
iMin, iUreO, iMinO : integer;
sAfvoer :string;
begin
iMin := sedMin.Value; //Toevoer min.
iUreO := Floor(iMin/60);    // sit oor na ure
iMinO := Floor(iMin-(iUreO*60));           //min oor
sAfvoer := IntToStr(iUreO) + ' Ure en ' + IntToStr(iMinO) + ' minute.';
lblAfvoer.Caption:= sAfvoer ;       //toon ales
end;

procedure TfrmHuisSkool.FormActivate(Sender: TObject);
begin
sedMin.SetFocus;    //stel focus
end;

end.
