unit frmGreet_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmGreet = class(TForm)
    btnEng: TButton;
    btnAfr: TButton;
    btnFrench: TButton;
    pnlMsg: TPanel;
    pnlOut: TPanel;
    edtName: TEdit;
    lblMsg: TLabel;
    procedure btnEngClick(Sender: TObject);
    procedure btnAfrClick(Sender: TObject);
    procedure btnFrenchClick(Sender: TObject);
  private
    //sLanguage, sName :string;
    procedure Greetuser(sName : string; K : Integer);
  public
    { Public declarations }
  end;

var
  frmGreet: TfrmGreet;
  sNa : string;
  iLang : integer;

implementation

{$R *.dfm}

procedure TfrmGreet.Greetuser(sName : string; K : Integer);
var
  sAfvoer : string;
begin
  case K of
    1 : sAfvoer := 'Hello ' + sName;
    2 : sAfvoer := 'More ' + sName;
    3 : sAfvoer := 'Fokoff ' + sName;
  end;
  pnlOut.Caption := sAfvoer;
end;

procedure TfrmGreet.btnAfrClick(Sender: TObject);
begin//afrikaans lang
  iLang := 2 ;
  sNa := edtName.Text;
  Greetuser(sNa, iLang);
end;

procedure TfrmGreet.btnEngClick(Sender: TObject);
begin//english lang
  iLang := 1 ;
  sNa := edtName.Text;
  Greetuser(sNa, iLang);
end;

procedure TfrmGreet.btnFrenchClick(Sender: TObject);
begin// french lang
  iLang := 3 ;
  sNa := edtName.Text;
  Greetuser(sNa, iLang);
end;

end.
