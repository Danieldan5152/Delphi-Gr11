unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons;

type
  TfrmInfo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    richedit1: TRichEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInfo: TfrmInfo;

implementation

{$R *.dfm}

procedure TfrmInfo.BitBtn1Click(Sender: TObject);
var
sNaam, sVan, sTelefoon, sSel, sEPos : string;
begin
// stel ales gelyk in varibles
sNaam := label1.Caption + ' ' + edit1.Text ;
sVan := label1.Caption + ' ' + edit1.Text ;
sTelefoon := label1.Caption + ' ' + edit1.Text ;
sSel := label1.Caption + ' ' + edit1.Text ;
sEPos := label1.Caption + ' ' + edit1.Text ;

// vertoon alles
richedit1.lines.add (' ');
richedit1.lines.add (label1.Caption + ' ' + edit1.Text);
richedit1.lines.add (label2.Caption + ' ' + edit2.Text);
richedit1.lines.add (label3.Caption + ' ' + edit3.Text);
richedit1.lines.add (label4.Caption + ' ' + edit4.Text);
richedit1.lines.add (label5.Caption + ' ' + edit5.Text);

end;

procedure TfrmInfo.BitBtn2Click(Sender: TObject);
begin
// Maak ales skoon om nog n stel informasie by te lass
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
edit1.SetFocus;
end;

end.
