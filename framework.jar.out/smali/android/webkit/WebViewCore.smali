.class final Landroid/webkit/WebViewCore;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewCore$ShowRectData;,
        Landroid/webkit/WebViewCore$DrawData;,
        Landroid/webkit/WebViewCore$RestoreState;,
        Landroid/webkit/WebViewCore$EventHub;,
        Landroid/webkit/WebViewCore$GeolocationPermissionsData;,
        Landroid/webkit/WebViewCore$TouchEventData;,
        Landroid/webkit/WebViewCore$TouchUpData;,
        Landroid/webkit/WebViewCore$TextSelectionData;,
        Landroid/webkit/WebViewCore$ReplaceTextData;,
        Landroid/webkit/WebViewCore$PostUrlData;,
        Landroid/webkit/WebViewCore$GetUrlData;,
        Landroid/webkit/WebViewCore$MotionUpData;,
        Landroid/webkit/WebViewCore$JSKeyData;,
        Landroid/webkit/WebViewCore$JSInterfaceData;,
        Landroid/webkit/WebViewCore$CursorData;,
        Landroid/webkit/WebViewCore$BaseUrlData;,
        Landroid/webkit/WebViewCore$WebCoreThread;
    }
.end annotation


# static fields
.field static final ACTION_DOUBLETAP:I = 0x200

.field static final ACTION_LONGPRESS:I = 0x100

.field static final HandlerDebugString:[Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "webcore"

.field static final SCROLL_BITS:I = 0x6

.field static final THREAD_NAME:Ljava/lang/String; = "WebViewCoreThread"

.field static final ZOOM_BITS:I = 0x86

.field private static mRepaintScheduled:Z

.field private static sWebCoreHandler:Landroid/os/Handler;


# instance fields
.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private final mContext:Landroid/content/Context;

.field private mCurrentViewHeight:I

.field private mCurrentViewScale:F

.field private mCurrentViewWidth:I

.field private mDrawIsPaused:Z

.field private mDrawIsScheduled:Z

.field private final mEventHub:Landroid/webkit/WebViewCore$EventHub;

.field private mJavascriptInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeClass:I

.field private mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

.field private mRestoredScale:I

.field private mRestoredScreenWidthScale:I

.field private mRestoredX:I

.field private mRestoredY:I

.field final mScrollFilter:Landroid/graphics/DrawFilter;

.field private final mSettings:Landroid/webkit/WebSettings;

.field private mSplitPictureIsScheduled:Z

.field private mViewportDensityDpi:I

.field private mViewportHeight:I

.field private mViewportInitialScale:I

.field private mViewportMaximumScale:I

.field private mViewportMinimumScale:I

.field private mViewportUserScalable:Z

.field private mViewportWidth:I

.field private mWebView:Landroid/webkit/WebView;

.field private mWebkitScrollX:I

.field private mWebkitScrollY:I

.field final mZoomFilter:Landroid/graphics/DrawFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    const-string/jumbo v0, "webcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 757
    const/16 v0, 0x33

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "REQUEST_LABEL"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "UPDATE_FRAME_CACHE_IF_LOADING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SCROLL_TEXT_INPUT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LOAD_URL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "STOP_LOADING"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "RELOAD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "KEY_DOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "KEY_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VIEW_SIZE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GO_BACK_FORWARD"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SET_SCROLL_OFFSET"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "RESTORE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "PAUSE_TIMERS"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "RESUME_TIMERS"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CLEAR_CACHE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CLEAR_HISTORY"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "SET_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "REPLACE_TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PASS_TO_JS"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SET_GLOBAL_BOUNDS"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "UPDATE_CACHE_AND_TEXT_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CLICK"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "SET_NETWORK_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "DOC_HAS_IMAGES"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "121"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "DELETE_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "LISTBOX_CHOICES"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SINGLE_LISTBOX_CHOICE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "MESSAGE_RELAY"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SET_BACKGROUND_COLOR"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SET_MOVE_FOCUS"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SAVE_DOCUMENT_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "129"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "WEBKIT_DRAW"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "SYNC_SCROLL"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "POST_URL"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "SPLIT_PICTURE_SET"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "CLEAR_CONTENT"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "SET_MOVE_MOUSE"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "SET_MOVE_MOUSE_IF_LATEST"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "REQUEST_CURSOR_HREF"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "ADD_JS_INTERFACE"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "LOAD_DATA"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "TOUCH_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "TOUCH_EVENT"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "SET_ACTIVE"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "ON_PAUSE"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "ON_RESUME"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "FREE_MEMORY"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "VALID_NODE_BOUNDS"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "START_DNS_PREFETCH"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebViewCore;->HandlerDebugString:[Ljava/lang/String;

    .line 2056
    sput-boolean v3, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V
    .locals 9
    .parameter "context"
    .parameter "w"
    .parameter "proxy"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/CallbackProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    const-class v7, Landroid/webkit/WebViewCore;

    const-string/jumbo v3, "webcore"

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v4, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 95
    iput v4, p0, Landroid/webkit/WebViewCore;->mViewportHeight:I

    .line 100
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 105
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 110
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 112
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 121
    iput v4, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    .line 123
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    .line 124
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredScreenWidthScale:I

    .line 125
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 126
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 128
    iput v6, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    .line 129
    iput v6, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    .line 1674
    iput v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 1675
    iput v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 1676
    const/high16 v3, 0x3f80

    iput v3, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 1770
    iput-object v8, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    .line 1847
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v4, 0x86

    const/16 v5, 0x40

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 1850
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v6}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mScrollFilter:Landroid/graphics/DrawFilter;

    .line 138
    iput-object p3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 139
    iput-object p2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    .line 140
    iput-object p4, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 143
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    .line 152
    const-class v3, Landroid/webkit/WebViewCore;

    monitor-enter v7

    .line 153
    :try_start_0
    sget-object v4, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v4, :cond_0

    .line 155
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebViewCore$WebCoreThread;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/webkit/WebViewCore$WebCoreThread;-><init>(Landroid/webkit/WebViewCore$1;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 156
    .local v2, t:Ljava/lang/Thread;
    const-string v4, "WebViewCoreThread"

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :try_start_1
    const-class v4, Landroid/webkit/WebViewCore;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    .end local v2           #t:Ljava/lang/Thread;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    new-instance v3, Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {v3, p0, v8}, Landroid/webkit/WebViewCore$EventHub;-><init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewCore$1;)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    .line 171
    new-instance v3, Landroid/webkit/WebSettings;

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v3, v4, v5}, Landroid/webkit/WebSettings;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    .line 174
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    .line 176
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebStorage;->createUIHandler()V

    .line 178
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/GeolocationPermissions;->createUIHandler()V

    .line 180
    sget-object v3, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 182
    .local v1, init:Landroid/os/Message;
    sget-object v3, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    const-class v3, Landroid/webkit/WebViewCore;

    monitor-enter v7

    .line 186
    :try_start_3
    const-class v4, Landroid/webkit/WebViewCore;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 192
    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 193
    return-void

    .line 160
    .end local v1           #init:Landroid/os/Message;
    .restart local v2       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 161
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v4, "webcore"

    const-string v5, "Caught exception while waiting for thread creation."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string/jumbo v4, "webcore"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #t:Ljava/lang/Thread;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 187
    .restart local v1       #init:Landroid/os/Message;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 188
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string/jumbo v4, "webcore"

    const-string v5, "Caught exception while waiting for thread INITIALIZE."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string/jumbo v4, "webcore"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 192
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4
.end method

