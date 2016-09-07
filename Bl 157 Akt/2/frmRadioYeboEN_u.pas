unit frmRadioYeboEN_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Spin;

type
  TfrmRadio = class(TForm)
    lblChoose: TLabel;
    lblHead: TLabel;
    btnPick: TButton;
    bmbNext: TBitBtn;
    bmbClose: TBitBtn;
    pnlPrizes: TPanel;
    sedNumber: TSpinEdit;
    cbxVerdubbel: TCheckBox;
    procedure btnPickClick(Sender: TObject);
  private
  public
    { Public declarations }
    arrPrizes : array[1..5] of integer;
  end;

var
  frmRadio: TfrmRadio;

implementation

{$R *.dfm}


procedure TfrmRadio.btnPickClick(Sender: TObject);
var
iNumber : integer;
begin
  iNumber := sedNumber.Value;
  arrPrizes[1] := 200;
  arrPrizes[2] := 400;
  arrPrizes[3] := 800;
  arrPrizes[4] := 100;
  arrPrizes[5] := 1000;
 if cbxVerdubbel.Checked = true then
  Showmessage('Jy het R' + IntToStr(arrPrizes[iNumber]*2) + ' gewen')
  else
  Showmessage('Jy het R' + IntToStr(arrPrizes[iNumber]) + ' gewen');


end;

end.
