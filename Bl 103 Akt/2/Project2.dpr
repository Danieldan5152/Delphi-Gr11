program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmPswrd};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPswrd, frmPswrd);
  Application.Run;
end.
