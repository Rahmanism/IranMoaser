unit ImageLabel;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, Messages, MMSystem,
  SndLabel, ExtCtrls;

type

{  TMyImage = class(TImage)
  private
  public
  published
    property Align;
    property Anchors;
    property AutoSize;
  //  property Center: Boolean read FCenter write SetCenter default False;
    property Constraints;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property IncrementalDisplay: Boolean read FIncrementalDisplay write FIncrementalDisplay default False;
    property ParentShowHint;
    property Picture: TPicture read FPicture write SetPicture;
    property PopupMenu;
    property Proportional: Boolean read FProportional write SetProportional default false;
    property ShowHint;
    property Stretch: Boolean read FStretch write SetStretch default False;
    property Transparent: Boolean read FTransparent write SetTransparent default False;
    property Visible;
    property OnClick;
    property OnContextPopup;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnProgress: TProgressEvent read FOnProgress write FOnProgress;
    property OnStartDock;
    property OnStartDrag;
  end;         }

  TImageLabel = class(TCustomLabel)
  private
    { Private declarations }
    FMouseOver: Boolean;
    _Image1: TImage;
  protected
    { Protected declarations }
    procedure CMMouseLeave(var msg: TMessage);
      message CM_MOUSELEAVE;
    procedure CMMouseEnter(var msg: TMessage);
      message CM_MOUSEENTER;
  public
    { Public declarations }
    constructor Create(Owner: TComponent); override;
   published
    { Published declarations }
    property Image1: TImage read _Image1;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Standard', [TImageLabel]);
end;

{ TImageLabel }

{ TImageLabel }

procedure TImageLabel.CMMouseEnter(var msg: TMessage);
begin
  inherited;
  Image1.Visible := True;
end;

procedure TImageLabel.CMMouseLeave(var msg: TMessage);
begin
  inherited;
  Image1.Visible := False;
end;

constructor TImageLabel.Create(Owner: TComponent);
begin
  inherited;
  image1.Visible := False;
end;

end.
