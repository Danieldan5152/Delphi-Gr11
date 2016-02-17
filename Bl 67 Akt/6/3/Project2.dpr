program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmMuurPapier};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMuurPapier, frmMuurPapier);
  Application.Run;
end.
