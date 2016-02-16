program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmITPunte};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmITPunte, frmITPunte);
  Application.Run;
end.
