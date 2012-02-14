.class Landroid/media/AudioService$FocusStackEntry;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FocusStackEntry"
.end annotation


# instance fields
.field public mClientId:Ljava/lang/String;

.field public mFocusChangeType:I

.field public mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field public mIsTransportControlReceiver:Z

.field public mSourceRef:Landroid/os/IBinder;

.field public mStreamType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2296
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService$FocusStackEntry;->mStreamType:I

    .line 2297
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService$FocusStackEntry;->mIsTransportControlReceiver:Z

    .line 2298
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 2299
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    .line 2304
    return-void
.end method

.method public constructor <init>(IIZLandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .parameter "streamType"
    .parameter "duration"
    .parameter "isTransportControlReceiver"
    .parameter "afl"
    .parameter "source"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 2307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2296
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService$FocusStackEntry;->mStreamType:I

    .line 2297
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService$FocusStackEntry;->mIsTransportControlReceiver:Z

    .line 2298
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 2299
    iput-object v1, p0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    .line 2308
    iput p1, p0, Landroid/media/AudioService$FocusStackEntry;->mStreamType:I

    .line 2309
    iput-boolean p3, p0, Landroid/media/AudioService$FocusStackEntry;->mIsTransportControlReceiver:Z

    .line 2310
    iput-object p4, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 2311
    iput-object p5, p0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    .line 2312
    iput-object p6, p0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    .line 2313
    iput p2, p0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    .line 2314
    return-void
.end method
