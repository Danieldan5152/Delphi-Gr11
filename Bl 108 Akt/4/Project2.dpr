program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmPasswordTester};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPasswordTester, frmPasswordTester);
  Application.Run;
end.
