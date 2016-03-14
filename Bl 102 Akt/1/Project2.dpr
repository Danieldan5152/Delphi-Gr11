program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmSMS_K};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSMS_K, frmSMS_K);
  Application.Run;
end.
