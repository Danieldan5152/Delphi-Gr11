program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmTaxiBestuurder};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTaxiBestuurder, frmTaxiBestuurder);
  Application.Run;
end.
