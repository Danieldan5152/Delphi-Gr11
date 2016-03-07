program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmMath};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMath, frmMath);
  Application.Run;
end.