.method static synthetic access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRequestLabel(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCacheIfLoading()V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkit/WebViewCore;FI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeScrollFocusedTextInput(FI)V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeClick(II)V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/WebViewCore;IIIFIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p7}, Landroid/webkit/WebViewCore;->viewSizeChanged(IIIFIIZ)V

    return-void
.end method

.method static synthetic access$1900(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeSetScrollOffset(III)V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIII)V

    return-void
.end method

.method static synthetic access$2100(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->restoreState(I)V

    return-void
.end method

.method static synthetic access$2400(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePause()V

    return-void
.end method

.method static synthetic access$2500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeResume()V

    return-void
.end method

.method static synthetic access$2600(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->clearCache(Z)V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeFreeMemory()V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/webkit/WebViewCore;IILjava/lang/String;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p6}, Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IILjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebViewCore;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetNewStorageLimit(J)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/WebViewCore;ILjava/lang/String;IIZZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p8}, Landroid/webkit/WebViewCore;->passToJs(ILjava/lang/String;IIZZZZ)V

    return-void
.end method

.method static synthetic access$3100(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V

    return-void
.end method

.method static synthetic access$3200(Landroid/webkit/WebViewCore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/webkit/WebViewCore;IIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebViewCore;->nativeTouchUp(IIIII)V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkit/WebViewCore;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(Z)V

    return-void
.end method

.method static synthetic access$3600(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeMoveFocus(II)V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeMoveMouse(III)V

    return-void
.end method

.method static synthetic access$3800(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeMoveMouseIfLatest(IIII)V

    return-void
.end method

.method static synthetic access$3900(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveHref(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveAnchorText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    sput-object p0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4100(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    return-void
.end method

.method static synthetic access$4300(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeDeleteSelection(III)V

    return-void
.end method

.method static synthetic access$4400(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetSelection(II)V

    return-void
.end method

.method static synthetic access$4500(Landroid/webkit/WebViewCore;[ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoices([ZI)V

    return-void
.end method

.method static synthetic access$4600(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(I)V

    return-void
.end method

.method static synthetic access$4700(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$4800(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpDomTree(Z)V

    return-void
.end method

.method static synthetic access$4900(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpRenderTree(Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    return-void
.end method

.method static synthetic access$5000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeDumpNavTree()V

    return-void
.end method

.method static synthetic access$5100(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeDumpV8Counters()V

    return-void
.end method

.method static synthetic access$5200(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetJsFlags(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeHidePluginsDuringSmoothRotate()V

    return-void
.end method

.method static synthetic access$5400(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeShowPluginsAfterSmoothRotate()V

    return-void
.end method

.method static synthetic access$5500(Landroid/webkit/WebViewCore;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$5602(Landroid/webkit/WebViewCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    return p1
.end method

.method static synthetic access$5702(Landroid/webkit/WebViewCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    return p1
.end method

.method static synthetic access$5800(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSplitContent()V

    return-void
.end method

.method static synthetic access$5902(Landroid/webkit/WebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    return p1
.end method

.method static synthetic access$600(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDraw()V

    return-void
.end method

.method static synthetic access$6000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeClearContent()V

    return-void
.end method

.method static synthetic access$6100(Landroid/webkit/WebViewCore;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeProvideVisitedHistory([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeFullScreenPluginHidden(I)V

    return-void
.end method

.method static synthetic access$6402(Landroid/webkit/WebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    return p1
.end method

.method static synthetic access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$702(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object p1
.end method

.method static synthetic access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method static synthetic access$902(Landroid/webkit/WebViewCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    return p1
.end method

.method private addSurface(Landroid/view/View;IIII)Landroid/webkit/ViewManager$ChildView;
    .locals 5
    .parameter "pluginView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 2474
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    move-object v2, v4

    .line 2492
    :goto_0
    return-object v2

    .line 2478
    :cond_0
    if-nez p1, :cond_1

    .line 2479
    const-string/jumbo v2, "webcore"

    const-string v3, "Attempted to add an empty plugin view to the view hierarchy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 2480
    goto :goto_0

    .line 2484
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 2486
    instance-of v2, p1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_2

    .line 2487
    move-object v0, p1

    check-cast v0, Landroid/view/SurfaceView;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 2489
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->createView()Landroid/webkit/ViewManager$ChildView;

    move-result-object v1

    .line 2490
    .local v1, view:Landroid/webkit/ViewManager$ChildView;
    iput-object p1, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    .line 2491
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    move-object v2, v1

    .line 2492
    goto :goto_0
.end method

.method private centerFitRect(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2540
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 2545
    :goto_0
    return-void

    .line 2543
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7f

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private clearCache(Z)V
    .locals 1
    .parameter "includeDiskFiles"

    .prologue
    .line 1627
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->clearCache()V

    .line 1628
    if-eqz p1, :cond_0

    .line 1629
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 1631
    :cond_0
    return-void
.end method

.method private clearTextEntry()V
    .locals 2

    .prologue
    .line 2355
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 2358
    :goto_0
    return-void

    .line 2356
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private contentScrollBy(IIZ)V
    .locals 4
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"

    .prologue
    .line 1968
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1982
    :cond_0
    :goto_0
    return-void

    .line 1972
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1973
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v1, v2, p1, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1975
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_2

    .line 1976
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$6500(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    .line 1979
    :cond_2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private contentScrollTo(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1986
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1992
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 1993
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 2006
    :cond_0
    :goto_0
    return-void

    .line 1996
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1997
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 1999
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_2

    .line 2000
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$6500(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    .line 2003
    :cond_2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private contentSpawnScrollTo(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2010
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2016
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 2017
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 2030
    :cond_0
    :goto_0
    return-void

    .line 2020
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 2021
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 2023
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_2

    .line 2024
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$6500(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    .line 2027
    :cond_2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private destroySurface(Landroid/webkit/ViewManager$ChildView;)V
    .locals 0
    .parameter "childView"

    .prologue
    .line 2501
    invoke-virtual {p1}, Landroid/webkit/ViewManager$ChildView;->removeView()V

    .line 2502
    return-void
.end method

.method private didFirstLayout(Z)V
    .locals 3
    .parameter "standardLoad"

    .prologue
    const/4 v2, 0x0

    .line 2095
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 2097
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 2111
    :goto_0
    return-void

    .line 2099
    :cond_0
    if-nez p1, :cond_1

    iget v1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    if-lez v1, :cond_3

    :cond_1
    const/4 v1, 0x1

    move v0, v1

    .line 2100
    .local v0, updateRestoreState:Z
    :goto_1
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 2104
    if-nez v0, :cond_2

    .line 2105
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    .line 2109
    :cond_2
    iput v2, p0, Landroid/webkit/WebViewCore;->mRestoredScreenWidthScale:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    goto :goto_0

    .end local v0           #updateRestoreState:Z
    :cond_3
    move v0, v2

    .line 2099
    goto :goto_1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2418
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 8
    .parameter "libName"
    .parameter "clsName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v7, ")"

    const-string/jumbo v6, "webcore"

    .line 2424
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v3, :cond_0

    move-object v3, v5

    .line 2445
    :goto_0
    return-object v3

    .line 2428
    :cond_0
    invoke-static {v5}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v2

    .line 2430
    .local v2, pluginManager:Landroid/webkit/PluginManager;
    invoke-virtual {v2, p1}, Landroid/webkit/PluginManager;->getPluginsAPKName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2431
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2432
    const-string/jumbo v3, "webcore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to a plugin APK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 2433
    goto :goto_0

    .line 2437
    :cond_1
    :try_start_0
    invoke-virtual {v2, v1, p2}, Landroid/webkit/PluginManager;->getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 2438
    :catch_0
    move-exception v0

    .line 2439
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "webcore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find plugin classloader for the apk ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    move-object v3, v5

    .line 2445
    goto :goto_0

    .line 2440
    :catch_1
    move-exception v0

    .line 2441
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string/jumbo v3, "webcore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find plugin class ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") in the apk ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getUsedQuota()J
    .locals 8

    .prologue
    .line 1746
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v4

    .line 1747
    .local v4, webStorage:Landroid/webkit/WebStorage;
    invoke-virtual {v4}, Landroid/webkit/WebStorage;->getOriginsSync()Ljava/util/Collection;

    move-result-object v1

    .line 1749
    .local v1, origins:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/webkit/WebStorage$Origin;>;"
    if-nez v1, :cond_0

    .line 1750
    const-wide/16 v6, 0x0

    .line 1756
    :goto_0
    return-wide v6

    .line 1752
    :cond_0
    const-wide/16 v2, 0x0

    .line 1753
    .local v2, usedQuota:J
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebStorage$Origin;

    .line 1754
    .local v5, website:Landroid/webkit/WebStorage$Origin;
    invoke-virtual {v5}, Landroid/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_1

    .end local v5           #website:Landroid/webkit/WebStorage$Origin;
    :cond_1
    move-wide v6, v2

    .line 1756
    goto :goto_0
.end method

.method private hideFullScreenPlugin()V
    .locals 2

    .prologue
    .line 2463
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 2468
    :goto_0
    return-void

    .line 2466
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 203
    new-instance v0, Landroid/webkit/BrowserFrame;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    iget-object v5, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/BrowserFrame;-><init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettings;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 207
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V

    .line 209
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->createHandler()V

    .line 211
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->createHandler()V

    .line 213
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->createHandler()V

    .line 216
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$200(Landroid/webkit/WebViewCore$EventHub;)V

    .line 218
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/DnsResolver;->createDnsResolver(Landroid/content/Context;)Landroid/webkit/DnsResolver;

    .line 222
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    iget v2, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 230
    :cond_0
    return-void
.end method

.method private key(Landroid/view/KeyEvent;Z)V
    .locals 8
    .parameter "evt"
    .parameter "isDown"

    .prologue
    .line 1643
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1644
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 1646
    .local v2, unicodeChar:I
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1649
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 1652
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v6

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/webkit/WebViewCore;->nativeKey(IIIZZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_1

    .line 1655
    const/16 v0, 0x13

    if-lt v1, v0, :cond_2

    const/16 v0, 0x16

    if-gt v1, v0, :cond_2

    .line 1660
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1661
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1671
    :cond_1
    :goto_0
    return-void

    .line 1669
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
    .line 1635
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/BrowserFrame;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1636
    return-void
.end method

.method private native nativeClearContent()V
.end method

.method private native nativeClick(II)V
.end method

.method private native nativeCopyContentToPicture(Landroid/graphics/Picture;)V
.end method

.method private native nativeDeleteSelection(III)V
.end method

.method private native nativeDrawContent(Landroid/graphics/Canvas;I)Z
.end method

.method private native nativeDumpDomTree(Z)V
.end method

.method private native nativeDumpNavTree()V
.end method

.method private native nativeDumpRenderTree(Z)V
.end method

.method private native nativeDumpV8Counters()V
.end method

.method static native nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeFocusBoundsChanged()Z
.end method

.method private native nativeFreeMemory()V
.end method

.method private native nativeFullScreenPluginHidden(I)V
.end method

.method private native nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V
.end method

.method private native nativeGetContentMinPrefWidth()I
.end method

.method private native nativeHandleTouchEvent(IIII)Z
.end method

.method private native nativeHidePluginsDuringSmoothRotate()V
.end method

.method private native nativeKey(IIIZZZZ)Z
.end method

.method private native nativeMoveFocus(II)V
.end method

.method private native nativeMoveMouse(III)V
.end method

.method private native nativeMoveMouseIfLatest(IIII)V
.end method

.method private native nativePause()V
.end method

.method private native nativePictureReady()Z
.end method

.method private native nativeProvideVisitedHistory([Ljava/lang/String;)V
.end method

.method private native nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)Z
.end method

.method private native nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V
.end method

.method private native nativeReplaceTextfieldText(IILjava/lang/String;III)V
.end method

.method private native nativeRequestLabel(II)Ljava/lang/String;
.end method

.method private native nativeResume()V
.end method

.method private native nativeRetrieveAnchorText(II)Ljava/lang/String;
.end method

.method private native nativeRetrieveHref(II)Ljava/lang/String;
.end method

.method private native nativeSaveDocumentState(I)V
.end method

.method private native nativeScrollFocusedTextInput(FI)V
.end method

.method private native nativeSendListBoxChoice(I)V
.end method

.method private native nativeSendListBoxChoices([ZI)V
.end method

.method private native nativeSetBackgroundColor(I)V
.end method

.method private native nativeSetColorInversion(Z)V
.end method

.method private native nativeSetFocusControllerActive(Z)V
.end method

.method private native nativeSetGlobalBounds(IIII)V
.end method

.method private native nativeSetJsFlags(Ljava/lang/String;)V
.end method

.method private native nativeSetNewStorageLimit(J)V
.end method

.method private native nativeSetScrollOffset(III)V
.end method

.method private native nativeSetSelection(II)V
.end method

.method private native nativeSetSize(IIIFIIIIZ)V
.end method

.method private native nativeShowPluginsAfterSmoothRotate()V
.end method

.method private native nativeSplitContent()V
.end method

.method private native nativeTouchUp(IIIII)V
.end method

.method private native nativeUpdateFrameCache()V
.end method

.method private native nativeUpdateFrameCacheIfLoading()V
.end method

.method private native nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z
.end method

.method private needTouchEvents(Z)V
    .locals 4
    .parameter "need"

    .prologue
    const/4 v3, 0x0

    .line 2324
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2325
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x74

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2329
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 2325
    goto :goto_0
.end method

.method private openFileChooser()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 316
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->openFileChooser()Landroid/net/Uri;

    move-result-object v1

    .line 317
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    const-string v0, ""

    .line 338
    :goto_0
    return-object v0

    .line 322
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 328
    .local v6, cursor:Landroid/database/Cursor;
    const-string v7, ""

    .line 329
    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 331
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 335
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private native passToJs(ILjava/lang/String;IIZZZZ)V
.end method

.method public static pauseTimers()V
    .locals 2

    .prologue
    .line 258
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->pause()V

    .line 263
    return-void
.end method

.method static pauseUpdatePicture(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "core"

    .prologue
    .line 1904
    if-eqz p0, :cond_1

    .line 1905
    monitor-enter p0

    .line 1906
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 1907
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_0

    .line 1908
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v1, 0x82

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$6800(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 1910
    :cond_0
    monitor-exit p0

    .line 1913
    :cond_1
    return-void

    .line 1910
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static reducePriority()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1886
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1887
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1888
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1890
    return-void
.end method

.method private requestKeyboard(Z)V
    .locals 4
    .parameter "showKeyboard"

    .prologue
    const/4 v3, 0x0

    .line 2409
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2410
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2414
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 2410
    goto :goto_0
.end method

.method private requestKeyboardWithSelection(IIII)V
    .locals 3
    .parameter "pointer"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "textGeneration"

    .prologue
    .line 2399
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2400
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    new-instance v2, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v2, p2, p3}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2405
    :cond_0
    return-void
.end method

.method private requestListBox([Ljava/lang/String;[II)V
    .locals 1
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"

    .prologue
    .line 2390
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2391
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->requestListBox([Ljava/lang/String;[II)V

    .line 2394
    :cond_0
    return-void
.end method

.method private requestListBox([Ljava/lang/String;[I[I)V
    .locals 1
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"

    .prologue
    .line 2382
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2383
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->requestListBox([Ljava/lang/String;[I[I)V

    .line 2385
    :cond_0
    return-void
.end method

.method private restoreScale(I)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 2306
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2307
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    .line 2309
    :cond_0
    return-void
.end method

.method private restoreScreenWidthScale(I)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 2313
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2320
    :cond_0
    :goto_0
    return-void

    .line 2317
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2318
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredScreenWidthScale:I

    goto :goto_0
.end method

.method private restoreState(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 1931
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 1932
    .local v1, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    .line 1933
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1934
    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v4, v4, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebHistoryItem;->inflate(I)V

    .line 1933
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1936
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 1937
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v3, v3, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-static {v3, p1}, Landroid/webkit/WebBackForwardList;->restoreIndex(II)V

    .line 1938
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 1939
    return-void
.end method

.method static resumePriority()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1894
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1895
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1896
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1898
    return-void
.end method

.method public static resumeTimers()V
    .locals 2

    .prologue
    .line 269
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->resume()V

    .line 274
    return-void
.end method

.method static resumeUpdatePicture(Landroid/webkit/WebViewCore;)V
    .locals 1
    .parameter "core"

    .prologue
    .line 1916
    if-eqz p0, :cond_1

    .line 1917
    monitor-enter p0

    .line 1918
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 1919
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_0

    .line 1920
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 1922
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewCore;->contentDraw(Z)V

    .line 1924
    :cond_0
    monitor-exit p0

    .line 1926
    :cond_1
    return-void

    .line 1924
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendFindAgain()V
    .locals 2

    .prologue
    .line 2362
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 2365
    :goto_0
    return-void

    .line 2363
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7e

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private sendImmediateRepaint()V
    .locals 2

    .prologue
    .line 2067
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    if-nez v0, :cond_0

    .line 2068
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    .line 2069
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7b

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2072
    :cond_0
    return-void
.end method

.method private sendNotifyProgressFinished()V
    .locals 2

    .prologue
    const/16 v1, 0x6e

    .line 2034
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    .line 2037
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->removeMessages(I)V

    .line 2039
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    .line 2041
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewCore;->contentDraw(Z)V

    .line 2042
    return-void
.end method

.method private sendUpdateTextEntry()V
    .locals 2

    .prologue
    .line 1737
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1741
    :cond_0
    return-void
.end method

.method private sendViewInvalidate(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2049
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2050
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x75

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2054
    :cond_0
    return-void
.end method

.method private setRootLayer(I)V
    .locals 3
    .parameter "layer"

    .prologue
    .line 2076
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2077
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2081
    :cond_0
    return-void
.end method

.method private setScrollbarModes(II)V
    .locals 2
    .parameter "hMode"
    .parameter "vMode"

    .prologue
    .line 2549
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 2554
    :goto_0
    return-void

    .line 2552
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private native setViewportSettingsFromNative()V
.end method

.method private setupViewport(Z)V
    .locals 10
    .parameter "updateRestoreState"

    .prologue
    .line 2126
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->setViewportSettingsFromNative()V

    .line 2129
    const/high16 v0, 0x3f80

    .line 2130
    .local v0, adjust:F
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a

    .line 2131
    sget v6, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    const/16 v7, 0x64

    if-eq v6, v7, :cond_0

    .line 2132
    sget v6, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float v0, v6, v7

    .line 2138
    :cond_0
    :goto_0
    const/high16 v6, 0x42c8

    mul-float/2addr v6, v0

    float-to-int v2, v6

    .line 2140
    .local v2, defaultScale:I
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v6, :cond_1

    .line 2141
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2143
    :cond_1
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v6, :cond_2

    .line 2144
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2146
    :cond_2
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v6, :cond_3

    .line 2147
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2151
    :cond_3
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v6, :cond_4

    .line 2152
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-nez v6, :cond_4

    .line 2153
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2156
    :cond_4
    iget-boolean v6, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    if-nez v6, :cond_5

    .line 2157
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2158
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2159
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2161
    :cond_5
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-le v6, v7, :cond_6

    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-eqz v6, :cond_6

    .line 2163
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2165
    :cond_6
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v6, :cond_7

    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ge v6, v7, :cond_7

    .line 2167
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2169
    :cond_7
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-gez v6, :cond_8

    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ne v6, v2, :cond_8

    .line 2170
    const/4 v6, 0x0

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 2174
    :cond_8
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-eqz v6, :cond_b

    if-nez p1, :cond_b

    .line 2175
    new-instance v3, Landroid/webkit/WebViewCore$RestoreState;

    invoke-direct {v3}, Landroid/webkit/WebViewCore$RestoreState;-><init>()V

    .line 2176
    .local v3, restoreState:Landroid/webkit/WebViewCore$RestoreState;
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    iput v6, v3, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    .line 2177
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    iput v6, v3, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    .line 2178
    iput v0, v3, Landroid/webkit/WebViewCore$RestoreState;->mDefaultScale:F

    .line 2180
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/webkit/WebViewCore$RestoreState;->mMobileSite:Z

    .line 2182
    const/4 v6, 0x0

    iput v6, v3, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    .line 2183
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v6, v6, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x6d

    invoke-static {v6, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2302
    .end local v3           #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    :cond_9
    :goto_1
    return-void

    .line 2134
    .end local v2           #defaultScale:I
    :cond_a
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    if-lez v6, :cond_0

    .line 2135
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    int-to-float v7, v7

    div-float v0, v6, v7

    goto/16 :goto_0

    .line 2192
    .restart local v2       #defaultScale:I
    :cond_b
    iget v4, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2193
    .local v4, viewportWidth:I
    if-nez v4, :cond_d

    .line 2197
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    .line 2198
    .local v5, webViewWidth:I
    int-to-float v6, v5

    div-float/2addr v6, v0

    float-to-int v4, v6

    .line 2199
    if-nez v4, :cond_c

    .line 2200
    const-string/jumbo v6, "webcore"

    const-string v7, "Can\'t get the viewWidth after the first layout"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    :cond_c
    :goto_2
    new-instance v6, Landroid/webkit/WebViewCore$RestoreState;

    invoke-direct {v6}, Landroid/webkit/WebViewCore$RestoreState;-><init>()V

    iput-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    .line 2206
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    .line 2207
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    .line 2208
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iput v0, v6, Landroid/webkit/WebViewCore$RestoreState;->mDefaultScale:F

    .line 2209
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    .line 2210
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mScrollY:I

    .line 2211
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v7, :cond_e

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mMobileSite:Z

    .line 2212
    iget v6, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    if-lez v6, :cond_10

    .line 2213
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    int-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    .line 2214
    iget v6, p0, Landroid/webkit/WebViewCore;->mRestoredScreenWidthScale:I

    if-lez v6, :cond_f

    .line 2215
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mRestoredScreenWidthScale:I

    int-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    .line 2234
    :goto_4
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-boolean v6, v6, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v6, :cond_13

    .line 2240
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    const/4 v7, 0x0

    iput v7, v6, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 2243
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 2244
    .local v1, data:Landroid/webkit/WebView$ViewSizeData;
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget v6, v6, Landroid/webkit/WebView;->mLastWidthSent:I

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 2245
    const/4 v6, 0x0

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 2248
    iget v6, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 2249
    const/high16 v6, -0x4080

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2250
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 2251
    const/4 v6, 0x0

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 2258
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v7, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore$EventHub;->access$6800(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2259
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v7, 0x0

    const/16 v8, 0x69

    invoke-static {v7, v8, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore$EventHub;->access$6600(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2203
    .end local v1           #data:Landroid/webkit/WebView$ViewSizeData;
    .end local v5           #webViewWidth:I
    :cond_d
    int-to-float v6, v4

    iget v7, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .restart local v5       #webViewWidth:I
    goto/16 :goto_2

    .line 2211
    :cond_e
    const/4 v7, 0x0

    goto :goto_3

    .line 2218
    :cond_f
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, v7, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    goto :goto_4

    .line 2221
    :cond_10
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v6, :cond_11

    .line 2222
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v8, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v8, v8

    const/high16 v9, 0x42c8

    div-float/2addr v8, v9

    iput v8, v7, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    iput v8, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    goto :goto_4

    .line 2224
    :cond_11
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-lez v6, :cond_12

    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-ge v6, v5, :cond_12

    .line 2225
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    int-to-float v8, v5

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, v7, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    iput v8, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    goto :goto_4

    .line 2228
    :cond_12
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iput v0, v6, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    .line 2230
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    const/4 v7, 0x0

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    goto/16 :goto_4

    .line 2261
    :cond_13
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2262
    if-nez v4, :cond_14

    .line 2265
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    const/4 v7, 0x0

    iput v7, v6, Landroid/webkit/WebView;->mLastWidthSent:I

    goto/16 :goto_1

    .line 2267
    :cond_14
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 2271
    .restart local v1       #data:Landroid/webkit/WebView$ViewSizeData;
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v6, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_16

    iget v6, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    if-lez v6, :cond_15

    iget v6, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    :goto_5
    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2282
    int-to-float v6, v5

    iget v7, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 2288
    iget v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    if-nez v6, :cond_17

    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    :goto_6
    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 2291
    int-to-float v6, v5

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, v7, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 2293
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 2294
    const/4 v6, 0x0

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 2297
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v7, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore$EventHub;->access$6800(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2298
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v7, 0x0

    const/16 v8, 0x69

    invoke-static {v7, v8, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore$EventHub;->access$6600(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2271
    :cond_15
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v6, v6, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    goto :goto_5

    :cond_16
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v6, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    goto :goto_5

    .line 2288
    :cond_17
    iget v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    iget v7, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    mul-int/2addr v6, v7

    div-int/2addr v6, v4

    goto :goto_6
.end method

.method private showFullScreenPlugin(Landroid/webkit/ViewManager$ChildView;I)V
    .locals 3
    .parameter "childView"
    .parameter "npp"

    .prologue
    .line 2451
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 2459
    :goto_0
    return-void

    .line 2455
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2456
    .local v0, message:Landroid/os/Message;
    iget-object v1, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2457
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2458
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private showRect(IIIIIIFFFF)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "contentWidth"
    .parameter "contentHeight"
    .parameter "xPercentInDoc"
    .parameter "xPercentInView"
    .parameter "yPercentInDoc"
    .parameter "yPercentInView"

    .prologue
    .line 2521
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 2522
    new-instance v0, Landroid/webkit/WebViewCore$ShowRectData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ShowRectData;-><init>()V

    .line 2523
    .local v0, data:Landroid/webkit/WebViewCore$ShowRectData;
    iput p1, v0, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    .line 2524
    iput p2, v0, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    .line 2525
    iput p3, v0, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    .line 2526
    iput p4, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    .line 2527
    iput p5, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    .line 2528
    iput p6, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    .line 2529
    iput p7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    .line 2530
    iput p8, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    .line 2531
    iput p9, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    .line 2532
    iput p10, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    .line 2533
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2536
    .end local v0           #data:Landroid/webkit/WebViewCore$ShowRectData;
    :cond_0
    return-void
.end method

.method static supportsMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 285
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSurface(Landroid/webkit/ViewManager$ChildView;IIII)V
    .locals 0
    .parameter "childView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2497
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    .line 2498
    return-void
.end method

.method private updateTextSelection(IIII)V
    .locals 3
    .parameter "pointer"
    .parameter "start"
    .parameter "end"
    .parameter "textGeneration"

    .prologue
    .line 2346
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2347
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    new-instance v2, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v2, p2, p3}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2351
    :cond_0
    return-void
.end method

.method private updateTextfield(IZLjava/lang/String;I)V
    .locals 3
    .parameter "ptr"
    .parameter "changeToPassword"
    .parameter "text"
    .parameter "textGeneration"

    .prologue
    .line 2334
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 2335
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-static {v1, v2, p1, p4, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2338
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2339
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2341
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private updateViewport()V
    .locals 1

    .prologue
    .line 2119
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2120
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 2122
    :cond_0
    return-void
.end method

.method private viewSizeChanged(IIIFIIZ)V
    .locals 11
    .parameter "w"
    .parameter "h"
    .parameter "textwrapWidth"
    .parameter "scale"
    .parameter "anchorX"
    .parameter "anchorY"
    .parameter "ignoreHeight"

    .prologue
    .line 1685
    if-nez p1, :cond_0

    .line 1686
    const-string/jumbo v0, "webcore"

    const-string/jumbo v1, "skip viewSizeChanged as w is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :goto_0
    return-void

    .line 1689
    :cond_0
    move v1, p1

    .line 1690
    .local v1, width:I
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1691
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 1692
    .end local v1           #width:I
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v0, v1, :cond_3

    .line 1694
    const/16 v1, 0x320

    .line 1718
    .restart local v1       #width:I
    :cond_1
    :goto_1
    if-ne v1, p1, :cond_6

    move v2, p2

    :goto_2
    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p1

    move v6, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/webkit/WebViewCore;->nativeSetSize(IIIFIIIIZ)V

    .line 1721
    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-nez v0, :cond_7

    const/4 v0, 0x1

    move v10, v0

    .line 1722
    .local v10, needInvalidate:Z
    :goto_3
    iput p1, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 1723
    iput p2, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 1724
    iput p4, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 1725
    if-eqz v10, :cond_2

    .line 1730
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewCore;->contentDraw(Z)V

    .line 1732
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x75

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .end local v1           #width:I
    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$6500(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    .line 1708
    .end local v10           #needInvalidate:Z
    :cond_3
    sget v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    const/16 v1, 0x320

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .restart local v1       #width:I
    goto :goto_1

    .line 1712
    .end local v1           #width:I
    :cond_4
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-lez v0, :cond_5

    .line 1713
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .restart local v1       #width:I
    goto :goto_1

    .line 1715
    .end local v1           #width:I
    :cond_5
    move v1, p3

    .restart local v1       #width:I
    goto :goto_1

    .line 1718
    :cond_6
    int-to-float v0, v1

    int-to-float v2, p2

    mul-float/2addr v0, v2

    int-to-float v2, p1

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v2, v0

    goto :goto_2

    .line 1721
    :cond_7
    const/4 v0, 0x0

    move v10, v0

    goto :goto_3
.end method

.method private webkitDraw()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1798
    iput-boolean v5, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 1799
    new-instance v0, Landroid/webkit/WebViewCore$DrawData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$DrawData;-><init>()V

    .line 1801
    .local v0, draw:Landroid/webkit/WebViewCore$DrawData;
    iget-object v1, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    iget-object v2, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebViewCore;->nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1836
    :cond_0
    :goto_0
    return-void

    .line 1806
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1808
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-static {v1}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->webkitDraw(Ljava/lang/Object;)V

    .line 1812
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeFocusBoundsChanged()Z

    move-result v1

    iput-boolean v1, v0, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    .line 1813
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    iget v3, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Landroid/webkit/WebViewCore$DrawData;->mViewPoint:Landroid/graphics/Point;

    .line 1814
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1815
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    const/16 v1, 0x320

    :goto_1
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    .line 1821
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    if-eqz v1, :cond_3

    .line 1822
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iput-object v1, v0, Landroid/webkit/WebViewCore$DrawData;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    .line 1823
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    .line 1826
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1828
    iget v1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    if-nez v1, :cond_4

    iget v1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    if-eqz v1, :cond_0

    .line 1830
    :cond_4
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    iget v3, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    iget v4, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1833
    iput v5, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    iput v5, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    goto :goto_0

    .line 1815
    :cond_5
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v1, :cond_6

    iget v1, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    goto :goto_1

    :cond_6
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_1
.end method


# virtual methods
.method protected addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"
    .parameter "msgLevel"

    .prologue
    .line 297
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/CallbackProxy;->addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V

    .line 298
    return-void
.end method

.method contentDraw(Z)V
    .locals 3
    .parameter "paintHeader"

    .prologue
    .line 1950
    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-nez v0, :cond_1

    .line 1964
    :cond_0
    :goto_0
    return-void

    .line 1953
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1958
    :cond_2
    monitor-enter p0

    .line 1959
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_3

    monitor-exit p0

    goto :goto_0

    .line 1963
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1960
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 1961
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    if-eqz v0, :cond_4

    monitor-exit p0

    goto :goto_0

    .line 1962
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x82

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$6500(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1963
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized copyContentPicture()Landroid/graphics/Picture;
    .locals 2

    .prologue
    .line 1877
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 1878
    .local v0, result:Landroid/graphics/Picture;
    iget v1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-eqz v1, :cond_0

    .line 1879
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->nativeCopyContentToPicture(Landroid/graphics/Picture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1881
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1877
    .end local v0           #result:Landroid/graphics/Picture;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method destroy()V
    .locals 6

    .prologue
    .line 1592
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    monitor-enter v2

    .line 1598
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v4, 0x6e

    #calls: Landroid/webkit/WebViewCore$EventHub;->hasMessages(I)Z
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$7000(Landroid/webkit/WebViewCore$EventHub;I)Z

    move-result v1

    .line 1599
    .local v1, hasResume:Z
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v4, 0x6d

    #calls: Landroid/webkit/WebViewCore$EventHub;->hasMessages(I)Z
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$7000(Landroid/webkit/WebViewCore$EventHub;I)Z

    move-result v0

    .line 1600
    .local v0, hasPause:Z
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages()V
    invoke-static {v3}, Landroid/webkit/WebViewCore$EventHub;->access$6900(Landroid/webkit/WebViewCore$EventHub;)V

    .line 1601
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v4, 0x0

    const/16 v5, 0xc8

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$6600(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1603
    if-eqz v0, :cond_0

    .line 1604
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v4, 0x0

    const/16 v5, 0x6d

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$6600(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1607
    :cond_0
    if-eqz v1, :cond_1

    .line 1608
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v4, 0x0

    const/16 v5, 0x6e

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$6600(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1611
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->blockMessages()V
    invoke-static {v3}, Landroid/webkit/WebViewCore$EventHub;->access$7100(Landroid/webkit/WebViewCore$EventHub;)V

    .line 1612
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    invoke-static {}, Landroid/webkit/DnsResolver;->getInstance()Landroid/webkit/DnsResolver;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1616
    invoke-static {}, Landroid/webkit/DnsResolver;->getInstance()Landroid/webkit/DnsResolver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/DnsResolver;->destroyDnsResolver()V

    .line 1620
    :cond_2
    return-void

    .line 1612
    .end local v0           #hasPause:Z
    .end local v1           #hasResume:Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method drawContentPicture(Landroid/graphics/Canvas;IZZ)V
    .locals 3
    .parameter "canvas"
    .parameter "color"
    .parameter "animatingZoom"
    .parameter "animatingScroll"

    .prologue
    .line 1856
    const/4 v0, 0x0

    .line 1857
    .local v0, df:Landroid/graphics/DrawFilter;
    if-eqz p3, :cond_2

    .line 1858
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 1862
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1863
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getInvertColor()Z

    move-result v2

    invoke-direct {p0, v2}, Landroid/webkit/WebViewCore;->nativeSetColorInversion(Z)V

    .line 1864
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeDrawContent(Landroid/graphics/Canvas;I)Z

    move-result v1

    .line 1865
    .local v1, tookTooLong:Z
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1866
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    if-nez v2, :cond_1

    .line 1867
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    .line 1868
    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1870
    :cond_1
    return-void

    .line 1859
    .end local v1           #tookTooLong:Z
    :cond_2
    if-eqz p4, :cond_0

    .line 1860
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mScrollFilter:Landroid/graphics/DrawFilter;

    goto :goto_0
.end method

.method protected exceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 10
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"

    .prologue
    .line 356
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v7

    new-instance v9, Landroid/webkit/WebViewCore$1;

    invoke-direct {v9, p0}, Landroid/webkit/WebViewCore$1;-><init>(Landroid/webkit/WebViewCore;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/CallbackProxy;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 363
    return-void
.end method

.method protected geolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsHidePrompt()V

    .line 413
    return-void
.end method

.method protected geolocationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 2
    .parameter "origin"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v1, Landroid/webkit/WebViewCore$4;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewCore$4;-><init>(Landroid/webkit/WebViewCore;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 406
    return-void
.end method

.method getBrowserFrame()Landroid/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 2084
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method initializeSubwindow()V
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    .line 240
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 241
    return-void
.end method

.method protected jsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 305
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method protected jsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 421
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected jsInterrupt()Z
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method protected jsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"

    .prologue
    .line 432
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jsUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 443
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized pictureReady()Z
    .locals 1

    .prologue
    .line 1873
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePictureReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected populateVisitedLinks()V
    .locals 2

    .prologue
    .line 380
    new-instance v0, Landroid/webkit/WebViewCore$3;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewCore$3;-><init>(Landroid/webkit/WebViewCore;)V

    .line 385
    .local v0, callback:Landroid/webkit/ValueCallback;
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v0}, Landroid/webkit/CallbackProxy;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 386
    return-void
.end method

.method protected reachedMaxAppCacheSize(J)V
    .locals 6
    .parameter "spaceNeeded"

    .prologue
    .line 371
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v3

    new-instance v5, Landroid/webkit/WebViewCore$2;

    invoke-direct {v5, p0}, Landroid/webkit/WebViewCore$2;-><init>(Landroid/webkit/WebViewCore;)V

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/CallbackProxy;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 377
    return-void
.end method

.method removeMessages()V
    .locals 1

    .prologue
    .line 1581
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$6900(Landroid/webkit/WebViewCore$EventHub;)V

    .line 1582
    return-void
.end method

.method removeMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 1577
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$6800(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 1578
    return-void
.end method

.method sendMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 1542
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$6500(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1543
    return-void
.end method

.method sendMessage(II)V
    .locals 3
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 1551
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$6500(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1552
    return-void
.end method

.method sendMessage(III)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1555
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$6500(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1556
    return-void
.end method

.method sendMessage(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1564
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$6500(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1565
    return-void
.end method

.method sendMessage(IILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "obj"

    .prologue
    .line 1560
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$6500(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1561
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1546
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$6500(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1547
    return-void
.end method

.method sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1538
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$6500(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1539
    return-void
.end method

.method sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1568
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$6600(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1570
    return-void
.end method

.method sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 1573
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v0, v1, p3, p4}, Landroid/webkit/WebViewCore$EventHub;->access$6700(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    .line 1574
    return-void
.end method

.method signalRepaintDone()V
    .locals 1

    .prologue
    .line 2062
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    .line 2063
    return-void
.end method

.method stopLoading()V
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 1529
    :cond_0
    return-void
.end method
