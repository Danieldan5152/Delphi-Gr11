program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmDiceOdds};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDiceOdds, frmDiceOdds);
  Application.Run;
end.
