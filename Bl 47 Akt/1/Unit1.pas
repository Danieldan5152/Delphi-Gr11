unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, Buttons, ExtCtrls;

type
  TfrmRegistreer = class(TForm)
    btnHier: TButton;
    lblAfvoer: TLabel;
    procedure btnHierClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegistreer: TfrmRegistreer;
  sRegister: string;

implementation

{$R *.dfm}

procedure TfrmRegistreer.btnHierClick(Sender: TObject);
begin
sRegister := InputBox('Naam en Van', 'Sit in jou naam en van:', ' ');
lblAfvoer.Caption := 'Dankie vir ' + sRegister + ' se regestrasie';
end;

end.
