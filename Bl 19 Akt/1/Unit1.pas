unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, Buttons, ExtCtrls, ComCtrls;

type
  TfrmInfo = class(TForm)
    edtNaam: TEdit;
    edtVan: TEdit;
    edtFoon: TEdit;
    edtSel: TEdit;
    edtEPos: TEdit;
    btnAdd: TButton;
    bmbReset: TBitBtn;
    bmbClose: TBitBtn;
    lblNaam: TLabel;
    lblVan: TLabel;
    lblFoon: TLabel;
    lblSel: TLabel;
    lblEPos: TLabel;
    redAfvoer: TRichEdit;
    procedure btnAddClick(Sender: TObject);
    procedure bmbResetClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInfo: TfrmInfo;

implementation

{$R *.dfm}

procedure TfrmInfo.bmbResetClick(Sender: TObject);
begin//maak ales skoon
edtNaam.clear;
edtVan.clear;
edtFoon.clear;
edtSel.clear;
edtEPos.clear;
edtNaam.SetFocus;//stel fokus
end;

procedure TfrmInfo.btnAddClick(Sender: TObject);
var
sNaam, sVan, sFoon, sSel, sEPos : string;
begin
// stel ales gelyk in varibles
sNaam := lblNaam.Caption + ' ' + edtNaam.Text;
sVan := lblVan.Caption + ' ' + edtVan.Text;
sFoon := lblFoon.Caption + ' ' + edtFoon.Text;
sSel := lblSel.caption + ' ' + edtSel.Text;
sEPos := lblEPos.Caption + ' ' + edtEPos.Text;

// vertoon alles
redAfvoer.Lines.Add(' ');
redAfvoer.Lines.Add(sNaam);
redAfvoer.Lines.Add(sVan);
redAfvoer.Lines.Add(sFoon);
redAfvoer.Lines.Add(sSel);
redAfvoer.Lines.Add(sEPos);
end;

procedure TfrmInfo.FormActivate(Sender: TObject);
begin
edtNaam.SetFocus;//stel fokus
end;

end.
