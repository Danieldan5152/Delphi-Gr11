program frmExperiment_p;

uses
  Forms,
  frmExperiment_u in 'frmExperiment_u.pas' {frmExperiment};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmExperiment, frmExperiment);
  Application.Run;
end.
