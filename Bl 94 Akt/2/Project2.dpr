program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmKooldrank};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmKooldrank, frmKooldrank);
  Application.Run;
end.
