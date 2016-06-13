program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmInterest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmInterest, frmInterest);
  Application.Run;
end.
