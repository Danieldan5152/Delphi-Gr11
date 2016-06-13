unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmLogon = class(TForm)
    edtVan: TEdit;
    edtDateOBirth: TEdit;
    edtAccountN: TEdit;
    btnVertoon: TButton;
    bmbRetry: TBitBtn;
    bmbClose: TBitBtn;
    lblVan: TLabel;
    lblDateOBirth: TLabel;
    lblAccountN: TLabel;
    procedure btnVertoonClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogon: TfrmLogon;

implementation

{$R *.dfm}

//custom procedures
procedure Vertoon;
var
sVan, sDat, sAccount : string;
  K: Integer;
begin
  sVan := frmLogon.edtVan.Text;
  sVan := Uppercase(sVan);//maak alle letters van sVan groot letters
  sDat := frmLogon.edtDateOBirth.Text;
  for K := Length(sVan) downto 1 do//sit die letters ander kant in
    begin
      sAccount := sAccount + sVan[K];
    end;
  sAccount := sAccount + sDat[6] + sDat[7];//sit die maand van geboorte by
  frmLogon.edtAccountN.Text := sAccount;
end;

procedure Beginoor;
begin     //maak reg vir volgende rekening naam
  frmLogon.edtVan.Clear;
  frmLogon.edtDateOBirth.text := 'YYYY/MM/DD';
  frmLogon.edtAccountN.Clear;
  frmLogon.edtVan.SetFocus;
end;

procedure TfrmLogon.bmbRetryClick(Sender: TObject);
begin
  Beginoor;
end;

procedure TfrmLogon.btnVertoonClick(Sender: TObject);
begin
  Vertoon;
end;

end.
