unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmWoorde = class(TForm)
    edtToevoer: TEdit;
    btnBereken: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    lblAfvoer: TLabel;
    procedure btnBerekenClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWoorde: TfrmWoorde;
  sSin : string;

implementation

{$R *.dfm}
//custom procedures
procedure Verwerking;
var
iVar, iSinLente : integer;
begin
  sSin := frmWoorde.edtToevoer.Text;
  iSinLente := Length(sSin);
  for iVar := 1 to iSinLente do//van 1 tot helle sin se lente
    begin
      if Upcase(sSin[iVar]) in ['A'..'Z'] then// wate karakters hy moet deur verander
        begin
          if UpCase(sSin[iVar]) <> 'Z' then
            inc(sSin[iVar])// verander na volgende letter
          else
            if sSin[iVar] = 'Z' then
              sSin[iVar] := 'A' //maak die groot Z na 'n A
            else
            if sSin[iVar] = 'z' then
            sSin[iVar] := 'a' //maak die klein z na 'n a
        end;
    end;
  frmWoorde.lblAfvoer.Caption := sSin;// vertoon die verwerked sin
end;

procedure Beginoor;             //maak ales skoon
begin
  frmWoorde.edtToevoer.Clear;
  frmWoorde.lblAfvoer.Caption := ' ';
  frmWoorde.edtToevoer.SetFocus;
end;

procedure TfrmWoorde.bmbRetryClick(Sender: TObject);
begin
  Beginoor;
end;

procedure TfrmWoorde.btnBerekenClick(Sender: TObject);
begin
  Verwerking;
end;

end.
