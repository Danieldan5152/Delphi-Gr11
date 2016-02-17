unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, Math;

type
  TfrmInternetCafe = class(TForm)
    btnBereken: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    edtBegin: TEdit;
    edtEinde: TEdit;
    lblKVDag: TLabel;
    lblGGVDag: TLabel;
    lblGVDag: TLabel;
    lblTydKlient: TLabel;
    lblKosteKlient: TLabel;
    lblToevoerHulp: TLabel;
    lblBegin: TLabel;
    lblEinde: TLabel;
    procedure btnBerekenClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInternetCafe: TfrmInternetCafe;
  sGVDagC, sGemidGVDagC, sKosteVKC, sKVDC : string;
  iKliente, iTotaleGDag, iKPUur, iNull : integer;
  eGemidGDag : extended;

implementation

{$R *.dfm}

procedure TfrmInternetCafe.bmbRetryClick(Sender: TObject);
begin
//maak alle var skoon wat nodig
iKliente := iNull;
iTotaleGDag := iNull;

//maak ales skoon
lblKVDag.Caption := sKVDC ;
lblGVDag.caption := sGVDagC ;
lblGGVDag.caption := sGemidGVDagC ;
lblKosteKlient.Caption := sKosteVKC ;
lblTydKlient.Caption := ' ' ;
edtBegin.clear;
edtEinde.Clear;
edtBegin.SetFocus;
end;

procedure TfrmInternetCafe.btnBerekenClick(Sender: TObject);
var
iBUur, iBMin, iEUur, iEMin, iUre, iMin, iTotaleMin, iUreBetaal,
   iKoste : integer;
sBeginT, sEindT, sGVDag, sGemidGVDag, sKosteVK,
sTydKlient, sKVD : string;
begin
Inc(iKliente);//kliente vir die dag tel

sBeginT := edtBegin.Text; //Tyd begin
sEindT := edtEinde.text; // Tyd geeindig

iBUur := StrToInt(Copy(sBeginT,1,2)); //uur begin
iBMin := StrToInt(Copy(sBeginT,4,2)); //min begin

iEUur := StrToInt(Copy(sEindT,1,2)); //uur geeindig
iEMin := StrToInt(Copy(sEindT,4,2)); //min geeindig

iUre := iEUur - iBUur ;// ure besig
iMin := iEMin - iBMin ;// min besig
iTotaleMin := (iUre * 60) + iMin;// Totale min besig
iUreBetaal := Ceil((iTotaleMin/60)); // vir hoeveel ure betaal moet word
iKoste := iUreBetaal * iKPUur;// koste vir internet gebruik

iTotaleGDag := iTotaleGDag + iKoste ;//geld verdien daai dag
eGemidGDag := iTotaleGDag / iKliente ;// gemid inkom vir die dag

//Strings
sKVD := sKVDC + IntToStr(iKliente) ; //kliente vir die dag
sGVDag := sGVDagC + IntToStr(iTotaleGDag) ; //Geld vir die dag
sGemidGVDag := sGemidGVDagC + FloatToStrF
  (eGemidGDag,ffFixed,5,2) ; //Gemid geld vir die dag
sKosteVK := sKosteVKC + IntToStr(iKoste) ; //koste vir die klient
if iUre = 0 then
  sTydKlient := 'Die klient was besig vir ' +
  IntToStr(iMin) + ' minute' ; //tyd wat die klient op die internet was
if iUre = 1 then
  sTydKlient := 'Die klient was besig vir 1 uur en ' +
  IntToStr(iMin) + ' minute' ; //tyd wat die klient op die internet was
if iUre>1 then
   sTydKlient := 'Die klient was besig vir ' + IntToStr(iUre) + ' ure en ' +
  IntToStr(iMin) + ' minute' ; //tyd wat die klient op die internet was

//Afvoer
lblKVDag.Caption := sKVD ;
lblGVDag.caption := sGVDag ;
lblGGVDag.caption := sGemidGVDag ;
lblKosteKlient.Caption := sKosteVK ;
lblTydKlient.Caption := sTydKlient ;

//herstel vir volgende Toevoer
edtBegin.clear;
edtEinde.Clear;
edtBegin.SetFocus;
end;

procedure TfrmInternetCafe.FormActivate(Sender: TObject);
begin
edtBegin.SetFocus;//stel focus

//alle captions se strings
sKVDC := lblKVDag.caption; //kliente vir die dag
sGVDagC := lblGVDag.caption; //Geld vir die dag
sGemidGVDagC := lblGGVDag.caption; //Gemid geld vir die dag
sKosteVKC := lblKosteKlient.caption; //koste vir die klient

iNull := 0;
iKPUur := 25;//koste per uur
end;

end.
