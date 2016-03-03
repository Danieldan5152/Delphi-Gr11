program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmAtletiek};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmAtletiek, frmAtletiek);
  Application.Run;
end.
