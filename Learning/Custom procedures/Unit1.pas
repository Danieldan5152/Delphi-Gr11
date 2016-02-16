unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
// My own procedures
procedure Learning ;
begin
//you need to add the forum to the code line or it wouldn't understand you since
//  it's very dumb
 form1.label1.Caption := 'This is a procedure';

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
learning;
end;

end.
