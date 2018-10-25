program IranMoaser;

uses
  Forms,
  Windows,
  OleCtrls,
  Graphics,
  untMain in 'untMain.pas' {frmMain},
  untBackground in 'untBackground.pas' {frmBackground},
  General in 'General.pas',
  untFullScreen in 'untFullScreen.pas' {frmFullScreen},
  untSplashLogo in 'untSplashLogo.pas' {frmSplashLogo},
  untSplashEnd in 'untSplashEnd.pas' {frmSplashEnd};

{$R *.res}

begin

  Application.Initialize;
  Application.Title := 'ÇíÑÇä ãÚÇÕÑ';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
