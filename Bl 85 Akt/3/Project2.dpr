program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmASCII};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmASCII, frmASCII);
  Application.Run;
end.
