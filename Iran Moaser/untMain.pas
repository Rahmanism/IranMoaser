unit untMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, General, MMSystem, 
  MPlayer, ShellAPI, Menus, MyVolControl, ActiveX,
  ActnList, ImgList, SHDocVw, OleCtrls;

type
  TfrmMain = class(TForm)
    imgMain: TImage;
    imgVideo: TImage;
    imgAudio: TImage;
    imgText: TImage;
    lblVideo: TLabel;
    lblAudio: TLabel;
    lblText: TLabel;
    imgVideoD: TImage;
    imgTextD: TImage;
    imgAudioD: TImage;
    pnlTextLinks: TPanel;
    imgTextMenu: TImage;
    imgTextLinks1: TImage;
    pnlTextLinks1: TPanel;
    imgExit: TImage;
    imgMinimize: TImage;
    imgMusic: TImage;
    imgSysTray: TImage;
    lblExit: TLabel;
    lblMinimize: TLabel;
    lblMusic: TLabel;
    lblSysTray: TLabel;
    pnlBrowser: TPanel;
    WebBrowser1: TWebBrowser;
    mplBack: TMediaPlayer;
    PopupMenu1: TPopupMenu;
    ppmExit: TMenuItem;
    Timer1: TTimer;
    tmrBlend: TTimer;
    imgAbout: TImage;
    pnlAboutVertical: TPanel;
    imgPnlVAbout: TImage;
    imgTavakkoliVAbout: TImage;
    imgArmanVAbout: TImage;
    lblTavakkoliVAbout: TLabel;
    lblArmanVAbout: TLabel;
    lblAboutV: TLabel;
    pnlAudioLinks: TPanel;
    imgAudioLinks: TImage;
    pnlVideoLinks: TPanel;
    imgVideoLinks: TImage;
    lblV1: TLabel;
    imgV1: TImage;
    imgV2: TImage;
    lblV2: TLabel;
    lblTextMenu1: TLabel;
    imgTextMenu1: TImage;
    lblTextMenu2: TLabel;
    imgTextMenu2: TImage;
    lblTextMenu3: TLabel;
    imgTextMenu3: TImage;
    lblT1_01: TLabel;
    imgT1_01: TImage;
    imgT1_02: TImage;
    lblT1_02: TLabel;
    lblT1_03: TLabel;
    imgT1_03: TImage;
    lblT1_05: TLabel;
    imgT1_05: TImage;
    imgT1_04: TImage;
    lblT1_04: TLabel;
    lblT1_06: TLabel;
    imgT1_06: TImage;
    lblT1_08: TLabel;
    imgT1_08: TImage;
    lblT1_07: TLabel;
    imgT1_07: TImage;
    lblT1_09: TLabel;
    imgT1_09: TImage;
    lblT1_10: TLabel;
    imgT1_10: TImage;
    lblTextMenu3_3: TLabel;
    lblTextMenu2_2: TLabel;
    imgTextMenu3_3: TImage;
    imgTextMenu2_2: TImage;
    pnlTextLinks2: TPanel;
    imgTextLinks2: TImage;
    imgT2_01: TImage;
    imgT2_02: TImage;
    imgT2_03: TImage;
    imgT2_05: TImage;
    imgT2_04: TImage;
    imgT2_06: TImage;
    lblT2_06: TLabel;
    lblT2_05: TLabel;
    lblT2_04: TLabel;
    lblT2_03: TLabel;
    lblT2_02: TLabel;
    lblT2_01: TLabel;
    mplAudio: TMediaPlayer;
    pnlPlayer: TPanel;
    imgPlayer: TImage;
    imgLoop: TImage;
    imgLoopD: TImage;
    lblLoop: TLabel;
    imgRep: TImage;
    imgRepD: TImage;
    lblRep: TLabel;
    imgStop: TImage;
    imgStopD: TImage;
    lblStop: TLabel;
    imgPre: TImage;
    imgPreD: TImage;
    lblPre: TLabel;
    imgNext: TImage;
    imgNextD: TImage;
    lblNext: TLabel;
    imgMute: TImage;
    imgMuteD: TImage;
    lblMute: TLabel;
    mplVideo: TMediaPlayer;
    imgTrackbar: TImage;
    lblTrackbar: TLabel;
    imgPlay: TImage;
    imgPause: TImage;
    imgPauseO: TImage;
    imgPauseD: TImage;
    imgPlayD: TImage;
    lblPlayPause: TLabel;
    ActionList1: TActionList;
    actPlayPause: TAction;
    actStop: TAction;
    actRewind: TAction;
    actForward: TAction;
    actPrevious: TAction;
    actNext: TAction;
    actVolHigh: TAction;
    actVolLow: TAction;
    actMute: TAction;
    actFullScreen: TAction;
    pnlScreen: TPanel;
    lblFullTime: TLabel;
    lblSlash: TLabel;
    lblTime: TLabel;
    lblA1: TLabel;
    imgA1: TImage;
    imgA2: TImage;
    imgA3: TImage;
    imgA4: TImage;
    imgA5: TImage;
    imgA6: TImage;
    imgA7: TImage;
    imgA8: TImage;
    imgA9: TImage;
    imgA10: TImage;
    imgA11: TImage;
    imgA12: TImage;
    imgA13: TImage;
    imgA14: TImage;
    imgA15: TImage;
    imgA16: TImage;
    imgA17: TImage;
    lblA2: TLabel;
    lblA3: TLabel;
    lblA4: TLabel;
    lblA5: TLabel;
    lblA6: TLabel;
    lblA7: TLabel;
    lblA8: TLabel;
    lblA9: TLabel;
    lblA10: TLabel;
    lblA11: TLabel;
    lblA12: TLabel;
    lblA13: TLabel;
    lblA14: TLabel;
    lblA15: TLabel;
    lblA16: TLabel;
    lblA17: TLabel;
    imgSound: TImage;
    lblChangeSound: TLabel;
    pnlTextLinks3: TPanel;
    imgTextLinks3: TImage;
    imgT3_01: TImage;
    imgT3_02: TImage;
    imgT3_03: TImage;
    imgT3_05: TImage;
    imgT3_04: TImage;
    imgT3_06: TImage;
    lblT3_06: TLabel;
    lblT3_05: TLabel;
    lblT3_04: TLabel;
    lblT3_03: TLabel;
    lblT3_02: TLabel;
    lblT3_01: TLabel;
    lblT3_07: TLabel;
    imgT3_07: TImage;
    ppmReturn: TMenuItem;
    N2: TMenuItem;
    ppmPlayPause: TMenuItem;
    ppmStop: TMenuItem;
    N5: TMenuItem;
    ppmPlayMusic: TMenuItem;
    ppmStopMusic: TMenuItem;
    N8: TMenuItem;
    sysTrayMenuImages: TImageList;
    tmrAbout: TTimer;
    lblV4: TLabel;
    lblV3: TLabel;
    imgV4: TImage;
    imgV3: TImage;
    procedure lblTextMouseEnter(Sender: TObject);
    procedure lblTextMouseLeave(Sender: TObject);
    procedure lblAudioMouseEnter(Sender: TObject);
    procedure lblAudioMouseLeave(Sender: TObject);
    procedure lblVideoMouseEnter(Sender: TObject);
    procedure lblVideoMouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblVideoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblVideoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblAudioMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblAudioMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblTextMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblTextMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblTextClick(Sender: TObject);
    procedure lblAudioClick(Sender: TObject);
    procedure lblVideoClick(Sender: TObject);
    procedure lblTextMenu1MouseEnter(Sender: TObject);
    procedure lblTextMenu1MouseLeave(Sender: TObject);
    procedure lblTextMenu2MouseEnter(Sender: TObject);
    procedure lblTextMenu2MouseLeave(Sender: TObject);
    procedure lblTextMenu1Click(Sender: TObject);
    procedure lblTextMenu2Click(Sender: TObject);
    procedure lblT1_01MouseEnter(Sender: TObject);
    procedure lblT1_01MouseLeave(Sender: TObject);
    procedure lblT1_02MouseEnter(Sender: TObject);
    procedure lblT1_02MouseLeave(Sender: TObject);
    procedure lblT1_03MouseEnter(Sender: TObject);
    procedure lblT1_03MouseLeave(Sender: TObject);
    procedure lblT1_04MouseEnter(Sender: TObject);
    procedure lblT1_04MouseLeave(Sender: TObject);
    procedure lblT1_05MouseEnter(Sender: TObject);
    procedure lblT1_05MouseLeave(Sender: TObject);
    procedure lblT1_06MouseEnter(Sender: TObject);
    procedure lblT1_06MouseLeave(Sender: TObject);
    procedure lblT1_07MouseEnter(Sender: TObject);
    procedure lblT1_07MouseLeave(Sender: TObject);
    procedure lblT1_08MouseEnter(Sender: TObject);
    procedure lblT1_08MouseLeave(Sender: TObject);
    procedure lblT1_09MouseEnter(Sender: TObject);
    procedure lblT1_09MouseLeave(Sender: TObject);
    procedure lblT1_10MouseEnter(Sender: TObject);
    procedure lblT1_10MouseLeave(Sender: TObject);
    procedure lblT1_01Click(Sender: TObject);
    procedure lblT1_02Click(Sender: TObject);
    procedure lblT1_03Click(Sender: TObject);
    procedure lblT1_04Click(Sender: TObject);
    procedure lblT1_05Click(Sender: TObject);
    procedure lblT1_06Click(Sender: TObject);
    procedure lblT1_07Click(Sender: TObject);
    procedure lblT1_08Click(Sender: TObject);
    procedure lblT1_09Click(Sender: TObject);
    procedure lblT1_10Click(Sender: TObject);
    procedure lblExitMouseEnter(Sender: TObject);
    procedure lblExitMouseLeave(Sender: TObject);
    procedure lblMinimizeMouseEnter(Sender: TObject);
    procedure lblMinimizeMouseLeave(Sender: TObject);
    procedure lblSysTrayMouseEnter(Sender: TObject);
    procedure lblSysTrayMouseLeave(Sender: TObject);
    procedure lblMusicMouseEnter(Sender: TObject);
    procedure lblMusicMouseLeave(Sender: TObject);
    procedure lblExitClick(Sender: TObject);
    procedure lblMinimizeClick(Sender: TObject);
    procedure lblSysTrayClick(Sender: TObject);
    procedure lblMusicClick(Sender: TObject);
    procedure mplBackNotify(Sender: TObject);
    procedure mplAudioNotify(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ppmExitClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tmrBlendTimer(Sender: TObject);
    procedure lblChangeSoundMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ChangeSound(v: Smallint);
    procedure lblArmanVAboutMouseEnter(Sender: TObject);
    procedure lblArmanVAboutMouseLeave(Sender: TObject);
    procedure lblTavakkoliVAboutMouseEnter(Sender: TObject);
    procedure lblTavakkoliVAboutMouseLeave(Sender: TObject);
    procedure lblAboutVClick(Sender: TObject);
    procedure lblAboutVMouseEnter(Sender: TObject);
    procedure lblAboutVMouseLeave(Sender: TObject);
    procedure lblV1MouseEnter(Sender: TObject);
    procedure lblV1MouseLeave(Sender: TObject);
    procedure lblV2MouseEnter(Sender: TObject);
    procedure lblV2MouseLeave(Sender: TObject);
    procedure lblTextMenu2_2MouseEnter(Sender: TObject);
    procedure lblTextMenu2_2MouseLeave(Sender: TObject);
    procedure lblTextMenu3_3MouseEnter(Sender: TObject);
    procedure lblTextMenu3_3MouseLeave(Sender: TObject);
    procedure lblLoopMouseEnter(Sender: TObject);
    procedure lblLoopMouseLeave(Sender: TObject);
    procedure lblLoopMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblLoopMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblLoopClick(Sender: TObject);
    procedure lblRepMouseEnter(Sender: TObject);
    procedure lblRepMouseLeave(Sender: TObject);
    procedure lblRepMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblRepMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblStopMouseEnter(Sender: TObject);
    procedure lblStopMouseLeave(Sender: TObject);
    procedure lblStopMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblStopMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblPreMouseEnter(Sender: TObject);
    procedure lblPreMouseLeave(Sender: TObject);
    procedure lblPreMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblPreMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblNextMouseEnter(Sender: TObject);
    procedure lblNextMouseLeave(Sender: TObject);
    procedure lblNextMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblNextMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblMuteMouseEnter(Sender: TObject);
    procedure lblMuteMouseLeave(Sender: TObject);
    procedure lblMuteMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblMuteMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PlayFile(FileNo: Byte);
    procedure Imaging(No: Byte);
    procedure lblPlayPauseMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblPlayPauseMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblPlayPauseMouseEnter(Sender: TObject);
    procedure lblPlayPauseMouseLeave(Sender: TObject);
    procedure lblTrackbarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actPlayPauseExecute(Sender: TObject);
    procedure actStopExecute(Sender: TObject);
    procedure actRewindExecute(Sender: TObject);
    procedure actForwardExecute(Sender: TObject);
    procedure actPreviousExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actVolHighExecute(Sender: TObject);
    procedure actVolLowExecute(Sender: TObject);
    procedure actMuteExecute(Sender: TObject);
    procedure actFullScreenExecute(Sender: TObject);
    procedure lblRepClick(Sender: TObject);
    procedure lblV1Click(Sender: TObject);
    procedure lblV2Click(Sender: TObject);
    procedure lblA1Click(Sender: TObject);
    procedure lblA1MouseEnter(Sender: TObject);
    procedure lblA1MouseLeave(Sender: TObject);
    procedure lblA2Click(Sender: TObject);
    procedure lblA2MouseEnter(Sender: TObject);
    procedure lblA10Click(Sender: TObject);
    procedure lblA10MouseEnter(Sender: TObject);
    procedure lblA11Click(Sender: TObject);
    procedure lblA11MouseEnter(Sender: TObject);
    procedure lblA12Click(Sender: TObject);
    procedure lblA12MouseEnter(Sender: TObject);
    procedure lblA13Click(Sender: TObject);
    procedure lblA13MouseEnter(Sender: TObject);
    procedure lblA14Click(Sender: TObject);
    procedure lblA14MouseEnter(Sender: TObject);
    procedure lblA15Click(Sender: TObject);
    procedure lblA15MouseEnter(Sender: TObject);
    procedure lblA16Click(Sender: TObject);
    procedure lblA16MouseEnter(Sender: TObject);
    procedure lblA17Click(Sender: TObject);
    procedure lblA17MouseEnter(Sender: TObject);
    procedure lblA3Click(Sender: TObject);
    procedure lblA3MouseEnter(Sender: TObject);
    procedure lblA4Click(Sender: TObject);
    procedure lblA4MouseEnter(Sender: TObject);
    procedure lblA5Click(Sender: TObject);
    procedure lblA5MouseEnter(Sender: TObject);
    procedure lblA6Click(Sender: TObject);
    procedure lblA6MouseEnter(Sender: TObject);
    procedure lblA7Click(Sender: TObject);
    procedure lblA7MouseEnter(Sender: TObject);
    procedure lblA8Click(Sender: TObject);
    procedure lblA8MouseEnter(Sender: TObject);
    procedure lblA9Click(Sender: TObject);
    procedure lblA9MouseEnter(Sender: TObject);
    procedure lblT2_01MouseLeave(Sender: TObject);
    procedure lblT2_01MouseEnter(Sender: TObject);
    procedure lblT2_01Click(Sender: TObject);
    procedure lblT2_02Click(Sender: TObject);
    procedure lblT2_02MouseEnter(Sender: TObject);
    procedure lblT2_03Click(Sender: TObject);
    procedure lblT2_03MouseEnter(Sender: TObject);
    procedure lblT2_04Click(Sender: TObject);
    procedure lblT2_04MouseEnter(Sender: TObject);
    procedure lblT2_05Click(Sender: TObject);
    procedure lblT2_05MouseEnter(Sender: TObject);
    procedure lblT2_06Click(Sender: TObject);
    procedure lblT2_06MouseEnter(Sender: TObject);
    procedure lblT3_01MouseLeave(Sender: TObject);
    procedure lblT3_01MouseEnter(Sender: TObject);
    procedure lblT3_01Click(Sender: TObject);
    procedure lblT3_02Click(Sender: TObject);
    procedure lblT3_02MouseEnter(Sender: TObject);
    procedure lblT3_03Click(Sender: TObject);
    procedure lblT3_03MouseEnter(Sender: TObject);
    procedure lblT3_04Click(Sender: TObject);
    procedure lblT3_04MouseEnter(Sender: TObject);
    procedure lblT3_05Click(Sender: TObject);
    procedure lblT3_05MouseEnter(Sender: TObject);
    procedure lblT3_06Click(Sender: TObject);
    procedure lblT3_06MouseEnter(Sender: TObject);
    procedure lblT3_07Click(Sender: TObject);
    procedure lblT3_07MouseEnter(Sender: TObject);
    procedure lblTextMenu3_3Click(Sender: TObject);
    procedure lblTextMenu3Click(Sender: TObject);
    procedure lblTextMenu3MouseEnter(Sender: TObject);
    procedure lblTextMenu3MouseLeave(Sender: TObject);
    procedure ppmReturnClick(Sender: TObject);
    procedure ppmStopMusicClick(Sender: TObject);
    procedure lblArmanVAboutClick(Sender: TObject);
    procedure lblTavakkoliVAboutClick(Sender: TObject);
    procedure tmrAboutTimer(Sender: TObject);
    procedure pnlScreenDblClick(Sender: TObject);
    procedure lblV3Click(Sender: TObject);
    procedure lblV3MouseEnter(Sender: TObject);
    procedure lblV4Click(Sender: TObject);
    procedure lblV4MouseEnter(Sender: TObject);
  private
    { Private declarations }
    TrayIconData: TNotifyIconData;
    procedure UnvisibleMainBtns;
    procedure SwitchTextMenu(textMenu: Byte);
//    procedure UnvisibleTextLinksPanels;
    procedure ImagingT(c, n: Byte);
    procedure ImagingT1n;
    procedure BrowseFile(c, n: Byte);
    procedure currentPlayerNotify(Sender: TObject);
    procedure InitialTrayIcon;
    procedure TrayMessage(var Msg: TMessage); message WM_ICONTRAY;
    procedure SoundHeightShow;
    function MiliSecondToTime(Sec: Integer): AnsiString;
    procedure UpdateCurrTime;
    procedure UnvisibleLinkPanels;
    function UpdateFileName(n: Byte): String;
    procedure Imaging1Video;
    procedure Imaging1;
    procedure Imaging1Audio;
    procedure MakeVisibleTimeLabels;
//    procedure MakeUnvisibleTimeLabels;
    procedure ImagingT2n;
    procedure ImagingT3n;
    procedure ShowAbout(aboutFile: String);
  public
    { Public declarations }
    procedure SwitchFunctionType(ft: TFunctionType);
  end;

var
  frmMain: TfrmMain;

implementation

uses untBackground, untFullScreen, untSplashLogo, Math, untSplashEnd;

{$R *.dfm}

// Akulad Dollar R  &nbsp; MySnds.RES Akulad
    
procedure TfrmMain.lblTextMouseEnter(Sender: TObject);
begin
  imgText.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblTextMouseLeave(Sender: TObject);
begin
  imgText.Visible := False;
end;

procedure TfrmMain.lblAudioMouseEnter(Sender: TObject);
begin
  imgAudio.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblAudioMouseLeave(Sender: TObject);
begin
  imgAudio.Visible := False;
end;

procedure TfrmMain.lblVideoMouseEnter(Sender: TObject);
begin
  imgVideo.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblVideoMouseLeave(Sender: TObject);
begin
  imgVideo.Visible := False;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  Screen.Cursors[1] := LoadCursor(0, IDC_HAND);

  frmSplashLogo := TfrmSplashLogo.Create(Self);
  frmSplashLogo.ShowModal;

  frmBackground := TfrmBackground.Create(Self);
  frmBackground.Show;
  frmBackground.Enabled := False;

  if not (FileExists(DataPath + 'BMITRA.TTF')) then
  begin
    CopyFile(PAnsiChar(DataPath + 'BMITRA.TTF'),
      PAnsiChar(GetWinDir + '\Fonts\BMITRA.TTF'), True);
    AddFontResource(PAnsiChar(GetWinDir + '\Fonts\BMITRA.TTF'));
  end;

  if not (FileExists(DataPath + 'BMITRABD.TTF')) then
  begin
    CopyFile(PAnsiChar(DataPath + 'BMITRABD.TTF'),
      PAnsiChar(GetWinDir + '\Fonts\BMITRABD.TTF'), True);
    AddFontResource(PAnsiChar(GetWinDir + '\Fonts\BMITRABD.TTF'));
  end;
  
  Rep := False;
  Loop := False;
  NowPlay := 0; // No file is playing.
  SetCurrentTextNumbers;
  SwitchFunctionType(ftText);
  currentPlayer := mplAudio;
  Vol := MPGetVolume(currentPlayer);
  Mute := False;
  if (Mute) then
    imgMute.Visible := True
  else
    imgMute.Visible := False;
  SoundHeightShow;
  try
    mplBack.FileName := DataPath + 'b.mp3';
    mplBack.Open;
    mplBack.Play;
    mplBack.Notify := True;
    mplBackPlay := True;
  except;end;
end;

procedure TfrmMain.UpdateCurrTime;
var
  cp, l, t: Longint; // Current Position, Length
begin
  try
    cp := currentPlayer.Position;// div 1000;
    l := currentPlayer.Length;// div 1000;
    t := cp * lblTrackbar.Width div l;
   // if not (t >= 316) then  // 317 is the length of lblTrackbar
     // t := (t div 5) * 5;
    imgTrackbar.Width := t;
//    imgTrackMove.Width := lblTrackUser.Width - t;
//    imgTrackMove.Left := lblTrackUser.Left + t;
    lblTime.Caption := MiliSecondToTime(cp);
  except
    ;
  end;
end;

procedure TfrmMain.lblVideoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  imgVideoD.Visible := True;
end;

procedure TfrmMain.lblVideoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if not (FunctionType = ftVideo) then
    imgVideoD.Visible := False;
end;

procedure TfrmMain.lblAudioMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  imgAudioD.Visible := True;
end;

procedure TfrmMain.lblAudioMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if not (FunctionType = ftAudio) then
    imgAudioD.Visible := False;
end;

procedure TfrmMain.lblTextMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  imgTextD.Visible := True;
end;

procedure TfrmMain.lblTextMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if not (FunctionType = ftText) then
    imgTextD.Visible := False;
end;

procedure TfrmMain.UnvisibleLinkPanels;
begin
  pnlTextLinks.Visible := False;
  pnlAboutVertical.Visible := False;
  pnlAudioLinks.Visible := False;
  pnlVideoLinks.Visible := False;
  pnlPlayer.Visible := False;
  pnlScreen.Visible := False;
  pnlBrowser.Visible := False;
end;

procedure TfrmMain.SwitchFunctionType(ft: TFunctionType);
begin
  MainBtnClick;
  FunctionType := ft;
  UnvisibleMainBtns;
  UnvisibleLinkPanels;
  case FunctionType of
    ftAudio:
      begin
        imgAudioD.Visible := True;
        pnlAudioLinks.Visible := True;
        MaxNo := 17;
        pnlPlayer.Visible := True;
        if not (currentPlayer = mplAudio) then
        begin
          try
            currentPlayer.Close;
          except; end;
        end;
        currentPlayer := mplAudio;
      end;
    ftVideo:
      begin
        imgVideoD.Visible := True;
        pnlVideoLinks.Visible := True;
        MaxNo := 4;
        pnlPlayer.Visible := True;
        pnlScreen.Visible := True;
        if not (currentPlayer = mplVideo) then
        begin
          try
            currentPlayer.Close;
          except; end;
        end;
        currentPlayer := mplVideo;
        currentPlayer.Display := pnlScreen;
      end;
    ftText:
      begin
        imgTextD.Visible := True;
        UnvisibleLinkPanels;
        pnlTextLinks.Visible := True;
        pnlTextLinks1.Visible := True;
        pnlTextLinks1.BringToFront;
        lblMusicClick(Self);
    //\\    OleInitialize(nil);
      end;
  end;
end;

procedure TfrmMain.lblTextClick(Sender: TObject);
begin
  SwitchFunctionType(ftText);
end;

procedure TfrmMain.UnvisibleMainBtns;
begin
  imgTextD.Visible := False;
  imgAudioD.Visible := False;
  imgVideoD.Visible := False;
//\\  OleUninitialize;
end;

{procedure TfrmMain.UnvisibleTextLinksPanels;
begin
  pnlTextLinks1.Visible := False;
//  pnlTextBtns2.Visible := False;
  //pnlTextBtns3.Visible := False;
end;}

procedure TfrmMain.lblAudioClick(Sender: TObject);
begin
  SwitchFunctionType(ftAudio);
end;

procedure TfrmMain.lblVideoClick(Sender: TObject);
begin
  SwitchFunctionType(ftVideo);
end;

procedure TfrmMain.lblTextMenu1MouseEnter(Sender: TObject);
begin
  imgTextMenu1.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblTextMenu1MouseLeave(Sender: TObject);
begin
  imgTextMenu1.Visible := False;
end;

procedure TfrmMain.lblTextMenu2MouseEnter(Sender: TObject);
begin
  imgTextMenu2.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblTextMenu2MouseLeave(Sender: TObject);
begin
  imgTextMenu2.Visible := False;
end;

procedure TfrmMain.SwitchTextMenu(textMenu: Byte);
begin
  LinkClick;
  UnvisibleLinkPanels;
  pnlTextLinks.Visible := True;
  case textMenu of
    1:
      begin
        pnlTextLinks2.Visible := False;
        pnlTextLinks3.Visible := False;
        pnlTextLinks1.Visible := True;
      end;
    2:
      begin
        pnlTextLinks1.Visible := False;
        pnlTextLinks3.Visible := False;
        pnlTextLinks2.Visible := True;
      end;
    3:
      begin
        pnlTextLinks1.Visible := False;
        pnlTextLinks2.Visible := False;
        pnlTextLinks3.Visible := True;
      end;
  end;
end;

procedure TfrmMain.lblTextMenu1Click(Sender: TObject);
begin
  SwitchTextMenu(1);
end;

procedure TfrmMain.lblTextMenu2Click(Sender: TObject);
begin
  SwitchTextMenu(2);
end;

procedure TfrmMain.lblT1_01MouseEnter(Sender: TObject);
begin
  imgT1_01.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT1_01MouseLeave(Sender: TObject);
begin
  ImagingT1n;
end;

procedure TfrmMain.lblT1_02MouseEnter(Sender: TObject);
begin
  imgT1_02.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT1_02MouseLeave(Sender: TObject);
begin
  ImagingT1n;
end;

procedure TfrmMain.lblT1_03MouseEnter(Sender: TObject);
begin
  imgT1_03.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT1_03MouseLeave(Sender: TObject);
begin
  ImagingT1n;
end;

procedure TfrmMain.lblT1_04MouseEnter(Sender: TObject);
begin
  imgT1_04.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT1_04MouseLeave(Sender: TObject);
begin
  ImagingT1n;
end;

procedure TfrmMain.lblT1_05MouseEnter(Sender: TObject);
begin
  imgT1_05.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT1_05MouseLeave(Sender: TObject);
begin
  ImagingT1n;
end;

procedure TfrmMain.lblT1_06MouseEnter(Sender: TObject);
begin
  imgT1_06.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT1_06MouseLeave(Sender: TObject);
begin
  ImagingT1n;
end;

procedure TfrmMain.lblT1_07MouseEnter(Sender: TObject);
begin
  imgT1_07.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT1_07MouseLeave(Sender: TObject);
begin
  ImagingT1n;
end;

procedure TfrmMain.lblT1_08MouseEnter(Sender: TObject);
begin
  imgT1_08.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT1_08MouseLeave(Sender: TObject);
begin
  ImagingT1n;
end;

procedure TfrmMain.lblT1_09MouseEnter(Sender: TObject);
begin
  imgT1_09.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT1_09MouseLeave(Sender: TObject);
begin
  ImagingT1n;
end;

procedure TfrmMain.lblT1_10MouseEnter(Sender: TObject);
begin
  imgT1_10.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT1_10MouseLeave(Sender: TObject);
begin
  ImagingT1n;
end;

procedure TfrmMain.ImagingT(c, n: Byte);
begin
//  if n > 0 then
  LinkClick;
  if pnlAboutVertical.Visible then
    pnlAboutVertical.Visible := False; 
  CurrentText[c] := n;
  case c of
    1: ImagingT1n;
    2: ImagingT2n;
    3: ImagingT3n;
  end;
  BrowseFile(c, n);
end;

procedure TfrmMain.MakeVisibleTimeLabels;
begin
  lblTime.Visible := True;
  lblFullTime.Visible := True;
  lblSlash.Visible := True;
end;

{procedure TfrmMain.MakeUnvisibleTimeLabels;
begin
  lblTime.Visible := False;
  lblFullTime.Visible := False;
  lblSlash.Visible := False;
end;}

procedure TfrmMain.ImagingT1n;
begin
  imgT1_01.Visible := False;
  imgT1_02.Visible := False;
  imgT1_03.Visible := False;
  imgT1_04.Visible := False;
  imgT1_05.Visible := False;
  imgT1_06.Visible := False;
  imgT1_07.Visible := False;
  imgT1_08.Visible := False;
  imgT1_09.Visible := False;
  imgT1_10.Visible := False;
  case CurrentText[1] of
    1: imgT1_01.Visible := True;
    2: imgT1_02.Visible := True;
    3: imgT1_03.Visible := True;
    4: imgT1_04.Visible := True;
    5: imgT1_05.Visible := True;
    6: imgT1_06.Visible := True;
    7: imgT1_07.Visible := True;
    8: imgT1_08.Visible := True;
    9: imgT1_09.Visible := True;
   10: imgT1_10.Visible := True;
  end;
end;

procedure TfrmMain.ImagingT2n;
begin
  imgT2_01.Visible := False;
  imgT2_02.Visible := False;
  imgT2_03.Visible := False;
  imgT2_04.Visible := False;
  imgT2_05.Visible := False;
  imgT2_06.Visible := False;
  case CurrentText[2] of
    1: imgT2_01.Visible := True;
    2: imgT2_02.Visible := True;
    3: imgT2_03.Visible := True;
    4: imgT2_04.Visible := True;
    5: imgT2_05.Visible := True;
    6: imgT2_06.Visible := True;
  end;
end;

procedure TfrmMain.ImagingT3n;
begin
  imgT3_01.Visible := False;
  imgT3_02.Visible := False;
  imgT3_03.Visible := False;
  imgT3_04.Visible := False;
  imgT3_05.Visible := False;
  imgT3_06.Visible := False;
  imgT3_07.Visible := False;
  case CurrentText[3] of
    1: imgT3_01.Visible := True;
    2: imgT3_02.Visible := True;
    3: imgT3_03.Visible := True;
    4: imgT3_04.Visible := True;
    5: imgT3_05.Visible := True;
    6: imgT3_06.Visible := True;
    7: imgT3_07.Visible := True;
  end;
end;

procedure TfrmMain.BrowseFile(c, n: Byte);
begin
  with pnlBrowser do
  begin
    Width := 470;
    Height := 420;
    Visible := True;
  end;
  WebBrowser1.Navigate(TextPath[c] + IntToStr(n) + '.htm');
end;

procedure TfrmMain.lblT1_01Click(Sender: TObject);
begin
  ImagingT(1, 1);
end;

procedure TfrmMain.lblT1_02Click(Sender: TObject);
begin
  ImagingT(1, 2);
end;

procedure TfrmMain.lblT1_03Click(Sender: TObject);
begin
  ImagingT(1, 3);
end;

procedure TfrmMain.lblT1_04Click(Sender: TObject);
begin
  ImagingT(1, 4);
end;

procedure TfrmMain.lblT1_05Click(Sender: TObject);
begin
  ImagingT(1, 5);
end;

procedure TfrmMain.lblT1_06Click(Sender: TObject);
begin
  ImagingT(1, 6);
end;

procedure TfrmMain.lblT1_07Click(Sender: TObject);
begin
  ImagingT(1, 7);
end;

procedure TfrmMain.lblT1_08Click(Sender: TObject);
begin
  ImagingT(1, 8);
end;

procedure TfrmMain.lblT1_09Click(Sender: TObject);
begin
  ImagingT(1, 9);
end;

procedure TfrmMain.lblT1_10Click(Sender: TObject);
begin
  ImagingT(1, 10);
end;

procedure TfrmMain.lblExitMouseEnter(Sender: TObject);
begin
  imgExit.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblExitMouseLeave(Sender: TObject);
begin
  imgExit.Visible := False;
end;

procedure TfrmMain.lblMinimizeMouseEnter(Sender: TObject);
begin
  imgMinimize.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblMinimizeMouseLeave(Sender: TObject);
begin
  imgMinimize.Visible := False;
end;

procedure TfrmMain.lblSysTrayMouseEnter(Sender: TObject);
begin
  imgSysTray.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblSysTrayMouseLeave(Sender: TObject);
begin
  imgSysTray.Visible := False;
end;

procedure TfrmMain.lblMusicMouseEnter(Sender: TObject);
begin
  imgMusic.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblMusicMouseLeave(Sender: TObject);
begin
  imgMusic.Visible := False;
end;

procedure TfrmMain.lblExitClick(Sender: TObject);
begin
  LinkClick;
  Close;
end;

procedure TfrmMain.lblMinimizeClick(Sender: TObject);
begin
  LinkClick;
  Application.Minimize;
end;

procedure TfrmMain.lblSysTrayClick(Sender: TObject);
begin
  LinkClick;
  InitialTrayIcon;
  try
    if currentPlayer.Mode = mpPlaying then
      currentPlayer.Stop;
    if mplBack.Mode = mpPlaying then
    begin
      mplBack.Stop;
      mplBackPlay := False;
    end;
  except;end;
  Hide;
  frmBackground.Hide;
end;

procedure TfrmMain.lblMusicClick(Sender: TObject);
begin
  LinkClick;
  try
    currentPlayer.Notify := False;
    if currentPlayer.Mode = mpPlaying then
      currentPlayer.Stop;
    mplBack.Play;
    mplBack.Notify := True;
    mplBackPlay := True;
    currentPlayer.Notify := True;
    imgPause.Visible := False;
    imgPauseD.Visible := False;
    imgPauseO.Visible := False;
  except;
  end;
end;

procedure TfrmMain.mplBackNotify(Sender: TObject);
begin
  try
    if (mplBack.Mode = mpStopped) and (mplBackPlay = True) then
    begin
      mplBack.Play;
      mplBackPlay := True;
    end
    else if mplBack.Position >= mplBack.Length then
    begin
      mplBack.Rewind;
      mplBack.Play;
    end;
  except;end;
  mplBack.Notify := True;
end;

procedure TfrmMain.mplAudioNotify(Sender: TObject);
begin
  currentPlayerNotify(Sender);
end;

procedure TfrmMain.currentPlayerNotify(Sender: TObject);
begin
  try
    if (mplBack.Mode = mpPlaying) and (currentPlayer.Mode = mpPlaying) then
    begin
      mplBack.Stop;
      mplBackPlay := False;
    end;
    mplBack.Notify := True;
  except;end;
  with Sender as TMediaPlayer do
  begin
    Notify := True;
    if (Mode = mpPaused) or (Mode = mpStopped) then
    begin
      imgPause.Visible := False;
      imgPauseO.Visible := False;
    end
    else if Mode = mpPlaying then
    begin
      imgPlay.Visible := False;
      imgPause.Visible := True;
    end;
  end;
end;

procedure TfrmMain.InitialTrayIcon;
begin
  PopUpMenu1.OwnerDraw:=True;

  with TrayIconData do
  begin
    cbSize := SizeOf(TrayIconData);
    Wnd := Handle;
    uID := 0;
    uFlags := NIF_MESSAGE + NIF_ICON + NIF_TIP;
    uCallbackMessage := WM_ICONTRAY;
    hIcon := Application.Icon.Handle;
    StrPCopy(szTip, Application.Title);
  end;

  Shell_NotifyIcon(NIM_ADD, @TrayIconData);
end;

procedure TfrmMain.TrayMessage(var Msg: TMessage);
var
  p : TPoint;
begin
{  case Msg.lParam of
    WM_LBUTTONDOWN:
    begin
      ShowMessage('This icon responds to RIGHT BUTTON click!');
    end;
    WM_RBUTTONDOWN:
    begin
       SetForegroundWindow(Handle);
       GetCursorPos(p);
       PopUpMenu1.Popup(p.x, p.y);
       PostMessage(Handle, WM_NULL, 0, 0);
    end;
  end;}
  if (Msg.LParam = WM_LBUTTONDOWN) or (Msg.LParam = WM_RBUTTONDOWN) then
  begin
    SetForegroundWindow(Handle);
    GetCursorPos(p);
    PopUpMenu1.Popup(p.x, p.y);
    PostMessage(Handle, WM_NULL, 0, 0);
  end;
end;

procedure TfrmMain.SoundHeightShow;
begin
  imgSound.Width := (Vol * lblChangeSound.Width) div MAX_VOL;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  Shell_NotifyIcon(NIM_DELETE, @TrayIconData);
end;

procedure TfrmMain.ppmExitClick(Sender: TObject);
begin
  Close;
end;

function TfrmMain.MiliSecondToTime(Sec: Longint): AnsiString;
var
  h, m, s: Byte;
  TimeStr: AnsiString;
begin
  Sec := Sec div 1000;
  m := Sec div 60;
  s := Sec - (m * 60);
  h := 0;
  if m >= 60 then
  begin
    h := m div 60;
    m := m - (h * 60);
  end;
  TimeStr := '';
  if h <> 0 then
    if m < 10 then
      TimeStr := IntToStr(h) + ':0'
    else
      TimeStr := IntToStr(h) + ':';
  TimeStr := TimeStr + IntToStr(m) + ':';
  if s < 10 then
    TimeStr := TimeStr + '0';
  TimeStr := TimeStr + IntToStr(s);
  Result := TimeStr;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  try
    mplBack.Close;
    currentPlayer.Close;
    Timer1.Enabled := False;
  except;end;
  if Tag = 0 then
  begin
    CanClose := False;
    frmMain.AlphaBlend := True;
    Tag := 1;
    tmrBlend.Enabled := True;
  end;
end;

procedure TfrmMain.tmrBlendTimer(Sender: TObject);
var
  ab: Integer;
begin
  if Tag = 0 then
  begin
    ab := frmMain.AlphaBlendValue + 50;
    if ab > 255 then
    begin
      ab := 255;
      frmMain.AlphaBlendValue := ab;
      frmMain.AlphaBlend := False;
      tmrBlend.Enabled := False;
    end
    else
      frmMain.AlphaBlendValue := ab;
  end
  else if Tag = 1 then
  begin
    ab := frmMain.AlphaBlendValue - 50;
    if ab < 0 then
    begin
      ab := 0;
      frmMain.AlphaBlendValue := ab;
      tmrBlend.Enabled := False;
      //swfMovie := DataPath + 'Sys03.dll';
      frmSplashEnd := TfrmSplashEnd.Create(Self);
      frmSplashEnd.ShowModal;
      Close;
    end
    else
      frmMain.AlphaBlendValue := ab;
  end
end;

procedure TfrmMain.lblChangeSoundMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  t: Int64; // Length
begin
  try
    t := X * MAX_VOL div lblChangeSound.Width;
    ChangeSound(t);
  except
    ;
  end;
end;

procedure TfrmMain.ChangeSound(v: Smallint);
begin
  if v < 0 then
    v := 0
  else if v > MAX_VOL then
    v := MAX_VOL;
  Vol := v;
  SoundHeightShow;
  if not Mute then
    MPSetVolume(currentPlayer, Vol);
end;

procedure TfrmMain.lblArmanVAboutMouseEnter(Sender: TObject);
begin
  imgArmanVAbout.Visible := True;
end;

procedure TfrmMain.lblArmanVAboutMouseLeave(Sender: TObject);
begin
  imgArmanVAbout.Visible := False;
end;

procedure TfrmMain.lblTavakkoliVAboutMouseEnter(Sender: TObject);
begin
  imgTavakkoliVAbout.Visible := True;
end;

procedure TfrmMain.lblTavakkoliVAboutMouseLeave(Sender: TObject);
begin
  imgTavakkoliVAbout.Visible := False;
end;

procedure TfrmMain.lblAboutVClick(Sender: TObject);
begin
  pnlAboutVertical.Visible := not pnlAboutVertical.Visible;
  tmrAbout.Enabled := not tmrAbout.Enabled;
end;

procedure TfrmMain.lblAboutVMouseEnter(Sender: TObject);
begin
  imgAbout.Visible := True;
end;

procedure TfrmMain.lblAboutVMouseLeave(Sender: TObject);
begin
  imgAbout.Visible := False;
end;

procedure TfrmMain.lblV1MouseEnter(Sender: TObject);
begin
  imgV1.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblV1MouseLeave(Sender: TObject);
begin
  Imaging(0);
end;

procedure TfrmMain.lblV2MouseEnter(Sender: TObject);
begin
  imgV2.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblV2MouseLeave(Sender: TObject);
begin
  Imaging(0);
end;

procedure TfrmMain.lblTextMenu2_2MouseEnter(Sender: TObject);
begin
  imgTextMenu2_2.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblTextMenu2_2MouseLeave(Sender: TObject);
begin
  imgTextMenu2_2.Visible := False;
end;

procedure TfrmMain.lblTextMenu3_3MouseEnter(Sender: TObject);
begin
  imgTextMenu3_3.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblTextMenu3_3MouseLeave(Sender: TObject);
begin
  imgTextMenu3_3.Visible := False;
end;

procedure TfrmMain.lblLoopMouseEnter(Sender: TObject);
begin
  imgLoop.Visible := True;
end;

procedure TfrmMain.lblLoopMouseLeave(Sender: TObject);
begin
  if (not Loop) then
    imgLoop.Visible := False; 
end;

procedure TfrmMain.lblLoopMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  imgLoopD.Visible := True;
end;

procedure TfrmMain.lblLoopMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  imgLoopD.Visible := False;
end;

procedure TfrmMain.lblLoopClick(Sender: TObject);
begin
  Loop := not Loop;
  if Loop then
  begin
    Rep := False;
    imgRep.Visible := False;
  end;
end;

procedure TfrmMain.lblRepMouseEnter(Sender: TObject);
begin
  imgRep.Visible := True;
end;

procedure TfrmMain.lblRepMouseLeave(Sender: TObject);
begin
  if (not Rep) then
    imgRep.Visible := False;
end;

procedure TfrmMain.lblRepMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  imgRepD.Visible := True;
end;

procedure TfrmMain.lblRepMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  imgRepD.Visible := False;
end;

procedure TfrmMain.lblStopMouseEnter(Sender: TObject);
begin
  if (NowPlay <> 0) then
    imgStop.Visible := True;
end;

procedure TfrmMain.lblStopMouseLeave(Sender: TObject);
begin
  imgStop.Visible := False;
end;

procedure TfrmMain.lblStopMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  imgStopD.Visible := True;
end;

procedure TfrmMain.lblStopMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  imgStopD.Visible := False;
end;

procedure TfrmMain.lblPreMouseEnter(Sender: TObject);
begin
  imgPre.Visible := True;
end;

procedure TfrmMain.lblPreMouseLeave(Sender: TObject);
begin
  imgPre.Visible := False;
end;

procedure TfrmMain.lblPreMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  imgPreD.Visible := True;
end;

procedure TfrmMain.lblPreMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  imgPreD.Visible := False;
end;

procedure TfrmMain.lblNextMouseEnter(Sender: TObject);
begin
  imgNext.Visible := True;
end;

procedure TfrmMain.lblNextMouseLeave(Sender: TObject);
begin
  imgNext.Visible := False;
end;

procedure TfrmMain.lblNextMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  imgNextD.Visible := True;
end;

procedure TfrmMain.lblNextMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  imgNextD.Visible := False;
end;

procedure TfrmMain.lblMuteMouseEnter(Sender: TObject);
begin
  imgMute.Visible := True;
end;

procedure TfrmMain.lblMuteMouseLeave(Sender: TObject);
begin
  if (not Mute) then
    imgMute.Visible := False;
end;

procedure TfrmMain.lblMuteMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  imgMuteD.Visible := True;
end;

procedure TfrmMain.lblMuteMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  imgMuteD.Visible := False;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
  try
    UpdateCurrTime;
    if currentPlayer.Position
      >= currentPlayer.Length then
    begin
      if Rep then
      begin
        currentPlayer.Rewind;
        currentPlayer.Play;
        currentPlayer.Notify := True;
      end
      else
      begin
        if Loop then
        begin
            if NowPlay + 1 > MaxNo then
            begin
              PlayFile(1)
            end
            else
              PlayFile(NowPlay+1);
        end
        else
          actStopExecute(Sender);
      end;
    end;
  except
    ;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  tmrBlend.Enabled := True;
  currentPlayer.Notify := True;
end;

function TfrmMain.UpdateFileName(n: Byte): String;
var
  fn: String;
begin
  if (FunctionType = ftAudio) or (currentPlayer = mplAudio) then
    fn := AudioPath + IntToStr(n) + '.mp3'
  else if (FunctionType = ftVideo) or (currentPlayer = mplVideo) then
    fn := VideoPath + IntToStr(n) + '.wmv';
  if fn <> currentPlayer.FileName then
  begin
    try
      currentPlayer.Close;
    except
      ;
    end;
    imgTrackbar.Width := 0;
    try
      currentPlayer.FileName := fn;
      currentPlayer.Open;
      lblPlayPause.Enabled := True;
      lblFullTime.Caption := MiliSecondToTime(currentPlayer.Length);
      NowPlay := n;
      Imaging1;
    except;end;
    Imaging(NowPlay);
  end;
end;

procedure TfrmMain.PlayFile(FileNo: Byte);
var
  t: TRect;
begin
//  lblTrackbar.Visible := True;
//  pnlPlayer.Visible := True;
  try
    if mplBack.Mode = mpPlaying then
    begin
      mplBack.Stop;
      mplBackPlay := False;
    end;
    mplBack.Notify := True;
  except;end;
  UpdateFileName(FileNo);
  //pnlScreen.Visible := True;
  try
    currentPlayer.Play;
    currentPlayerNotify(currentPlayer);
    Timer1.Enabled := True;
    if FunctionType = ftText then
    begin
      pnlBrowser.BringToFront;
    end;
  except; end;
  if FunctionType = ftVideo then
  begin
    with t do
    begin
      Left := 2;
      Top := 2;
      Right := currentPlayer.Display.Width - 4;
      Bottom := currentPlayer.Display.Height - 4;
    end;
    currentPlayer.DisplayRect := t;
  end;
  if (Mute) then
    MPSetVolume(currentPlayer, 0);
end;

procedure TfrmMain.lblPlayPauseMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (NowPlay <> 0) then
    if imgPause.Visible then
      imgPauseD.Visible := True
    else if not imgPause.Visible then
      imgPlayD.Visible := True;
end;

procedure TfrmMain.lblPlayPauseMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    imgPauseD.Visible := False;
    imgPlayD.Visible := False;
end;

procedure TfrmMain.lblPlayPauseMouseEnter(Sender: TObject);
begin
  if (NowPlay <> 0) then
    if imgPause.Visible then
      imgPauseO.Visible := True
    else if not imgPause.Visible then
      imgPlay.Visible := True;
end;

procedure TfrmMain.lblPlayPauseMouseLeave(Sender: TObject);
begin
  if imgPauseO.Visible then
    imgPauseO.Visible := False;
  if imgPlay.Visible then
    imgPlay.Visible := False;
end;

procedure TfrmMain.lblTrackbarMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  l, t: Longint; // Length
begin
  try
    l := currentPlayer.Length;// div 1000;
    t := X * l div lblTrackbar.Width;
    if not Timer1.Enabled then
    begin
      imgTrackbar.Width := X;
    end;
    currentPlayer.Position := t;
    currentPlayer.Notify := True;
    if imgPause.Visible then
    begin
      currentPlayer.Play;
      currentPlayer.Notify := True;
    end;
  except
    ;
  end;
end;

procedure TfrmMain.actPlayPauseExecute(Sender: TObject);
begin
  try
    currentPlayer.Notify := True;
    if NowPlay <> 0 then
    begin
      if imgPause.Visible then
        currentPlayer.Stop
      else
      begin
        Timer1.Enabled := True;
        currentPlayer.Play;
        currentPlayerNotify(currentPlayer);
      end;
    end;
  except;end;
end;

procedure TfrmMain.actStopExecute(Sender: TObject);
begin
  currentPlayer.Notify := True;
  try
    Timer1.Enabled := False;
    currentPlayer.Rewind;
    currentPlayer.Stop;
    imgTrackbar.Width := 0;
  except
    ;
  end;
end;

procedure TfrmMain.actRewindExecute(Sender: TObject);
var
  Playing: Boolean;
begin
  if NowPlay <> 0 then
  begin
    if currentPlayer.Mode = mpPlaying then
      Playing := True
    else
      Playing := False;
    currentPlayer.Position := currentPlayer.Position - 10000;
    UpdateCurrTime;
    if Playing then
      currentPlayer.Play;
    currentPlayer.Notify := True;
  end;
end;

procedure TfrmMain.actForwardExecute(Sender: TObject);
var
  Playing: Boolean;
begin
  if NowPlay <> 0 then
  begin
    if currentPlayer.Mode = mpPlaying then
      Playing := True
    else
      Playing := False;
    currentPlayer.Position := currentPlayer.Position + 10000;
    UpdateCurrTime;
    if Playing then
      currentPlayer.Play;
    currentPlayer.Notify := True;
  end;
end;

procedure TfrmMain.actPreviousExecute(Sender: TObject);
begin
  try
    if NowPlay <> 0 then
    begin
      NowPlay := NowPlay - 1;
      if NowPlay < 1 then
      begin
        NowPlay := MaxNo;
      end;
      if (currentPlayer.Mode in
        [mpPlaying, mpPaused]) then
        PlayFile(NowPlay)
      else
        UpdateFileName(NowPlay);
    end;
    currentPlayer.Notify := True;
  except;end;
end;

procedure TfrmMain.actNextExecute(Sender: TObject);
begin
  try
    if NowPlay <> 0 then
    begin
      NowPlay := NowPlay + 1;
      if NowPlay > MaxNo then
      begin
        NowPlay := 1;
      end;
      if (currentPlayer.Mode in
        [mpPlaying, mpPaused]) then
        PlayFile(NowPlay)
      else
        UpdateFileName(NowPlay);
    end;
    currentPlayer.Notify := True;
  except;end;
end;

procedure TfrmMain.actVolHighExecute(Sender: TObject);
begin
  ChangeSound(Vol + (MAX_VOL div 20));
end;

procedure TfrmMain.actVolLowExecute(Sender: TObject);
begin
  ChangeSound(Vol - (MAX_VOL div 20));
end;

procedure TfrmMain.actMuteExecute(Sender: TObject);
begin
  if not Mute then
  begin
    MPSetVolume(currentPlayer, 0);
    imgMute.Visible := True;
    SetMute;
  end
  else
  begin
    MPSetVolume(currentPlayer, Vol);
    SoundHeightShow;
    imgMute.Visible := False;
    ResetMute;
  end;
end;

procedure TfrmMain.actFullScreenExecute(Sender: TObject);
var
  t: TRect;
begin
  try
    frmFullScreen := TfrmFullScreen.Create(Self);
    currentPlayer.Display := frmFullScreen.Panel1;
    with t do
    begin
      Left := 2;
      Top := 2;
      Right := frmFullScreen.Panel1.Width - 4;
      Bottom := frmFullScreen.Panel1.Height - 4;
    end;
    currentPlayer.DisplayRect := t;
    frmFullScreen.ShowModal;
  except;end;
end;

procedure TfrmMain.lblRepClick(Sender: TObject);
begin
  Rep := not Rep;
  if Rep then
  begin
    Loop := False;
    imgLoop.Visible := False;
  end;
end;

procedure TfrmMain.lblV1Click(Sender: TObject);
begin
  Imaging(1);
end;

procedure TfrmMain.Imaging(No: Byte);
begin
  if No <> 0 then
    PlayFile(No);
  Imaging1;
end;

procedure TfrmMain.Imaging1;
var
  tmpFT: TFunctionType;
begin
  tmpFT := ftAudio;
  MakeVisibleTimeLabels;
  if (currentPlayer = mplAudio) then
    tmpFT := ftAudio
  else if (currentPlayer = mplVideo) then
    tmpFT := ftVideo;
  case tmpFT of
    ftVideo: Imaging1Video;
    ftAudio: Imaging1Audio;
  end;
end;

procedure TfrmMain.Imaging1Video;
begin
  imgV1.Visible := False;
  imgV2.Visible := False;
  imgV3.Visible := False;
  imgV4.Visible := False;
  case NowPlay of
    1: imgV1.Visible := True;
    2: imgV2.Visible := True;
    3: imgV3.Visible := True;
    4: imgV4.Visible := True;
  end;
end;

procedure TfrmMain.Imaging1Audio;
begin
  imgA1.Visible := False;
  imgA2.Visible := False;
  imgA3.Visible := False;
  imgA4.Visible := False;
  imgA5.Visible := False;
  imgA6.Visible := False;
  imgA7.Visible := False;
  imgA8.Visible := False;
  imgA9.Visible := False;
  imgA10.Visible := False;
  imgA11.Visible := False;
  imgA12.Visible := False;
  imgA13.Visible := False;
  imgA14.Visible := False;
  imgA15.Visible := False;
  imgA16.Visible := False;
  imgA17.Visible := False;
  case NowPlay of
    1: imgA1.Visible := True;
    2: imgA2.Visible := True;
    3: imgA3.Visible := True;
    4: imgA4.Visible := True;
    5: imgA5.Visible := True;
    6: imgA6.Visible := True;
    7: imgA7.Visible := True;
    8: imgA8.Visible := True;
    9: imgA9.Visible := True;
    10: imgA10.Visible := True;
    11: imgA11.Visible := True;
    12: imgA12.Visible := True;
    13: imgA13.Visible := True;
    14: imgA14.Visible := True;
    15: imgA15.Visible := True;
    16: imgA16.Visible := True;
    17: imgA17.Visible := True;
  end;
end;

procedure TfrmMain.lblV2Click(Sender: TObject);
begin
  Imaging(2);
end;

procedure TfrmMain.lblA1Click(Sender: TObject);
begin
  Imaging(1);
end;

procedure TfrmMain.lblA1MouseEnter(Sender: TObject);
begin
  imgA1.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA1MouseLeave(Sender: TObject);
begin
  Imaging(0);
end;

procedure TfrmMain.lblA2Click(Sender: TObject);
begin
  Imaging(2);
end;

procedure TfrmMain.lblA2MouseEnter(Sender: TObject);
begin
  imgA2.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA3MouseEnter(Sender: TObject);
begin
  imgA3.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA4MouseEnter(Sender: TObject);
begin
  imgA4.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA5MouseEnter(Sender: TObject);
begin
  imgA5.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA6MouseEnter(Sender: TObject);
begin
  imgA6.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA7MouseEnter(Sender: TObject);
begin
  imgA7.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA8MouseEnter(Sender: TObject);
begin
  imgA8.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA9MouseEnter(Sender: TObject);
begin
  imgA9.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA10MouseEnter(Sender: TObject);
begin
  imgA10.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA11MouseEnter(Sender: TObject);
begin
  imgA11.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA12MouseEnter(Sender: TObject);
begin
  imgA12.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA13MouseEnter(Sender: TObject);
begin
  imgA13.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA14MouseEnter(Sender: TObject);
begin
  imgA14.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA15MouseEnter(Sender: TObject);
begin
  imgA15.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA16MouseEnter(Sender: TObject);
begin
  imgA16.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA17MouseEnter(Sender: TObject);
begin
  imgA17.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblA3Click(Sender: TObject);
begin
  Imaging(3);
end;

procedure TfrmMain.lblA4Click(Sender: TObject);
begin
  Imaging(4);
end;

procedure TfrmMain.lblA5Click(Sender: TObject);
begin
  Imaging(5);
end;

procedure TfrmMain.lblA6Click(Sender: TObject);
begin
  Imaging(6);
end;

procedure TfrmMain.lblA7Click(Sender: TObject);
begin
  Imaging(7);
end;

procedure TfrmMain.lblA8Click(Sender: TObject);
begin
  Imaging(8);
end;

procedure TfrmMain.lblA9Click(Sender: TObject);
begin
  Imaging(9);
end;

procedure TfrmMain.lblA10Click(Sender: TObject);
begin
  Imaging(10);
end;

procedure TfrmMain.lblA11Click(Sender: TObject);
begin
  Imaging(11);
end;

procedure TfrmMain.lblA12Click(Sender: TObject);
begin
  Imaging(12);
end;

procedure TfrmMain.lblA13Click(Sender: TObject);
begin
  Imaging(13);
end;

procedure TfrmMain.lblA14Click(Sender: TObject);
begin
  Imaging(14);
end;

procedure TfrmMain.lblA15Click(Sender: TObject);
begin
  Imaging(15);
end;

procedure TfrmMain.lblA16Click(Sender: TObject);
begin
  Imaging(16);
end;

procedure TfrmMain.lblA17Click(Sender: TObject);
begin
  Imaging(17);
end;

procedure TfrmMain.lblT2_01MouseLeave(Sender: TObject);
begin
  ImagingT2n;
end;

procedure TfrmMain.lblT2_01MouseEnter(Sender: TObject);
begin
  imgT2_01.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT2_02MouseEnter(Sender: TObject);
begin
  imgT2_02.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT2_03MouseEnter(Sender: TObject);
begin
  imgT2_03.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT2_04MouseEnter(Sender: TObject);
begin
  imgT2_04.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT2_05MouseEnter(Sender: TObject);
begin
  imgT2_05.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT2_06MouseEnter(Sender: TObject);
begin
  imgT2_06.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT2_01Click(Sender: TObject);
begin
  ImagingT(2, 1);
end;

procedure TfrmMain.lblT2_02Click(Sender: TObject);
begin
  ImagingT(2, 2);
end;

procedure TfrmMain.lblT2_03Click(Sender: TObject);
begin
  ImagingT(2, 3);
end;

procedure TfrmMain.lblT2_04Click(Sender: TObject);
begin
  ImagingT(2, 4);
end;

procedure TfrmMain.lblT2_05Click(Sender: TObject);
begin
  ImagingT(2, 5);
end;

procedure TfrmMain.lblT2_06Click(Sender: TObject);
begin
  ImagingT(2, 6);
end;

procedure TfrmMain.lblT3_01MouseLeave(Sender: TObject);
begin
  ImagingT3n;
end;

procedure TfrmMain.lblT3_01MouseEnter(Sender: TObject);
begin
  imgT3_01.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT3_02MouseEnter(Sender: TObject);
begin
  imgT3_02.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT3_03MouseEnter(Sender: TObject);
begin
  imgT3_03.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT3_04MouseEnter(Sender: TObject);
begin
  imgT3_04.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT3_05MouseEnter(Sender: TObject);
begin
  imgT3_05.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT3_06MouseEnter(Sender: TObject);
begin
  imgT3_06.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT3_07MouseEnter(Sender: TObject);
begin
  imgT3_07.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblT3_01Click(Sender: TObject);
begin
  ImagingT(3, 1);
end;

procedure TfrmMain.lblT3_02Click(Sender: TObject);
begin
  ImagingT(3, 2);
end;

procedure TfrmMain.lblT3_03Click(Sender: TObject);
begin
  ImagingT(3, 3);
end;

procedure TfrmMain.lblT3_04Click(Sender: TObject);
begin
  ImagingT(3, 4);
end;

procedure TfrmMain.lblT3_05Click(Sender: TObject);
begin
  ImagingT(3, 5);
end;

procedure TfrmMain.lblT3_06Click(Sender: TObject);
begin
  ImagingT(3, 6);
end;

procedure TfrmMain.lblT3_07Click(Sender: TObject);
begin
  ImagingT(3, 7);
end;

procedure TfrmMain.lblTextMenu3_3Click(Sender: TObject);
begin
  SwitchTextMenu(3);
end;

procedure TfrmMain.lblTextMenu3Click(Sender: TObject);
begin
  SwitchTextMenu(3);
end;

procedure TfrmMain.lblTextMenu3MouseEnter(Sender: TObject);
begin
  imgTextMenu3.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblTextMenu3MouseLeave(Sender: TObject);
begin
  imgTextMenu3.Visible := False;
end;

procedure TfrmMain.ppmReturnClick(Sender: TObject);
begin
  frmBackground.Show;
  frmMain.Show;
  if mplBackPlay then
    mplBack.Play;
  Shell_NotifyIcon(NIM_DELETE, @TrayIconData);
end;

procedure TfrmMain.ppmStopMusicClick(Sender: TObject);
begin
  if (mplBack.Mode = mpPlaying) then
  begin
    mplBack.Stop;
    mplBackPlay := False;
  end;
end;

procedure TfrmMain.lblArmanVAboutClick(Sender: TObject);
begin
  ShowAbout('aa.htm');
end;

procedure TfrmMain.ShowAbout(aboutFile: String);
begin
  with pnlBrowser do
  begin
    Width := 470;
    Height := 420;
    Visible := True;
    BringToFront;
  end;
  WebBrowser1.Navigate(DataPath + aboutFile);
  pnlAboutVertical.Visible := False;
end;

procedure TfrmMain.lblTavakkoliVAboutClick(Sender: TObject);
begin
  ShowAbout('at.htm');
end;

procedure TfrmMain.tmrAboutTimer(Sender: TObject);
begin
  pnlAboutVertical.Visible := False;
  tmrAbout.Enabled := False;
end;

procedure TfrmMain.pnlScreenDblClick(Sender: TObject);
begin
  if FunctionType = ftVideo then
    actFullScreen.OnExecute(Sender);
end;

procedure TfrmMain.lblV3Click(Sender: TObject);
begin
  Imaging(3);
end;

procedure TfrmMain.lblV3MouseEnter(Sender: TObject);
begin
  imgV3.Visible := True;
  LinkHover;
end;

procedure TfrmMain.lblV4Click(Sender: TObject);
begin
  Imaging(4);
end;

procedure TfrmMain.lblV4MouseEnter(Sender: TObject);
begin
  imgV4.Visible := True;
  LinkHover;
end;

initialization
  OleInitialize(nil);

finalization
  OleUninitialize;

end.
