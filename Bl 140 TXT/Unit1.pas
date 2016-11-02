unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    btnBereken: TButton;
    redJunior: TRichEdit;
    redSenior: TRichEdit;
    procedure btnBerekenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnBerekenClick(Sender: TObject);
var
  tNames : Textfile;
  sLine : String;
  sName, sCategory : string;
  iPosComma, iAge : integer;
begin
  redJunior.Clear;
  redjunior.Lines.Add('Junior Gamers');
  redJunior.Lines.Add(' ');
  redSenior.Clear;
  redSenior.Lines.Add('Senior Gamers');
  redSenior.Lines.Add(' ');

  AssignFile(tNames,'Gamers.txt');

  try
    Reset(tNames);
  except
    ShowMessage('File Gamers.txt does not exist');
    Exit;
  end;

  while not EOF(tNames) do
    begin
      Readln(tNames,sLine);
      showmessage(sLine);
      iPosComma := pos(',',sLine);
      sName := Copy(sLine,1,iPosComma -1);
      Delete(sLine,1,iPosComma);
      showmessage(sLine);
      iAge := StrToInt(sLine);
      if(iAge >= 16) then
        redSenior.lines.add(sName + '(' + IntToStr(iAge) + ')')
      else
        redJunior.lines.add(sName + '(' + IntToStr(iAge) + ')');
    end;
  CloseFile(tNames);
end;

end.
