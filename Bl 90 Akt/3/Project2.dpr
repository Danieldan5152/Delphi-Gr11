program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmWoordSpeeltjie};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmWoordSpeeltjie, frmWoordSpeeltjie);
  Application.Run;
end.
