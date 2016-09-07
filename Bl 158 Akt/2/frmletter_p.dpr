program frmletter_p;

uses
  Forms,
  frmletter_u in 'frmletter_u.pas' {frmLetter};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLetter, frmLetter);
  Application.Run;
end.
