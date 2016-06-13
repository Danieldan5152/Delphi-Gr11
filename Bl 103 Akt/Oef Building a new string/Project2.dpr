program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1frmString};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1frmString, Form1frmString);
  Application.Run;
end.
