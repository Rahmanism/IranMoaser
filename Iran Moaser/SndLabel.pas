unit SndLabel;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, Messages, MMSystem;

type
  TSndLabel = class(TCustomLabel)
  private
    { Private declarations }
    FMouseOver: Boolean;
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
    property Align;
    property Alignment;
    property Anchors;
    property AutoSize;
    property BiDiMode;
    property Caption;
    property Color nodefault;
    property Constraints;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property FocusControl;
    property Font;
    property ParentBiDiMode;
    property ParentColor;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowAccelChar;
    property ShowHint;
    property Transparent;
    property Layout;
    property Visible;
    property WordWrap;
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
    property OnMouseEnter;
    property OnMouseLeave;
    property OnStartDock;
    property OnStartDrag;
    { Published declarations }
  end;

procedure Register;

implementation

{$R MySnds.RES}

procedure Register;
begin
  RegisterComponents('Standard', [TSndLabel]);
end;

{ TSndLabel }

procedure TSndLabel.CMMouseEnter(var msg: TMessage);
begin
  sndPlaySound(PAnsiChar(2), SND_ASYNC or SND_MEMORY or SND_RESOURCE);
end;

procedure TSndLabel.CMMouseLeave(var msg: TMessage);
begin
;
end;

constructor TSndLabel.Create(Owner: TComponent);
begin
  inherited;
  ;
end;

end.
