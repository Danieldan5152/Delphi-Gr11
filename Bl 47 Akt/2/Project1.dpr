program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmGasterHuis};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmGasterHuis, frmGasterHuis);
  Application.Run;
end.
