program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmPCWV};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPCWV, frmPCWV);
  Application.Run;
end.
