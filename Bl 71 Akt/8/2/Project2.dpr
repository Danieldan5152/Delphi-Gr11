program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmCellNo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCellNo, frmCellNo);
  Application.Run;
end.
