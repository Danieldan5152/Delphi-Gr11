program Project1;

uses
  Forms,
  Unit1 in '..\1\Unit1.pas' {frmInfo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmInfo, frmInfo);
  Application.Run;
end.
