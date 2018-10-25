unit untSplashLogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  TfrmSplashLogo = class(TForm)
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
  frmSplashLogo: TfrmSplashLogo;

implementation

{$R *.dfm}

procedure TfrmSplashLogo.imgLogoClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSplashLogo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#32, #27, #13]) then
    Close;
end;

procedure TfrmSplashLogo.Timer1Timer(Sender: TObject);
begin
  Close;
end;

procedure TfrmSplashLogo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
