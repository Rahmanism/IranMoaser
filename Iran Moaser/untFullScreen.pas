unit untFullScreen;

interface

uses
  untMain, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, ActnList, jpeg, General;

type
  TfrmFullScreen = class(TForm)
    Panel1: TPanel;
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
    lblExit: TLabel;
    imgFullScreen: TImage;
    imgExit: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel1DblClick(Sender: TObject);
    procedure actPlayPauseExecute(Sender: TObject);
    procedure actStopExecute(Sender: TObject);
    procedure actRewindExecute(Sender: TObject);
    procedure actForwardExecute(Sender: TObject);
    procedure actPreviousExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actVolHighExecute(Sender: TObject);
    procedure actVolLowExecute(Sender: TObject);
    procedure actMuteExecute(Sender: TObject);
    procedure lblExitMouseEnter(Sender: TObject);
    procedure lblExitMouseLeave(Sender: TObject);
    procedure lblExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFullScreen: TfrmFullScreen;

implementation

{$R *.dfm}

procedure TfrmFullScreen.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  t: TRect;
begin
  try
    currentPlayer.Display := frmMain.pnlScreen;
    with t do
    begin
      Left := 2;
      Top := 2;
      Right := frmMain.pnlScreen.Width - 4;
      Bottom := frmMain.pnlScreen.Height - 4;
    end;
    currentPlayer.DisplayRect := t;
  except;end;
end;

procedure TfrmFullScreen.Panel1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFullScreen.actPlayPauseExecute(Sender: TObject);
begin
  frmMain.actPlayPause.OnExecute(Sender);
end;

procedure TfrmFullScreen.actStopExecute(Sender: TObject);
begin
  frmMain.actStop.OnExecute(Sender);
end;

procedure TfrmFullScreen.actRewindExecute(Sender: TObject);
begin
  frmMain.actRewind.OnExecute(Sender);
end;

procedure TfrmFullScreen.actForwardExecute(Sender: TObject);
begin
  frmMain.actForward.OnExecute(Sender);
end;

procedure TfrmFullScreen.actPreviousExecute(Sender: TObject);
begin
  frmMain.actPrevious.OnExecute(Sender);
end;

procedure TfrmFullScreen.actNextExecute(Sender: TObject);
begin
  frmMain.actNext.OnExecute(Sender);
end;

procedure TfrmFullScreen.actVolHighExecute(Sender: TObject);
begin
  frmMain.actVolHigh.OnExecute(Sender);
end;

procedure TfrmFullScreen.actVolLowExecute(Sender: TObject);
begin
  frmMain.actVolLow.OnExecute(Sender);
end;

procedure TfrmFullScreen.actMuteExecute(Sender: TObject);
begin
  frmMain.actMute.OnExecute(Sender);
end;

procedure TfrmFullScreen.lblExitMouseEnter(Sender: TObject);
begin
  imgExit.Visible := True;
end;

procedure TfrmFullScreen.lblExitMouseLeave(Sender: TObject);
begin
  imgExit.Visible := False;
end;

procedure TfrmFullScreen.lblExitClick(Sender: TObject);
begin
  Close;
end;

end.
