program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmLogon};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogon, frmLogon);
  Application.Run;
end.
