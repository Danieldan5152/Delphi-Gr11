program frmDisplayTourData_p;

uses
  Vcl.Forms,
  frmDisplayTourData_u in 'frmDisplayTourData_u.pas' {frmDisplayTourData},
  dmTourData_u in 'dmTourData_u.pas' {dmTourData: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDisplayTourData, frmDisplayTourData);
  Application.CreateForm(TdmTourData, dmTourData);
  Application.Run;
end.
