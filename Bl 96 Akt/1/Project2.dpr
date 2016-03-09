program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmGroot5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmGroot5, frmGroot5);
  Application.Run;
end.
