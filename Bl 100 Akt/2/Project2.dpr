program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmVierKants};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVierKants, frmVierKants);
  Application.Run;
end.
