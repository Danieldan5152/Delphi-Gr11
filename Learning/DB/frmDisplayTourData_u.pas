unit frmDisplayTourData_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dmTourdata_u, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmDisplayTourData = class(TForm)
    dbgLearners: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDisplayTourData: TfrmDisplayTourData;

implementation

{$R *.dfm}

end.
