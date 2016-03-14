program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmPondNARand};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPondNARand, frmPondNARand);
  Application.Run;
end.
