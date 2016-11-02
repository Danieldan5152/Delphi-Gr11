program frmWin_iPad_p;

uses
  Forms,
  frmWin_iPad_u in 'frmWin_iPad_u.pas' {frmWinner};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmWinner, frmWinner);
  Application.Run;
end.
