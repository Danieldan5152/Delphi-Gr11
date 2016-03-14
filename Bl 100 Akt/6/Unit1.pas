unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, Math;

type
  TfrmPCWV = class(TForm)
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
  frmPCWV: TfrmPCWV;


implementation

{$R *.dfm}

//custom procedures
procedure Bereken;
var
  iCount: Integer;
  ePVV, ePCK, eTWV, eWV : extended;
  sKoop, sAfvoer, sWaardeNVer, sWaardeVer :string;
begin
  ePCK := StrToFloat(frmPCWV.edtToevoer.Text); //die koop prys van n rekenaar
  sKoop := 'Koop prys R' + FloatToStrF(ePCK,ffFixed,5,2);
  frmPCWV.redAfvoer.Lines.Add(sKoop);
  frmPCWV.redAfvoer.Lines.Add(' '); //maak spasie
  ePVV := ePCK; // Var vir bewerking
  frmPCWV.redAfvoer.Lines.Add('Jaar' + #9 + #9 + 'Vermindering');

  for iCount := 1 to 5 do //vir 5 jaar se waardevermindering
    Begin
      eWV := ((ePVV/100)*5); //waarde vermindering die jaar
      ePVV := ePVV - eWV ; //totaal vir die jaar na waardevermindering
      sAfvoer := IntToStr(iCount) + #9 + #9 + 'R' + FloatToStrF(eWV, ffFixed,5 ,2);
      frmPCWV.redAfvoer.Lines.Add(sAfvoer);
    End;

  frmPCWV.redAfvoer.Lines.Add(' '); //maak spasie
  eTWV := ePCK - ePVV;// totale waarde vermindering vir 5 jaar
  sWaardeVer := 'Waarde vermindering vir 5 jaar: R' + FloatToStrF(eTWV,ffFixed,5,2);
  frmPCWV.redAfvoer.Lines.Add(sWaardeVer);

  sWaardeNVer := 'Waarde na vermindering R' + FloatToStrF(ePVV,ffFixed,5,2);
  frmPCWV.redAfvoer.Lines.Add(sWaardeNVer);
end;

procedure Beginoor;
begin
  frmPCWV.edtToevoer.Clear;
  frmPCWV.redAfvoer.Clear;
  frmPCWV.edtToevoer.SetFocus;
end;

procedure TfrmPCWV.bmbRetryClick(Sender: TObject);
begin
  Beginoor;
end;

procedure TfrmPCWV.btnBerekenClick(Sender: TObject);
begin
  Bereken;

end;

end.
