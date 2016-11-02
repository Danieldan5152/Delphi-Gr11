unit frmExperiment_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfrmExperiment = class(TForm)
    redOutput: TRichEdit;
    btnDetermine: TButton;
  private

  public
    { Public declarations }
  end;

var
  frmExperiment: TfrmExperiment;

implementation

{$R *.dfm}


end.
