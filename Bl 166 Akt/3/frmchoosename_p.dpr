program frmchoosename_p;

uses
  Forms,
  frmchoosename_u in 'frmchoosename_u.pas' {frmChooseName};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmChooseName, frmChooseName);
  Application.Run;
end.
