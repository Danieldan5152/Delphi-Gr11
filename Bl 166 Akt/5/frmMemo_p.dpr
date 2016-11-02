program frmMemo_p;

uses
  Forms,
  frmMemo_u in 'frmMemo_u.pas' {frmMemo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMemo, frmMemo);
  Application.Run;
end.
