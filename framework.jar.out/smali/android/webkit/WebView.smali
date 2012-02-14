.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$SmoothRotateAnimationListener;,
        Landroid/webkit/WebView$InvokeListBox;,
        Landroid/webkit/WebView$PrivateHandler;,
        Landroid/webkit/WebView$ScaleDetectorListener;,
        Landroid/webkit/WebView$DragTracker;,
        Landroid/webkit/WebView$DragTrackerHandler;,
        Landroid/webkit/WebView$PostScale;,
        Landroid/webkit/WebView$RequestFormData;,
        Landroid/webkit/WebView$ViewSizeData;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$WebViewTransport;,
        Landroid/webkit/WebView$ExtendedZoomControls;
    }
.end annotation


# static fields
.field private static final AUTO_REDRAW_HACK:Z = false

.field private static final AWAKEN_SCROLL_BARS:I = 0x9

.field static final CENTER_FIT_RECT:I = 0x7f

.field static final CLEAR_TEXT_ENTRY:I = 0x6f

.field static final CTS_WEBKIT_PACKAGE_NAME:Ljava/lang/String; = "com.android.cts.stub"

.field private static final DEBUG_DRAG_TRACKER:Z = false

.field private static DEFAULT_MAX_ZOOM_SCALE:F = 0.0f

.field private static DEFAULT_MIN_ZOOM_SCALE:F = 0.0f

.field static DEFAULT_SCALE_PERCENT:I = 0x0

.field static final DEFAULT_VIEWPORT_WIDTH:I = 0x320

.field static final DOM_FOCUS_CHANGED:I = 0x7a

.field static final DO_MOTION_UP:I = 0x77

.field private static final DRAG_HELD_MOTIONLESS:I = 0x8

.field private static final DRAW_EXTRAS_CURSOR_RING:I = 0x3

.field private static final DRAW_EXTRAS_FIND:I = 0x1

.field private static final DRAW_EXTRAS_NONE:I = 0x0

.field private static final DRAW_EXTRAS_SELECTION:I = 0x2

.field static final FIND_AGAIN:I = 0x7e

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x65

.field private static final FIRST_PRIVATE_MSG_ID:I = 0x1

.field static final HIDE_FULLSCREEN:I = 0x79

