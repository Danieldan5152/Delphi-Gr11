unit dmTourData_u;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmTourData = class(TDataModule)
    conTourData: TADOConnection;
    tblLearners: TADOTable;
    dsrLearners: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTourData: TdmTourData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
