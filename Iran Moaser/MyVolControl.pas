unit MyVolControl;

interface

uses
   MMSystem, Types, MPlayer;

const
   MCI_SETAUDIO = $0873;
   MCI_DGV_SETAUDIO_VOLUME = $4002;
   MCI_DGV_SETAUDIO_ITEM = $00800000;
   MCI_DGV_SETAUDIO_VALUE = $01000000;
   MCI_DGV_STATUS_VOLUME = $4019;
   
type
   MCI_DGV_SETAUDIO_PARMS = record
     dwCallback: DWORD;
     dwItem: DWORD;
     dwValue: DWORD;
     dwOver: DWORD;
     lpstrAlgorithm: PChar;
     lpstrQuality: PChar;
   end;
type
   MCI_STATUS_PARMS = record
     dwCallback: DWORD;
     dwReturn: DWORD;
     dwItem: DWORD;
     dwTrack: DWORD;
   end;

procedure MPSetVolume(MP: TMediaPlayer; Volume: Integer) ;
function MPGetVolume(MP: TMediaPlayer): Integer;

implementation

{Set Volume, range 0 - 1000}
procedure MPSetVolume(MP: TMediaPlayer; Volume: Integer) ;
var
   p: MCI_DGV_SETAUDIO_PARMS;
begin
   p.dwCallback := 0;
   p.dwItem := MCI_DGV_SETAUDIO_VOLUME;
   p.dwValue := Volume;
   p.dwOver := 0;
   p.lpstrAlgorithm := nil;
   p.lpstrQuality := nil;
   mciSendCommand(MP.DeviceID, MCI_SETAUDIO, MCI_DGV_SETAUDIO_VALUE or MCI_DGV_SETAUDIO_ITEM, Cardinal(@p)) ;
end;

{Get Volume, range 0 - 1000}
function MPGetVolume(MP: TMediaPlayer): Integer;
var
   p: MCI_STATUS_PARMS;
begin
   p.dwCallback := 0;
   p.dwItem := MCI_DGV_STATUS_VOLUME;
   mciSendCommand(MP.DeviceID, MCI_STATUS, MCI_STATUS_ITEM, Cardinal(@p)) ;
   Result := p.dwReturn;
end;

end.
