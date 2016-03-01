unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TfrmCellNo = class(TForm)
    edtToevoer: TEdit;
    btnBewerk: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    edtAfvoer: TEdit;
    lblToevoer: TLabel;
    procedure btnBewerkClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCellNo: TfrmCellNo;

implementation

{$R *.dfm}
//custom procuders
procedure BeginFrm;
begin
  frmCellNo.edtToevoer.SetFocus;
end;
procedure OmskakelingVNo;
var
sToevoer, sAfvoer : string;
iLente : integer;
begin
  sToevoer := frmCellNo.edtToevoer.Text;
  iLente := length(sToevoer);
  sAfvoer := '+27' + copy(sToevoer,2,iLente - 1);
  frmCellNo.edtAfvoer.text := sAfvoer;
end;
procedure BeginOor;
begin
  frmCellNo.edtToevoer.Clear;
  frmCellNo.edtAfvoer.clear;
  frmCellNo.edtToevoer.SetFocus;
end;
procedure TfrmCellNo.bmbRetryClick(Sender: TObject);
begin
BeginOor;
end;

procedure TfrmCellNo.btnBewerkClick(Sender: TObject);
begin
OmskakelingVNo;
end;

end.
