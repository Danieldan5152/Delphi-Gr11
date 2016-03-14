unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmVierKants = class(TForm)
    redAfvoer: TRichEdit;
    btnVerwerk: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    procedure btnVerwerkClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVierKants: TfrmVierKants;

implementation

{$R *.dfm}

//Custom procedures
procedure Verwerk;//eerste vierkants
var
  sAfvoer : String;
  iNom, iAfvoer: Integer;
begin
  for iNom := 1 to 10 do//vierkants van 1 tot 10
    begin
      iAfvoer := iNom * iNom;
      sAfvoer := IntToStr(iNom) + ' * ' + IntToStr(iNom) + ' = ' + IntToStr(iAfvoer);
      frmVierKants.redAfvoer.lines.Add(IntToStr(iAfvoer));
      frmVierKants.redAfvoer.lines.Add(sAfvoer);
      frmVierKants.redAfvoer.lines.Add(' ');
    end;
end;

procedure Beginoor;//maak skoon vir oor begining
begin
  frmVierKants.redAfvoer.clear;
  frmVierKants.btnVerwerk.SetFocus;
end;

procedure TfrmVierKants.bmbRetryClick(Sender: TObject);
begin
  Beginoor;
end;

procedure TfrmVierKants.btnVerwerkClick(Sender: TObject);
begin
  Verwerk;
end;

end.
