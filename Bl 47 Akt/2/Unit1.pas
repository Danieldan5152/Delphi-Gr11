unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmGasterHuis = class(TForm)
    lblGaan_Af: TLabel;
    lblQuotes: TLabel;
    lblAfvoerK: TLabel;
    lblAfvoerO: TLabel;
    lblAfvoerA: TLabel;
    btnKamers: TButton;
    btnOntbyt: TButton;
    btnAandetes: TButton;
    procedure btnKamersClick(Sender: TObject);
    procedure btnOntbytClick(Sender: TObject);
    procedure btnAandetesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGasterHuis: TfrmGasterHuis;
  sKamer, sOntbyt, sAandete : string;
  iKamers, iKamer, iOntbyt, iOntbyte, iAandete, iAandetes : integer;
  rKKoste, rOKoste, rAKoste : real;

implementation

{$R *.dfm}

procedure TfrmGasterHuis.btnAandetesClick(Sender: TObject);
begin
iAandetes := StrToInt(InputBox('Aanetes te bespreek',
  'Hoeveel aandetes om te bespreek',''));
rAKoste := iAandetes*iAandete;
sAandete := 'R ' + FloatToStrF(rAKoste,ffFixed,5,2);
lblAfvoerA.caption := sAandete;
end;

procedure TfrmGasterHuis.btnKamersClick(Sender: TObject);
begin
iKamers := StrToInt(InputBox('Kamers om te bespreek',
  'Hoeveel kamers om te bespreek',''));
rKKoste := iKamers*iKamer;
sKamer := 'R ' + FloatToStrF(rKKoste,ffFixed,5,2);
lblAfvoerK.caption := sKamer;
end;

procedure TfrmGasterHuis.btnOntbytClick(Sender: TObject);
begin
iOntbyte := StrToInt(InputBox('Ontbyte te bespreek',
  'Hoeveel ontbyte om te bespreek',''));
rOKoste := iOntbyte*iOntbyt;
sOntbyt := 'R ' + FloatToStrF(rOKoste,ffFixed,5,2);
lblAfvoerO.caption := sOntbyt;
end;

procedure TfrmGasterHuis.FormActivate(Sender: TObject);
begin
iKamer := 450 ;
iOntbyt := 60 ;
iAandete := 120 ;
end;

end.
