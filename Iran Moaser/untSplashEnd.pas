unit untSplashEnd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  TfrmSplashEnd = class(TForm)
    imgLogo: TImage;
    Timer1: TTimer;
    procedure imgLogoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplashEnd: TfrmSplashEnd;

implementation

{$R *.dfm}

procedure TfrmSplashEnd.imgLogoClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSplashEnd.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#32, #27, #13]) then
    Close;
end;

procedure TfrmSplashEnd.Timer1Timer(Sender: TObject);
begin
  Close;
end;

procedure TfrmSplashEnd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
