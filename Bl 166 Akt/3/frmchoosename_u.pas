unit frmchoosename_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfrmChooseName = class(TForm)
    redOutput: TRichEdit;
    btnRead: TButton;
    btndisplay: TButton;
  private

  public
    { Public declarations }
  end;

var
  frmChooseName: TfrmChooseName;

implementation

{$R *.dfm}

end.
