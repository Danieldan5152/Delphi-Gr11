unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmDownloadTime = class(TForm)
    edtDownloadSize: TEdit;
    edtDownloaded: TEdit;
    edtSpeed: TEdit;
    btnBereken: TButton;
    Label1: TLabel;
    procedure btnBerekenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDownloadTime: TfrmDownloadTime;

implementation

{$R *.dfm}

//custom procedures
procedure Bereken;
var
eDownloadSize, eDownloaded, eSpeed, eSecondsTotal, eRemainingSize :extended;
sAfvoer : string;
begin
  eDownloadSize := StrToFloat(frmDownloadTime.edtDownloadSize.Text);//get download size MB
  eDownloaded := StrToFloat(frmDownloadTime.edtDownloaded.Text);//get downloaded size MB
  eSpeed := StrToFloat(frmDownloadTime.edtSpeed.Text);//get speed per sec of download KB
  eRemainingSize := eDownloadSize - eDownloaded;//remaing to download MB
  eSecondsTotal := eRemainingSize / (eSpeed * 1024); //seconds for remaing download

  sAfvoer := FloatToStr(eSecondsTotal);
  frmDownloadTime.Label1.Caption;
end;

procedure TfrmDownloadTime.btnBerekenClick(Sender: TObject);
begin
  Bereken;
end;

end.
