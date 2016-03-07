unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Buttons;

type
  TfrmMath = class(TForm)
    sedSom1: TSpinEdit;
    sedSom2: TSpinEdit;
    sedSTotaal: TSpinEdit;
    lblReels: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnToets: TButton;
    edtAfvoer: TEdit;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    procedure btnToetsClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMath: TfrmMath;

implementation

{$R *.dfm}
//custom procedures
procedure Beginfrm;
begin
  frmMath.sedSom1.SetFocus;
end;

procedure ToetsBerekening;
var
sAfvoer : string;
iSom1, iSom2, iSTotaal, iTotaal : integer;
begin
  //kry toevoer
  iSom1 := frmMath.sedSom1.Value;
  iSom2 := frmMath.sedSom2.Value;
  iSTotaal := frmMath.sedSTotaal.Value;
  iTotaal := iSom1 * iSom2;
  //

  //korekte bewerking
  if iSTotaal = iTotaal then
    begin
      sAfvoer := 'Die Bewerking is korrek';
    end
  else
  begin //verkeerde bewerking
    sAfvoer := 'Die is nie die regte verwerking nie';
  end;
  // Moet in die volgorde wees vir die regte vertooning
  // getalle gebruik wat nie toegelaat is nie
  if (iSom1 = 0) or (iSom1 = 1) or (iSom1 = 2) or (iSom1 = 5)
    or (iSom1 = 10) or (iSom1 = 20) or (iSom1 = 50) then
    begin
      sAfvoer := '0,1,2,5,10,20,50 is nie toegelaat nie.';
    end;
  if (iSom2 = 0) or (iSom2 = 1) or (iSom2 = 2) or (iSom2 = 5)
    or (iSom2 = 10) or (iSom2 = 20) or (iSom2 = 50) then
    begin
      sAfvoer := '0,1,2,5,10,20,50 is nie toegelaat nie.';
    end;
  //////////////////////
  ///  vertoon afvoer
  frmMath.edtAfvoer.Text := sAfvoer;
end;

procedure Beginoor;
begin// reg vir de volgende som
  frmMath.sedSom1.Clear;
  frmMath.sedSom2.Clear;
  frmMath.sedSTotaal.Clear;
  frmMath.edtAfvoer.Clear;
  frmMath.sedSom1.SetFocus;
end;

procedure TfrmMath.bmbRetryClick(Sender: TObject);
begin
  Beginoor;
end;

procedure TfrmMath.btnToetsClick(Sender: TObject);
begin
ToetsBerekening;
end;

procedure TfrmMath.FormActivate(Sender: TObject);
begin
  Beginfrm;
end;

end.
