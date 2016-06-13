program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmOvenTemp};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmOvenTemp, frmOvenTemp);
  Application.Run;
end.
