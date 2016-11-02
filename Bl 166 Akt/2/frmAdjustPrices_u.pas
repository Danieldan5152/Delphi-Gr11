unit frmAdjustPrices_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfrmAdjustPrices = class(TForm)
    redNormal: TRichEdit;
    edtIncrease: TEdit;
    Label1: TLabel;
    btnAdjust: TButton;
    redAdjust: TRichEdit;
  private

  public
    { Public declarations }
  end;

var
  frmAdjustPrices: TfrmAdjustPrices;

implementation

{$R *.dfm}



end.

