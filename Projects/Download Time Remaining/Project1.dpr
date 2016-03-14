program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmDownloadTime};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDownloadTime, frmDownloadTime);
  Application.Run;
end.
