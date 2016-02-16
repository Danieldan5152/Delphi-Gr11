program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmKosteSMS};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmKosteSMS, frmKosteSMS);
  Application.Run;
end.
