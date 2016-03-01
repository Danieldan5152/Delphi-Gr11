program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmFunDay};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmFunDay, frmFunDay);
  Application.Run;
end.
