program frmAdjustPrices_p;

uses
  Forms,
  frmAdjustPrices_u in 'frmAdjustPrices_u.pas' {frmAdjustPrices};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAdjustPrices, frmAdjustPrices);
  Application.Run;
end.
