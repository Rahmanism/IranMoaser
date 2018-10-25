unit General;

interface

uses
  IniFiles, Dialogs, Forms, ExtCtrls, StdCtrls, Controls, Windows, mmsystem,
  SysUtils, MPlayer, Messages;

type
  TFunctionType = (ftAudio, ftVideo, ftText, ftImage, ftClip);

const
  WM_ICONTRAY = WM_USER + 1;
  ALPHABLEND_DIFF = 50;
  DATA_FOLDER = 'data\';
  IMAGES_FOLDER = 'images\';
  VIDEO_FOLDER = 'video\';
  AUDIO_FOLDER = 'audio\';
  IMAGE_FOLDER = 'image\';
  CLIP_FOLDER = 'clip\';
  TEXT_FOLDER = 'text\';
  CLICK_SND = 1;
  HOVER_SND = 2;
  MAINBTN_SND = 3;
  MAX_VOL = 1000;


var
  FunctionType: TFunctionType;
  VideoPath, AudioPath, DataPath, ClipPath,
  ImagePath, ImagesPath: String;
  TextPath: array[1..3] of String;
  // ImagePath is for images of Image Frame
  // but ImagesPath is for images of all forms
  // that must be loaded at the begining of
  // application run.
  NowPlay, MaxNo: Byte;
  mplBackPlay: Boolean;
  currentPlayer: TMediaPlayer;
  Mute: Boolean;
  Rep, Loop: Boolean;
  Vol: Integer;       
  CurrentText: array[1..3] of Byte;

function MyDir(S: String): String;
procedure PreparePathNames;
procedure ImageLoad(Image1: TImage; ImageFileName: String);
procedure LinkHover;
procedure LinkClick;
procedure MainBtnClick;
procedure SetMute;
procedure ResetMute;
procedure SetCurrentTextNumbers;
function GetWinDir: TFileName;

implementation

uses
  //untBesm, untSplash,
  untMain
  //, untAudio, untPlayer,
  ;

function MyDir(S: String): String;
begin
  S := GetCurrentDir + '\' + S;
  while Pos('\\', S) > 0 do
    Delete(S, Pos('\\', S), 1);
  Result := S;
end;

procedure PreparePathNames;
begin
  VideoPath := MyDir(VIDEO_FOLDER);
  AudioPath := MyDir(AUDIO_FOLDER);
  DataPath := MyDir(DATA_FOLDER);
  ClipPath := MyDir(CLIP_FOLDER);
  TextPath[1] := MyDir(TEXT_FOLDER + '1\');
  TextPath[2] := MyDir(TEXT_FOLDER + '2\');
  TextPath[3] := MyDir(TEXT_FOLDER + '3\');
  ImagePath := MyDir(IMAGE_FOLDER);
  ImagesPath := MyDir(IMAGES_FOLDER)
end;

procedure ImageLoad(Image1: TImage; ImageFileName: String);
var
  fullFileName: String;
begin
  fullFileName := ImagesPath + ImageFileName;
//  ShowMessage(fullFileName);
  if FileExists(fullFileName) then
    Image1.Picture.LoadFromFile(fullFileName);
end;

procedure LinkHover;
begin
  sndPlaySound(PAnsiChar(HOVER_SND), SND_ASYNC or SND_MEMORY or SND_RESOURCE);
end;

procedure LinkClick;
begin
  sndPlaySound(PAnsiChar(CLICK_SND), SND_ASYNC or SND_MEMORY or SND_RESOURCE);
end;

procedure MainBtnClick;
begin
  sndPlaySound(PAnsiChar(MAINBTN_SND), SND_ASYNC or SND_MEMORY or SND_RESOURCE);
end;

procedure SetMute;
begin
  Mute := True;
end;

procedure ResetMute;
begin
  Mute := False;
end;

procedure SetCurrentTextNumbers;
const
  f = 0;
begin
  CurrentText[1] := f;
  CurrentText[2] := f;
  CurrentText[3] := f;
end;

function GetWinDir: TFileName;
var
  SysFolder: String;
begin
  SetLength(SysFolder, 255);
  SetLength(SysFolder, GetWindowsDirectory(
    PChar(SysFolder), Length(SysFolder)));
  Result := SysFolder;
end;

//////////////////////////////////////////////////////////////////////////////
initialization
begin
  PreparePathNames;
end;

end.
