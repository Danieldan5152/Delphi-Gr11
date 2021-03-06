unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfrmProcData = class(TForm)
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
  frmProcData: TfrmProcData;

implementation

{$R *.dfm}

procedure TfrmProcData.btnBerekenClick(Sender: TObject);
var
  tNames : Textfile;
  sLine : String;
  sName, sCategory : string;
  iPosComma, iTotalA, iAge, iTotalG : integer;
  eAvg : extended ;
begin
  iTotalA := 0;//Total age of gamers
  iTotalG := 0; // Total gamers
  redJunior.Clear;
  redjunior.Lines.Add('Junior Gamers');
  redJunior.Lines.Add(' ');
  redSenior.Clear;
  redSenior.Lines.Add('Senior Gamers');
  redSenior.Lines.Add(' ');

  AssignFile(tNames,'Gamers.txt');

  try
    Reset(tNames);//readable file to edit
  except// if file doesn' exsit it'll do this
    ShowMessage('File Gamers.txt does not exist');
    Exit;
  end;

  while not EOF(tNames) do  //EOF = end of file
    begin
      Readln(tNames,sLine);
      iPosComma := pos(',',sLine);
      sName := Copy(sLine,1,iPosComma -1);
      Delete(sLine,1,iPosComma);
      iAge := StrToInt(sLine);
      inc(iTotalG);
      iTotalA := iTotalA + iAge;
      if(iAge >= 16) then
        redSenior.lines.add(sName + '(' + IntToStr(iAge) + ')')
      else
        redJunior.lines.add(sName + '(' + IntToStr(iAge) + ')');
    end;
  eAvg := iTotalA / iTotalG ; //avg age
  redSenior.lines.add(' ');
  redJunior.lines.add(' ');
  redSenior.lines.add('Average age of gamers ' + FloatToStrF(eAvg, ffFixed, 5, 2));
  redJunior.lines.add('Average age of gamers ' + FloatToStrF(eAvg, ffFixed, 5, 2));
  CloseFile(tNames); //maak die file toe
end;

end.
