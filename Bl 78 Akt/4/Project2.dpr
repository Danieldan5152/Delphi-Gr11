program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmCourier};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCourier, frmCourier);
  Application.Run;
end.
