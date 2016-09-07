unit frmChooseMovie_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ComCtrls, Buttons;

type
  TfrmChooseMovie = class(TForm)
    redList: TRichEdit;
    sedChoose: TSpinEdit;
    lblHead: TLabel;
    btnAdd: TButton;
    redView: TRichEdit;
    bmbClose: TBitBtn;
    bmbRetry: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure bmbRetryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChooseMovie: TfrmChooseMovie;
  K : integer;
Const
  arrMovies : array[1..8] of string =('GhostRider',
                                      'Cars',
                                      'Aviators',
                                      'Angry Birds',
                                      'Ted',
                                      'Lion King',
                                      'Macy',
                                      'Beasts');

implementation

{$R *.dfm}
procedure Beginfrm;
begin
  for K := 1 to 8 do
    frmChooseMovie.redList.Lines.Add(IntToStr(K) + #9 + arrMovies[K]);
end;

procedure TfrmChooseMovie.bmbRetryClick(Sender: TObject);
begin
  redView.Clear;
  sedChoose.Value := 1;
end;

procedure TfrmChooseMovie.btnAddClick(Sender: TObject);
var
  iGekies : integer;
begin
  iGekies := sedChoose.Value;
  redView.Lines.Add(arrMovies[iGekies]);
end;

procedure TfrmChooseMovie.FormActivate(Sender: TObject);
begin
  Beginfrm;
end;

end.
