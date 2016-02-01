program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmHuisSkool};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHuisSkool, frmHuisSkool);
  Application.Run;
end.
