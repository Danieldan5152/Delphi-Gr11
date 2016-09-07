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
    procedure btnPickClick(Sender: TObject);
  private
  public
    { Public declarations }
    arrPrizes : array[1..5] of string;
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
  arrPrizes[1] := 'Justin Bieber concert tickets';
  arrPrizes[2] := 'iPad';
  arrPrizes[3] := '8 GB Flash Disk';
  arrPrizes[4] := 'Chocolate gift pack';
  arrPrizes[5] := 'R5000 clothing voucher';

  Showmessage(arrPrizes[iNumber])


end;

end.
