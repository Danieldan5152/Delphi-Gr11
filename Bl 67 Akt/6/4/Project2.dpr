program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmPass};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPass, frmPass);
  Application.Run;
end.
