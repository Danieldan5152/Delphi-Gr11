unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCalculator = class(TForm)
    btnNum1: TButton;
    btnNum2: TButton;
    btnNum3: TButton;
    btnNum4: TButton;
    btnNum5: TButton;
    btnNum6: TButton;
    btnNum7: TButton;
    btnNum8: TButton;
    btnNum9: TButton;
    btnNum0: TButton;
    btnPlus: TButton;
    btnMinus: TButton;
    btnDeel: TButton;
    btnMaal: TButton;
    btnNumEqu: TButton;
    btnNumDot: TButton;
    edtInput: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculator: TfrmCalculator;
  sInput, sTotal : string;
  eInput : extended;
implementation

{$R *.dfm}
//Alle custom procedures
procedure Plus;
begin

end;
end.
