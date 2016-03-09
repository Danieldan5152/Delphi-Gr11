unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmGroot5 = class(TForm)
    rgpGroot5: TRadioGroup;
    lblOpskrif: TLabel;
    lblBuffel: TLabel;
    lblOlifant: TLabel;
    lblRhino: TLabel;
    lblleeu: TLabel;
    lblLuuiperd: TLabel;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    procedure rgpGroot5Click(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGroot5: TfrmGroot5;
  sTotaal: String;
implementation

{$R *.dfm}

//custom procedures
Procedure RegVolgende;//maak reg vir volgende in sleuteling
begin
  frmGroot5.rgpGroot5.ItemIndex := -1;//maak die item indek skoon
  sTotaal := ' ';//maak hom net skoon ingeval iets verkeert gedoen word
end;

procedure Buffel;//as buffel gedruk word
begin
  sTotaal := InputBox('Groot vyf',
  'Buffels gesien','');
  frmGroot5.lblBuffel.Caption := sTotaal;
  RegVolgende;
end;

procedure Olifant;//as olifant gedruk word
begin
  sTotaal := InputBox('Groot vyf',
  'Olifante gesien','');
  frmGroot5.lblOlifant.Caption := sTotaal;
  RegVolgende;
end;

procedure Rhino;//as rhino gedruk word
begin
  sTotaal := InputBox('Groot vyf',
  'Rhinos gesien','');
  frmGroot5.lblRhino.Caption := sTotaal;
  RegVolgende;
end;

procedure Leeu;//as leeu gedruk word
begin
  sTotaal := InputBox('Groot vyf',
  'Leeus gesien','');
  frmGroot5.lblLeeu.Caption := sTotaal;
  RegVolgende;
end;

procedure Luuiperd;//as luuiperd gedruk word
begin
  sTotaal := InputBox('Groot vyf',
  'Luuiperde gesien','');
  frmGroot5.lblLuuiperd.Caption := sTotaal;
  RegVolgende;
end;

procedure Sleutelin;//insleutel process
var
iRadio : integer;
begin
  iRadio := frmGroot5.rgpGroot5.ItemIndex;
  case iRadio of
    0 : Buffel;
    1 : Olifant;
    2 : Rhino;
    3 : Leeu;
    4 : Luuiperd;
  end;
end;

procedure Beginoor;
var
  sNiks : string;
begin
  Regvolgende;
  sNiks := ' ';
  frmGroot5.lblBuffel.Caption := sNiks;
  frmGroot5.lblOlifant.Caption := sNiks;
  frmGroot5.lblRhino.Caption := sNiks;
  frmGroot5.lblleeu.Caption := sNiks;
  frmGroot5.lblLuuiperd.Caption := sNiks;
end;

procedure TfrmGroot5.bmbRetryClick(Sender: TObject);
begin
  Beginoor;
end;

procedure TfrmGroot5.rgpGroot5Click(Sender: TObject);
begin
  Sleutelin;
end;

end.
