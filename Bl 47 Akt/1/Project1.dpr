program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmRegistreer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '';
  Application.CreateForm(TfrmRegistreer, frmRegistreer);
  Application.Run;
end.
