program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmConcert};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmConcert, frmConcert);
  Application.Run;
end.
