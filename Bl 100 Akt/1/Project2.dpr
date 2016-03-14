program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmLoops};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLoops, frmLoops);
  Application.Run;
end.
