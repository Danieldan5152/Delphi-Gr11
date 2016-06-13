unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  TfrmOvenTemp = class(TForm)
    memTime: TMemo;
    edtTemp: TEdit;
    btnDisplay: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    lblTemp: TLabel;
    procedure btnDisplayClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOvenTemp: TfrmOvenTemp;

implementation

{$R *.dfm}

{Custom procedures}
procedure Beginfrm;
begin
  frmOvenTemp.memTime.Lines.Add('Time' + #9 + 'Temp');
  frmOvenTemp.edtTemp.SetFocus;
end;
procedure Display;
var
  K, iTempR, iTempG, iCurTemp     : integer;
  eTime                           : extended;
  sDisplay                        : string;
begin
  iTempR := 12; //the rate the temp goes up in 1 min
  iTempG := StrToInt(frmOvenTemp.edtTemp.Text); //goal temp we want to reach
  K := 0; //avoiding errors
  iCurTemp := 0; //avoiding errors
  eTime := iTempG / iTempR;//where it should stop
  while K < eTime do
    begin
      inc(K,2);
      iCurTemp := K * iTempR;
      sDisplay := IntToStr(K) + #9 + IntToStr(iCurTemp);
      frmOvenTemp.memTime.Lines.Add(sDisplay);
    end;{while}
end;

procedure Restart;
begin
  frmOvenTemp.edtTemp.Clear;
  frmOvenTemp.memTime.Clear;
  frmOvenTemp.memTime.Lines.Add('Time' + #9 + 'Temp');
  frmOvenTemp.edtTemp.SetFocus;
end;
{/Custom procedures}
procedure TfrmOvenTemp.bmbRetryClick(Sender: TObject);
begin
  Restart;
end;

procedure TfrmOvenTemp.btnDisplayClick(Sender: TObject);
begin
  Display;
end;

procedure TfrmOvenTemp.FormActivate(Sender: TObject);
begin
  Beginfrm;
end;

end.
