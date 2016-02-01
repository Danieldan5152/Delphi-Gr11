program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmSimCal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSimCal, frmSimCal);
  Application.Run;
end.
