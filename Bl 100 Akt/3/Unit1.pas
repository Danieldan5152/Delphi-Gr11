unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls;

type
  TfrmPondNARand = class(TForm)
    lblToevoer: TLabel;
    edtToevoer: TEdit;
    redAfvoer: TRichEdit;
    btnBereken: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    procedure btnBerekenClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPondNARand: TfrmPondNARand;

implementation

{$R *.dfm}

//custom procedures
procedure Bereken;
var
  eValue, eAfvoer : extended;
  iCount : integer;
  sAfvoer : string;
begin
  frmPondNARand.redAfvoer.Lines.Add('Pond' + #9 + 'Rand');
  eValue := StrToFloat(frmPondNARand.edtToevoer.Text);
  for iCount := 1 to 10 do// 1 pond tot 10 na rand
    begin
      eAfvoer := iCount * eValue;//berekening van die waarde van die pond
      sAfvoer := IntToStr(iCount) + #9 + 'R' + FloatToStrF(eAfvoer,ffFixed,5,2);
      frmPondNARand.redAfvoer.Lines.Add(sAfvoer)
    end;
end;

procedure Beginoor;//begin ales oor
begin
  frmPondNARand.edtToevoer.Clear;
  frmPondNARand.redAfvoer.Clear;
  frmPondNARand.edtToevoer.SetFocus;
end;

procedure TfrmPondNARand.bmbRetryClick(Sender: TObject);
begin
  Beginoor;
end;

procedure TfrmPondNARand.btnBerekenClick(Sender: TObject);
begin
  Bereken;
end;

end.
