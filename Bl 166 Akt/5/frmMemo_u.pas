unit frmMemo_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TfrmMemo = class(TForm)
    edtName: TEdit;
    lblName: TLabel;
    btnEnter: TButton;
    lblScore: TLabel;
    pnlAnswers: TPanel;
    btnReset: TBitBtn;
  private

  public
    { Public declarations }
  end;

var
  frmMemo: TfrmMemo;

implementation

{$R *.dfm}

end.
