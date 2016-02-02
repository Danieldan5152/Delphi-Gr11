unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    rgpLeerders: TRadioGroup;
    lblPiet: TLabel;
    lblSanny: TLabel;
    lblSakkie: TLabel;
    btnVerwerk: TButton;
    bmbClose: TBitBtn;
    lblStemme: TLabel;
    bmbReset: TBitBtn;
    procedure btnVerwerkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  iPiet, iSanny, iSakkie : integer;
  sPiet, sSanny, sSakkie :string;

implementation

{$R *.dfm}

procedure TForm1.bmbResetClick(Sender: TObject);
begin
iPiet := 0;
iSanny := 0;
iSakkie := 0;
sPiet := 'Piet: ' + IntToStr(iPiet);
sSanny := 'Sanny: ' + IntToStr(iSanny);
sSakkie := 'Sakkie: ' + IntToStr(iSakkie);
lblPiet.Caption := sPiet;
lblSanny.Caption := sSanny;
lblSakkie.Caption := sSakkie;
rgpLeerders.itemindex := -1;
end;

procedure TForm1.btnVerwerkClick(Sender: TObject);
begin
if rgpLeerders.itemindex = 0 then
  iPiet := iPiet + 1;
if rgpLeerders.itemindex = 1 then
  iSanny := iSanny + 1;
if rgpLeerders.itemindex = 2 then
  iSakkie := iSakkie + 1;
sPiet := 'Piet: ' + IntToStr(iPiet);
sSanny := 'Sanny: ' + IntToStr(iSanny);
sSakkie := 'Sakkie: ' + IntToStr(iSakkie);
lblPiet.Caption := sPiet;
lblSanny.Caption := sSanny;
lblSakkie.Caption := sSakkie;
rgpLeerders.itemindex := -1;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
iPiet := 0;
iSanny := 0;
iSakkie := 0;
end;

end.
