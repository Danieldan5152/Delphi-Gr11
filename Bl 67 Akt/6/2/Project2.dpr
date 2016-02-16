program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmInternetCafe};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmInternetCafe, frmInternetCafe);
  Application.Run;
end.
