.class public Landroid/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field public static final KEY_POTTER:Ljava/lang/String; = "ro_videoplay_potter"

.field public static final SETTING_INFOS_POTTER:Ljava/lang/String; = "setting_infos_potter"

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final STATE_RESUME:I = 0x7

.field private static final STATE_SUSPEND:I = 0x6

.field private static final STATE_SUSPEND_UNSUPPORTED:I = 0x8

.field private static final SUPPROT_SUBTITLE_CONFIG:Z


# instance fields
.field private final ACTION_SUBTITLE_COMMAND:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private isPotter:Ljava/lang/Boolean;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInSeekState:Z

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStateWhenSuspended:I

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "ro.config.hw_subtitle_support"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/VideoView;->SUPPROT_SUBTITLE_CONFIG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 56
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 79
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 80
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 83
    iput-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 84
    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 104
    const-string v0, "action_mkv_subtitle_command"

    iput-object v0, p0, Landroid/widget/VideoView;->ACTION_SUBTITLE_COMMAND:Ljava/lang/String;

    .line 112
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/VideoView;->isPotter:Ljava/lang/Boolean;

    .line 362
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 373
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 448
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 462
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 515
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 523
    iput-boolean v1, p0, Landroid/widget/VideoView;->mIsInSeekState:Z

    .line 529
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 575
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 117
    iget-object v0, p0, Landroid/widget/VideoView;->isPotter:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->initVideoView(Landroid/content/Context;)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    iget-object v0, p0, Landroid/widget/VideoView;->isPotter:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->initVideoView(Landroid/content/Context;)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const-string v1, "VideoView"

    iput-object v1, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 79
    iput v3, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 80
    iput v3, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 83
    iput-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 84
    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 104
    const-string v1, "action_mkv_subtitle_command"

    iput-object v1, p0, Landroid/widget/VideoView;->ACTION_SUBTITLE_COMMAND:Ljava/lang/String;

    .line 112
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/VideoView;->isPotter:Ljava/lang/Boolean;

    .line 362
    new-instance v1, Landroid/widget/VideoView$1;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 373
    new-instance v1, Landroid/widget/VideoView$2;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 448
    new-instance v1, Landroid/widget/VideoView$3;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 462
    new-instance v1, Landroid/widget/VideoView$4;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 515
    new-instance v1, Landroid/widget/VideoView$5;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 523
    iput-boolean v3, p0, Landroid/widget/VideoView;->mIsInSeekState:Z

    .line 529
    new-instance v1, Landroid/widget/VideoView$6;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 575
    new-instance v1, Landroid/widget/VideoView$7;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 139
    const-string/jumbo v1, "setting_infos_potter"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    .local v0, setting_potter:Landroid/content/SharedPreferences;
    const-string v1, "ro_videoplay_potter"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/VideoView;->isPotter:Ljava/lang/Boolean;

    .line 141
    iget-object v1, p0, Landroid/widget/VideoView;->isPotter:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->initVideoView(Landroid/content/Context;)V

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1002(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$102(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/VideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1202(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Landroid/widget/VideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1300(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/VideoView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/VideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/VideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1902(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/widget/VideoView;->mIsInSeekState:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/VideoView;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$202(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Landroid/widget/VideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$2100(Landroid/widget/VideoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$2200(Landroid/widget/VideoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$302(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$402(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$502(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 353
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 355
    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 357
    .local v0, anchorView:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 358
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 360
    .end local v0           #anchorView:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 355
    goto :goto_0
.end method

.method private getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .parameter "mURI"

    .prologue
    .line 867
    if-eqz p1, :cond_8

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 870
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 872
    .local v12, result:Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    const/4 v6, 0x0

    .line 875
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/widget/VideoView;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 876
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    const-string v0, "fn"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 881
    .local v10, index:I
    const/4 v0, -0x1

    if-eq v10, v0, :cond_3

    .line 882
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 891
    .end local v10           #index:I
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 892
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 896
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    if-eqz v12, :cond_2

    const-string v0, ""

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 898
    const-string v0, "?"

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 899
    .local v8, end:I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_5

    .line 900
    const-string v0, "/"

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 901
    .local v13, start:I
    add-int/lit8 v0, v13, 0x1

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .end local v8           #end:I
    .end local v13           #start:I
    :cond_2
    :goto_2
    move-object v0, v12

    .line 923
    .end local v12           #result:Ljava/lang/String;
    :goto_3
    return-object v0

    .line 884
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #index:I
    .restart local v12       #result:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto :goto_0

    .line 888
    .end local v10           #index:I
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 889
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 891
    if-eqz v6, :cond_1

    goto :goto_1

    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 892
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 891
    :cond_4
    throw v0

    .line 904
    .end local v6           #cursor:Landroid/database/Cursor;
    .restart local v8       #end:I
    :cond_5
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    iget-boolean v0, v0, Landroid/widget/MediaController;->mIsDrm:Z

    if-eqz v0, :cond_7

    .line 905
    const-string v0, "/"

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 906
    .local v11, last:I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_6

    .line 907
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 909
    :cond_6
    const-string v0, "_"

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 910
    .local v9, endIndex:I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_2

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dcf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 914
    .end local v9           #endIndex:I
    .end local v11           #last:I
    :cond_7
    const-string v0, "/"

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 915
    .restart local v11       #last:I
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 923
    .end local v8           #end:I
    .end local v11           #last:I
    .end local v12           #result:Ljava/lang/String;
    :cond_8
    const-string v0, ""

    goto :goto_3
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    iput v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 202
    iput v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 203
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 204
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 205
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 206
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 207
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 208
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 209
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 210
    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    iput v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 214
    iput v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 215
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 216
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 217
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 218
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 219
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 220
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 221
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/VideoView;->mContentResolver:Landroid/content/ContentResolver;

    .line 223
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 847
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eq v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const-string v10, "Unable to open content: "

    .line 274
    iget-object v3, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v3, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, i:Landroid/content/Intent;
    const-string v3, "command"

    const-string v4, "pause"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v3, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 286
    invoke-direct {p0, v8}, Landroid/widget/VideoView;->release(Z)V

    .line 288
    :try_start_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 295
    sget-boolean v3, Landroid/widget/VideoView;->SUPPROT_SUBTITLE_CONFIG:Z

    if-eqz v3, :cond_2

    .line 296
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 297
    .local v2, mkvIntent:Landroid/content/Intent;
    const-string v3, "action_mkv_subtitle_command"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string/jumbo v3, "subtitle_command"

    const-string v4, "media_player_init_ok"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object v3, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 303
    .end local v2           #mkvIntent:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 304
    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 305
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/VideoView;->mDuration:I

    .line 306
    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 307
    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 308
    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 310
    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/widget/VideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 312
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 313
    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 314
    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 315
    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 316
    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 317
    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 320
    const/4 v3, 0x1

    iput v3, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 321
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 322
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 323
    .local v0, ex:Ljava/io/IOException;
    iget-object v3, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open content: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    iput v7, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 325
    iput v7, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 326
    iget-object v3, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v4, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v3, v4, v9, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 328
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 329
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open content: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    iput v7, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 331
    iput v7, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 332
    iget-object v3, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v4, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v3, v4, v9, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 2
    .parameter "cleartargetstate"

    .prologue
    const/4 v1, 0x0

    .line 641
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 643
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 645
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 646
    if-eqz p1, :cond_0

    .line 647
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 650
    :cond_0
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 707
    :goto_0
    return-void

    .line 705
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 854
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 858
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 862
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 841
    iget v0, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 843
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 802
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 805
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 790
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 792
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 798
    :goto_0
    return v0

    .line 794
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 795
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    goto :goto_0

    .line 797
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 798
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    goto :goto_0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 836
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsInSeekState:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 671
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_1

    const/16 v1, 0x52

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    move v0, v2

    .line 678
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_4

    .line 679
    const/16 v1, 0x4f

    if-eq p1, v1, :cond_0

    const/16 v1, 0x55

    if-ne p1, v1, :cond_3

    .line 681
    :cond_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 683
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    :goto_1
    move v1, v2

    .line 698
    :goto_2
    return v1

    .line 671
    .end local v0           #isKeyCodeSupported:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 685
    .restart local v0       #isKeyCodeSupported:Z
    :cond_2
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 686
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 689
    :cond_3
    const/16 v1, 0x56

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 691
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 692
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 698
    :cond_4
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_2

    .line 694
    :cond_5
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 152
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 153
    .local v1, width:I
    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 154
    .local v0, height:I
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 155
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 157
    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 168
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    .line 169
    return-void

    .line 158
    :cond_1
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 160
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 654
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 655
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 657
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 662
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 663
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 665
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 732
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 733
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 740
    sget-boolean v1, Landroid/widget/VideoView;->SUPPROT_SUBTITLE_CONFIG:Z

    if-eqz v1, :cond_0

    .line 741
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 742
    .local v0, mkvIntent:Landroid/content/Intent;
    const-string v1, "action_mkv_subtitle_command"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    const-string/jumbo v1, "subtitle_command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    iget-object v1, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 748
    .end local v0           #mkvIntent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 749
    iput v3, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 752
    :cond_1
    iput v3, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 753
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 172
    move v0, p1

    .line 173
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 174
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 176
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 197
    :goto_0
    return v0

    .line 181
    :sswitch_0
    move v0, p1

    .line 182
    goto :goto_0

    .line 189
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 190
    goto :goto_0

    .line 194
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 176
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public resume()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 770
    iget-object v0, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-ne v0, v1, :cond_1

    .line 771
    const/4 v0, 0x7

    iput v0, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-ne v0, v1, :cond_3

    .line 775
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->resume()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    iget v0, p0, Landroid/widget/VideoView;->mStateWhenSuspended:I

    iput v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 777
    iget v0, p0, Landroid/widget/VideoView;->mStateWhenSuspended:I

    iput v0, p0, Landroid/widget/VideoView;->mTargetState:I

    goto :goto_0

    .line 779
    :cond_2
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string v1, "Unable to resume video"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 783
    :cond_3
    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 784
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 3
    .parameter "msec"

    .prologue
    .line 810
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/VideoView;->mIsInSeekState:Z

    .line 812
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 813
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 820
    sget-boolean v1, Landroid/widget/VideoView;->SUPPROT_SUBTITLE_CONFIG:Z

    if-eqz v1, :cond_0

    .line 821
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 822
    .local v0, mkvIntent:Landroid/content/Intent;
    const-string v1, "action_mkv_subtitle_command"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    const-string/jumbo v1, "subtitle_command"

    const-string v2, "seekTo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    iget-object v1, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 829
    .end local v0           #mkvIntent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 833
    :goto_0
    return-void

    .line 831
    :cond_1
    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 339
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 342
    :cond_0
    iput-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 344
    iget-object v0, p0, Landroid/widget/VideoView;->isPotter:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/widget/VideoView;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setFileName(Ljava/lang/String;)V

    .line 349
    :cond_1
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V

    .line 350
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 559
    iput-object p1, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 560
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 572
    iput-object p1, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 573
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 548
    iput-object p1, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 549
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 227
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 228
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 232
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 239
    iput-object p2, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 241
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 242
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    .line 243
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    .line 244
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 710
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 717
    sget-boolean v1, Landroid/widget/VideoView;->SUPPROT_SUBTITLE_CONFIG:Z

    if-eqz v1, :cond_0

    .line 718
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 719
    .local v0, mkvIntent:Landroid/content/Intent;
    const-string v1, "action_mkv_subtitle_command"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string/jumbo v1, "subtitle_command"

    const-string/jumbo v2, "start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    iget-object v1, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 725
    .end local v0           #mkvIntent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 726
    iput v3, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 728
    :cond_1
    iput v3, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 729
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 249
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 251
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 252
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 254
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 756
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->suspend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    iget v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    iput v0, p0, Landroid/widget/VideoView;->mStateWhenSuspended:I

    .line 759
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 760
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/VideoView;->release(Z)V

    .line 763
    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 764
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string v1, "Unable to suspend video. Release MediaPlayer."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
