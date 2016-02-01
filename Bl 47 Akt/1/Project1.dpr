program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmRegistreer},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '';
  Application.CreateForm(TfrmRegistreer, frmRegistreer);
  Application.Run;
end.
