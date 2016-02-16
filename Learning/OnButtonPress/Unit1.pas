unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
//messagedlg(Key + ' has been pressed' , mtInformation, [mbOK], 0); test code

// if a Capital A is pressed
  if key = (#65) then
  label1.Caption := 'A';

// if a small a is pressed
  if key = (#97) then
  label1.Caption := 'a';
end;

end.
