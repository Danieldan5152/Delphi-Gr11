unit frmWin_iPad_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TfrmWinner = class(TForm)
    btnReadAndDisplay: TButton;
    redOutput: TRichEdit;
    btnDetermineWinner: TButton;
    pnlWinner: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWinner: TfrmWinner;

implementation

{$R *.dfm}




end.