.field static final HandlerPackageDebugString:[Ljava/lang/String; = null

.field static final HandlerPrivateDebugString:[Ljava/lang/String; = null

.field static final IMMEDIATE_REPAINT_MSG_ID:I = 0x7b

.field static final INVAL_RECT_MSG_ID:I = 0x75

.field private static final LAST_PACKAGE_MSG_ID:I = 0x81

.field private static final LAST_PRIVATE_MSG_ID:I = 0xa

.field static final LOGTAG:Ljava/lang/String; = "webview"

.field static final LONG_PRESS_CENTER:I = 0x72

.field private static final LONG_PRESS_TIMEOUT:I = 0x3e8

.field private static final MAX_DURATION:I = 0x2ee

.field private static final MAX_SLOPE_FOR_DIAG:F = 1.5f

.field private static MINIMUM_SCALE_INCREMENT:F = 0.0f

.field private static final MIN_BREAK_SNAP_CROSS_DISTANCE:I = 0x50

.field private static final MIN_FLING_TIME:I = 0xfa

.field private static final MIN_SCROLL_AMOUNT_TO_DISABLE_DRAG_TRACKER:I = 0x4

.field private static final MOTIONLESS_FALSE:I = 0x0

.field private static final MOTIONLESS_IGNORE:I = 0x3

.field private static final MOTIONLESS_PENDING:I = 0x1

.field private static final MOTIONLESS_TIME:I = 0x64

.field private static final MOTIONLESS_TRUE:I = 0x2

.field static final MOVE_OUT_OF_PLUGIN:I = 0x6e

.field private static final NEVER_REMEMBER_PASSWORD:I = 0x2

.field static final NEW_PICTURE_MSG_ID:I = 0x69

.field private static final NO_LEFTEDGE:I = -0x1

.field private static final PAGE_SCROLL_OVERLAP:I = 0x18

.field private static final PREVENT_DEFAULT_IGNORE:I = 0x4

.field private static final PREVENT_DEFAULT_MAYBE_YES:I = 0x1

.field private static final PREVENT_DEFAULT_NO:I = 0x0

.field private static final PREVENT_DEFAULT_NO_FROM_TOUCH_DOWN:I = 0x2

.field private static final PREVENT_DEFAULT_TIMEOUT:I = 0xa

.field private static final PREVENT_DEFAULT_YES:I = 0x3

.field static final PREVENT_TOUCH_ID:I = 0x73

.field private static final RELEASE_SINGLE_TAP:I = 0x5

.field private static final REMEMBER_PASSWORD:I = 0x1

.field private static final REQUEST_FORM_DATA:I = 0x6

.field static final REQUEST_KEYBOARD:I = 0x76

.field static final REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID:I = 0x80

.field private static final RESUME_WEBCORE_PRIORITY:I = 0x7

.field static final RETURN_LABEL:I = 0x7d

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static final SCROLLBAR_ALWAYSOFF:I = 0x1

.field private static final SCROLLBAR_ALWAYSON:I = 0x2

.field private static final SCROLLBAR_AUTO:I = 0x0

.field static final SCROLL_BY_MSG_ID:I = 0x66

.field static final SCROLL_TO_MSG_ID:I = 0x65

.field private static final SELECT_CURSOR_OFFSET:I = 0x10

.field static final SET_ROOT_LAYER_MSG_ID:I = 0x7c

.field static final SET_SCROLLBAR_MODES:I = 0x81

.field static final SHOW_FULLSCREEN:I = 0x78

.field static final SHOW_RECT_MSG_ID:I = 0x71

.field private static final SLIDE_TITLE_DURATION:I = 0x1f4

.field private static final SNAP_LOCK:I = 0x1

.field private static final SNAP_NONE:I = 0x0

.field private static final SNAP_X:I = 0x2

.field private static final SNAP_Y:I = 0x4

.field static final SPAWN_SCROLL_TO_MSG_ID:I = 0x67

.field private static final STD_SPEED:I = 0x1e0

.field private static final SWITCH_TO_LONGPRESS:I = 0x4

.field private static final SWITCH_TO_SHORTPRESS:I = 0x3

.field static final SYNC_SCROLL_TO_MSG_ID:I = 0x68

.field private static final TAP_TIMEOUT:I = 0xc8

.field static final TIME_WAIT_FOR_WEBVIEW_INIT:I = 0x1f4

.field private static final TOUCH_DONE_MODE:I = 0x7

.field private static final TOUCH_DOUBLE_TAP_MODE:I = 0x6

.field private static final TOUCH_DRAG_MODE:I = 0x3

.field private static final TOUCH_DRAG_START_MODE:I = 0x2

.field private static final TOUCH_INIT_MODE:I = 0x1

.field private static final TOUCH_PINCH_DRAG:I = 0x8

.field private static final TOUCH_SENT_INTERVAL:I = 0x32

.field private static final TOUCH_SHORTPRESS_MODE:I = 0x5

.field private static final TOUCH_SHORTPRESS_START_MODE:I = 0x4

.field private static final TRACKBALL_KEY_TIMEOUT:I = 0x3e8

.field private static final TRACKBALL_MOVE_COUNT:I = 0xa

.field private static final TRACKBALL_MULTIPLIER:I = 0x3

.field private static final TRACKBALL_SCALE:I = 0x190

.field private static final TRACKBALL_SCROLL_COUNT:I = 0x5

.field private static final TRACKBALL_TIMEOUT:I = 0xc8

.field private static final TRACKBALL_WAIT:I = 0x64

.field static final UPDATE_TEXTFIELD_TEXT_MSG_ID:I = 0x6c

.field static final UPDATE_TEXT_ENTRY_MSG_ID:I = 0x6a

.field static final UPDATE_TEXT_SELECTION_MSG_ID:I = 0x70

.field static final UPDATE_ZOOM_RANGE:I = 0x6d

.field static final WEBCORE_INITIALIZED_MSG_ID:I = 0x6b

.field static final WEBCORE_NEED_TOUCH_EVENTS:I = 0x74

.field private static final ZOOM_ANIMATION_LENGTH:I = 0x1f4

.field private static final ZOOM_CONTROLS_TIMEOUT:J

.field private static isBidiEnabled:Z

.field static mLogEvent:Z

.field private static mOverScrollBackground:Landroid/graphics/Paint;

.field private static mOverScrollBorder:Landroid/graphics/Paint;

.field static sMaxViewportWidth:I


# instance fields
.field private final ANIMATION_DURATION:J

.field private final OVERSHOOT_TENSION:F

.field private final PIVOT_X_VALUE:F

.field private final PIVOT_Y_VALUE:F

.field private final TO_DEGREES:F

.field private downTimeMs:J

.field private mActualScale:F

.field private mAllowPanAndScale:Z

.field private mAnchorX:I

.field private mAnchorY:I

.field private mAutoRedraw:Z

.field private mBackgroundColor:I

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCertificate:Landroid/net/http/SslCertificate;

.field private mConfirmMove:Z

.field private mContentHeight:I

.field private mContentWidth:I

.field private mCurrentTouchInterval:I

.field private final mDatabase:Landroid/webkit/WebViewDatabase;

.field private mDefaultScale:F

.field private mDeferTouchMode:I

.field private mDeferTouchProcess:Z

.field private mDelayedDeleteRootLayer:Z

.field private mDoubleTapSlopSquare:I

.field mDragFromTextInput:Z

.field private mDragTracker:Landroid/webkit/WebView$DragTracker;

.field private mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

.field private mDrawCursorRing:Z

.field private mDrawHistory:Z

.field private mDrawSelectionPointer:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeGlow;

.field private mEdgeGlowLeft:Landroid/widget/EdgeGlow;

.field private mEdgeGlowRight:Landroid/widget/EdgeGlow;

.field private mEdgeGlowTop:Landroid/widget/EdgeGlow;

.field private mExtendSelection:Z

.field private mFindHeight:I

.field private mFindIsUp:Z

.field private mFocusSizeChanged:Z

.field private mForwardTouchEvents:Z

.field mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

.field private mGotCenterDown:Z

.field private mGotKeyDown:Z

.field mHeightCanMeasure:Z

.field private mHeldMotionless:I

.field private mHistoryHeight:I

.field private mHistoryPicture:Landroid/graphics/Picture;

.field private mHistoryWidth:I

.field private mHorizontalScrollBarMode:I

.field private mInOverScrollMode:Z

.field mInZoomOverview:Z

.field private mInitialScaleInPercent:I

.field private mInitialScrollX:I

.field private mInitialScrollY:I

.field private mInvActualScale:F

.field private mInvFinalZoomScale:F

.field private mInvInitialZoomScale:F

.field private mIsPaused:Z

.field private mIscreenEndVScroll:I

.field private mIscreenEndX:I

.field private mIscreenEndY:I

.field private mIscreenStartVScroll:I

.field private mIscreenStartX:I

.field private mIscreenStartY:I

.field private mLastCursorBounds:Landroid/graphics/Rect;

.field private mLastCursorTime:J

.field private mLastDeferTouchX:F

.field private mLastDeferTouchY:F

.field private mLastFind:Ljava/lang/String;

.field private mLastGlobalRect:Landroid/graphics/Rect;

.field mLastHeightSent:I

.field private mLastSentTouchTime:J

.field private mLastTouchTime:J

.field private mLastTouchUpTime:J

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLastVelX:F

.field private mLastVelY:F

.field private mLastVelocity:F

.field private mLastVisibleRectSent:Landroid/graphics/Rect;

.field mLastWidthSent:I

.field private mMapTrackballToArrowKeys:Z

.field private mMaxZoomScale:F

.field private mMaximumFling:I

.field private mMinLockSnapReverseDistance:I

.field private mMinZoomScale:F

.field private mMinZoomScaleFixed:Z

.field private mNativeClass:I

.field private mNavSlop:I

.field private mNeedToAdjustWebTextView:Z

.field private mOrientation:I

.field private mOverflingDistance:I

.field private mOverlayHorizontalScrollbar:Z

.field private mOverlayVerticalScrollbar:Z

.field private mOverscrollDeltaX:I

.field private mOverscrollDeltaY:I

.field private mOverscrollDistance:I

.field private mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

.field mPaint:Landroid/text/TextPaint;

.field private mPictureListener:Landroid/webkit/WebView$PictureListener;

.field private mPreventDefault:I

.field private mPreviewZoomOnly:Z

.field final mPrivateHandler:Landroid/os/Handler;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSelectX:I

.field private mSelectY:I

.field private mSelectingText:Z

.field private mSelectionStarted:Z

.field private mShiftIsPressed:Z

.field private mSnapPositive:Z

.field private mSnapScrollMode:I

.field private mSupportMultiTouch:Z

.field private mTextGeneration:I

.field mTextWrapScale:F

.field private mTitleBar:Landroid/view/View;

.field private mTitleShadow:Landroid/graphics/drawable/Drawable;

.field private mTouchMode:I

.field private mTouchSlopSquare:I

.field private mTrackballDown:Z

.field private mTrackballFirstTime:J

.field private mTrackballLastTime:J

.field private mTrackballRemainsX:F

.field private mTrackballRemainsY:F

.field private mTrackballUpTime:J

.field private mTrackballXMove:I

.field private mTrackballYMove:I

.field private mUserScroll:Z

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollBarMode:I

.field final mViewManager:Landroid/webkit/ViewManager;

.field private mWebTextView:Landroid/webkit/WebTextView;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field mWidthCanMeasure:Z

.field mWidths:[F

.field private mWrapContent:Z

.field private mYDistanceToSlideTitleOffScreen:I

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomControlRunnable:Ljava/lang/Runnable;

.field private mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

.field private mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

.field mZoomOverviewWidth:I

.field private mZoomScale:F

.field private mZoomStart:J

.field private upTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 333
    invoke-static {v3}, Landroid/os/SystemProperties;->getCitArabicFlag(Z)Z

    move-result v0

    sput-boolean v0, Landroid/webkit/WebView;->isBidiEnabled:Z

    .line 566
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    .line 678
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "REMEMBER_PASSWORD"

    aput-object v1, v0, v3

    const-string v1, "NEVER_REMEMBER_PASSWORD"

    aput-object v1, v0, v4

    const-string v1, "SWITCH_TO_SHORTPRESS"

    aput-object v1, v0, v5

    const-string v1, "SWITCH_TO_LONGPRESS"

    aput-object v1, v0, v6

    const-string v1, "RELEASE_SINGLE_TAP"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "REQUEST_FORM_DATA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RESUME_WEBCORE_PRIORITY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DRAG_HELD_MOTIONLESS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AWAKEN_SCROLL_BARS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PREVENT_DEFAULT_TIMEOUT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPrivateDebugString:[Ljava/lang/String;

    .line 691
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SCROLL_TO_MSG_ID"

    aput-object v1, v0, v3

    const-string v1, "SCROLL_BY_MSG_ID"

    aput-object v1, v0, v4

    const-string v1, "SPAWN_SCROLL_TO_MSG_ID"

    aput-object v1, v0, v5

    const-string v1, "SYNC_SCROLL_TO_MSG_ID"

    aput-object v1, v0, v6

    const-string v1, "NEW_PICTURE_MSG_ID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UPDATE_TEXT_ENTRY_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WEBCORE_INITIALIZED_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UPDATE_TEXTFIELD_TEXT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "UPDATE_ZOOM_RANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MOVE_OUT_OF_PLUGIN"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CLEAR_TEXT_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "UPDATE_TEXT_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SHOW_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LONG_PRESS_CENTER"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PREVENT_TOUCH_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WEBCORE_NEED_TOUCH_EVENTS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "INVAL_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "REQUEST_KEYBOARD"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DO_MOTION_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SHOW_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "HIDE_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DOM_FOCUS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "IMMEDIATE_REPAINT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "SET_ROOT_LAYER_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "RETURN_LABEL"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "FIND_AGAIN"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CENTER_FIT_RECT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SET_SCROLLBAR_MODES"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPackageDebugString:[Ljava/lang/String;

    .line 731
    const/16 v0, 0x320

    sput v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 759
    const v0, 0x3c23d70a

    sput v0, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    .line 828
    sput-boolean v4, Landroid/webkit/WebView;->mLogEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 974
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 975
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 983
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 984
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 993
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;)V

    .line 994
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/high16 v3, 0x3f00

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 1010
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 334
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebView;->mPaint:Landroid/text/TextPaint;

    .line 335
    const/16 v2, 0x19

    new-array v2, v2, [F

    iput-object v2, p0, Landroid/webkit/WebView;->mWidths:[F

    .line 344
    iput v8, p0, Landroid/webkit/WebView;->TO_DEGREES:F

    .line 345
    iput v3, p0, Landroid/webkit/WebView;->PIVOT_X_VALUE:F

    .line 346
    iput v3, p0, Landroid/webkit/WebView;->PIVOT_Y_VALUE:F

    .line 347
    const/high16 v2, 0x4040

    iput v2, p0, Landroid/webkit/WebView;->OVERSHOOT_TENSION:F

    .line 348
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Landroid/webkit/WebView;->ANIMATION_DURATION:J

    .line 432
    new-instance v2, Landroid/webkit/WebView$PrivateHandler;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$PrivateHandler;-><init>(Landroid/webkit/WebView;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    .line 474
    const/16 v2, 0x32

    iput v2, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 488
    const/4 v2, 0x7

    iput v2, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 504
    iput-boolean v4, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    .line 515
    const/4 v2, 0x4

    iput v2, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 526
    const/4 v2, 0x7

    iput v2, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    .line 535
    iput-boolean v7, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 589
    iput-boolean v7, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 590
    iput-boolean v4, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 600
    iput-boolean v4, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 739
    iput-boolean v7, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    .line 742
    iput v4, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    .line 748
    iput-boolean v4, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 752
    const/16 v2, 0x320

    iput v2, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    .line 762
    iput-boolean v4, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 776
    iput-boolean v4, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 778
    iput v4, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 796
    iput v4, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    .line 797
    iput v4, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    .line 831
    iput-wide v5, p0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 846
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 945
    new-instance v2, Landroid/webkit/WebView$1;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$1;-><init>(Landroid/webkit/WebView;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

    .line 3888
    iput-boolean v4, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 3889
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 3890
    iput v4, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 3891
    iput v4, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 4188
    iput-boolean v4, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 5829
    iput-wide v5, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 5830
    iput-wide v5, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 5831
    iput v8, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 5832
    iput v8, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 5833
    iput v4, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 5834
    iput v4, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 5835
    iput-boolean v4, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 5836
    iput-boolean v4, p0, Landroid/webkit/WebView;->mSelectionStarted:Z

    .line 5837
    iput-boolean v4, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 5838
    iput-boolean v4, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 5847
    iput v4, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5848
    iput v4, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 5849
    iput-boolean v4, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 5850
    iput-boolean v4, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 5851
    iput-boolean v4, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 5852
    iput-wide v5, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 5853
    iput-wide v5, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 5857
    iput v4, p0, Landroid/webkit/WebView;->mIscreenStartX:I

    .line 5858
    iput v4, p0, Landroid/webkit/WebView;->mIscreenStartY:I

    .line 5860
    iput v4, p0, Landroid/webkit/WebView;->mIscreenEndX:I

    .line 5861
    iput v4, p0, Landroid/webkit/WebView;->mIscreenEndY:I

    .line 5863
    iput v4, p0, Landroid/webkit/WebView;->mIscreenStartVScroll:I

    .line 5864
    iput v4, p0, Landroid/webkit/WebView;->mIscreenEndVScroll:I

    .line 5866
    iput-wide v5, p0, Landroid/webkit/WebView;->downTimeMs:J

    .line 5867
    iput-wide v5, p0, Landroid/webkit/WebView;->upTimeMs:J

    .line 5874
    iput-boolean v7, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 1011
    invoke-direct {p0}, Landroid/webkit/WebView;->init()V

    .line 1013
    new-instance v2, Landroid/webkit/CallbackProxy;

    invoke-direct {v2, p1, p0}, Landroid/webkit/CallbackProxy;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 1014
    new-instance v2, Landroid/webkit/ViewManager;

    invoke-direct {v2, p0}, Landroid/webkit/ViewManager;-><init>(Landroid/webkit/WebView;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    .line 1015
    new-instance v2, Landroid/webkit/WebViewCore;

    iget-object v3, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v2, p1, p0, v3, p4}, Landroid/webkit/WebViewCore;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1016
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    .line 1017
    new-instance v2, Landroid/widget/OverScroller;

    invoke-direct {v2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    .line 1019
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 1025
    const-string v2, "com.android.cts.stub"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1026
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1031
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1032
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 1033
    .local v1, orientation:I
    mul-int/lit8 v2, v1, 0x5a

    iput v2, p0, Landroid/webkit/WebView;->mOrientation:I

    .line 1040
    return-void
.end method

.method private abortAnimation()V
    .locals 1

    .prologue
    .line 2319
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2320
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mLastVelocity:F

    .line 2321
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;)Landroid/widget/ZoomButtonsController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->updateZoomButtonsEnabled()V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/WebView;FZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->setNewZoomScale(FZZ)V

    return-void
.end method

.method static synthetic access$10000(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doMotionUp(II)V

    return-void
.end method

.method static synthetic access$10100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$10200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$10300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$10400(Landroid/webkit/WebView;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->centerFitRect(IIII)V

    return-void
.end method

.method static synthetic access$10502(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput p1, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    return p1
.end method

.method static synthetic access$10602(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput p1, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    return p1
.end method

.method static synthetic access$10700(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10800(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10900(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$11100(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11200(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11300(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/webkit/WebView;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->cancelTouch()V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-boolean v0, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    return v0
.end method

.method static synthetic access$2002(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput-boolean p1, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    return p1
.end method

.method static synthetic access$2102(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput p1, p0, Landroid/webkit/WebView;->mAnchorX:I

    return p1
.end method

.method static synthetic access$2200(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    return v0
.end method

.method static synthetic access$2202(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput p1, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    return p1
.end method

.method static synthetic access$2300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2402(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput p1, p0, Landroid/webkit/WebView;->mAnchorY:I

    return p1
.end method

.method static synthetic access$2500(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    return v0
.end method

.method static synthetic access$2502(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput p1, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    return p1
.end method

.method static synthetic access$2600(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2700(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return v0
.end method

.method static synthetic access$2702(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput p1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return p1
.end method

.method static synthetic access$2800()F
    .locals 1

    .prologue
    .line 312
    sget v0, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    return v0
.end method

.method static synthetic access$2900(Landroid/webkit/WebView;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/webkit/WebView;Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$3002(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput p1, p0, Landroid/webkit/WebView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$3102(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput-boolean p1, p0, Landroid/webkit/WebView;->mConfirmMove:Z

    return p1
.end method

.method static synthetic access$3200(Landroid/webkit/WebView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 312
    iget-wide v0, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    return-wide v0
.end method

.method static synthetic access$3300(Landroid/webkit/WebView;FFJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkit/WebView;)Landroid/webkit/WebView$ExtendedZoomControls;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/webkit/WebView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3600()J
    .locals 2

    .prologue
    .line 312
    sget-wide v0, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$3700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    return v0
.end method

.method static synthetic access$3702(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput p1, p0, Landroid/webkit/WebView;->mPreventDefault:I

    return p1
.end method

.method static synthetic access$3800(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchX:F

    return v0
.end method

.method static synthetic access$3802(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchX:F

    return p1
.end method

.method static synthetic access$3900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$4000(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchY:F

    return v0
.end method

.method static synthetic access$4002(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchY:F

    return p1
.end method

.method static synthetic access$4100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4200(Landroid/webkit/WebView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    return-void
.end method

.method static synthetic access$4300(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->updateSelection()V

    return-void
.end method

.method static synthetic access$4400(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    return v0
.end method

.method static synthetic access$4600(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$4700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4800(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->doShortPress()V

    return-void
.end method

.method static synthetic access$4900(Landroid/webkit/WebView;IIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->setContentScrollBy(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-boolean v0, p0, Landroid/webkit/WebView;->mUserScroll:Z

    return v0
.end method

.method static synthetic access$5002(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput-boolean p1, p0, Landroid/webkit/WebView;->mUserScroll:Z

    return p1
.end method

.method static synthetic access$5100(Landroid/webkit/WebView;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->setContentScrollTo(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->spawnContentScrollTo(II)V

    return-void
.end method

.method static synthetic access$5300(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    return-void
.end method

.method static synthetic access$5400(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z

    return v0
.end method

.method static synthetic access$5402(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput-boolean p1, p0, Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z

    return p1
.end method

.method static synthetic access$5500(Landroid/webkit/WebView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetRootLayer(I)V

    return-void
.end method

.method static synthetic access$5600(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method static synthetic access$5700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    return v0
.end method

.method static synthetic access$5800(Landroid/webkit/WebView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    return-void
.end method

.method static synthetic access$5900(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-boolean v0, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    return v0
.end method

.method static synthetic access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mFindHeight:I

    return v0
.end method

.method static synthetic access$6100(Landroid/webkit/WebView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->invalidateContentRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    return-object v0
.end method

.method static synthetic access$6400(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mDefaultScale:F

    return v0
.end method

.method static synthetic access$6500(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    return v0
.end method

.method static synthetic access$6600(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mInvActualScale:F

    return v0
.end method

.method static synthetic access$6702(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput-boolean p1, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    return p1
.end method

.method static synthetic access$6800(Landroid/webkit/WebView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeCreate(I)V

    return-void
.end method

.method static synthetic access$6900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    return v0
.end method

.method static synthetic access$700(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/webkit/WebView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->displaySoftKeyboard(Z)V

    return-void
.end method

.method static synthetic access$7100(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/webkit/WebView;IIZJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 312
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Landroid/webkit/WebView;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    return-void
.end method

.method static synthetic access$7502(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput-boolean p1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    return p1
.end method

.method static synthetic access$7602(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput-boolean p1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    return p1
.end method

.method static synthetic access$7702(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    return p1
.end method

.method static synthetic access$7800(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return v0
.end method

.method static synthetic access$7802(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return p1
.end method

.method static synthetic access$7900(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return v0
.end method

.method static synthetic access$7902(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return p1
.end method

.method static synthetic access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return v0
.end method

.method static synthetic access$8002(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput p1, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return p1
.end method

.method static synthetic access$8100(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->startDrag()V

    return-void
.end method

.method static synthetic access$8200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$8300(Landroid/webkit/WebView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$8400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$8500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$8600(Landroid/webkit/WebView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$8800(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doDrag(II)V

    return-void
.end method

.method static synthetic access$8900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    return v0
.end method

.method static synthetic access$9000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$9100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Landroid/webkit/WebView;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$9400(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->doDoubleTap()V

    return-void
.end method

.method static synthetic access$9600(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/webkit/WebView;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$9700(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9800(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 312
    iget v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return v0
.end method

.method static synthetic access$9802(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    iput p1, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return p1
.end method

.method static synthetic access$9900(Landroid/webkit/WebView;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 312
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method private calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 2469
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 2471
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2476
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2477
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2478
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2479
    return-void
.end method

.method private calcOurContentVisibleRectF(Landroid/graphics/RectF;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2486
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2487
    .local v0, ri:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 2489
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 2494
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 2495
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 2496
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 2497
    return-void
.end method

.method private calcOurVisibleRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 2459
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2460
    .local v0, p:Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 2461
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2462
    iget-boolean v1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    if-eqz v1, :cond_0

    .line 2463
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2465
    :cond_0
    return-void
.end method

.method private cancelTouch()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 5797
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-eqz v0, :cond_0

    .line 5798
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->stopDrag()V

    .line 5803
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 5804
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5805
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5809
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_2

    .line 5810
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5811
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5812
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5813
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5816
    :cond_2
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-ne v0, v1, :cond_3

    .line 5817
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 5818
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5820
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5821
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5822
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5823
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5824
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5825
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 5826
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    .line 5827
    return-void
.end method

.method private cancelWebCoreTouchEvent(IIZ)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "removeEvents"

    .prologue
    const/16 v2, 0x8d

    .line 5689
    invoke-direct {p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5690
    if-eqz p3, :cond_0

    .line 5691
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 5693
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 5694
    .local v0, ted:Landroid/webkit/WebViewCore$TouchEventData;
    iput p1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 5695
    iput p2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 5696
    const/4 v1, 0x3

    iput v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 5697
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5698
    const/4 v1, 0x4

    iput v1, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 5700
    .end local v0           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_1
    return-void
.end method

.method private centerFitRect(IIII)V
    .locals 22
    .parameter "docX"
    .parameter "docY"
    .parameter "docWidth"
    .parameter "docHeight"

    .prologue
    .line 6550
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v17

    .line 6551
    .local v17, viewWidth:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v16

    .line 6552
    .local v16, viewHeight:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 6554
    .local v15, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v18, v0

    cmpg-float v18, v15, v18

    if-gez v18, :cond_1

    .line 6555
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move v15, v0

    .line 6559
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v18, v0

    sub-float v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    sget v19, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v18, v18, v19

    if-gez v18, :cond_2

    .line 6560
    div-int/lit8 v18, p3, 0x2

    add-int v18, v18, p1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v18

    div-int/lit8 v19, v17, 0x2

    sub-int v18, v18, v19

    div-int/lit8 v19, p4, 0x2

    add-int v19, v19, p2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v19

    div-int/lit8 v20, v16, 0x2

    sub-int v19, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 6593
    :goto_1
    return-void

    .line 6556
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 v18, v0

    cmpl-float v18, v15, v18

    if-lez v18, :cond_0

    .line 6557
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move v15, v0

    goto :goto_0

    .line 6564
    :cond_2
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v9, v18, v19

    .line 6565
    .local v9, oldScreenX:F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v13, v18, v15

    .line 6566
    .local v13, rectViewX:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v12, v18, v15

    .line 6567
    .local v12, rectViewWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v6, v18, v15

    .line 6568
    .local v6, newMaxWidth:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v12

    const/high16 v19, 0x4000

    div-float v7, v18, v19

    .line 6570
    .local v7, newScreenX:F
    cmpl-float v18, v7, v13

    if-lez v18, :cond_5

    .line 6571
    move v7, v13

    .line 6575
    :cond_3
    :goto_2
    mul-float v18, v9, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v19, v19, v7

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6577
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v10, v18, v19

    .line 6579
    .local v10, oldScreenY:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v14, v18, v19

    .line 6580
    .local v14, rectViewY:F
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v11, v18, v15

    .line 6581
    .local v11, rectViewHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v5, v18, v19

    .line 6582
    .local v5, newMaxHeight:F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v11

    const/high16 v19, 0x4000

    div-float v8, v18, v19

    .line 6584
    .local v8, newScreenY:F
    cmpl-float v18, v8, v14

    if-lez v18, :cond_6

    .line 6585
    move v8, v14

    .line 6589
    :cond_4
    :goto_3
    mul-float v18, v10, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v19, v19, v8

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6591
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    goto/16 :goto_1

    .line 6572
    .end local v5           #newMaxHeight:F
    .end local v8           #newScreenY:F
    .end local v10           #oldScreenY:F
    .end local v11           #rectViewHeight:F
    .end local v14           #rectViewY:F
    :cond_5
    sub-float v18, v6, v13

    sub-float v18, v18, v12

    cmpl-float v18, v7, v18

    if-lez v18, :cond_3

    .line 6573
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v19, v6, v13

    sub-float v7, v18, v19

    goto/16 :goto_2

    .line 6586
    .restart local v5       #newMaxHeight:F
    .restart local v8       #newScreenY:F
    .restart local v10       #oldScreenY:F
    .restart local v11       #rectViewHeight:F
    .restart local v14       #rectViewY:F
    :cond_6
    sub-float v18, v5, v14

    sub-float v18, v18, v11

    cmpl-float v18, v8, v18

    if-lez v18, :cond_4

    .line 6587
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v19, v5, v14

    sub-float v8, v18, v19

    goto :goto_3
.end method

.method private clearHelpers()V
    .locals 1

    .prologue
    .line 1348
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 1349
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 1350
    return-void
.end method

.method private clearTextEntry(Z)V
    .locals 1
    .parameter "disableFocusController"

    .prologue
    .line 1972
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1973
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->remove()V

    .line 1974
    if-eqz p1, :cond_0

    .line 1975
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 1978
    :cond_0
    return-void
.end method

.method private static computeDuration(II)I
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 3099
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3100
    .local v0, distance:I
    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v1, v2, 0x1e0

    .line 3101
    .local v1, duration:I
    const/16 v2, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeMaxScrollX()I
    .locals 2

    .prologue
    .line 6139
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private computeMaxScrollY()I
    .locals 2

    .prologue
    .line 6143
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private computeRealHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 2552
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 2553
    iget v0, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 2560
    :goto_0
    return v0

    .line 2554
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 2557
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeHorizontalScrollExtent()I

    move-result v0

    goto :goto_0

    .line 2560
    :cond_1
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private computeRealVerticalScrollRange()I
    .locals 2

    .prologue
    .line 2586
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 2587
    iget v0, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 2594
    :goto_0
    return v0

    .line 2588
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 2591
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollExtent()I

    move-result v0

    goto :goto_0

    .line 2594
    :cond_1
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private contentSizeChanged(Z)V
    .locals 2
    .parameter "updateLayout"

    .prologue
    .line 3279
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 3298
    :cond_0
    :goto_0
    return-void

    .line 3283
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v0, :cond_3

    .line 3284
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 3286
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 3288
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    if-eqz v0, :cond_5

    .line 3289
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_0

    .line 3291
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 3296
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    goto :goto_0
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .parameter "x"

    .prologue
    .line 2271
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private createZoomControls()Landroid/webkit/WebView$ExtendedZoomControls;
    .locals 3

    .prologue
    .line 6315
    new-instance v0, Landroid/webkit/WebView$ExtendedZoomControls;

    iget-object v1, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView$ExtendedZoomControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6317
    .local v0, zoomControls:Landroid/webkit/WebView$ExtendedZoomControls;
    new-instance v1, Landroid/webkit/WebView$9;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$9;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 6326
    new-instance v1, Landroid/webkit/WebView$10;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$10;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 6335
    return-object v0
.end method

.method private didUpdateTextViewBounds(Z)Z
    .locals 9
    .parameter "allowIntersect"

    .prologue
    const/4 v8, 0x0

    .line 3726
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3727
    .local v0, contentBounds:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3728
    .local v1, vBox:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3729
    .local v2, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3733
    if-eqz p1, :cond_1

    invoke-static {v2, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3735
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 3737
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 3740
    const/4 v3, 0x1

    .line 3748
    :goto_0
    return v3

    .line 3733
    :cond_1
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3747
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->remove()V

    move v3, v8

    .line 3748
    goto :goto_0
.end method

.method public static disablePlatformNotifications()V
    .locals 0

    .prologue
    .line 1397
    invoke-static {}, Landroid/webkit/Network;->disablePlatformNotifications()V

    .line 1398
    return-void
.end method

.method private displaySoftKeyboard(Z)V
    .locals 6
    .parameter "isTextView"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3967
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3971
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    move v1, v5

    .line 3972
    .local v1, zoom:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 3973
    iput-boolean v4, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 3974
    iget v2, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v2, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 3975
    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v2, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 3977
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    invoke-direct {p0, v2, v4, v4}, Landroid/webkit/WebView;->setNewZoomScale(FZZ)V

    .line 3979
    :cond_0
    if-eqz p1, :cond_3

    .line 3980
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 3981
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3982
    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3983
    if-eqz v1, :cond_1

    .line 3984
    invoke-direct {p0, v5}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    .line 3995
    :cond_1
    :goto_1
    return-void

    .end local v1           #zoom:Z
    :cond_2
    move v1, v4

    .line 3971
    goto :goto_0

    .line 3994
    .restart local v1       #zoom:Z
    :cond_3
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1
.end method

.method private displayWord(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/Point;)V
    .locals 6
    .parameter "context"
    .parameter "word"
    .parameter "screenPnt"

    .prologue
    .line 8181
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Mohab: Enter displayWord"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8183
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mohab: displayWord the word is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8186
    iget v3, p3, Landroid/graphics/Point;->x:I

    int-to-float v1, v3

    .line 8187
    .local v1, x:F
    iget v3, p3, Landroid/graphics/Point;->y:I

    int-to-float v2, v3

    .line 8189
    .local v2, y:F
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 8190
    new-instance v0, Landroid/content/Intent;

    const-string v3, "MOBIDIV.ISCREEN.RECIVER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8191
    .local v0, in:Landroid/content/Intent;
    const-string v3, "Word"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 8192
    const-string/jumbo v3, "x"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 8193
    const-string/jumbo v3, "y"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 8194
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 8197
    .end local v0           #in:Landroid/content/Intent;
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Mohab: Exit displayWord"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8198
    return-void
.end method

.method private doDoubleTap()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 6628
    iget-object v7, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v7}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v7

    if-nez v7, :cond_1

    .line 6693
    :cond_0
    :goto_0
    return-void

    .line 6631
    :cond_1
    iget v7, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6632
    iget v7, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6633
    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 6634
    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 6635
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 6636
    .local v4, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v4, v11}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 6638
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 6639
    iget-object v7, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    iget v8, p0, Landroid/webkit/WebView;->mAnchorX:I

    iget v9, p0, Landroid/webkit/WebView;->mAnchorY:I

    invoke-virtual {v7, v8, v9}, Landroid/webkit/ViewManager;->hitTest(II)Landroid/webkit/ViewManager$ChildView;

    move-result-object v3

    .line 6640
    .local v3, plugin:Landroid/webkit/ViewManager$ChildView;
    if-eqz v3, :cond_4

    .line 6641
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->isPluginFitOnScreen(Landroid/webkit/ViewManager$ChildView;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 6642
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6644
    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    iput v11, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 6645
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-direct {p0, v7, v10}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    goto :goto_0

    .line 6648
    :cond_3
    iput-boolean v11, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6649
    iget v7, v3, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v8, v3, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v9, v3, Landroid/webkit/ViewManager$ChildView;->width:I

    iget v10, v3, Landroid/webkit/ViewManager$ChildView;->height:I

    invoke-direct {p0, v7, v8, v9, v10}, Landroid/webkit/WebView;->centerFitRect(IIII)V

    goto :goto_0

    .line 6653
    :cond_4
    const/4 v6, 0x0

    .line 6654
    .local v6, zoomToDefault:Z
    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v7, v8, :cond_7

    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v8, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_7

    .line 6656
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-direct {p0, v7, v10, v10}, Landroid/webkit/WebView;->setNewZoomScale(FZZ)V

    .line 6657
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 6658
    .local v2, overviewScale:F
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    .line 6659
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6674
    .end local v2           #overviewScale:F
    :cond_5
    :goto_1
    if-eqz v6, :cond_0

    .line 6675
    iput-boolean v11, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6676
    iget v7, p0, Landroid/webkit/WebView;->mAnchorX:I

    iget v8, p0, Landroid/webkit/WebView;->mAnchorY:I

    iget v9, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-direct {p0, v7, v8, v9}, Landroid/webkit/WebView;->nativeGetBlockLeftEdge(IIF)I

    move-result v0

    .line 6677
    .local v0, left:I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_6

    .line 6679
    if-ge v0, v12, :cond_b

    move v7, v11

    :goto_2
    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v7

    iget v8, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v5, v7, v8

    .line 6683
    .local v5, viewLeft:I
    if-lez v5, :cond_c

    .line 6684
    int-to-float v7, v5

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    iget v9, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6691
    .end local v5           #viewLeft:I
    :cond_6
    :goto_3
    iget v7, p0, Landroid/webkit/WebView;->mDefaultScale:F

    invoke-direct {p0, v7, v10}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    goto/16 :goto_0

    .line 6661
    .end local v0           #left:I
    :cond_7
    iget-boolean v7, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-nez v7, :cond_a

    .line 6662
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float v1, v7, v8

    .line 6663
    .local v1, newScale:F
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_9

    .line 6664
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6666
    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    if-ge v7, v8, :cond_8

    iput v11, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 6667
    :cond_8
    invoke-direct {p0, v1, v10}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    goto :goto_1

    .line 6668
    :cond_9
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_5

    .line 6669
    const/4 v6, 0x1

    goto :goto_1

    .line 6672
    .end local v1           #newScale:F
    :cond_a
    const/4 v6, 0x1

    goto :goto_1

    .line 6679
    .restart local v0       #left:I
    :cond_b
    sub-int v7, v0, v12

    goto :goto_2

    .line 6687
    .restart local v5       #viewLeft:I
    :cond_c
    invoke-virtual {p0, v5, v11}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 6688
    const/4 v7, 0x0

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    goto :goto_3
.end method

.method private doDrag(II)V
    .locals 12
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 5740
    or-int v0, p1, p2

    if-eqz v0, :cond_2

    .line 5741
    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 5742
    .local v3, oldX:I
    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 5743
    .local v4, oldY:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    .line 5744
    .local v5, rangeX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    .line 5746
    .local v6, rangeY:I
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_0

    .line 5748
    iput p1, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    .line 5749
    iput p2, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    .line 5752
    :cond_0
    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    iget v8, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    .line 5755
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5758
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5761
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5762
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    move v10, v9

    .line 5763
    .local v10, showPlusMinus:Z
    :goto_0
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v0, :cond_3

    if-eqz v10, :cond_3

    .line 5764
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v0}, Landroid/webkit/WebView$ExtendedZoomControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 5765
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5769
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v7, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5773
    .end local v10           #showPlusMinus:Z
    :cond_3
    return-void

    :cond_4
    move v10, v11

    .line 5762
    goto :goto_0

    .line 5767
    .restart local v10       #showPlusMinus:Z
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v0, v10, v11}, Landroid/webkit/WebView$ExtendedZoomControls;->show(ZZ)V

    goto :goto_1
.end method

.method private doFling()V
    .locals 19

    .prologue
    .line 6154
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v2, v0

    if-nez v2, :cond_1

    .line 6239
    :cond_0
    :goto_0
    return-void

    .line 6157
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v8

    .line 6158
    .local v8, maxX:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v10

    .line 6160
    .local v10, maxY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v2, v0

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaximumFling:I

    move v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    move v0, v2

    float-to-int v0, v0

    move/from16 v17, v0

    .line 6162
    .local v17, vx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    move v0, v2

    float-to-int v0, v0

    move/from16 v18, v0

    .line 6164
    .local v18, vy:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v2, v0

    if-eqz v2, :cond_2

    .line 6165
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v2, v0

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 6166
    const/16 v18, 0x0

    .line 6173
    :cond_2
    :goto_1
    mul-int/lit8 v2, v17, 0x3

    div-int/lit8 v17, v2, 0x4

    .line 6174
    mul-int/lit8 v2, v18, 0x3

    div-int/lit8 v18, v2, 0x4

    .line 6176
    if-nez v8, :cond_3

    if-eqz v18, :cond_4

    :cond_3
    if-nez v10, :cond_6

    if-nez v17, :cond_6

    .line 6177
    :cond_4
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 6178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v2, v0

    invoke-static {v2}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6179
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v4, v0

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    .end local v8           #maxX:I
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6181
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 6168
    .restart local v8       #maxX:I
    :cond_5
    const/16 v17, 0x0

    goto :goto_1

    .line 6185
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v14

    .line 6186
    .local v14, currentVelocity:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-lez v2, :cond_8

    .line 6187
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelY:F

    move v2, v0

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelX:F

    move v4, v0

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide v4, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    double-to-float v15, v2

    .line 6189
    .local v15, deltaR:F
    const v13, 0x40c90fdb

    .line 6190
    .local v13, circle:F
    const v2, 0x40b4f4ab

    cmpl-float v2, v15, v2

    if-gtz v2, :cond_7

    const v2, 0x3f20d97c

    cmpg-float v2, v15, v2

    if-gez v2, :cond_8

    .line 6191
    :cond_7
    move/from16 v0, v17

    int-to-float v0, v0

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelX:F

    move v3, v0

    mul-float/2addr v3, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v4, v0

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move v0, v2

    float-to-int v0, v0

    move/from16 v17, v0

    .line 6192
    move/from16 v0, v18

    int-to-float v0, v0

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelY:F

    move v3, v0

    mul-float/2addr v3, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v4, v0

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move v0, v2

    float-to-int v0, v0

    move/from16 v18, v0

    .line 6208
    .end local v13           #circle:F
    .end local v15           #deltaR:F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v2, v0

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v2, v0

    if-ne v2, v8, :cond_a

    :cond_9
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 6209
    const/16 v17, 0x0

    .line 6211
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v2, v0

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v2, v0

    if-ne v2, v10, :cond_c

    :cond_b
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 6212
    const/16 v18, 0x0

    .line 6215
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v3, v0

    if-ge v2, v3, :cond_10

    .line 6216
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v3, v0

    neg-int v3, v3

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v3, v0

    add-int/2addr v3, v8

    if-ne v2, v3, :cond_e

    .line 6217
    :cond_d
    const/16 v17, 0x0

    .line 6219
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v3, v0

    neg-int v3, v3

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v3, v0

    add-int/2addr v3, v10

    if-ne v2, v3, :cond_10

    .line 6220
    :cond_f
    const/16 v18, 0x0

    .line 6224
    :cond_10
    move/from16 v0, v17

    int-to-float v0, v0

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelX:F

    .line 6225
    move/from16 v0, v18

    int-to-float v0, v0

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelY:F

    .line 6226
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide v2, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelocity:F

    .line 6229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v4, v0

    move/from16 v0, v17

    neg-int v0, v0

    move v5, v0

    move/from16 v0, v18

    neg-int v0, v0

    move v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    if-nez v8, :cond_11

    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v12, v0

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 6236
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getDuration()I

    move-result v16

    .line 6237
    .local v16, time:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 6238
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 6229
    .end local v16           #time:I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v11, v0

    goto :goto_2
.end method

.method private doMotionUp(II)V
    .locals 3
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v2, 0x0

    .line 6508
    sget-boolean v0, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6509
    const v0, 0x11206

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6511
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6512
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 6514
    :cond_1
    return-void
.end method

.method private doShortPress()V
    .locals 5

    .prologue
    .line 6481
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_1

    .line 6505
    :cond_0
    :goto_0
    return-void

    .line 6484
    :cond_1
    iget v3, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 6487
    const/4 v3, 0x7

    iput v3, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 6488
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 6490
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 6491
    .local v0, contentX:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 6492
    .local v1, contentY:I
    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->nativePointInNavCache(III)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6493
    new-instance v2, Landroid/webkit/WebViewCore$MotionUpData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$MotionUpData;-><init>()V

    .line 6495
    .local v2, motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitFramePointer()I

    move-result v3

    iput v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    .line 6496
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodePointer()I

    move-result v3

    iput v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    .line 6497
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodeBounds()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    .line 6498
    iput v0, v2, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    .line 6499
    iput v1, v2, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    .line 6500
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x92

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0

    .line 6503
    .end local v2           #motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    :cond_2
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doMotionUp(II)V

    goto :goto_0
.end method

.method private doTrackball(J)V
    .locals 26
    .parameter "time"

    .prologue
    .line 6049
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mTrackballLastTime:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    move-wide v10, v0

    sub-long/2addr v8, v10

    long-to-int v13, v8

    .line 6050
    .local v13, elapsed:I
    if-nez v13, :cond_0

    .line 6051
    const/16 v13, 0xc8

    .line 6053
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    int-to-float v6, v13

    div-float v23, v5, v6

    .line 6054
    .local v23, xRate:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    int-to-float v6, v13

    div-float v25, v5, v6

    .line 6055
    .local v25, yRate:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    .line 6056
    .local v20, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v19

    .line 6057
    .local v19, viewHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_3

    .line 6058
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    move v5, v0

    if-nez v5, :cond_1

    .line 6062
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionX()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectX:I

    .line 6063
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionY()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectY:I

    .line 6064
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelection:Z

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 6065
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 6067
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->moveSelection(FF)V

    .line 6069
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 6136
    :cond_2
    :goto_0
    return-void

    .line 6072
    :cond_3
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 6073
    .local v11, ax:F
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 6074
    .local v12, ay:F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 6082
    .local v16, maxA:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move v5, v0

    sub-int v21, v5, v20

    .line 6083
    .local v21, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move v5, v0

    sub-int v14, v5, v19

    .line 6084
    .local v14, height:I
    if-gez v21, :cond_4

    const/16 v21, 0x0

    .line 6085
    :cond_4
    if-gez v14, :cond_5

    const/4 v14, 0x0

    .line 6086
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 6087
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 6088
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 6089
    const/4 v5, 0x0

    move/from16 v0, v16

    float-to-int v0, v0

    move v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 6090
    .local v7, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v17, v0

    .line 6091
    .local v17, oldScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v18, v0

    .line 6092
    .local v18, oldScrollY:I
    if-lez v7, :cond_b

    .line 6093
    cmpg-float v5, v11, v12

    if-gez v5, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    const/16 v5, 0x13

    move v6, v5

    .line 6097
    .local v6, selectKeyCode:I
    :goto_1
    const/16 v5, 0xa

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 6104
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move v5, v0

    if-eqz v5, :cond_10

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 6105
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    if-ge v15, v7, :cond_9

    .line 6106
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, p1

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    .line 6105
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 6093
    .end local v6           #selectKeyCode:I
    .end local v15           #i:I
    :cond_6
    const/16 v5, 0x14

    move v6, v5

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    const/16 v5, 0x15

    move v6, v5

    goto :goto_1

    :cond_8
    const/16 v5, 0x16

    move v6, v5

    goto :goto_1

    .line 6108
    .restart local v6       #selectKeyCode:I
    .restart local v15       #i:I
    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, p1

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    .line 6112
    .end local v15           #i:I
    :cond_a
    :goto_3
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 6114
    .end local v6           #selectKeyCode:I
    :cond_b
    const/4 v5, 0x5

    if-lt v7, v5, :cond_2

    .line 6115
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v22

    .line 6116
    .local v22, xMove:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move v2, v14

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v24

    .line 6125
    .local v24, yMove:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v5, v0

    sub-int v5, v5, v17

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_c

    .line 6126
    const/16 v22, 0x0

    .line 6128
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v5, v0

    sub-int v5, v5, v18

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_d

    .line 6129
    const/16 v24, 0x0

    .line 6131
    :cond_d
    if-nez v22, :cond_e

    if-eqz v24, :cond_f

    .line 6132
    :cond_e
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 6134
    :cond_f
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mUserScroll:Z

    goto/16 :goto_0

    .line 6109
    .end local v22           #xMove:I
    .end local v24           #yMove:I
    .restart local v6       #selectKeyCode:I
    :cond_10
    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v9, p1

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 6110
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    goto :goto_3
.end method

.method private domChangedFocus()V
    .locals 2

    .prologue
    .line 2087
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2088
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2090
    :cond_0
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3517
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    :goto_0
    iget v1, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    if-eqz v1, :cond_2

    :cond_0
    move v1, v4

    :goto_1
    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 3520
    iget v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    iget-boolean v1, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/WebView;->drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V

    .line 3521
    return-void

    :cond_1
    move v0, v3

    .line 3517
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method private drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V
    .locals 21
    .parameter "canvas"
    .parameter "color"
    .parameter "drawCursorRing"

    .prologue
    .line 3764
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 3765
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 3885
    :cond_0
    :goto_0
    return-void

    .line 3770
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_d

    const/16 v16, 0x1

    move/from16 v7, v16

    .line 3771
    .local v7, animateZoom:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mDeferTouchMode:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    :cond_4
    const/16 v16, 0x1

    move/from16 v6, v16

    .line 3776
    .local v6, animateScroll:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 3777
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 3778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeMessages(I)V

    .line 3779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x9

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeMessages(I)V

    .line 3780
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 3782
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move/from16 v16, v0

    if-nez v16, :cond_6

    .line 3783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v18, 0x64

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3785
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 3788
    :cond_6
    if-eqz v7, :cond_11

    .line 3790
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mZoomStart:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v9, v0

    .line 3791
    .local v9, interval:I
    const/16 v16, 0x1f4

    move v0, v9

    move/from16 v1, v16

    if-ge v0, v1, :cond_f

    .line 3792
    move v0, v9

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x43fa

    div-float v10, v16, v17

    .line 3793
    .local v10, ratio:F
    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v18, v18, v10

    add-float v17, v17, v18

    div-float v15, v16, v17

    .line 3795
    .local v15, zoomScale:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3815
    .end local v10           #ratio:F
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move/from16 v16, v0

    mul-float v11, v15, v16

    .line 3816
    .local v11, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInitialScrollX:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v17, v0

    add-float v16, v16, v17

    mul-float v16, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 3818
    .local v13, tx:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v17, v0

    add-int v13, v16, v17

    .line 3820
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v12

    .line 3821
    .local v12, titleHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInitialScrollY:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move v0, v12

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    mul-float v16, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v17, v0

    move v0, v12

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    sub-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 3824
    .local v14, ty:I
    if-gt v14, v12, :cond_10

    const/16 v16, 0x0

    move v0, v14

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    :goto_4
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v17, v0

    add-int v14, v16, v17

    .line 3827
    move v0, v13

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3828
    move-object/from16 v0, p1

    move v1, v15

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3829
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_8

    .line 3833
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    .line 3836
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 3837
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 3844
    .end local v9           #interval:I
    .end local v11           #scale:F
    .end local v12           #titleHeight:I
    .end local v13           #tx:I
    .end local v14           #ty:I
    .end local v15           #zoomScale:F
    :cond_8
    :goto_5
    const/4 v5, 0x0

    .line 3847
    .local v5, UIAnimationsRunning:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move/from16 v16, v0

    if-eqz v16, :cond_9

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeEvaluateLayersAnimations()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 3848
    const/4 v5, 0x1

    .line 3851
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3853
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v16, v0

    if-nez v7, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    if-eqz v5, :cond_12

    :cond_a
    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    .line 3856
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 3858
    const/4 v8, 0x0

    .line 3859
    .local v8, extras:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mFindIsUp:Z

    move/from16 v16, v0

    if-eqz v16, :cond_13

    .line 3860
    const/4 v8, 0x1

    .line 3869
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->drawExtras(Landroid/graphics/Canvas;IZ)V

    .line 3871
    const/16 v16, 0x3

    move v0, v8

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    .line 3872
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 3873
    const/16 v16, 0x5

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 3876
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 3877
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 3881
    if-nez v7, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 3882
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    goto/16 :goto_0

    .line 3770
    .end local v5           #UIAnimationsRunning:Z
    .end local v6           #animateScroll:Z
    .end local v7           #animateZoom:Z
    .end local v8           #extras:I
    :cond_d
    const/16 v16, 0x0

    move/from16 v7, v16

    goto/16 :goto_1

    .line 3771
    .restart local v7       #animateZoom:Z
    :cond_e
    const/16 v16, 0x0

    move/from16 v6, v16

    goto/16 :goto_2

    .line 3797
    .restart local v6       #animateScroll:Z
    .restart local v9       #interval:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move v15, v0

    .line 3799
    .restart local v15       #zoomScale:F
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomScale:F

    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 3802
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3803
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 3804
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    .line 3805
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 3809
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    goto/16 :goto_3

    .line 3824
    .restart local v11       #scale:F
    .restart local v12       #titleHeight:I
    .restart local v13       #tx:I
    .restart local v14       #ty:I
    :cond_10
    sub-int v16, v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    invoke-static/range {v16 .. v18}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v16

    add-int v16, v16, v12

    goto/16 :goto_4

    .line 3841
    .end local v9           #interval:I
    .end local v11           #scale:F
    .end local v12           #titleHeight:I
    .end local v13           #tx:I
    .end local v14           #ty:I
    .end local v15           #zoomScale:F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_5

    .line 3853
    .restart local v5       #UIAnimationsRunning:Z
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 3861
    .restart local v8       #extras:I
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move/from16 v16, v0

    if-eqz v16, :cond_14

    .line 3862
    const/4 v8, 0x2

    .line 3863
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectY:I

    move/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->nativeSetSelectionPointer(ZFII)V

    goto/16 :goto_7

    .line 3866
    :cond_14
    if-eqz p3, :cond_b

    .line 3867
    const/4 v8, 0x3

    goto/16 :goto_7
.end method

.method private drawEdgeGlows(Landroid/graphics/Canvas;)Z
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 3619
    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 3620
    .local v3, scrollX:I
    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 3621
    .local v4, scrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    .line 3622
    .local v5, width:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 3624
    .local v0, height:I
    const/4 v1, 0x0

    .line 3625
    .local v1, invalidateForGlow:Z
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3626
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3628
    .local v2, restoreCount:I
    neg-int v6, v5

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3629
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    mul-int/lit8 v7, v5, 0x2

    invoke-virtual {v6, v7, v0}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3630
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 3631
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3633
    .end local v2           #restoreCount:I
    :cond_0
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3634
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3636
    .restart local v2       #restoreCount:I
    neg-int v6, v5

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3637
    const/high16 v6, 0x4334

    int-to-float v7, v5

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3638
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    mul-int/lit8 v7, v5, 0x2

    invoke-virtual {v6, v7, v0}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3639
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 3640
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3642
    .end local v2           #restoreCount:I
    :cond_1
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3643
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3645
    .restart local v2       #restoreCount:I
    const/high16 v6, 0x4387

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3646
    neg-int v6, v0

    int-to-float v6, v6

    const/high16 v7, 0x3fc0

    mul-float/2addr v6, v7

    int-to-float v7, v4

    sub-float/2addr v6, v7

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3647
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    mul-int/lit8 v7, v0, 0x2

    invoke-virtual {v6, v7, v5}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3648
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 3649
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3651
    .end local v2           #restoreCount:I
    :cond_2
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3652
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3654
    .restart local v2       #restoreCount:I
    const/high16 v6, 0x42b4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3655
    neg-int v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    int-to-float v6, v6

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v5

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3657
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    mul-int/lit8 v7, v0, 0x2

    invoke-virtual {v6, v7, v5}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3658
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 3659
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3661
    .end local v2           #restoreCount:I
    :cond_3
    return v1
.end method

.method private drawExtras(Landroid/graphics/Canvas;IZ)V
    .locals 1
    .parameter "canvas"
    .parameter "extras"
    .parameter "animationsRunning"

    .prologue
    .line 3755
    if-eqz p3, :cond_0

    .line 3756
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v0, v0, Landroid/webkit/WebViewCore;->mZoomFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 3758
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeDrawExtras(Landroid/graphics/Canvas;I)V

    .line 3759
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 3760
    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 0

    .prologue
    .line 1389
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    .line 1390
    return-void
.end method

.method private extendScroll(I)Z
    .locals 4
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 1874
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    .line 1875
    .local v0, finalY:I
    add-int v2, v0, p1

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    .line 1876
    .local v1, newY:I
    if-ne v1, v0, :cond_0

    move v2, v3

    .line 1879
    :goto_0
    return v2

    .line 1877
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 1878
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-static {v3, p1}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->extendDuration(I)V

    .line 1879
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "addr"

    .prologue
    .line 2964
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAddress(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "addr"
    .parameter "caseInsensitive"

    .prologue
    .line 2990
    invoke-static {p0, p1}, Landroid/webkit/WebViewCore;->nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3476
    const-class v0, Landroid/webkit/WebView;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/webkit/PluginList;

    invoke-direct {v1}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getScaledMaxXScroll()I
    .locals 3

    .prologue
    .line 7860
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 7861
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 7868
    .local v1, width:I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    return v2

    .line 7863
    .end local v1           #width:I
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7864
    .local v0, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 7865
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #width:I
    goto :goto_0
.end method

.method private getScaledMaxYScroll()I
    .locals 4

    .prologue
    .line 7873
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 7874
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 7883
    .local v0, height:I
    :goto_0
    int-to-float v2, v0

    iget v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .line 7876
    .end local v0           #height:I
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 7877
    .local v1, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 7878
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .restart local v0       #height:I
    goto :goto_0
.end method

.method private getTitleHeight()I
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getViewHeightWithTitle()I
    .locals 2

    .prologue
    .line 1279
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1280
    .local v0, height:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    if-nez v1, :cond_0

    .line 1281
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1283
    :cond_0
    return v0
.end method

.method private getVisibleTitleHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1266
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getWordUnderTouch()Ljava/lang/String;
    .locals 15

    .prologue
    .line 8084
    const-string v6, ""

    .line 8085
    .local v6, selectionStr:Ljava/lang/String;
    const-string v11, ""

    .line 8086
    .local v11, word:Ljava/lang/String;
    const/4 v7, -0x1

    .line 8087
    .local v7, start:I
    const/4 v2, -0x1

    .line 8089
    .local v2, end:I
    const/4 v8, 0x0

    .local v8, startx:I
    const/4 v3, 0x0

    .line 8091
    .local v3, endx:I
    const/4 v0, 0x2

    .line 8092
    .local v0, STEP:I
    iget v12, p0, Landroid/webkit/WebView;->mIscreenStartX:I

    iget v13, p0, Landroid/webkit/WebView;->mIscreenEndX:I

    if-le v12, v13, :cond_0

    .line 8093
    iget v9, p0, Landroid/webkit/WebView;->mIscreenStartX:I

    .line 8094
    .local v9, temp:I
    iget v12, p0, Landroid/webkit/WebView;->mIscreenEndX:I

    iput v12, p0, Landroid/webkit/WebView;->mIscreenStartX:I

    .line 8095
    iput v9, p0, Landroid/webkit/WebView;->mIscreenEndX:I

    .line 8098
    .end local v9           #temp:I
    :cond_0
    iget v12, p0, Landroid/webkit/WebView;->mIscreenStartX:I

    iget v13, p0, Landroid/webkit/WebView;->mIscreenEndX:I

    add-int/2addr v12, v13

    div-int/lit8 v4, v12, 0x2

    .line 8102
    .local v4, midx:I
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 8104
    iget v12, p0, Landroid/webkit/WebView;->mIscreenStartY:I

    invoke-direct {p0, v4, v12}, Landroid/webkit/WebView;->nativeMoveSelection(II)V

    .line 8105
    move v3, v4

    move v8, v4

    .line 8106
    const/4 v5, -0x1

    .line 8108
    .local v5, oldSelectionLen:I
    :goto_0
    if-lez v8, :cond_2

    .line 8109
    const/4 v12, 0x2

    if-le v8, v12, :cond_6

    const/4 v12, 0x2

    sub-int v12, v8, v12

    move v8, v12

    .line 8112
    :goto_1
    iget v12, p0, Landroid/webkit/WebView;->mIscreenStartY:I

    invoke-direct {p0, v8, v12}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    .line 8114
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetSelection()Ljava/lang/String;

    move-result-object v6

    .line 8116
    const/4 v12, -0x1

    if-eq v5, v12, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v13, v5, 0x5

    if-gt v12, v13, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v12, v5, :cond_7

    .line 8118
    :cond_1
    add-int/lit8 v8, v8, 0x2

    .line 8130
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 8133
    iget v12, p0, Landroid/webkit/WebView;->mIscreenStartY:I

    invoke-direct {p0, v8, v12}, Landroid/webkit/WebView;->nativeMoveSelection(II)V

    .line 8134
    iget v10, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 8135
    .local v10, width:I
    :goto_2
    if-ge v3, v10, :cond_4

    .line 8136
    const/4 v12, 0x2

    sub-int v12, v10, v12

    if-ge v3, v12, :cond_8

    add-int/lit8 v12, v3, 0x2

    move v3, v12

    .line 8139
    :goto_3
    iget v12, p0, Landroid/webkit/WebView;->mIscreenStartY:I

    invoke-direct {p0, v3, v12}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    .line 8141
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetSelection()Ljava/lang/String;

    move-result-object v6

    .line 8142
    const/4 v12, -0x1

    if-eq v5, v12, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v13, v5, 0x5

    if-gt v12, v13, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v12, v5, :cond_9

    .line 8144
    :cond_3
    const/4 v12, 0x2

    sub-int/2addr v3, v12

    .line 8155
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 8156
    iget v12, p0, Landroid/webkit/WebView;->mIscreenStartY:I

    invoke-direct {p0, v8, v12}, Landroid/webkit/WebView;->nativeMoveSelection(II)V

    .line 8157
    iget v12, p0, Landroid/webkit/WebView;->mIscreenStartY:I

    invoke-direct {p0, v3, v12}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    .line 8158
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetSelection()Ljava/lang/String;

    move-result-object v6

    .line 8159
    const/4 v12, -0x1

    if-eq v7, v12, :cond_a

    add-int/lit8 v12, v7, 0x1

    move v7, v12

    .line 8160
    :goto_4
    const/4 v12, -0x1

    if-eq v2, v12, :cond_b

    .line 8164
    :goto_5
    :try_start_0
    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 8172
    :goto_6
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 8173
    if-eqz v11, :cond_5

    .line 8174
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getWordUnderTouch() : end : result word -  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8177
    :cond_5
    return-object v11

    .line 8109
    .end local v10           #width:I
    :cond_6
    const/4 v12, 0x0

    move v8, v12

    goto/16 :goto_1

    .line 8122
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    invoke-static {v6, v12, v13}, Landroid/view/IScreenListener;->getFirstWordSeparatorIndex(Ljava/lang/String;II)I

    move-result v7

    .line 8124
    const/4 v12, -0x1

    if-ne v7, v12, :cond_2

    .line 8127
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    goto/16 :goto_0

    .line 8136
    .restart local v10       #width:I
    :cond_8
    const/4 v12, 0x1

    sub-int v12, v10, v12

    move v3, v12

    goto :goto_3

    .line 8147
    :cond_9
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-static {v6, v12, v13}, Landroid/view/IScreenListener;->getFirstWordSeparatorIndex(Ljava/lang/String;II)I

    move-result v2

    .line 8149
    const/4 v12, -0x1

    if-ne v2, v12, :cond_4

    const/4 v12, 0x1

    sub-int v12, v10, v12

    if-eq v3, v12, :cond_4

    .line 8152
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    goto/16 :goto_2

    .line 8159
    :cond_a
    const/4 v12, 0x0

    move v7, v12

    goto :goto_4

    .line 8160
    :cond_b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    move v2, v12

    goto :goto_5

    .line 8165
    :catch_0
    move-exception v1

    .line 8168
    .local v1, e:Ljava/lang/Exception;
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "final selection is = ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") start: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - end:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private goBackOrForward(IZ)V
    .locals 3
    .parameter "steps"
    .parameter "ignoreSnapshot"

    .prologue
    .line 1866
    if-eqz p1, :cond_0

    .line 1867
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 1868
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6a

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, p1, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1871
    :cond_0
    return-void

    .line 1868
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 3999
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4002
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4003
    return-void
.end method

.method private hitFocusedPlugin(II)Z
    .locals 1
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    .line 5129
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inEditingMode()Z
    .locals 1

    .prologue
    .line 1963
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inFullScreenMode()Z
    .locals 1

    .prologue
    .line 5140
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1074
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 1075
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 1076
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 1077
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 1078
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 1080
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1081
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 1082
    .local v2, slop:I
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    .line 1083
    iput v2, p0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    .line 1084
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    .line 1085
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    .line 1086
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 1089
    .local v1, density:F
    const/high16 v3, 0x4180

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1091
    const/high16 v3, 0x42c8

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sput v3, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    .line 1092
    iput v1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 1093
    iput v1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 1094
    const/high16 v3, 0x3f80

    div-float/2addr v3, v1

    iput v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 1095
    iput v1, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 1096
    const/high16 v3, 0x4080

    mul-float/2addr v3, v1

    sput v3, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    .line 1097
    const/high16 v3, 0x3e80

    mul-float/2addr v3, v1

    sput v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    .line 1098
    sget v3, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    iput v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 1099
    sget v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    iput v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 1100
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mMaximumFling:I

    .line 1101
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    .line 1102
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    .line 1103
    return-void
.end method

.method private invalidateContentRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 2313
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    .line 2314
    return-void
.end method

.method private isPluginFitOnScreen(Landroid/webkit/ViewManager$ChildView;)Z
    .locals 6
    .parameter "view"

    .prologue
    .line 6521
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    .line 6522
    .local v2, viewWidth:I
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    .line 6523
    .local v1, viewHeight:I
    int-to-float v3, v2

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v1

    iget v5, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 6525
    .local v0, scale:F
    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 6526
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 6530
    :cond_0
    :goto_0
    iget v3, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 6531
    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->x:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    if-lt v3, v4, :cond_2

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v4, v2

    if-gt v3, v4, :cond_2

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->y:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    if-lt v3, v4, :cond_2

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v1

    if-gt v3, v4, :cond_2

    .line 6537
    const/4 v3, 0x1

    .line 6540
    :goto_1
    return v3

    .line 6527
    :cond_1
    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 6528
    iget v0, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_0

    .line 6540
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private keyCodeToSoundsEffect(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 6033
    packed-switch p1, :pswitch_data_0

    .line 6043
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCode must be one of {KEYCODE_DPAD_UP, KEYCODE_DPAD_RIGHT, KEYCODE_DPAD_DOWN, KEYCODE_DPAD_LEFT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6035
    :pswitch_0
    const/4 v0, 0x2

    .line 6041
    :goto_0
    return v0

    .line 6037
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 6039
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 6041
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 6033
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private letPluginHandleNavKey(IJZ)V
    .locals 13
    .parameter "keyCode"
    .parameter "time"
    .parameter "down"

    .prologue
    .line 7900
    if-eqz p4, :cond_0

    .line 7901
    const/4 v5, 0x0

    .line 7902
    .local v5, keyEventAction:I
    const/16 v12, 0x67

    .line 7903
    .local v12, eventHubAction:I
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 7908
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    iget-boolean v1, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    or-int/lit8 v1, v1, 0x0

    or-int/lit8 v8, v1, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v1, p2

    move-wide v3, p2

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 7913
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v12, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7914
    return-void

    .line 7905
    .end local v0           #event:Landroid/view/KeyEvent;
    .end local v5           #keyEventAction:I
    .end local v12           #eventHubAction:I
    :cond_0
    const/4 v5, 0x1

    .line 7906
    .restart local v5       #keyEventAction:I
    const/16 v12, 0x68

    .restart local v12       #eventHubAction:I
    goto :goto_0

    .line 7908
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private native nativeCacheHitFramePointer()I
.end method

.method private native nativeCacheHitNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCacheHitNodePointer()I
.end method

.method private native nativeCreate(I)V
.end method

.method private native nativeCursorFramePointer()I
.end method

.method private native nativeCursorIntersects(Landroid/graphics/Rect;)Z
.end method

.method private native nativeCursorIsAnchor()Z
.end method

.method private native nativeCursorIsTextInput()Z
.end method

.method private native nativeCursorNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCursorNodePointer()I
.end method

.method private native nativeCursorPosition()Landroid/graphics/Point;
.end method

.method private native nativeCursorText()Ljava/lang/String;
.end method

.method private native nativeCursorWantsKeyEvents()Z
.end method

.method private native nativeDebugDump()V
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeDrawExtras(Landroid/graphics/Canvas;I)V
.end method

.method private native nativeDumpDisplayTree(Ljava/lang/String;)V
.end method

.method private native nativeEvaluateLayersAnimations()Z
.end method

.method private native nativeExtendSelection(II)V
.end method

.method private native nativeFindAll(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeFindIndex()I
.end method

.method private native nativeFindNext(Z)V
.end method

.method private native nativeFocusCandidateIsRtlText()Z
.end method

.method private native nativeFocusCandidateIsTextInput()Z
.end method

.method private native nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidateText()Ljava/lang/String;
.end method

.method private native nativeFocusCandidateTextSize()I
.end method

.method private native nativeFocusCandidateType()I
.end method

.method private native nativeFocusIsPlugin()Z
.end method

.method private native nativeFocusNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetBlockLeftEdge(IIF)I
.end method

.method private native nativeGetCursorRingBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetSelection()Ljava/lang/String;
.end method

.method private native nativeHasCursorNode()Z
.end method

.method private native nativeHasFocusNode()Z
.end method

.method private native nativeHideCursor()V
.end method

.method private native nativeHitSelection(II)Z
.end method

.method private native nativeImageURI(II)Ljava/lang/String;
.end method

.method private native nativeInstrumentReport()V
.end method

.method private native nativeMotionUp(III)Z
.end method

.method private native nativeMoveCursor(IIZ)Z
.end method

.method private native nativeMoveGeneration()I
.end method

.method private native nativeMoveSelection(II)V
.end method

.method private native nativePointInNavCache(III)Z
.end method

.method private native nativeRecordButtons(ZZZ)V
.end method

.method private native nativeResetSelection()V
.end method

.method private native nativeSelectAll()V
.end method

.method private native nativeSelectBestAt(Landroid/graphics/Rect;)V
.end method

.method private native nativeSelectionX()I
.end method

.method private native nativeSelectionY()I
.end method

.method private native nativeSetExtendSelection()V
.end method

.method private native nativeSetFindIsEmpty()V
.end method

.method private native nativeSetFindIsUp(Z)V
.end method

.method private native nativeSetFollowedLink(Z)V
.end method

.method private native nativeSetHeightCanMeasure(Z)V
.end method

.method private native nativeSetRootLayer(I)V
.end method

.method private native nativeSetSelectionPointer(ZFII)V
.end method

.method private native nativeSetSelectionRegion(Z)V
.end method

.method private native nativeStartSelection(II)Z
.end method

.method private native nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method private native nativeTextGeneration()I
.end method

.method private native nativeUpdateCachedTextfield(Ljava/lang/String;I)V
.end method

.method private native nativeWordSelection(II)Z
.end method

.method private navHandledKey(IIZJ)Z
    .locals 11
    .parameter "keyCode"
    .parameter "count"
    .parameter "noScroll"
    .parameter "time"

    .prologue
    .line 7919
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v8, :cond_0

    .line 7920
    const/4 v8, 0x0

    .line 7968
    :goto_0
    return v8

    .line 7922
    :cond_0
    iput-wide p4, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 7923
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    .line 7924
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeMoveCursor(IIZ)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    move v1, v8

    .line 7931
    .local v1, keyHandled:Z
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v8, :cond_3

    :cond_1
    move v8, v1

    .line 7932
    goto :goto_0

    .line 7924
    .end local v1           #keyHandled:Z
    :cond_2
    const/4 v8, 0x0

    move v1, v8

    goto :goto_1

    .line 7934
    .restart local v1       #keyHandled:Z
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7935
    .local v0, contentCursorRingBounds:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v1

    goto :goto_0

    .line 7936
    :cond_4
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 7937
    .local v6, viewCursorRingBounds:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 7938
    .local v7, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v7}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 7939
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 7940
    .local v5, outset:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    .line 7941
    .local v3, maxXScroll:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v4, v8, 0x2

    .line 7942
    .local v4, maxYScroll:I
    neg-int v8, v3

    neg-int v9, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 7943
    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_5

    move v8, v1

    .line 7944
    goto :goto_0

    .line 7947
    :cond_5
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7949
    .local v2, maxH:I
    if-lez v2, :cond_7

    .line 7950
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 7958
    :cond_6
    :goto_2
    iget-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v1

    goto :goto_0

    .line 7952
    :cond_7
    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    neg-int v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7954
    if-gez v2, :cond_6

    .line 7955
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    goto :goto_2

    .line 7959
    :cond_8
    iget-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v1

    .line 7960
    goto/16 :goto_0

    .line 7966
    :cond_9
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 7967
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebView;->mUserScroll:Z

    move v8, v1

    .line 7968
    goto/16 :goto_0
.end method

.method private overrideLoading(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 6698
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    .line 6699
    return-void
.end method

.method private static pinLoc(III)I
    .locals 1
    .parameter "x"
    .parameter "viewMax"
    .parameter "docMax"

    .prologue
    .line 2134
    if-ge p2, p1, :cond_1

    .line 2136
    const/4 p0, 0x0

    .line 2145
    :cond_0
    :goto_0
    return p0

    .line 2138
    :cond_1
    if-gez p0, :cond_2

    .line 2139
    const/4 p0, 0x0

    goto :goto_0

    .line 2141
    :cond_2
    add-int v0, p0, p1

    if-le v0, p2, :cond_0

    .line 2142
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private pinLocX(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 2150
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    move v0, p1

    .line 2151
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v0

    goto :goto_0
.end method

.method private pinLocY(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 2156
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    move v0, p1

    .line 2157
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v0

    goto :goto_0
.end method

.method private pinScrollBy(IIZI)Z
    .locals 2
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 3107
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method private pinScrollTo(IIZI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 3112
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 3113
    invoke-direct {p0, p2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result p2

    .line 3114
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v3, p1, v0

    .line 3115
    .local v3, dx:I
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v4, p2, v0

    .line 3117
    .local v4, dy:I
    or-int v0, v3, v4

    if-nez v0, :cond_0

    .line 3118
    const/4 v0, 0x0

    .line 3130
    :goto_0
    return v0

    .line 3120
    :cond_0
    if-eqz p3, :cond_2

    .line 3122
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-lez p4, :cond_1

    move v5, p4

    :goto_1
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 3124
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 3125
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3130
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 3122
    :cond_1
    invoke-static {v3, v4}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v5

    goto :goto_1

    .line 3127
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 3128
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_2
.end method

.method private recordNewContentSize(IIZ)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "updateLayout"

    .prologue
    .line 2328
    or-int v2, p1, p2

    if-nez v2, :cond_0

    .line 2357
    :goto_0
    return-void

    .line 2333
    :cond_0
    iget v2, p0, Landroid/webkit/WebView;->mContentWidth:I

    if-ne v2, p1, :cond_1

    iget v2, p0, Landroid/webkit/WebView;->mContentHeight:I

    if-eq v2, p2, :cond_4

    .line 2335
    :cond_1
    iput p1, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 2336
    iput p2, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 2339
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-nez v2, :cond_4

    .line 2341
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2342
    .local v0, oldX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2343
    .local v1, oldY:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2344
    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2345
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v2, :cond_3

    .line 2346
    :cond_2
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2348
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2351
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->setFinalX(I)V

    .line 2352
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 2356
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_4
    invoke-direct {p0, p3}, Landroid/webkit/WebView;->contentSizeChanged(Z)V

    goto :goto_0
.end method

.method private restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 6
    .parameter "p"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 1545
    const-string v3, "scrollX"

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1546
    .local v1, sx:I
    const-string v3, "scrollY"

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1547
    .local v2, sy:I
    const-string v3, "scale"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 1548
    .local v0, scale:F
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 1549
    iput-object p1, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 1550
    iput v1, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 1551
    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 1552
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 1553
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 1557
    iput v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 1558
    div-float v3, v4, v0

    iput v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 1559
    const-string/jumbo v3, "textwrapScale"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 1560
    const-string v3, "overview"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 1561
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 1562
    return-void
.end method

.method private scaleTrackballX(FI)I
    .locals 4
    .parameter "xRate"
    .parameter "width"

    .prologue
    .line 6005
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 6006
    .local v1, xMove:I
    move v0, v1

    .line 6007
    .local v0, nextXMove:I
    if-lez v1, :cond_1

    .line 6008
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-le v1, v2, :cond_0

    .line 6009
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    .line 6014
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 6015
    return v1

    .line 6011
    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-ge v1, v2, :cond_0

    .line 6012
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scaleTrackballY(FI)I
    .locals 4
    .parameter "yRate"
    .parameter "height"

    .prologue
    .line 6019
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 6020
    .local v1, yMove:I
    move v0, v1

    .line 6021
    .local v0, nextYMove:I
    if-lez v1, :cond_1

    .line 6022
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-le v1, v2, :cond_0

    .line 6023
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    .line 6028
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 6029
    return v1

    .line 6025
    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-ge v1, v2, :cond_0

    .line 6026
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private sendMotionUp(IIIII)V
    .locals 3
    .parameter "touchGeneration"
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 7848
    new-instance v0, Landroid/webkit/WebViewCore$TouchUpData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchUpData;-><init>()V

    .line 7849
    .local v0, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    iput p1, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    .line 7850
    iput p2, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    .line 7851
    iput p3, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    .line 7852
    iput p4, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    .line 7853
    iput p5, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    .line 7854
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7855
    return-void
.end method

.method private sendMoveFocus(II)V
    .locals 4
    .parameter "frame"
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 7817
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7f

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, v3, v3}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7819
    return-void
.end method

.method private sendMoveMouse(IIII)V
    .locals 3
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 7823
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x87

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7825
    return-void
.end method

.method private sendMoveMouseIfLatest(Z)V
    .locals 3
    .parameter "removeFocus"

    .prologue
    .line 7838
    if-eqz p1, :cond_0

    .line 7839
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 7841
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x88

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7843
    return-void
.end method

.method private sendOurVisibleRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 2429
    iget-boolean v3, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 2454
    :goto_0
    return-object v3

    .line 2431
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2432
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 2434
    iget-object v3, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2435
    new-instance v1, Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 2436
    .local v1, pos:Landroid/graphics/Point;
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x6b

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 2438
    iput-object v2, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 2440
    .end local v1           #pos:Landroid/graphics/Point;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2441
    .local v0, globalRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2451
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x74

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2452
    iput-object v0, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    :cond_2
    move-object v3, v2

    .line 2454
    goto :goto_0
.end method

.method private sendViewSizeZoom()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2516
    iget-boolean v4, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-eqz v4, :cond_0

    move v4, v6

    .line 2548
    :goto_0
    return v4

    .line 2518
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    .line 2519
    .local v3, viewWidth:I
    int-to-float v4, v3

    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 2520
    .local v2, newWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2529
    .local v1, newHeight:I
    iget v4, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-le v2, v4, :cond_1

    iget-boolean v4, p0, Landroid/webkit/WebView;->mWrapContent:Z

    if-eqz v4, :cond_1

    .line 2530
    const/4 v1, 0x0

    .line 2533
    :cond_1
    iget v4, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v2, v4, :cond_2

    iget v4, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    if-eq v1, v4, :cond_4

    .line 2534
    :cond_2
    new-instance v0, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v0}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 2535
    .local v0, data:Landroid/webkit/WebView$ViewSizeData;
    iput v2, v0, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 2536
    iput v1, v0, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 2537
    int-to-float v4, v3

    iget v5, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 2538
    iget v4, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2539
    iget v4, p0, Landroid/webkit/WebView;->mZoomScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v4, :cond_3

    move v4, v7

    :goto_1
    iput-boolean v4, v0, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 2540
    iget v4, p0, Landroid/webkit/WebView;->mAnchorX:I

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 2541
    iget v4, p0, Landroid/webkit/WebView;->mAnchorY:I

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    .line 2542
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x69

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2543
    iput v2, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    .line 2544
    iput v1, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 2545
    iput v6, p0, Landroid/webkit/WebView;->mAnchorY:I

    iput v6, p0, Landroid/webkit/WebView;->mAnchorX:I

    move v4, v7

    .line 2546
    goto :goto_0

    :cond_3
    move v4, v6

    .line 2539
    goto :goto_1

    .end local v0           #data:Landroid/webkit/WebView$ViewSizeData;
    :cond_4
    move v4, v6

    .line 2548
    goto :goto_0
.end method

.method private setActive(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4595
    if-eqz p1, :cond_2

    .line 4596
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4599
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 4600
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 4601
    invoke-direct {p0, v3, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 4602
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4603
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4637
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4638
    return-void

    .line 4609
    :cond_1
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    goto :goto_0

    .line 4615
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4626
    :cond_3
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 4628
    :cond_4
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    .line 4629
    iput-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 4630
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4631
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 4632
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_5

    .line 4633
    invoke-direct {p0, v2, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 4635
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    goto :goto_0
.end method

.method private setContentScrollBy(IIZ)Z
    .locals 3
    .parameter "cx"
    .parameter "cy"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 3136
    iget-boolean v1, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 3160
    :goto_0
    return v1

    .line 3143
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p1

    .line 3144
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p2

    .line 3145
    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_3

    .line 3147
    if-eqz p2, :cond_1

    .line 3148
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3149
    .local v0, tempRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3150
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 3151
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 3158
    .end local v0           #tempRect:Landroid/graphics/Rect;
    :cond_1
    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0, p1, v2, p3, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 3160
    :cond_3
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v1

    goto :goto_0
.end method

.method private setContentScrollTo(II)Z
    .locals 6
    .parameter "cx"
    .parameter "cy"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3206
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    move v2, v4

    .line 3255
    :goto_0
    return v2

    .line 3216
    :cond_0
    or-int v2, p1, p2

    if-nez v2, :cond_1

    .line 3220
    const/4 v0, 0x0

    .line 3221
    .local v0, vx:I
    const/4 v1, 0x0

    .line 3233
    .local v1, vy:I
    :goto_1
    if-nez p1, :cond_3

    if-ne p2, v5, :cond_3

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-nez v2, :cond_3

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 3236
    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 3240
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 3241
    iput v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    :goto_2
    move v2, v4

    .line 3247
    goto :goto_0

    .line 3223
    .end local v0           #vx:I
    .end local v1           #vy:I
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 3224
    .restart local v0       #vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .restart local v1       #vy:I
    goto :goto_1

    .line 3243
    :cond_2
    const/16 v2, 0x1f4

    invoke-direct {p0, v0, v1, v5, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_2

    .line 3249
    :cond_3
    invoke-direct {p0, v0, v1, v4, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3252
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-eq v2, v0, :cond_4

    if-gez p1, :cond_5

    :cond_4
    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v2, v1, :cond_6

    if-ltz p2, :cond_6

    :cond_5
    move v2, v5

    .line 3253
    goto :goto_0

    :cond_6
    move v2, v4

    .line 3255
    goto :goto_0
.end method

.method private setNewZoomScale(FZZ)V
    .locals 10
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "force"

    .prologue
    const/high16 v9, 0x3f80

    .line 2361
    iget v5, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_5

    .line 2362
    iget p1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 2364
    iget v5, p0, Landroid/webkit/WebView;->mDefaultScale:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 2368
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 2369
    iput p1, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 2371
    const/4 v5, 0x0

    iput v5, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 2373
    :cond_1
    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v5, p1, v5

    if-nez v5, :cond_2

    if-eqz p3, :cond_4

    .line 2374
    :cond_2
    iget-boolean v5, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v5, :cond_6

    .line 2377
    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v5, p1, v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-nez v5, :cond_3

    .line 2378
    iget-object v5, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget v6, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {v5, v6, p1}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 2380
    :cond_3
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2381
    div-float v5, v9, p1

    iput v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 2382
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 2422
    :cond_4
    :goto_1
    return-void

    .line 2365
    :cond_5
    iget v5, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    .line 2366
    iget p1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_0

    .line 2387
    :cond_6
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2388
    .local v0, oldX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2389
    .local v1, oldY:I
    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float v2, p1, v5

    .line 2390
    .local v2, ratio:F
    int-to-float v5, v0

    mul-float/2addr v5, v2

    sub-float v6, v2, v9

    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 2391
    .local v3, sx:F
    int-to-float v5, v1

    mul-float/2addr v5, v2

    sub-float v6, v2, v9

    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 2395
    .local v4, sy:F
    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v5, p1, v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-nez v5, :cond_7

    .line 2396
    iget-object v5, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget v6, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {v5, v6, p1}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 2398
    :cond_7
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2399
    div-float v5, v9, p1

    iput v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 2402
    iget-object v5, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v5}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 2407
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2408
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2411
    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v5, :cond_8

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v5, :cond_9

    .line 2412
    :cond_8
    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v5, v6, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2419
    :goto_2
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    goto :goto_1

    .line 2417
    :cond_9
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_2
.end method

.method private shouldForwardTouchEvent()Z
    .locals 2

    .prologue
    .line 5134
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sign(F)I
    .locals 2
    .parameter "x"

    .prologue
    const/4 v1, 0x0

    .line 4845
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmpg-float v0, p0, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private spawnContentScrollTo(II)V
    .locals 4
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 3261
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    .line 3269
    :goto_0
    return-void

    .line 3266
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 3267
    .local v0, vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .line 3268
    .local v1, vy:I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_0
.end method

.method private startDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 5715
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 5717
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5718
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    if-nez v2, :cond_0

    .line 5719
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    .line 5721
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 5722
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget v2, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    if-eq v2, v4, :cond_2

    .line 5728
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v4}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 5729
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDoubleTapToastCount()I

    move-result v0

    .line 5730
    .local v0, count:I
    iget-boolean v2, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v2, :cond_2

    if-lez v0, :cond_2

    .line 5731
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 5732
    iget-object v2, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    const v3, 0x10402be

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5737
    .end local v0           #count:I
    :cond_2
    return-void
.end method

.method private startTouch(FFJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 5704
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5705
    iput p2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5706
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 5707
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5708
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5709
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    if-eqz v0, :cond_0

    .line 5710
    new-instance v0, Landroid/webkit/WebView$DragTrackerHandler;

    iget-object v1, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/webkit/WebView$DragTrackerHandler;-><init>(Landroid/webkit/WebView;FFLandroid/webkit/WebView$DragTracker;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    .line 5712
    :cond_0
    return-void
.end method

.method private stopTouch()V
    .locals 1

    .prologue
    .line 5776
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-eqz v0, :cond_0

    .line 5777
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->stopDrag()V

    .line 5782
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 5783
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5784
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5788
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_2

    .line 5789
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5790
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5791
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5792
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5794
    :cond_2
    return-void
.end method

.method private updateSelection()V
    .locals 7

    .prologue
    .line 6395
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_0

    .line 6404
    :goto_0
    return-void

    .line 6399
    :cond_0
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 6400
    .local v0, contentX:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 6401
    .local v1, contentY:I
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int v3, v0, v3

    iget v4, p0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int v4, v1, v4

    iget v5, p0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v5, v0

    iget v6, p0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6403
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 9
    .parameter "nodePointer"
    .parameter "textGeneration"
    .parameter "data"

    .prologue
    .line 7452
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v6, p1}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Landroid/webkit/WebView;->mTextGeneration:I

    if-ne p2, v6, :cond_4

    .line 7457
    sget-boolean v6, Landroid/webkit/WebView;->isBidiEnabled:Z

    if-eqz v6, :cond_7

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsRtlText()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 7458
    iget-object v6, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v6}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7459
    .local v5, mText:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 7460
    .local v1, length:I
    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    .line 7461
    .local v4, mStart:I
    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    .line 7462
    .local v2, mEnd:I
    iget-object v6, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v6}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 7463
    .local v3, mLayout:Landroid/text/Layout;
    if-eqz v3, :cond_3

    iget-object v6, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v6}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 7464
    iget-object v6, p0, Landroid/webkit/WebView;->mWidths:[F

    array-length v6, v6

    if-le v1, v6, :cond_0

    .line 7465
    iget-object v6, p0, Landroid/webkit/WebView;->mWidths:[F

    array-length v6, v6

    add-int/lit8 v6, v6, 0x19

    new-array v6, v6, [F

    iput-object v6, p0, Landroid/webkit/WebView;->mWidths:[F

    .line 7466
    :cond_0
    iget-object v6, p0, Landroid/webkit/WebView;->mPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Landroid/webkit/WebView;->mWidths:[F

    invoke-virtual {v6, v5, v7}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v6

    sub-int v0, v1, v6

    .line 7467
    .local v0, deltaWidth:I
    iget v6, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    div-int/lit8 v7, v1, 0x2

    if-eq v6, v7, :cond_1

    iget v6, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    div-int/lit8 v7, v1, 0x2

    if-ne v6, v7, :cond_5

    .line 7468
    :cond_1
    div-int/lit8 v0, v0, 0x2

    .line 7471
    :cond_2
    :goto_0
    iget v6, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    add-int/2addr v6, v0

    sub-int v4, v1, v6

    .line 7472
    iget v6, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    add-int/2addr v6, v0

    sub-int v2, v1, v6

    .line 7474
    .end local v0           #deltaWidth:I
    :cond_3
    iget-object v6, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v6, v4, v2}, Landroid/webkit/WebTextView;->setSelectionFromWebKit(II)V

    .line 7481
    .end local v1           #length:I
    .end local v2           #mEnd:I
    .end local v3           #mLayout:Landroid/text/Layout;
    .end local v4           #mStart:I
    .end local v5           #mText:Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 7469
    .restart local v0       #deltaWidth:I
    .restart local v1       #length:I
    .restart local v2       #mEnd:I
    .restart local v3       #mLayout:Landroid/text/Layout;
    .restart local v4       #mStart:I
    .restart local v5       #mText:Ljava/lang/String;
    :cond_5
    iget v6, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    div-int/lit8 v7, v1, 0x2

    if-lt v6, v7, :cond_6

    iget v6, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    div-int/lit8 v7, v1, 0x2

    if-ge v6, v7, :cond_2

    .line 7470
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 7476
    .end local v0           #deltaWidth:I
    .end local v1           #length:I
    .end local v2           #mEnd:I
    .end local v3           #mLayout:Landroid/text/Layout;
    .end local v4           #mStart:I
    .end local v5           #mText:Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v7, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v8, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebTextView;->setSelectionFromWebKit(II)V

    goto :goto_1
.end method

.method private updateZoomButtonsEnabled()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1058
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v2, :cond_0

    .line 1071
    :goto_0
    return-void

    .line 1059
    :cond_0
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move v0, v5

    .line 1060
    .local v0, canZoomIn:Z
    :goto_1
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-boolean v2, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-nez v2, :cond_2

    move v1, v5

    .line 1061
    .local v1, canZoomOut:Z
    :goto_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 1064
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v0           #canZoomIn:Z
    .end local v1           #canZoomOut:Z
    :cond_1
    move v0, v4

    .line 1059
    goto :goto_1

    .restart local v0       #canZoomIn:Z
    :cond_2
    move v1, v4

    .line 1060
    goto :goto_2

    .line 1068
    .restart local v1       #canZoomOut:Z
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v0}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 1069
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_0
.end method

.method private updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    .locals 6
    .parameter "restoreState"
    .parameter "viewWidth"
    .parameter "minPrefWidth"
    .parameter "updateZoomOverview"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7772
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_4

    .line 7773
    iget-boolean v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMobileSite:Z

    if-eqz v1, :cond_3

    .line 7774
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le p3, v1, :cond_2

    .line 7775
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 7776
    iput-boolean v3, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    .line 7777
    if-eqz p4, :cond_0

    .line 7778
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 7779
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 7794
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_0
    :goto_1
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_5

    .line 7795
    sget v1, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    iput v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 7799
    :goto_2
    return-void

    .restart local v0       #settings:Landroid/webkit/WebSettings;
    :cond_1
    move v1, v3

    .line 7779
    goto :goto_0

    .line 7783
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_2
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mDefaultScale:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 7784
    iput-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_1

    .line 7787
    :cond_3
    sget v1, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 7788
    iput-boolean v3, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_1

    .line 7791
    :cond_4
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 7792
    iput-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_1

    .line 7797
    :cond_5
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    iput v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_2
.end method

.method private viewInvalidate()V
    .locals 0

    .prologue
    .line 7890
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7891
    return-void
.end method

.method private viewInvalidate(IIII)V
    .locals 7
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2292
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2293
    .local v1, scale:F
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 2294
    .local v0, dy:I
    int-to-float v2, p1

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v3, p2

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v3, v0

    int-to-float v4, p3

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, p4

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/webkit/WebView;->invalidate(IIII)V

    .line 2298
    return-void
.end method

.method private viewInvalidateDelayed(JIIII)V
    .locals 9
    .parameter "delay"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2303
    iget v8, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2304
    .local v8, scale:F
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v7

    .line 2305
    .local v7, dy:I
    int-to-float v0, p3

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v3, v0

    int-to-float v0, p4

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v4, v0, v7

    int-to-float v0, p5

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    int-to-float v0, p6

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v6, v0, v7

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 2310
    return-void
.end method

.method private viewToContentDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 2206
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private viewToContentXf(I)F
    .locals 2
    .parameter "x"

    .prologue
    .line 2232
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private viewToContentYf(I)F
    .locals 2
    .parameter "y"

    .prologue
    .line 2241
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private zoomWithPreview(FZ)Z
    .locals 5
    .parameter "scale"
    .parameter "updateTextWrapScale"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 6242
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 6243
    .local v0, oldScale:F
    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollX:I

    .line 6244
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollY:I

    .line 6247
    iget v1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 6248
    iget p1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 6251
    :cond_0
    invoke-direct {p0, p1, p2, v4}, Landroid/webkit/WebView;->setNewZoomScale(FZZ)V

    .line 6253
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 6255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/webkit/WebView;->mZoomStart:J

    .line 6256
    div-float v1, v3, v0

    iput v1, p0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    .line 6257
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    div-float v1, v3, v1

    iput v1, p0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    .line 6258
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v1, p0, Landroid/webkit/WebView;->mZoomScale:F

    .line 6259
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6260
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 6261
    const/4 v1, 0x1

    .line 6263
    :goto_0
    return v1

    :cond_1
    move v1, v4

    goto :goto_0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 3413
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 3414
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    .line 3415
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 3416
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3417
    return-void
.end method

.method public addPackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 3452
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xb9

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3453
    return-void
.end method

.method public addPackageNames(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3439
    .local p1, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xb8

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3440
    return-void
.end method

.method public canGoBack()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1797
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1798
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 1799
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1800
    monitor-exit v0

    move v1, v2

    .line 1802
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 1804
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v1, v2

    .line 1802
    goto :goto_1
.end method

.method public canGoBackOrForward(I)Z
    .locals 4
    .parameter "steps"

    .prologue
    const/4 v3, 0x0

    .line 1843
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1844
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 1845
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1846
    monitor-exit v0

    move v2, v3

    .line 1849
    :goto_0
    return v2

    .line 1848
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    add-int v1, v2, p1

    .line 1849
    .local v1, newIndex:I
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 1851
    .end local v1           #newIndex:I
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #newIndex:I
    :cond_1
    move v2, v3

    .line 1849
    goto :goto_1
.end method

.method public canGoForward()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1819
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1820
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 1821
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1822
    monitor-exit v0

    move v1, v3

    .line 1824
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_1

    move v1, v4

    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 1826
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v1, v3

    .line 1824
    goto :goto_1
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 1955
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1956
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->copyContentPicture()Landroid/graphics/Picture;

    move-result-object v0

    goto :goto_0
.end method

.method centerKeyPressOnTextField()V
    .locals 4

    .prologue
    .line 6476
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6478
    return-void
.end method

.method public clearCache(Z)V
    .locals 4
    .parameter "includeDiskFiles"

    .prologue
    const/4 v3, 0x0

    .line 2843
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6f

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2845
    return-void

    :cond_0
    move v2, v3

    .line 2843
    goto :goto_0
.end method

.method public clearFormData()V
    .locals 2

    .prologue
    .line 2852
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2853
    const/4 v0, 0x0

    .line 2854
    .local v0, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    .line 2856
    .end local v0           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 2862
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->setClearPending()V

    .line 2863
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2864
    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 2997
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    .line 2998
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 3002
    :goto_0
    return-void

    .line 3000
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetFindIsEmpty()V

    .line 3001
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 2

    .prologue
    .line 2871
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2872
    return-void
.end method

.method public clearView()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1940
    iput v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 1941
    iput v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 1942
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1943
    return-void
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 2582
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 4

    .prologue
    .line 2566
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    .line 2569
    .local v1, range:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2570
    .local v2, scrollX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    .line 2571
    .local v0, overscrollRight:I
    if-gez v2, :cond_1

    .line 2572
    sub-int/2addr v1, v2

    .line 2577
    :cond_0
    :goto_0
    return v1

    .line 2573
    :cond_1
    if-le v2, v0, :cond_0

    .line 2574
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    .line 3046
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3047
    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 3048
    .local v3, oldX:I
    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 3049
    .local v4, oldY:I
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    .line 3050
    .local v10, x:I
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 3051
    .local v11, y:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3053
    if-ne v3, v10, :cond_0

    if-eq v4, v11, :cond_3

    .line 3054
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    .line 3055
    .local v5, rangeX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    .line 3056
    .local v6, rangeY:I
    sub-int v1, v10, v3

    sub-int v2, v11, v4

    iget v7, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    iget v8, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    .line 3060
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_3

    .line 3061
    if-gtz v6, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 3062
    :cond_1
    if-gez v11, :cond_5

    if-ltz v4, :cond_5

    .line 3063
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3064
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3065
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3075
    :cond_2
    :goto_0
    if-lez v5, :cond_3

    .line 3076
    if-gez v10, :cond_6

    if-ltz v3, :cond_6

    .line 3077
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3078
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3079
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3090
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3091
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3096
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_4
    :goto_2
    return-void

    .line 3067
    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v5       #rangeX:I
    .restart local v6       #rangeY:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_5
    if-le v11, v6, :cond_2

    if-gt v4, v6, :cond_2

    .line 3068
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3069
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3070
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_0

    .line 3081
    :cond_6
    if-le v10, v5, :cond_3

    if-gt v3, v5, :cond_3

    .line 3082
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3083
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3084
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_1

    .line 3094
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_7
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->computeScroll()V

    goto :goto_2
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 2621
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 2616
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 2600
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    .line 2603
    .local v1, range:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2604
    .local v2, scrollY:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v0

    .line 2605
    .local v0, overscrollBottom:I
    if-gez v2, :cond_1

    .line 2606
    sub-int/2addr v1, v2

    .line 2611
    :cond_0
    :goto_0
    return v1

    .line 2607
    :cond_1
    if-le v2, v0, :cond_0

    .line 2608
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method contentToViewDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 2251
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method contentToViewX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 2259
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    return v0
.end method

.method contentToViewY(I)I
    .locals 2
    .parameter "y"

    .prologue
    .line 2267
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 2883
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public copySelection()Z
    .locals 7

    .prologue
    .line 4527
    const/4 v1, 0x0

    .line 4528
    .local v1, copiedSomething:Z
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 4529
    .local v3, selection:Ljava/lang/String;
    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 4533
    iget-object v4, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    const v5, 0x10402cc

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 4536
    const/4 v1, 0x1

    .line 4538
    :try_start_0
    const-string v4, "clipboard"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 4540
    .local v0, clip:Landroid/text/IClipboard;
    invoke-interface {v0, v3}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4545
    .end local v0           #clip:Landroid/text/IClipboard;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4546
    return v1

    .line 4541
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 4542
    .local v2, e:Landroid/os/RemoteException;
    const-string/jumbo v4, "webview"

    const-string v5, "Clipboard failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method cursorData()Landroid/webkit/WebViewCore$CursorData;
    .locals 3

    .prologue
    .line 3921
    new-instance v1, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v1}, Landroid/webkit/WebViewCore$CursorData;-><init>()V

    .line 3922
    .local v1, result:Landroid/webkit/WebViewCore$CursorData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v2

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    .line 3923
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    .line 3924
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 3925
    .local v0, position:Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mX:I

    .line 3926
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mY:I

    .line 3927
    return-object v1
.end method

.method public debugDump()V
    .locals 2

    .prologue
    .line 7982
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDebugDump()V

    .line 7983
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 7984
    return-void
.end method

.method deleteSelection(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 3938
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 3939
    new-instance v0, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    .line 3941
    .local v0, data:Landroid/webkit/WebViewCore$TextSelectionData;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x7a

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 3943
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1358
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 1359
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    .line 1362
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1363
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1365
    monitor-enter p0

    .line 1366
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1367
    .local v0, webViewCore:Landroid/webkit/WebViewCore;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1368
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->destroy()V

    .line 1369
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1371
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1372
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1375
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    monitor-enter v1

    .line 1376
    :try_start_1
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1377
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1379
    .end local v0           #webViewCore:Landroid/webkit/WebViewCore;
    :cond_0
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_1

    .line 1380
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDestroy()V

    .line 1381
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    .line 1383
    :cond_1
    return-void

    .line 1369
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1377
    .restart local v0       #webViewCore:Landroid/webkit/WebViewCore;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method dismissZoomControl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6596
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_2

    .line 6599
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v1, :cond_0

    .line 6600
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 6602
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v1, :cond_1

    .line 6603
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v1}, Landroid/webkit/WebView$ExtendedZoomControls;->hide()V

    .line 6620
    :cond_1
    :goto_0
    return-void

    .line 6607
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 6608
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6609
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v1, :cond_1

    .line 6610
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_0

    .line 6613
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 6614
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6616
    :cond_4
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v1, :cond_1

    .line 6617
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v1}, Landroid/webkit/WebView$ExtendedZoomControls;->hide()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 4807
    const/4 v0, 0x1

    .line 4811
    .local v0, dispatch:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4812
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 4813
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    .line 4826
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 4827
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 4830
    :goto_1
    return v1

    .line 4815
    :cond_2
    iget-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    if-nez v1, :cond_3

    .line 4820
    const/4 v0, 0x0

    .line 4822
    :cond_3
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    goto :goto_0

    :cond_4
    move v1, v2

    .line 4830
    goto :goto_1
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 3390
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3391
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 3038
    if-nez p1, :cond_0

    .line 3042
    :goto_0
    return-void

    .line 3041
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 3606
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3607
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawEdgeGlows(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3608
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3610
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 3500
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 3503
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget-object v2, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3505
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method drawHistory()Z
    .locals 1

    .prologue
    .line 3895
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method public drawPage(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 7994
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/webkit/WebViewCore;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    .line 7995
    return-void
.end method

.method public dumpDisplayTree()V
    .locals 1

    .prologue
    .line 4152
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeDumpDisplayTree(Ljava/lang/String;)V

    .line 4153
    return-void
.end method

.method public dumpDomTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v3, 0x0

    .line 4162
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xaa

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4163
    return-void

    :cond_0
    move v2, v3

    .line 4162
    goto :goto_0
.end method

.method public dumpRenderTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v3, 0x0

    .line 4172
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xab

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4173
    return-void

    :cond_0
    move v2, v3

    .line 4172
    goto :goto_0
.end method

.method public dumpV8Counters()V
    .locals 2

    .prologue
    .line 4183
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xad

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4184
    return-void
.end method

.method public emulateShiftHeld()V
    .locals 0

    .prologue
    .line 4480
    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    .line 4481
    return-void
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 3382
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3383
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3492
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3494
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3496
    return-void

    .line 3494
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 3
    .parameter "find"

    .prologue
    const/4 v2, 0x0

    .line 2905
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_0

    move v1, v2

    .line 2910
    :goto_0
    return v1

    .line 2906
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeFindAll(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 2908
    .local v0, result:I
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 2909
    iput-object p1, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    move v1, v0

    .line 2910
    goto :goto_0

    .end local v0           #result:I
    :cond_1
    move v0, v2

    .line 2906
    goto :goto_1
.end method

.method public findIndex()I
    .locals 1

    .prologue
    .line 2930
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2931
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFindIndex()I

    move-result v0

    goto :goto_0
.end method

.method public findNext(Z)V
    .locals 1
    .parameter "forward"

    .prologue
    .line 2894
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 2896
    :goto_0
    return-void

    .line 2895
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeFindNext(Z)V

    goto :goto_0
.end method

.method public flingScroll(II)V
    .locals 11
    .parameter "vx"
    .parameter "vy"

    .prologue
    const/4 v5, 0x0

    .line 6148
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v6

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    iget v9, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    iget v10, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 6150
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 6151
    return-void
.end method

.method public freeMemory()V
    .locals 2

    .prologue
    .line 2830
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2831
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 2761
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 2769
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    return v0
.end method

.method public getDragTracker()Landroid/webkit/WebView$DragTracker;
    .locals 1

    .prologue
    .line 5034
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 2736
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2737
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 10

    .prologue
    const/4 v6, 0x7

    const-string/jumbo v9, "tel:"

    const-string v8, "mailto:"

    const-string v7, "geo:0,0?q="

    .line 2039
    iget v5, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v5, :cond_0

    .line 2040
    const/4 v5, 0x0

    .line 2081
    :goto_0
    return-object v5

    .line 2043
    :cond_0
    new-instance v2, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$HitTestResult;-><init>(Landroid/webkit/WebView;)V

    .line 2044
    .local v2, result:Landroid/webkit/WebView$HitTestResult;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2045
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2046
    const/16 v5, 0x9

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2067
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v4

    .line 2068
    .local v4, type:I
    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_3

    .line 2071
    :cond_2
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2072
    .local v0, contentX:I
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2073
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 2074
    .local v3, text:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 2075
    if-nez v4, :cond_8

    const/4 v5, 0x5

    :goto_2
    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2078
    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    .end local v0           #contentX:I
    .end local v1           #contentY:I
    .end local v3           #text:Ljava/lang/String;
    :cond_3
    move-object v5, v2

    .line 2081
    goto :goto_0

    .line 2048
    .end local v4           #type:I
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v3

    .line 2049
    .restart local v3       #text:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2050
    const-string/jumbo v5, "tel:"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2051
    const/4 v5, 0x2

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2052
    const-string/jumbo v5, "tel:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    .line 2053
    :cond_5
    const-string v5, "mailto:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2054
    const/4 v5, 0x4

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2055
    const-string v5, "mailto:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    .line 2056
    :cond_6
    const-string v5, "geo:0,0?q="

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2057
    const/4 v5, 0x3

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2058
    const-string v5, "geo:0,0?q="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2060
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2061
    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v6}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2062
    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2075
    .restart local v0       #contentX:I
    .restart local v1       #contentY:I
    .restart local v4       #type:I
    :cond_8
    const/16 v5, 0x8

    goto :goto_2
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 1344
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDatabase;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2716
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2717
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 2754
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 1985
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4553
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    const-string v0, ""

    .line 4554
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetSelection()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 3426
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2726
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2727
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2745
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2746
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2703
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2704
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getViewHeight()I
    .locals 2

    .prologue
    .line 1275
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getViewManager()Landroid/webkit/ViewManager;
    .locals 1

    .prologue
    .line 8077
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    return-object v0
.end method

.method getViewWidth()I
    .locals 2

    .prologue
    .line 1246
    invoke-virtual {p0}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    if-eqz v0, :cond_1

    .line 1247
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    .line 1249
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 3365
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 3346
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 3316
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getWebViewCore()Landroid/webkit/WebViewCore;
    .locals 1

    .prologue
    .line 6869
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getZoomButtonsController()Landroid/widget/ZoomButtonsController;
    .locals 6

    .prologue
    .line 6347
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v4, :cond_0

    .line 6348
    new-instance v4, Landroid/widget/ZoomButtonsController;

    invoke-direct {v4, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 6349
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    iget-object v5, p0, Landroid/webkit/WebView;->mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

    invoke-virtual {v4, v5}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 6353
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v4}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v1

    .line 6354
    .local v1, controls:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 6355
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_0

    .line 6356
    move-object v0, v3

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v2, v0

    .line 6357
    .local v2, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6360
    .end local v1           #controls:Landroid/view/View;
    .end local v2           #frameParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v4
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6282
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6283
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6284
    const/4 v0, 0x0

    .line 6311
    :goto_0
    return-object v0

    .line 6286
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-nez v0, :cond_1

    .line 6287
    invoke-direct {p0}, Landroid/webkit/WebView;->createZoomControls()Landroid/webkit/WebView$ExtendedZoomControls;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    .line 6294
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setVisibility(I)V

    .line 6295
    new-instance v0, Landroid/webkit/WebView$8;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$8;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    .line 6311
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    goto :goto_0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 1811
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 1812
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .parameter "steps"

    .prologue
    .line 1862
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->goBackOrForward(IZ)V

    .line 1863
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 1833
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 1834
    return-void
.end method

.method inAnimateZoom()Z
    .locals 2

    .prologue
    .line 3713
    iget v0, p0, Landroid/webkit/WebView;->mZoomScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initiateTextFieldDrag(FFJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 6427
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6440
    :goto_0
    return-void

    .line 6430
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchX:F

    .line 6431
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getTop()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchY:F

    .line 6432
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 6433
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6434
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 6435
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6437
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 6438
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6439
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    goto :goto_0
.end method

.method public invokeZoomPicker()V
    .locals 4

    .prologue
    .line 2006
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2007
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    :goto_0
    return-void

    .line 2010
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 2011
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2012
    invoke-virtual {p0}, Landroid/webkit/WebView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_0

    .line 2014
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2015
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v2, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 2822
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1730
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 1758
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1759
    invoke-virtual {p0, p2, p3, p4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    :goto_0
    return-void

    .line 1762
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1763
    new-instance v0, Landroid/webkit/WebViewCore$BaseUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$BaseUrlData;-><init>()V

    .line 1764
    .local v0, arg:Landroid/webkit/WebViewCore$BaseUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 1765
    iput-object p2, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    .line 1766
    iput-object p3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    .line 1767
    iput-object p4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    .line 1768
    iput-object p5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    .line 1769
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1770
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 1691
    if-nez p1, :cond_0

    .line 1695
    :goto_0
    return-void

    .line 1694
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1678
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1679
    new-instance v0, Landroid/webkit/WebViewCore$GetUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$GetUrlData;-><init>()V

    .line 1680
    .local v0, arg:Landroid/webkit/WebViewCore$GetUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    .line 1681
    iput-object p2, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    .line 1682
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1683
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 1684
    return-void
.end method

.method moveSelection(FF)V
    .locals 12
    .parameter "xRate"
    .parameter "yRate"

    .prologue
    const/16 v11, -0x10

    const/4 v10, 0x0

    const/16 v9, 0x10

    .line 5969
    iget v7, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v7, :cond_0

    .line 6002
    :goto_0
    return-void

    .line 5971
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    .line 5972
    .local v6, width:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    .line 5973
    .local v0, height:I
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    int-to-float v7, v7

    add-float/2addr v7, p1

    float-to-int v7, v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5974
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    int-to-float v7, v7

    add-float/2addr v7, p2

    float-to-int v7, v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 5975
    iget v7, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int v1, v6, v7

    .line 5976
    .local v1, maxX:I
    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int v2, v0, v7

    .line 5977
    .local v2, maxY:I
    iget v7, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int/2addr v7, v9

    iget v8, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5979
    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr v7, v9

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 5991
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/WebView;->nativeMoveSelection(II)V

    .line 5992
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ge v7, v8, :cond_1

    move v3, v11

    .line 5995
    .local v3, scrollX:I
    :goto_1
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v8, p0, Landroid/webkit/WebView;->mScrollY:I

    if-ge v7, v8, :cond_3

    move v4, v11

    .line 5998
    .local v4, scrollY:I
    :goto_2
    const/4 v7, 0x1

    invoke-direct {p0, v3, v4, v7, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 5999
    new-instance v5, Landroid/graphics/Rect;

    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v9, p0, Landroid/webkit/WebView;->mSelectX:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6000
    .local v5, select:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 6001
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    .line 5992
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    .end local v5           #select:Landroid/graphics/Rect;
    :cond_1
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    sub-int v8, v1, v9

    if-le v7, v8, :cond_2

    move v3, v9

    goto :goto_1

    :cond_2
    move v3, v10

    goto :goto_1

    .line 5995
    .restart local v3       #scrollX:I
    :cond_3
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    sub-int v8, v2, v9

    if-le v7, v8, :cond_4

    move v4, v9

    goto :goto_2

    :cond_4
    move v4, v10

    goto :goto_2
.end method

.method native nativeClearCursor()V
.end method

.method native nativeCursorMatchesFocus()Z
.end method

.method native nativeFocusCandidateFramePointer()I
.end method

.method native nativeFocusCandidateHasNextTextfield()Z
.end method

.method native nativeFocusCandidateIsPassword()Z
.end method

.method native nativeFocusCandidateMaxLength()I
.end method

.method native nativeFocusCandidateName()Ljava/lang/String;
.end method

.method native nativeFocusCandidatePointer()I
.end method

.method native nativeFocusNodePointer()I
.end method

.method native nativeMoveCursorToNextTextInput()Z
.end method

.method public notifyFindDialogDismissed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3008
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 3019
    :goto_0
    return-void

    .line 3011
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearMatches()V

    .line 3012
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    .line 3013
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    .line 3017
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v0, v1, v3, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3018
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public notifySelectDialogDismissed()V
    .locals 1

    .prologue
    .line 4507
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 4508
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4509
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 4559
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 4560
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->setActive(Z)V

    .line 4561
    :cond_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "parent"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4576
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "p"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4583
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 13
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x2

    const/high16 v6, 0x43b4

    const/high16 v4, 0x3f00

    .line 8032
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8037
    iget-object v2, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 8038
    .local v7, display:Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v12

    .line 8039
    .local v12, preRotateWidth:I
    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 8040
    .local v11, preRotateHeight:I
    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 8041
    .local v9, orientation:I
    mul-int/lit8 v9, v9, 0x5a

    .line 8043
    iget v2, p0, Landroid/webkit/WebView;->mOrientation:I

    if-eq v9, v2, :cond_1

    .line 8045
    iget v2, p0, Landroid/webkit/WebView;->mOrientation:I

    sub-int/2addr v2, v9

    int-to-float v1, v2

    .line 8046
    .local v1, angle:F
    const/high16 v2, 0x4334

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 8048
    sub-float/2addr v1, v6

    .line 8055
    :cond_0
    :goto_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 8057
    .local v0, anim:Landroid/view/animation/RotateAnimation;
    new-instance v8, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x4040

    invoke-direct {v8, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 8058
    .local v8, interp:Landroid/view/animation/OvershootInterpolator;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 8059
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    .line 8060
    invoke-virtual {v0, v12, v11, v12, v11}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 8061
    invoke-virtual {v0, v8}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 8062
    new-instance v2, Landroid/webkit/WebView$SmoothRotateAnimationListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/webkit/WebView$SmoothRotateAnimationListener;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 8063
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 8068
    .local v10, parent:Landroid/view/ViewParent;
    instance-of v2, v10, Landroid/view/View;

    if-eqz v2, :cond_3

    .line 8069
    check-cast v10, Landroid/view/View;

    .end local v10           #parent:Landroid/view/ViewParent;
    invoke-virtual {v10, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8072
    :goto_1
    iput v9, p0, Landroid/webkit/WebView;->mOrientation:I

    .line 8074
    .end local v0           #anim:Landroid/view/animation/RotateAnimation;
    .end local v1           #angle:F
    .end local v8           #interp:Landroid/view/animation/OvershootInterpolator;
    :cond_1
    return-void

    .line 8050
    .restart local v1       #angle:F
    :cond_2
    const/high16 v2, -0x3ccc

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 8052
    add-float/2addr v1, v6

    goto :goto_0

    .line 8071
    .restart local v0       #anim:Landroid/view/animation/RotateAnimation;
    .restart local v8       #interp:Landroid/view/animation/OvershootInterpolator;
    .restart local v10       #parent:Landroid/view/ViewParent;
    :cond_3
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 3957
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3958
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, -0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 3959
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 4565
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 4566
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 4567
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->setActive(Z)V

    .line 4568
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    .line 4569
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x0

    .line 3526
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 3602
    :goto_0
    return-void

    .line 3533
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    if-nez v0, :cond_1

    .line 3534
    iget v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 3538
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 3539
    .local v10, saveCount:I
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWebViewBackgroundForOverscrollBackground()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3541
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 3542
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    .line 3543
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10802e0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3546
    .local v6, bm:Landroid/graphics/Bitmap;
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v6, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3548
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    .line 3549
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3550
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3551
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    const v1, -0x444445

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3554
    .end local v6           #bm:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v12, 0x0

    .line 3555
    .local v12, top:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v9

    .line 3556
    .local v9, right:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    add-int v7, v12, v0

    .line 3558
    .local v7, bottom:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3559
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3560
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    neg-int v0, v0

    int-to-float v1, v0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v0, v12, v0

    int-to-float v2, v0

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v0, v9, v0

    int-to-float v3, v0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 3562
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 3563
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3565
    const/high16 v1, -0x4080

    const/4 v0, 0x1

    sub-int v0, v12, v0

    int-to-float v2, v0

    int-to-float v3, v9

    int-to-float v4, v7

    sget-object v5, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3567
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v12, v9, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3569
    .end local v7           #bottom:I
    .end local v9           #right:I
    .end local v12           #top:I
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 3570
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3572
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-nez v0, :cond_8

    .line 3573
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 3583
    :cond_5
    :goto_1
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3586
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v11

    .line 3587
    .local v11, titleH:I
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_6

    if-nez v11, :cond_6

    .line 3588
    const/high16 v0, 0x40a0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v8, v0

    .line 3590
    .local v8, height:I
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3592
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3598
    .end local v8           #height:I
    :cond_6
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3599
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->onDrawSubstitute()V

    .line 3601
    :cond_7
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->signalRepaintDone()V

    goto/16 :goto_0

    .line 3575
    .end local v11           #titleH:I
    :cond_8
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$DragTrackerHandler;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3577
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 3579
    :cond_9
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3580
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    goto :goto_1
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2629
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    if-gez v0, :cond_0

    .line 2630
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr p4, v0

    .line 2632
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p2, p3, v0, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2633
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2634
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4672
    if-eqz p1, :cond_1

    .line 4675
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4676
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 4677
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 4678
    invoke-direct {p0, v2, v1, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 4698
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4699
    return-void

    .line 4688
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4689
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 4690
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_2

    .line 4691
    invoke-direct {p0, v1, v1, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 4693
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 4695
    :cond_3
    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    goto :goto_0
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "oldFocus"
    .parameter "newFocus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4592
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x13

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4210
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    move v0, v3

    .line 4336
    :goto_0
    return v0

    .line 4226
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v3

    .line 4228
    goto :goto_0

    .line 4231
    :cond_2
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_4

    .line 4233
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4234
    iput-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 4240
    :cond_4
    :goto_1
    if-lt p1, v4, :cond_d

    if-gt p1, v5, :cond_d

    .line 4242
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 4243
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4244
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    move v0, v2

    .line 4245
    goto :goto_0

    .line 4235
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_4

    .line 4236
    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    goto :goto_1

    .line 4247
    :cond_6
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_b

    .line 4248
    const/16 v0, 0x15

    if-ne p1, v0, :cond_7

    move v7, v1

    .line 4250
    .local v7, xRate:I
    :goto_2
    if-ne p1, v4, :cond_9

    move v8, v1

    .line 4252
    .local v8, yRate:I
    :goto_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 4253
    .local v6, multiplier:I
    mul-int v0, v7, v6

    int-to-float v0, v0

    mul-int v1, v8, v6

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->moveSelection(FF)V

    move v0, v2

    .line 4254
    goto :goto_0

    .line 4248
    .end local v6           #multiplier:I
    .end local v7           #xRate:I
    .end local v8           #yRate:I
    :cond_7
    if-ne p1, v5, :cond_8

    move v7, v2

    goto :goto_2

    :cond_8
    move v7, v3

    goto :goto_2

    .line 4250
    .restart local v7       #xRate:I
    :cond_9
    const/16 v0, 0x14

    if-ne p1, v0, :cond_a

    move v8, v2

    goto :goto_3

    :cond_a
    move v8, v3

    goto :goto_3

    .line 4256
    .end local v7           #xRate:I
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4257
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->playSoundEffect(I)V

    move v0, v2

    .line 4258
    goto/16 :goto_0

    :cond_c
    move v0, v3

    .line 4261
    goto/16 :goto_0

    .line 4264
    :cond_d
    const/16 v0, 0x17

    if-ne p1, v0, :cond_11

    .line 4265
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 4266
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_10

    .line 4267
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_e

    move v0, v2

    .line 4268
    goto/16 :goto_0

    .line 4270
    :cond_e
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 4271
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x72

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4275
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    :goto_4
    invoke-direct {p0, v0, v2, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    move v0, v2

    .line 4276
    goto/16 :goto_0

    :cond_f
    move v0, v3

    .line 4275
    goto :goto_4

    :cond_10
    move v0, v3

    .line 4279
    goto/16 :goto_0

    .line 4282
    :cond_11
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_12

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_12

    .line 4285
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 4286
    iput-boolean v3, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 4289
    :cond_12
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4290
    packed-switch p1, :pswitch_data_0

    .line 4308
    :cond_13
    :goto_5
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4311
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v3

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4315
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 4317
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4318
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 4319
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 4292
    :pswitch_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto :goto_5

    .line 4296
    :pswitch_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_14

    move v0, v2

    :goto_6
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto :goto_5

    :cond_14
    move v0, v3

    goto :goto_6

    .line 4300
    :pswitch_2
    const/16 v0, 0xe

    if-ne p1, v0, :cond_15

    move v0, v2

    :goto_7
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto :goto_5

    :cond_15
    move v0, v3

    goto :goto_7

    .line 4303
    :pswitch_3
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeInstrumentReport()V

    move v0, v2

    .line 4304
    goto/16 :goto_0

    .line 4321
    :cond_16
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasFocusNode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4324
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 4325
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4326
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 4327
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 4332
    :cond_17
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_18

    .line 4334
    :cond_18
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v0, v2

    .line 4336
    goto/16 :goto_0

    .line 4290
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 4193
    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4195
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4196
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4198
    const/4 v0, 0x1

    .line 4200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 4350
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_0

    move v4, v6

    .line 4442
    :goto_0
    return v4

    .line 4355
    :cond_0
    const/4 v4, 0x5

    if-ne p1, v4, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4356
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v2

    .line 4357
    .local v2, text:Ljava/lang/String;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    const-string/jumbo v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4359
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4360
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v8

    .line 4361
    goto :goto_0

    .line 4368
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #text:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v4, v6

    .line 4369
    goto :goto_0

    .line 4372
    :cond_3
    const/16 v4, 0x3b

    if-eq p1, v4, :cond_4

    const/16 v4, 0x3c

    if-ne p1, v4, :cond_5

    .line 4374
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4375
    iput-boolean v6, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 4382
    :cond_5
    const/16 v4, 0x13

    if-lt p1, v4, :cond_8

    const/16 v4, 0x16

    if-gt p1, v4, :cond_8

    .line 4384
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4385
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5, v6}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    move v4, v8

    .line 4386
    goto :goto_0

    .line 4376
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4377
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    move v4, v8

    .line 4378
    goto :goto_0

    :cond_7
    move v4, v6

    .line 4390
    goto :goto_0

    .line 4393
    :cond_8
    const/16 v4, 0x17

    if-ne p1, v4, :cond_f

    .line 4395
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 4396
    iput-boolean v6, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 4398
    iget-boolean v4, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v4, :cond_a

    .line 4399
    iget-boolean v4, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v4, :cond_9

    .line 4400
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 4401
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :goto_1
    move v4, v8

    .line 4407
    goto/16 :goto_0

    .line 4403
    :cond_9
    iput-boolean v8, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 4404
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 4405
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_1

    .line 4411
    :cond_a
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 4414
    .local v3, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->nativeCursorIntersects(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_b

    move v4, v6

    .line 4415
    goto/16 :goto_0

    .line 4417
    :cond_b
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v0

    .line 4418
    .local v0, data:Landroid/webkit/WebViewCore$CursorData;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x87

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4419
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 4420
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4421
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 4422
    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 4423
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4424
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    :cond_c
    move v4, v8

    .line 4426
    goto/16 :goto_0

    .line 4428
    :cond_d
    invoke-direct {p0, v8}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 4429
    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetFollowedLink(Z)V

    .line 4430
    iget-object v4, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 4431
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x76

    iget v6, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    :cond_e
    move v4, v8

    .line 4434
    goto/16 :goto_0

    .line 4438
    .end local v0           #data:Landroid/webkit/WebViewCore$CursorData;
    .end local v3           #visibleRect:Landroid/graphics/Rect;
    :cond_f
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v4

    if-nez v4, :cond_10

    .line 4440
    :cond_10
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v4, v8

    .line 4442
    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 6740
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 6742
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 6743
    .local v2, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 6744
    .local v3, heightSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 6745
    .local v6, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 6747
    .local v7, widthSize:I
    move v4, v3

    .line 6748
    .local v4, measuredHeight:I
    move v5, v7

    .line 6751
    .local v5, measuredWidth:I
    iget v8, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    .line 6752
    .local v0, contentHeight:I
    iget v8, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    .line 6756
    .local v1, contentWidth:I
    const/high16 v8, 0x4000

    if-eq v2, v8, :cond_2

    .line 6757
    iput-boolean v10, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 6758
    move v4, v0

    .line 6759
    const/high16 v8, -0x8000

    if-ne v2, v8, :cond_0

    .line 6762
    if-le v4, v3, :cond_0

    .line 6763
    move v4, v3

    .line 6764
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 6770
    :cond_0
    :goto_0
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v8, :cond_1

    .line 6771
    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetHeightCanMeasure(Z)V

    .line 6774
    :cond_1
    if-nez v6, :cond_3

    .line 6775
    iput-boolean v10, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    .line 6776
    move v5, v1

    .line 6781
    :goto_1
    monitor-enter p0

    .line 6782
    :try_start_0
    invoke-virtual {p0, v5, v4}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    .line 6783
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6784
    return-void

    .line 6768
    :cond_2
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    goto :goto_0

    .line 6778
    :cond_3
    iput-boolean v9, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    goto :goto_1

    .line 6783
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 10
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 2639
    iput-boolean v9, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 2640
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    .line 2641
    .local v0, maxX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v1

    .line 2642
    .local v1, maxY:I
    if-nez v0, :cond_8

    .line 2644
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 2648
    :cond_0
    :goto_0
    if-ltz p2, :cond_1

    if-le p2, v1, :cond_2

    .line 2649
    :cond_1
    iput-boolean v6, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 2652
    :cond_2
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2653
    .local v2, oldX:I
    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2655
    .local v3, oldY:I
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->scrollTo(II)V

    .line 2659
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v6, :cond_7

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    if-ne v3, v6, :cond_7

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v2, v6, :cond_7

    .line 2662
    if-lez v0, :cond_4

    .line 2663
    iget v6, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    add-int v4, v2, v6

    .line 2664
    .local v4, pulledToX:I
    if-gez v4, :cond_a

    .line 2665
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2666
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2667
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2675
    :cond_3
    :goto_1
    iput v9, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    .line 2678
    .end local v4           #pulledToX:I
    :cond_4
    if-gtz v1, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v6

    if-nez v6, :cond_7

    .line 2679
    :cond_5
    iget v6, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    add-int v5, v3, v6

    .line 2680
    .local v5, pulledToY:I
    if-gez v5, :cond_b

    .line 2681
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2682
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2683
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2691
    :cond_6
    :goto_2
    iput v9, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    .line 2694
    .end local v5           #pulledToY:I
    :cond_7
    return-void

    .line 2645
    .end local v2           #oldX:I
    .end local v3           #oldY:I
    :cond_8
    if-ltz p1, :cond_9

    if-le p1, v0, :cond_0

    .line 2646
    :cond_9
    iput-boolean v6, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    goto :goto_0

    .line 2669
    .restart local v2       #oldX:I
    .restart local v3       #oldY:I
    .restart local v4       #pulledToX:I
    :cond_a
    if-le v4, v0, :cond_3

    .line 2670
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2671
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2672
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_1

    .line 2685
    .end local v4           #pulledToX:I
    .restart local v5       #pulledToY:I
    :cond_b
    if-le v5, v1, :cond_6

    .line 2686
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2687
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2688
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_2
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 3169
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3173
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    if-nez v0, :cond_0

    .line 3175
    const/4 v0, 0x0

    iget v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3178
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 3180
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2799
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 2800
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 2801
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2803
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 2810
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 2811
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 2812
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2814
    :cond_0
    return-void
.end method

.method onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 8
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    const-string/jumbo v7, "username"

    const-string v6, "password"

    const-string v5, "host"

    .line 1145
    const/4 v1, 0x0

    .line 1146
    .local v1, rVal:Z
    if-nez p4, :cond_0

    .line 1148
    iget-object v3, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v3, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    :goto_0
    return v1

    .line 1150
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1152
    .local v2, remember:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v3, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1157
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1159
    .local v0, neverRemember:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v3, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1164
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x10402bd

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10402c7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10402c8

    new-instance v5, Landroid/webkit/WebView$5;

    invoke-direct {v5, p0, p4}, Landroid/webkit/WebView$5;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10402c9

    new-instance v5, Landroid/webkit/WebView$4;

    invoke-direct {v5, p0, v2}, Landroid/webkit/WebView$4;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10402ca

    new-instance v5, Landroid/webkit/WebView$3;

    invoke-direct {v5, p0, v0}, Landroid/webkit/WebView$3;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/webkit/WebView$2;

    invoke-direct {v4, p0, p4}, Landroid/webkit/WebView$2;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1192
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v3, 0x0

    .line 4793
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    .line 4794
    iget-boolean v1, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-nez v1, :cond_0

    .line 4795
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 4798
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 4799
    .local v0, titleHeight:I
    sub-int v1, v0, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, v0, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 4800
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 4803
    .end local v0           #titleHeight:I
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v3, 0x0

    .line 4744
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 4746
    iget v2, p0, Landroid/webkit/WebView;->mZoomScale:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 4748
    iput v3, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 4749
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 4750
    iget v2, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 4751
    iget v2, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 4757
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 4758
    .local v1, newMaxViewportWidth:I
    sget v2, Landroid/webkit/WebView;->sMaxViewportWidth:I

    if-le v1, v2, :cond_1

    .line 4759
    sput v1, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 4763
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    if-nez v2, :cond_2

    .line 4768
    const/high16 v2, 0x3f80

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    int-to-float v3, v3

    iget-boolean v4, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {v4}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    :goto_0
    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 4771
    iget v2, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    if-lez v2, :cond_2

    .line 4773
    iget v2, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float v0, v2, v3

    .line 4774
    .local v0, initialScale:F
    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    .line 4775
    iput v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 4780
    .end local v0           #initialScale:F
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 4788
    new-instance v2, Landroid/webkit/WebView$PostScale;

    if-eq p1, p3, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-direct {v2, p0, v3}, Landroid/webkit/WebView$PostScale;-><init>(Landroid/webkit/WebView;Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 4789
    return-void

    .line 4768
    :cond_3
    iget v4, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    goto :goto_0

    .line 4788
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 36
    .parameter "ev"

    .prologue
    .line 5145
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move v7, v0

    if-eqz v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isClickable()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v7

    if-nez v7, :cond_1

    .line 5146
    :cond_0
    const/4 v7, 0x0

    .line 5685
    :goto_0
    return v7

    .line 5156
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v25

    .line 5160
    .local v25, eventTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    move v7, v0

    if-eqz v7, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_d

    .line 5161
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAllowPanAndScale:Z

    move v7, v0

    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_c

    .line 5162
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5163
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5164
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 5165
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAllowPanAndScale:Z

    move v7, v0

    if-nez v7, :cond_3

    .line 5166
    const/4 v7, 0x1

    goto :goto_0

    .line 5168
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 5169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 5171
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v33

    .line 5172
    .local v33, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v34

    .line 5173
    .local v34, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v14, v7, 0xff

    .line 5174
    .local v14, action:I
    const/4 v7, 0x5

    if-ne v14, v7, :cond_9

    .line 5175
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    .line 5176
    const/4 v14, 0x0

    .line 5201
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v7, v33, v7

    if-lez v7, :cond_6

    .line 5202
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    move v0, v7

    int-to-float v0, v0

    move/from16 v33, v0

    .line 5204
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v7, v34, v7

    if-lez v7, :cond_7

    .line 5205
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    move v0, v7

    int-to-float v0, v0

    move/from16 v34, v0

    .line 5208
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchX:F

    move v7, v0

    sub-float v27, v7, v33

    .line 5209
    .local v27, fDeltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchY:F

    move v7, v0

    sub-float v28, v7, v34

    .line 5210
    .local v28, fDeltaY:F
    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v20, v0

    .line 5211
    .local v20, deltaX:I
    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    .line 5212
    .local v21, deltaY:I
    move/from16 v0, v33

    float-to-int v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v17

    .line 5213
    .local v17, contentX:I
    move/from16 v0, v34

    float-to-int v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v18

    .line 5215
    .local v18, contentY:I
    packed-switch v14, :pswitch_data_0

    .line 5685
    :cond_8
    :goto_2
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 5177
    .end local v17           #contentX:I
    .end local v18           #contentY:I
    .end local v20           #deltaX:I
    .end local v21           #deltaY:I
    .end local v27           #fDeltaX:F
    .end local v28           #fDeltaY:F
    :cond_9
    const/4 v7, 0x6

    if-ne v14, v7, :cond_a

    .line 5179
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5180
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    goto :goto_1

    .line 5181
    :cond_a
    const/4 v7, 0x2

    if-ne v14, v7, :cond_5

    .line 5183
    const/4 v7, 0x0

    cmpg-float v7, v33, v7

    if-ltz v7, :cond_b

    const/4 v7, 0x0

    cmpg-float v7, v34, v7

    if-gez v7, :cond_5

    .line 5184
    :cond_b
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 5189
    .end local v14           #action:I
    .end local v33           #x:F
    .end local v34           #y:F
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 5192
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    .line 5193
    .restart local v14       #action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v33

    .line 5194
    .restart local v33       #x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v34

    .restart local v34       #y:F
    goto/16 :goto_1

    .line 5219
    .restart local v17       #contentX:I
    .restart local v18       #contentY:I
    .restart local v20       #deltaX:I
    .restart local v21       #deltaY:I
    .restart local v27       #fDeltaX:F
    .restart local v28       #fDeltaY:F
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isIscreenEnabled()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 5220
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v7, v0

    move/from16 v0, v33

    float-to-int v0, v0

    move v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mIscreenStartX:I

    .line 5221
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v7, v0

    move/from16 v0, v34

    float-to-int v0, v0

    move v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mIscreenStartY:I

    .line 5222
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v7, v0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mIscreenStartVScroll:I

    .line 5223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->downTimeMs:J

    .line 5227
    :cond_e
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    .line 5228
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 5229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_12

    .line 5233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5234
    const/4 v7, 0x2

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5235
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 5236
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 5271
    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    const/4 v8, 0x1

    if-eq v7, v8, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    const/4 v8, 0x6

    if-ne v7, v8, :cond_1b

    .line 5273
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x3

    const-wide/16 v9, 0xc8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5275
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x4

    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5277
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v7

    if-nez v7, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    if-eqz v7, :cond_18

    .line 5278
    :cond_11
    const/4 v7, 0x3

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    .line 5285
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 5286
    new-instance v31, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v31 .. v31}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 5287
    .local v31, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v14

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 5288
    move/from16 v0, v17

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 5289
    move/from16 v0, v18

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 5290
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 5291
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    move v0, v7

    move-object/from16 v1, v31

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 5292
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    if-eqz v7, :cond_1a

    .line 5294
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5295
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5296
    move/from16 v0, v33

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 5297
    move/from16 v0, v34

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 5298
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v7, v0

    const/16 v8, 0x8d

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 5237
    .end local v31           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 5238
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 5239
    mul-int v7, v20, v20

    mul-int v8, v21, v21

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    move v8, v0

    if-ge v7, v8, :cond_13

    .line 5240
    const/4 v7, 0x6

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_3

    .line 5243
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    .line 5244
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5245
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v7

    if-nez v7, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v7, v0

    if-eqz v7, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v7

    :goto_5
    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    goto/16 :goto_3

    :cond_14
    const/4 v7, 0x0

    goto :goto_5

    .line 5250
    :cond_15
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 5251
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5252
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v7

    if-nez v7, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v7, v0

    if-eqz v7, :cond_17

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v7

    :goto_6
    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    .line 5255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v7, v0

    const/16 v8, 0x62

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5257
    sget-boolean v7, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v7, :cond_16

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-wide v7, v0

    sub-long v7, v25, v7

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-gez v7, :cond_16

    .line 5258
    const v7, 0x111d6

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-wide v10, v0

    sub-long v10, v25, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5261
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v7, v0

    if-eqz v7, :cond_f

    .line 5262
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 5263
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSelectionStarted:Z

    .line 5267
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_3

    .line 5252
    :cond_17
    const/4 v7, 0x0

    goto :goto_6

    .line 5279
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v7, v0

    if-eqz v7, :cond_19

    .line 5280
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_4

    .line 5282
    :cond_19
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_4

    .line 5301
    .restart local v31       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v7, v0

    const/16 v8, 0x8d

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5302
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v7

    if-nez v7, :cond_1b

    .line 5303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v8, v0

    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v14, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0xc8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5309
    .end local v31           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    move-wide/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    goto/16 :goto_2

    .line 5313
    :pswitch_1
    const/16 v29, 0x0

    .line 5314
    .local v29, firstMove:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v7, v0

    if-nez v7, :cond_1c

    mul-int v7, v20, v20

    mul-int v8, v21, v21

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    move v8, v0

    if-lt v7, v8, :cond_1c

    .line 5316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 5317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 5318
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 5319
    const/16 v29, 0x1

    .line 5320
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    const/4 v8, 0x6

    if-ne v7, v8, :cond_1c

    .line 5321
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5325
    :cond_1c
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v7

    if-eqz v7, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v7, v0

    if-eqz v7, :cond_1f

    if-nez v29, :cond_1d

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastSentTouchTime:J

    move-wide v7, v0

    sub-long v7, v25, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    move v9, v0

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_1f

    .line 5327
    :cond_1d
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastSentTouchTime:J

    .line 5328
    new-instance v31, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v31 .. v31}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 5329
    .restart local v31       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v14

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 5330
    move/from16 v0, v17

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 5331
    move/from16 v0, v18

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 5332
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 5333
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    move v0, v7

    move-object/from16 v1, v31

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 5334
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    if-eqz v7, :cond_1e

    .line 5335
    move/from16 v0, v33

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 5336
    move/from16 v0, v34

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 5337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v7, v0

    const/16 v8, 0x8d

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 5340
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v7, v0

    const/16 v8, 0x8d

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5341
    if-eqz v29, :cond_1f

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v7

    if-nez v7, :cond_1f

    .line 5342
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v8, v0

    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v14, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0xc8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5347
    .end local v31           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    const/4 v8, 0x7

    if-eq v7, v8, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    const/4 v8, 0x3

    if-eq v7, v8, :cond_8

    .line 5353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v7, v0

    if-nez v7, :cond_20

    .line 5354
    const-string/jumbo v7, "webview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mDeferTouchProcess = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mTouchMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5363
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5364
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v7, v0

    if-eqz v7, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectionStarted:Z

    move v7, v0

    if-eqz v7, :cond_21

    .line 5368
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    .line 5369
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_2

    .line 5373
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    const/4 v8, 0x3

    if-eq v7, v8, :cond_25

    .line 5375
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v7, v0

    if-eqz v7, :cond_8

    .line 5378
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    const/4 v8, 0x1

    if-eq v7, v8, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_23

    .line 5382
    :cond_22
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto/16 :goto_2

    .line 5389
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v7, v0

    if-eqz v7, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v7

    if-nez v7, :cond_24

    .line 5391
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 5392
    .local v15, ax:I
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 5393
    .local v16, ay:I
    int-to-float v7, v15

    const/high16 v8, 0x3fc0

    move/from16 v0, v16

    int-to-float v0, v0

    move v9, v0

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_29

    .line 5394
    const/4 v7, 0x2

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5395
    if-lez v20, :cond_28

    const/4 v7, 0x1

    :goto_7
    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSnapPositive:Z

    .line 5402
    .end local v15           #ax:I
    .end local v16           #ay:I
    :cond_24
    :goto_8
    const/4 v7, 0x3

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5403
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5404
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5405
    const/16 v27, 0x0

    .line 5406
    const/16 v28, 0x0

    .line 5407
    const/16 v20, 0x0

    .line 5408
    const/16 v21, 0x0

    .line 5410
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->startDrag()V

    .line 5413
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    move-object v7, v0

    if-eqz v7, :cond_26

    .line 5414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView$DragTrackerHandler;->dragTo(FF)V

    .line 5418
    :cond_26
    const/16 v24, 0x0

    .line 5419
    .local v24, done:Z
    const/16 v30, 0x0

    .line 5420
    .local v30, keepScrollBarsVisible:Z
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x3f80

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2b

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x3f80

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2b

    .line 5421
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5422
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5423
    const/16 v24, 0x1

    move/from16 v30, v24

    .line 5482
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->doDrag(II)V

    .line 5484
    if-eqz v30, :cond_8

    .line 5485
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move v7, v0

    const/4 v8, 0x2

    if-eq v7, v8, :cond_27

    .line 5486
    const/4 v7, 0x2

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5487
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5490
    :cond_27
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    .line 5494
    if-nez v24, :cond_38

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 5395
    .end local v24           #done:Z
    .end local v30           #keepScrollBarsVisible:Z
    .restart local v15       #ax:I
    .restart local v16       #ay:I
    :cond_28
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 5396
    :cond_29
    move/from16 v0, v16

    int-to-float v0, v0

    move v7, v0

    const/high16 v8, 0x3fc0

    int-to-float v9, v15

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_24

    .line 5397
    const/4 v7, 0x4

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5398
    if-lez v21, :cond_2a

    const/4 v7, 0x1

    :goto_a
    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSnapPositive:Z

    goto/16 :goto_8

    :cond_2a
    const/4 v7, 0x0

    goto :goto_a

    .line 5425
    .end local v15           #ax:I
    .end local v16           #ay:I
    .restart local v24       #done:Z
    .restart local v30       #keepScrollBarsVisible:Z
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v7, v0

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v7, v0

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2e

    .line 5426
    :cond_2c
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 5427
    .restart local v15       #ax:I
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 5428
    .restart local v16       #ay:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v7, v0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_33

    .line 5430
    move/from16 v0, v16

    int-to-float v0, v0

    move v7, v0

    const/high16 v8, 0x3fc0

    int-to-float v9, v15

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2d

    const/16 v7, 0x50

    move/from16 v0, v16

    move v1, v7

    if-le v0, v1, :cond_2d

    .line 5432
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5435
    :cond_2d
    int-to-float v7, v15

    const/high16 v8, 0x3fc0

    move/from16 v0, v16

    int-to-float v0, v0

    move v9, v0

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move v7, v0

    if-eqz v7, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v7, v0

    neg-int v7, v7

    move/from16 v0, v20

    move v1, v7

    if-ge v0, v1, :cond_2e

    .line 5439
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v7, v0

    or-int/lit8 v7, v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5456
    .end local v15           #ax:I
    .end local v16           #ay:I
    :cond_2e
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v7, v0

    if-eqz v7, :cond_2f

    .line 5457
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v7, v0

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_36

    .line 5458
    const/16 v21, 0x0

    .line 5463
    :cond_2f
    :goto_d
    or-int v7, v20, v21

    if-eqz v7, :cond_37

    .line 5464
    if-eqz v20, :cond_30

    .line 5465
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5467
    :cond_30
    if-eqz v21, :cond_31

    .line 5468
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5470
    :cond_31
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5478
    :goto_e
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 5479
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mUserScroll:Z

    goto/16 :goto_9

    .line 5435
    .restart local v15       #ax:I
    .restart local v16       #ay:I
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v7, v0

    move/from16 v0, v20

    move v1, v7

    if-le v0, v1, :cond_2e

    goto :goto_b

    .line 5443
    :cond_33
    int-to-float v7, v15

    const/high16 v8, 0x3fc0

    move/from16 v0, v16

    int-to-float v0, v0

    move v9, v0

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_34

    const/16 v7, 0x50

    if-le v15, v7, :cond_34

    .line 5445
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5448
    :cond_34
    move/from16 v0, v16

    int-to-float v0, v0

    move v7, v0

    const/high16 v8, 0x3fc0

    int-to-float v9, v15

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move v7, v0

    if-eqz v7, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v7, v0

    neg-int v7, v7

    move/from16 v0, v21

    move v1, v7

    if-ge v0, v1, :cond_2e

    .line 5452
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v7, v0

    or-int/lit8 v7, v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    goto/16 :goto_c

    .line 5448
    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v7, v0

    move/from16 v0, v21

    move v1, v7

    if-le v0, v1, :cond_2e

    goto :goto_f

    .line 5460
    .end local v15           #ax:I
    .end local v16           #ay:I
    :cond_36
    const/16 v20, 0x0

    goto/16 :goto_d

    .line 5474
    :cond_37
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5475
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5476
    const/16 v30, 0x1

    goto :goto_e

    .line 5494
    :cond_38
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 5500
    .end local v24           #done:Z
    .end local v29           #firstMove:Z
    .end local v30           #keepScrollBarsVisible:Z
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 5501
    new-instance v31, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v31 .. v31}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 5502
    .restart local v31       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v14

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 5503
    move/from16 v0, v17

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 5504
    move/from16 v0, v18

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 5505
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 5506
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    move v0, v7

    move-object/from16 v1, v31

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 5507
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    if-eqz v7, :cond_39

    .line 5508
    move/from16 v0, v33

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 5509
    move/from16 v0, v34

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 5511
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v7, v0

    const/16 v8, 0x8d

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5513
    .end local v31           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_3a
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 5516
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isIscreenEnabled()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 5517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-static {v7}, Landroid/view/IScreenListener;->readSettings(Landroid/content/Context;)V

    .line 5519
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v7, v0

    move/from16 v0, v33

    float-to-int v0, v0

    move v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenStartX:I

    move v8, v0

    if-le v7, v8, :cond_3e

    .line 5520
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v7, v0

    move/from16 v0, v33

    float-to-int v0, v0

    move v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mIscreenEndX:I

    .line 5526
    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move v7, v0

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3f

    const/high16 v7, 0x3f80

    move/from16 v35, v7

    .line 5527
    .local v35, zoomVal:F
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenStartY:I

    move v7, v0

    int-to-float v7, v7

    div-float v7, v7, v35

    float-to-int v7, v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mIscreenStartY:I

    .line 5528
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenEndY:I

    move v7, v0

    int-to-float v7, v7

    div-float v7, v7, v35

    float-to-int v7, v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mIscreenEndY:I

    .line 5529
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v7, v0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mIscreenEndVScroll:I

    .line 5530
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenStartX:I

    move v7, v0

    int-to-float v7, v7

    div-float v7, v7, v35

    float-to-int v7, v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mIscreenStartX:I

    .line 5531
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenEndX:I

    move v7, v0

    int-to-float v7, v7

    div-float v7, v7, v35

    float-to-int v7, v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mIscreenEndX:I

    .line 5533
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v7, v0

    move/from16 v0, v34

    float-to-int v0, v0

    move v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mIscreenEndY:I

    .line 5534
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->upTimeMs:J

    .line 5536
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenEndY:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenStartY:I

    move v8, v0

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v23

    .line 5537
    .local v23, distY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenEndX:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenStartX:I

    move v8, v0

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v22

    .line 5538
    .local v22, distX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenEndVScroll:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenStartVScroll:I

    move v8, v0

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 5539
    .local v19, deltaVScroll:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->upTimeMs:J

    move-wide v7, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->downTimeMs:J

    move-wide v9, v0

    sub-long v5, v7, v9

    .line 5542
    .local v5, motionTime:J
    const/16 v7, 0x14

    move/from16 v0, v19

    move v1, v7

    if-ge v0, v1, :cond_3c

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenStartX:I

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenEndX:I

    move v8, v0

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenStartY:I

    move v9, v0

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenEndY:I

    move v10, v0

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/view/IScreenListener;->isIScreenMove(JFFFFI)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 5546
    const/16 v32, 0x0

    .line 5548
    .local v32, text:Ljava/lang/CharSequence;
    sget v7, Landroid/view/IScreenListener;->translationMode:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_40

    .line 5558
    :cond_3b
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    move-object v7, v0

    new-instance v8, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenStartX:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenStartY:I

    move v10, v0

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v7

    move-object/from16 v1, v32

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/view/IScreenListener;->displayWord(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/Point;)V

    .line 5564
    .end local v5           #motionTime:J
    .end local v19           #deltaVScroll:I
    .end local v22           #distX:I
    .end local v23           #distY:I
    .end local v32           #text:Ljava/lang/CharSequence;
    .end local v35           #zoomVal:F
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    packed-switch v7, :pswitch_data_1

    .line 5671
    :cond_3d
    :goto_13
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    goto/16 :goto_2

    .line 5522
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mIscreenStartX:I

    move v7, v0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mIscreenEndX:I

    .line 5523
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v7, v0

    move/from16 v0, v33

    float-to-int v0, v0

    move v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mIscreenStartX:I

    goto/16 :goto_10

    .line 5526
    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move v7, v0

    move/from16 v35, v7

    goto/16 :goto_11

    .line 5550
    .restart local v5       #motionTime:J
    .restart local v19       #deltaVScroll:I
    .restart local v22       #distX:I
    .restart local v23       #distY:I
    .restart local v32       #text:Ljava/lang/CharSequence;
    .restart local v35       #zoomVal:F
    :cond_40
    sget v7, Landroid/view/IScreenListener;->translationMode:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3b

    .line 5555
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getWordUnderTouch()Ljava/lang/String;

    move-result-object v32

    goto :goto_12

    .line 5566
    .end local v5           #motionTime:J
    .end local v19           #deltaVScroll:I
    .end local v22           #distX:I
    .end local v23           #distY:I
    .end local v32           #text:Ljava/lang/CharSequence;
    .end local v35           #zoomVal:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 5567
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 5568
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v7

    if-nez v7, :cond_41

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    if-eqz v7, :cond_43

    .line 5569
    :cond_41
    new-instance v31, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v31 .. v31}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 5570
    .restart local v31       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/16 v7, 0x200

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 5571
    move/from16 v0, v17

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 5572
    move/from16 v0, v18

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 5573
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 5574
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    move v0, v7

    move-object/from16 v1, v31

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 5575
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    if-eqz v7, :cond_42

    .line 5576
    move/from16 v0, v33

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 5577
    move/from16 v0, v34

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 5579
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v7, v0

    const/16 v8, 0x8d

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_13

    .line 5580
    .end local v31           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_43
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3d

    .line 5581
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doDoubleTap()V

    .line 5582
    const/4 v7, 0x7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_13

    .line 5588
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 5589
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 5590
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v7, v0

    if-eqz v7, :cond_47

    .line 5591
    const-string/jumbo v7, "webview"

    const-string v8, "Miss a drag as we are waiting for WebCore\'s response for touch down."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5593
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    const/4 v8, 0x3

    if-eq v7, v8, :cond_46

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    if-gtz v7, :cond_44

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v7

    if-lez v7, :cond_46

    .line 5597
    :cond_44
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    .line 5601
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 5604
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v7, v0

    invoke-static {v7}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5632
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 5633
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 5636
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchTime:J

    move-wide v7, v0

    sub-long v7, v25, v7

    const-wide/16 v9, 0xfa

    cmp-long v7, v7, v9

    if-gtz v7, :cond_4b

    .line 5637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v7, v0

    if-nez v7, :cond_45

    .line 5638
    const-string/jumbo v7, "webview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mDeferTouchProcess = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5644
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5648
    const/4 v7, 0x3

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5649
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doFling()V

    goto/16 :goto_13

    .line 5611
    :cond_46
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_13

    .line 5615
    :cond_47
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v7, v0

    if-eqz v7, :cond_49

    .line 5616
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeHitSelection(II)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 5617
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 5619
    :cond_48
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->selectionDone()V

    goto/16 :goto_13

    .line 5622
    :cond_49
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4a

    .line 5623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_13

    .line 5627
    :cond_4a
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    goto/16 :goto_13

    .line 5652
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v9, v0

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v11

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v13

    invoke-virtual/range {v7 .. v13}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 5655
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5659
    :cond_4c
    const/4 v7, 0x2

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5660
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5666
    :pswitch_6
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelocity:F

    .line 5667
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 5668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v7, v0

    invoke-static {v7}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_13

    .line 5675
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4d

    .line 5676
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v9, v0

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v11

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v13

    invoke-virtual/range {v7 .. v13}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 5678
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5680
    :cond_4d
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    .line 5681
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    goto/16 :goto_2

    .line 5215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 5564
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5886
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 5887
    .local v0, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 5888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 5889
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageUp(Z)Z

    :cond_1
    move v2, v4

    .line 5965
    :goto_0
    return v2

    .line 5892
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    .line 5893
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_3

    move v2, v4

    .line 5894
    goto :goto_0

    .line 5896
    :cond_3
    iput-boolean v4, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 5897
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_4

    move v2, v5

    .line 5898
    goto :goto_0

    .line 5900
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    :goto_1
    invoke-direct {p0, v2, v4, v4}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 5901
    iget-wide v2, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_5

    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5903
    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    .line 5910
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    :cond_6
    move v2, v5

    .line 5911
    goto :goto_0

    :cond_7
    move v2, v5

    .line 5900
    goto :goto_1

    .line 5913
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_b

    .line 5915
    iget-object v2, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x72

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5916
    iput-boolean v5, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 5917
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 5918
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_a

    .line 5919
    iget-boolean v2, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v2, :cond_9

    .line 5920
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 5921
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :goto_2
    move v2, v4

    .line 5927
    goto :goto_0

    .line 5923
    :cond_9
    iput-boolean v4, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 5924
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 5925
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_2

    :cond_a
    move v2, v5

    .line 5934
    goto :goto_0

    .line 5936
    :cond_b
    iget-boolean v2, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-nez v2, :cond_c

    move v2, v5

    .line 5938
    goto :goto_0

    .line 5940
    :cond_c
    iget-boolean v2, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-eqz v2, :cond_d

    move v2, v4

    .line 5942
    goto/16 :goto_0

    .line 5944
    :cond_d
    iget-wide v2, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_e

    move v2, v4

    .line 5946
    goto/16 :goto_0

    .line 5949
    :cond_e
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 5950
    iget-wide v2, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_f

    .line 5955
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 5956
    iput v5, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    iput v5, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 5958
    :cond_f
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 5962
    iget v2, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 5963
    iget v2, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 5964
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doTrackball(J)V

    move v2, v4

    .line 5965
    goto/16 :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 4644
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->setActive(Z)V

    .line 4645
    if-eqz p1, :cond_0

    .line 4646
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->setActiveWebView(Landroid/webkit/WebView;)V

    .line 4650
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    .line 4651
    return-void

    .line 4648
    :cond_0
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->removeActiveWebView(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 1229
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 1237
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    return v0
.end method

.method public pageDown(Z)Z
    .locals 6
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1915
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_0

    move v2, v4

    .line 1931
    :goto_0
    return v2

    .line 1918
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 1919
    if-eqz p1, :cond_1

    .line 1920
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v3

    invoke-direct {p0, v2, v3, v5, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 1923
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1925
    .local v0, h:I
    const/16 v2, 0x30

    if-le v0, v2, :cond_2

    .line 1926
    const/16 v2, 0x18

    sub-int v1, v0, v2

    .line 1930
    .local v1, y:I
    :goto_1
    iput-boolean v5, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 1931
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v4, v1, v5, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 1928
    .end local v1           #y:I
    :cond_2
    div-int/lit8 v1, v0, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 1931
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method public pageUp(Z)Z
    .locals 5
    .parameter "top"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1888
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_0

    move v2, v3

    .line 1905
    :goto_0
    return v2

    .line 1891
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 1892
    if-eqz p1, :cond_1

    .line 1894
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0, v2, v3, v4, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 1897
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1899
    .local v0, h:I
    const/16 v2, 0x30

    if-le v0, v2, :cond_2

    .line 1900
    neg-int v2, v0

    add-int/lit8 v1, v2, 0x18

    .line 1904
    .local v1, y:I
    :goto_1
    iput-boolean v4, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 1905
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v3, v1, v4, v3}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 1902
    .end local v1           #y:I
    :cond_2
    neg-int v2, v0

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 1905
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 6
    .parameter "currentText"
    .parameter "event"

    .prologue
    const/16 v5, 0x80

    .line 6853
    new-instance v0, Landroid/webkit/WebViewCore$JSKeyData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSKeyData;-><init>()V

    .line 6854
    .local v0, arg:Landroid/webkit/WebViewCore$JSKeyData;
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    .line 6855
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    .line 6857
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 6858
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x73

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 6863
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 6864
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 6866
    return-void
.end method

.method public pauseTimers()V
    .locals 2

    .prologue
    .line 2778
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2779
    return-void
.end method

.method public performLongClick()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3677
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v5

    .line 3709
    :goto_0
    return v3

    .line 3678
    :cond_0
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3680
    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 3681
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 3685
    :goto_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3686
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->performLongClick()Z

    move-result v3

    goto :goto_0

    .line 3683
    :cond_1
    invoke-direct {p0, v6}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    goto :goto_1

    .line 3691
    :cond_2
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->performLongClick()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    .line 3692
    goto :goto_0

    .line 3698
    :cond_3
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_0

    .line 3699
    :cond_4
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    .line 3700
    .local v1, x:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    .line 3701
    .local v2, y:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    .line 3702
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_6

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeWordSelection(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3703
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 3704
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 3705
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Landroid/webkit/WebChromeClient;->onSelectionStart(Landroid/webkit/WebView;)V

    :cond_5
    move v3, v6

    .line 3706
    goto :goto_0

    .line 3708
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->notifySelectDialogDismissed()V

    move v3, v5

    .line 3709
    goto :goto_0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 1706
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1707
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1708
    new-instance v0, Landroid/webkit/WebViewCore$PostUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$PostUrlData;-><init>()V

    .line 1709
    .local v0, arg:Landroid/webkit/WebViewCore$PostUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    .line 1710
    iput-object p2, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    .line 1711
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x84

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1712
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 1716
    .end local v0           #arg:Landroid/webkit/WebViewCore$PostUrlData;
    :goto_0
    return-void

    .line 1714
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method rebuildWebTextView()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 4012
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8}, Landroid/webkit/WebTextView;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4087
    :cond_0
    :goto_0
    return-void

    .line 4015
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    .line 4018
    .local v0, alreadyThere:Z
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v8, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z

    move-result v8

    if-nez v8, :cond_3

    .line 4019
    :cond_2
    if-eqz v0, :cond_0

    .line 4020
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8}, Landroid/webkit/WebTextView;->remove()V

    goto :goto_0

    .line 4026
    :cond_3
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-nez v8, :cond_4

    .line 4027
    new-instance v8, Landroid/webkit/WebTextView;

    iget-object v9, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, p0}, Landroid/webkit/WebTextView;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    .line 4029
    iput v13, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 4031
    :cond_4
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v13, v9}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 4033
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 4034
    .local v7, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v7}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 4037
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 4038
    .local v1, bounds:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 4039
    .local v6, vBox:Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 4040
    invoke-static {v1, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 4041
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8}, Landroid/webkit/WebTextView;->bringIntoView()V

    .line 4043
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateText()Ljava/lang/String;

    move-result-object v5

    .line 4044
    .local v5, text:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePointer()I

    move-result v3

    .line 4045
    .local v3, nodePointer:I
    if-eqz v0, :cond_7

    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4053
    if-eqz v5, :cond_6

    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTextGeneration()I

    move-result v8

    iget v9, p0, Landroid/webkit/WebView;->mTextGeneration:I

    if-ne v8, v9, :cond_6

    .line 4055
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8, v5}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    .line 4086
    :cond_6
    :goto_1
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8}, Landroid/webkit/WebTextView;->requestFocus()Z

    goto/16 :goto_0

    .line 4058
    :cond_7
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsRtlText()Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x5

    :goto_2
    invoke-virtual {v8, v9}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 4062
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8, v3}, Landroid/webkit/WebTextView;->setNodePointer(I)V

    .line 4063
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateType()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/webkit/WebTextView;->setType(I)V

    .line 4064
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 4065
    .local v4, paddingRect:Landroid/graphics/Rect;
    if-eqz v4, :cond_8

    .line 4068
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v9, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v9}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v9

    iget v10, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v10}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    iget v11, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v11}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 4074
    :cond_8
    if-nez v5, :cond_9

    .line 4078
    const-string v5, ""

    .line 4080
    :cond_9
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8, v5}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    .line 4081
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 4082
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_6

    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2, v8}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4083
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2, v8}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto :goto_1

    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v4           #paddingRect:Landroid/graphics/Rect;
    :cond_a
    move v9, v13

    .line 4058
    goto :goto_2
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .parameter "reloadOpenPages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3483
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 1787
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 1788
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1789
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1790
    return-void
.end method

.method public removePackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 3465
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xba

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3466
    return-void
.end method

.method replaceTextfieldText(IILjava/lang/String;II)V
    .locals 3
    .parameter "oldStart"
    .parameter "oldEnd"
    .parameter "replace"
    .parameter "newStart"
    .parameter "newEnd"

    .prologue
    .line 6843
    new-instance v0, Landroid/webkit/WebViewCore$ReplaceTextData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ReplaceTextData;-><init>()V

    .line 6844
    .local v0, arg:Landroid/webkit/WebViewCore$ReplaceTextData;
    iput-object p3, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    .line 6845
    iput p4, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    .line 6846
    iput p5, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    .line 6847
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 6848
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    iput v1, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    .line 6849
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 6850
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 20
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 6790
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6793
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v18

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6798
    .local v5, content:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 6799
    iget v15, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v11

    .line 6800
    .local v11, screenTop:I
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v8

    .line 6801
    .local v8, screenBottom:I
    sub-int v6, v8, v11

    .line 6802
    .local v6, height:I
    const/4 v13, 0x0

    .line 6804
    .local v13, scrollYDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-le v15, v8, :cond_3

    .line 6805
    div-int/lit8 v7, v6, 0x3

    .line 6806
    .local v7, oneThirdOfScreenHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    mul-int/lit8 v16, v7, 0x2

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 6809
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v13, v15, v11

    .line 6819
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_0
    :goto_0
    iget v15, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v9

    .line 6820
    .local v9, screenLeft:I
    iget v15, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v10

    .line 6821
    .local v10, screenRight:I
    sub-int v14, v10, v9

    .line 6822
    .local v14, width:I
    const/4 v12, 0x0

    .line 6824
    .local v12, scrollXDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    if-le v15, v10, :cond_5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-le v15, v9, :cond_5

    .line 6825
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-le v15, v14, :cond_4

    .line 6826
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v12, v15

    .line 6834
    :cond_1
    :goto_1
    or-int v15, v13, v12

    if-eqz v15, :cond_7

    .line 6835
    if-nez p3, :cond_6

    const/4 v15, 0x1

    :goto_2
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v15

    .line 6838
    :goto_3
    return v15

    .line 6813
    .end local v9           #screenLeft:I
    .end local v10           #screenRight:I
    .end local v12           #scrollXDelta:I
    .end local v14           #width:I
    .restart local v7       #oneThirdOfScreenHeight:I
    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    add-int v16, v11, v7

    sub-int v13, v15, v16

    goto :goto_0

    .line 6815
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-ge v15, v11, :cond_0

    .line 6816
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v13, v15, v11

    goto :goto_0

    .line 6828
    .restart local v9       #screenLeft:I
    .restart local v10       #screenRight:I
    .restart local v12       #scrollXDelta:I
    .restart local v14       #width:I
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    sub-int/2addr v15, v10

    add-int/2addr v12, v15

    goto :goto_1

    .line 6830
    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-ge v15, v9, :cond_1

    .line 6831
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v12, v15

    goto :goto_1

    .line 6835
    :cond_6
    const/4 v15, 0x0

    goto :goto_2

    .line 6838
    :cond_7
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    .line 6703
    const/4 v6, 0x0

    .line 6704
    .local v6, result:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6705
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    :cond_0
    :goto_0
    move v7, v6

    .line 6735
    .end local v6           #result:Z
    .local v7, result:Z
    :goto_1
    return v7

    .line 6708
    .end local v7           #result:Z
    .restart local v6       #result:Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    .line 6709
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNeedInitialFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6713
    const/4 v1, 0x0

    .line 6714
    .local v1, fakeKeyDirection:I
    sparse-switch p1, :sswitch_data_0

    move v7, v6

    .line 6728
    .end local v6           #result:Z
    .restart local v7       #result:Z
    goto :goto_1

    .line 6716
    .end local v7           #result:Z
    .restart local v6       #result:Z
    :sswitch_0
    const/16 v1, 0x13

    .line 6730
    :goto_2
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6731
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    goto :goto_0

    .line 6719
    :sswitch_1
    const/16 v1, 0x14

    .line 6720
    goto :goto_2

    .line 6722
    :sswitch_2
    const/16 v1, 0x15

    .line 6723
    goto :goto_2

    .line 6725
    :sswitch_3
    const/16 v1, 0x16

    .line 6726
    goto :goto_2

    .line 6714
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 4
    .parameter "hrefMsg"

    .prologue
    .line 2104
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 2112
    :cond_0
    :goto_0
    return-void

    .line 2107
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2108
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x89

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method requestFormData(Ljava/lang/String;I)V
    .locals 5
    .parameter "name"
    .parameter "nodePointer"

    .prologue
    .line 4098
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4099
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4100
    .local v1, update:Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 4101
    new-instance v2, Landroid/webkit/WebView$RequestFormData;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3, v1}, Landroid/webkit/WebView$RequestFormData;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 4103
    .local v2, updater:Landroid/webkit/WebView$RequestFormData;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4104
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4106
    .end local v0           #t:Ljava/lang/Thread;
    .end local v1           #update:Landroid/os/Message;
    .end local v2           #updater:Landroid/webkit/WebView$RequestFormData;
    :cond_0
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 2122
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_0

    .line 2130
    :goto_0
    return-void

    .line 2123
    :cond_0
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2124
    .local v0, contentX:I
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2125
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 2126
    .local v3, ref:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2127
    .local v2, data:Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2129
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method requestLabel(II)V
    .locals 2
    .parameter "framePointer"
    .parameter "nodePointer"

    .prologue
    .line 4115
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4117
    return-void
.end method

.method requestListBox([Ljava/lang/String;[II)V
    .locals 7
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"

    .prologue
    .line 7811
    iget-object v6, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[IILandroid/webkit/WebView$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7813
    return-void
.end method

.method requestListBox([Ljava/lang/String;[I[I)V
    .locals 7
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"

    .prologue
    .line 7766
    iget-object v6, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[ILandroid/webkit/WebView$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7768
    return-void
.end method

.method resetTrackballTime()V
    .locals 2

    .prologue
    .line 5881
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 5882
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 5
    .parameter "b"
    .parameter "src"

    .prologue
    const/4 v4, 0x0

    .line 1572
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v3, v4

    .line 1606
    :goto_0
    return v3

    .line 1575
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 1576
    goto :goto_0

    .line 1579
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1580
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1581
    .local v0, copy:Landroid/os/Bundle;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebView$7;

    invoke-direct {v4, p0, v2, v0}, Landroid/webkit/WebView$7;-><init>(Landroid/webkit/WebView;Ljava/io/FileInputStream;Landroid/os/Bundle;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1606
    .end local v0           #copy:Landroid/os/Bundle;
    .end local v2           #in:Ljava/io/FileInputStream;
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 1603
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1604
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 12
    .parameter "inState"

    .prologue
    const/4 v9, 0x0

    const-string v11, "index"

    const-string v10, "history"

    .line 1624
    const/4 v6, 0x0

    .line 1625
    .local v6, returnList:Landroid/webkit/WebBackForwardList;
    if-nez p1, :cond_0

    move-object v8, v6

    .line 1667
    :goto_0
    return-object v8

    .line 1628
    :cond_0
    const-string v8, "index"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "history"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1629
    const-string v8, "certificate"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 1632
    iget-object v8, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v8}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 1633
    .local v5, list:Landroid/webkit/WebBackForwardList;
    const-string v8, "index"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1637
    .local v3, index:I
    monitor-enter v5

    .line 1638
    :try_start_0
    const-string v8, "history"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1640
    .local v1, history:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 1643
    .local v7, size:I
    if-ltz v3, :cond_1

    if-lt v3, v7, :cond_2

    .line 1644
    :cond_1
    monitor-exit v5

    move-object v8, v9

    goto :goto_0

    .line 1646
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 1647
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1648
    .local v0, data:[B
    if-nez v0, :cond_3

    .line 1651
    monitor-exit v5

    move-object v8, v9

    goto :goto_0

    .line 1653
    :cond_3
    new-instance v4, Landroid/webkit/WebHistoryItem;

    invoke-direct {v4, v0}, Landroid/webkit/WebHistoryItem;-><init>([B)V

    .line 1654
    .local v4, item:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v5, v4}, Landroid/webkit/WebBackForwardList;->addHistoryItem(Landroid/webkit/WebHistoryItem;)V

    .line 1646
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1657
    .end local v0           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v6

    .line 1659
    invoke-virtual {v6, v3}, Landroid/webkit/WebBackForwardList;->setCurrentIndex(I)V

    .line 1660
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1663
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->removeMessages()V

    .line 1665
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0x6c

    invoke-virtual {v8, v9, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #list:Landroid/webkit/WebBackForwardList;
    .end local v7           #size:I
    :cond_5
    move-object v8, v6

    .line 1667
    goto :goto_0

    .line 1660
    .restart local v3       #index:I
    .restart local v5       #list:Landroid/webkit/WebBackForwardList;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method public resumeTimers()V
    .locals 2

    .prologue
    .line 2786
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2787
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1317
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 4
    .parameter "b"
    .parameter "dest"

    .prologue
    .line 1505
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1506
    :cond_0
    const/4 v2, 0x0

    .line 1541
    :goto_0
    return v2

    .line 1508
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 1511
    .local v0, p:Landroid/graphics/Picture;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1512
    .local v1, temp:Ljava/io/File;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/webkit/WebView$6;

    invoke-direct {v3, p0, v1, v0, p2}, Landroid/webkit/WebView$6;-><init>(Landroid/webkit/WebView;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1536
    const-string v2, "scrollX"

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1537
    const-string v2, "scrollY"

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1538
    const-string v2, "scale"

    iget v3, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1539
    const-string/jumbo v2, "textwrapScale"

    iget v3, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1540
    const-string v2, "overview"

    iget-boolean v3, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1541
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10
    .parameter "outState"

    .prologue
    const/4 v9, 0x0

    .line 1453
    if-nez p1, :cond_0

    move-object v7, v9

    .line 1493
    :goto_0
    return-object v7

    .line 1458
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 1459
    .local v5, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 1460
    .local v0, currentIndex:I
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v6

    .line 1463
    .local v6, size:I
    if-ltz v0, :cond_1

    if-ge v0, v6, :cond_1

    if-nez v6, :cond_2

    :cond_1
    move-object v7, v9

    .line 1464
    goto :goto_0

    .line 1466
    :cond_2
    const-string v7, "index"

    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1470
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1471
    .local v2, history:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_5

    .line 1472
    invoke-virtual {v5, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    .line 1473
    .local v4, item:Landroid/webkit/WebHistoryItem;
    if-nez v4, :cond_3

    .line 1476
    const-string/jumbo v7, "webview"

    const-string v8, "saveState: Unexpected null history item."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 1477
    goto :goto_0

    .line 1479
    :cond_3
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getFlattenedData()[B

    move-result-object v1

    .line 1480
    .local v1, data:[B
    if-nez v1, :cond_4

    move-object v7, v9

    .line 1484
    goto :goto_0

    .line 1486
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1471
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1488
    .end local v1           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_5
    const-string v7, "history"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1489
    iget-object v7, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v7, :cond_6

    .line 1490
    const-string v7, "certificate"

    iget-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v8}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    move-object v7, v5

    .line 1493
    goto :goto_0
.end method

.method scrollFocusedTextInput(FI)V
    .locals 4
    .parameter "xPercent"
    .parameter "y"

    .prologue
    .line 6412
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    .line 6421
    :cond_0
    :goto_0
    return-void

    .line 6415
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x63

    invoke-direct {p0, p2}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v2

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 4487
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 4494
    :cond_0
    :goto_0
    return-void

    .line 4488
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4489
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    .line 4490
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSelectAll()V

    .line 4491
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 4492
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 4493
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public selectDialogIsUp()Z
    .locals 1

    .prologue
    .line 4500
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    return v0
.end method

.method public selectionDone()V
    .locals 2

    .prologue
    .line 4515
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v1, :cond_1

    .line 4516
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 4517
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/webkit/WebChromeClient;->onSelectionDone(Landroid/webkit/WebView;)V

    .line 4518
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4519
    invoke-virtual {p0}, Landroid/webkit/WebView;->notifySelectDialogDismissed()V

    .line 4521
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 7977
    iput p1, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 7978
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 7979
    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    .line 1302
    iput-object p1, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 1303
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 3326
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 3327
    return-void
.end method

.method public setDragTracker(Landroid/webkit/WebView$DragTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 5039
    iput-object p1, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    .line 5040
    return-void
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 2183
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 2197
    :goto_0
    return-void

    .line 2184
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2185
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 2187
    :cond_1
    if-eqz p1, :cond_2

    .line 2188
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2191
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 2192
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080339

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    .line 2196
    :cond_2
    iput-object p1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    goto :goto_0
.end method

.method public setFindDialogHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 3028
    iput p1, p0, Landroid/webkit/WebView;->mFindHeight:I

    .line 3029
    return-void
.end method

.method public setFindIsUp(Z)V
    .locals 3
    .parameter "isUp"

    .prologue
    .line 2917
    iput-boolean p1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    .line 2918
    if-eqz p1, :cond_0

    .line 2919
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    .line 2922
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 2924
    :goto_0
    return-void

    .line 2923
    :cond_1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetFindIsUp(Z)V

    goto :goto_0
.end method

.method setFocusControllerInactive()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4662
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 4664
    :goto_0
    return-void

    .line 4663
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 4706
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->setFrame(IIII)Z

    move-result v0

    .line 4707
    .local v0, changed:Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_0

    .line 4714
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 4716
    :cond_0
    return v0
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 1213
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1214
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1331
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewDatabase;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    return-void
.end method

.method public setInitialScale(I)V
    .locals 0
    .parameter "scaleInPercent"

    .prologue
    .line 1997
    iput p1, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    .line 1998
    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 1408
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1409
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 3666
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 3667
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mWrapContent:Z

    .line 3669
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3670
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 0
    .parameter "setMap"

    .prologue
    .line 5877
    iput-boolean p1, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 5878
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 4
    .parameter "networkUp"

    .prologue
    const/4 v3, 0x0

    .line 1425
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x77

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1427
    return-void

    :cond_0
    move v2, v3

    .line 1425
    goto :goto_0
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 1434
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1435
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    const-string/jumbo v1, "subtype"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xb7

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1438
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 1107
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    .line 1108
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 1109
    iget-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-nez v3, :cond_0

    .line 1110
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1111
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x1080238

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1112
    .local v0, edge:Landroid/graphics/drawable/Drawable;
    const v3, 0x1080239

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1113
    .local v1, glow:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 1114
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 1115
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    .line 1116
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    .line 1124
    .end local v0           #edge:Landroid/graphics/drawable/Drawable;
    .end local v1           #glow:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 1120
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 1121
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    .line 1122
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    goto :goto_0
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3374
    iput-object p1, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 3375
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 1199
    const/high16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x300

    if-ne p1, v0, :cond_1

    .line 1201
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1205
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    .line 1206
    return-void

    .line 1203
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    goto :goto_0
.end method

.method setSelection(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 3952
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3953
    return-void
.end method

.method public setTouchInterval(I)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 8004
    iput p1, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 8005
    return-void
.end method

.method public setUpSelect()V
    .locals 3

    .prologue
    .line 4453
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_1

    .line 4473
    :cond_0
    :goto_0
    return-void

    .line 4454
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4455
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v1, :cond_0

    .line 4456
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 4457
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    iput-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 4459
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4460
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 4461
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4462
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4463
    .local v0, rect:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 4464
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 4472
    .end local v0           #rect:Landroid/graphics/Rect;
    :goto_1
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    goto :goto_0

    .line 4465
    :cond_2
    iget v1, p0, Landroid/webkit/WebView;->mLastTouchY:F

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 4466
    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 4467
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    goto :goto_1

    .line 4469
    :cond_3
    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 4470
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    goto :goto_1
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 1221
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 1222
    return-void
.end method

.method public setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 3357
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    .line 3358
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 3336
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 3337
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 3306
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3307
    return-void
.end method

.method public startDnsPrefetch()V
    .locals 2

    .prologue
    .line 1415
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1416
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 1779
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1780
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1781
    return-void
.end method

.method switchOutDrawHistory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3900
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_1

    .line 3918
    :cond_0
    :goto_0
    return-void

    .line 3901
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->pictureReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3902
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 3903
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 3904
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3905
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 3906
    .local v0, oldScrollX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 3907
    .local v1, oldScrollY:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 3908
    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 3909
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v2, :cond_3

    .line 3910
    :cond_2
    iput-boolean v3, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 3911
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x83

    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3913
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_0

    .line 3915
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_0
.end method

.method textFieldDrag(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 6447
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 6455
    :goto_0
    return v1

    .line 6450
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    .line 6451
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2}, Landroid/webkit/WebTextView;->getTop()I

    move-result v2

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 6453
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 6454
    .local v0, result:Z
    iput-boolean v4, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    move v1, v0

    .line 6455
    goto :goto_0
.end method

.method touchUpOnTextField(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 6464
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6470
    :goto_0
    return-void

    .line 6467
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 6468
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 6469
    .local v1, y:I
    iget v2, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    goto :goto_0
.end method

.method updateCachedTextfield(Ljava/lang/String;)V
    .locals 1
    .parameter "updatedText"

    .prologue
    .line 8014
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->nativeUpdateCachedTextfield(Ljava/lang/String;I)V

    .line 8015
    return-void
.end method

.method updateDefaultZoomDensity(I)V
    .locals 7
    .parameter "zoomDensity"

    .prologue
    const/high16 v6, 0x42c8

    .line 1127
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    int-to-float v3, p1

    div-float v0, v2, v3

    .line 1129
    .local v0, density:F
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1130
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    div-float v1, v0, v2

    .line 1132
    .local v1, scaleFactor:F
    const/high16 v2, 0x4180

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1133
    mul-float v2, v6, v0

    float-to-int v2, v2

    sput v2, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    .line 1134
    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    sput v2, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    .line 1135
    const/high16 v2, 0x3e80

    mul-float/2addr v2, v0

    sput v2, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    .line 1136
    iput v0, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 1137
    iget v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 1138
    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 1139
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Landroid/webkit/WebView;->setNewZoomScale(FZZ)V

    .line 1141
    .end local v1           #scaleFactor:F
    :cond_0
    return-void
.end method

.method updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1043
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1044
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1045
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    .line 1047
    const-string v2, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/webkit/WebView;->mAllowPanAndScale:Z

    .line 1049
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v2, :cond_2

    .line 1050
    new-instance v2, Landroid/view/ScaleGestureDetector;

    new-instance v3, Landroid/webkit/WebView$ScaleDetectorListener;

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$ScaleDetectorListener;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    invoke-direct {v2, p1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 1055
    :cond_0
    :goto_1
    return-void

    .line 1045
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1052
    :cond_2
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_0

    .line 1053
    iput-object v4, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    goto :goto_1
.end method

.method viewToContentX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 2215
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 2224
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 2

    .prologue
    const/high16 v1, 0x3f00

    .line 6369
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 6370
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6372
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6373
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6374
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 6375
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 6376
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    const/high16 v1, 0x3fa0

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 2

    .prologue
    const/high16 v1, 0x3f00

    .line 6385
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 6387
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6388
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6389
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 6390
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 6391
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    move-result v0

    return v0
.end method
