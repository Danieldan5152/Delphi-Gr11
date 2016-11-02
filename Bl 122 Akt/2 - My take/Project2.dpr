program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmPswrdCrck};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPswrdCrck, frmPswrdCrck);
  Application.Run;
end.
