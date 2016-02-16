program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmInfo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmInfo, frmInfo);
  Application.Run;
end.
