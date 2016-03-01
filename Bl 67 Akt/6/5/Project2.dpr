program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmVoorletter};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVoorletter, frmVoorletter);
  Application.Run;
end.
