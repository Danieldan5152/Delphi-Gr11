unit frmAthletics_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TfrmAthletics = class(TForm)
    edtSurname: TEdit;
    rgpItem: TRadioGroup;
    btnDisplay: TButton;
    redOut: TRichEdit;
    procedure btnDisplayClick(Sender: TObject);
  private
    procedure DisplayInfo(cTeam : char; sName, sItem : string);

  public
    { Public declarations }
  end;

var
  frmAthletics: TfrmAthletics;

implementation

{$R *.dfm}

//custom procedure
procedure TfrmAthletics.DisplayInfo(cTeam : char; sName, sItem : string);
begin
  redOut.lines.add(sName + ' ' + sItem + ' ' + cTeam);
end;

procedure TfrmAthletics.btnDisplayClick(Sender: TObject);
var
  sSurname, sItem : string;
  cTeamC : char;
  iItem : integer;
begin
  sSurname := edtSurname.text;
  iItem := rgpItem.ItemIndex;
  case iItem of
    0 : sItem := 'Long Jump';
    1 : sItem := 'Shot Put';
    2 : sItem := 'Track Event';
    3 : sItem := 'Hop, Skip and Jump';
  end;
  case sSurname[1] of
    'a'..'g' : cTeamC := 'R';
    'A'..'G' : cTeamC := 'R';
    'h'..'o' : cTeamC := 'G';
    'H'..'O' : cTeamC := 'G';
    'p'..'z' : cTeamC := 'B';
    'P'..'Z' : cTeamC := 'B';
  end;
  DisplayInfo(cTeamC, sSurname, sItem);

end;

end.
