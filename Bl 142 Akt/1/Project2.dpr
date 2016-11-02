program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmProcData};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmProcData, frmProcData);
  Application.Run;
end.
