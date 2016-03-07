unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin;

type
  TfrmASCII = class(TForm)
    edtLetter: TEdit;
    sedASCII: TSpinEdit;
    btnLetter: TButton;
    btnASCII: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    lblLetter: TLabel;
    lblASCII: TLabel;
    procedure btnLetterClick(Sender: TObject);
    procedure btnASCIIClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmASCII: TfrmASCII;

implementation

{$R *.dfm}

//custom procedures
procedure Beginfrm;
begin
    frmASCII.edtLetter.SetFocus;//stel fokus
end;

procedure LetNAASCII;// letter na kode
var
  iASCII : integer ;
  cChar  : char ; //net een karakter
begin
   cChar := frmASCII.edtLetter.Text[1];// eerste letter van die edit
   if cChar IN ['A'..'Z', 'a'..'z'] then//moet n klein of groot letter wees
      begin
         iASCII := ord(cChar) ;
         frmASCII.sedASCII.Value := iASCII ;
      end
   else
      begin
         ShowMessage('Dit moet n letter wees groot of klein.') ;
         frmASCII.edtLetter.Text := 'A';
         frmASCII.edtLetter.SetFocus ;
      end;
end;

procedure ASCIINALet;// kode na n letter
var
  iASCII : integer ;
  cChar  : char ;// just a single char lke a string with one letter
begin
  iASCII := frmASCII.sedASCII.Value;
  if iASCII IN [65..90, 97..122] then
    begin
      cChar := chr(iASCII);
      frmASCII.edtLetter.Text := cChar;
    end
  else
    begin
      ShowMessage('Die ASCII waarde moet tussen 65 en 90 of tussen 97 en 122 wees.') ;
      frmASCII.sedASCII.Value := 65 ;// A se ascii kode
    end;
end;

procedure Beginoor;
begin
  frmASCII.edtLetter.Text := 'A';// ASCII 65 se letter
  frmASCII.sedASCII.Value := 65 ;// A se ascii kode
  frmASCII.edtLetter.SetFocus;//stel fokus
end;

procedure TfrmASCII.bmbRetryClick(Sender: TObject);
begin
  Beginoor;
end;

procedure TfrmASCII.btnASCIIClick(Sender: TObject);
begin
  ASCIINALet;
end;

procedure TfrmASCII.btnLetterClick(Sender: TObject);
begin
  LetNAASCII;
end;

procedure TfrmASCII.FormActivate(Sender: TObject);
begin
  Beginfrm;
end;

end.
