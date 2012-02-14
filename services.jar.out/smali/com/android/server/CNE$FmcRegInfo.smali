.class Lcom/android/server/CNE$FmcRegInfo;
.super Ljava/lang/Object;
.source "CNE.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmcRegInfo"
.end annotation


# instance fields
.field protected actionStop:Z

.field protected dsAvail:Z

.field protected enabled:Z

.field protected lastSendStatus:I

.field private mBinder:Landroid/os/IBinder;

.field mListener:Landroid/net/IFmcEventListener;

.field protected ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/CNE;


# direct methods
.method public constructor <init>(Lcom/android/server/CNE;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter "binder"

    .prologue
    const/4 v2, 0x0

    .line 2391
    iput-object p1, p0, Lcom/android/server/CNE$FmcRegInfo;->this$0:Lcom/android/server/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2392
    iput-object p2, p0, Lcom/android/server/CNE$FmcRegInfo;->mBinder:Landroid/os/IBinder;

    .line 2393
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/CNE$FmcRegInfo;->mListener:Landroid/net/IFmcEventListener;

    .line 2394
    iput-boolean v2, p0, Lcom/android/server/CNE$FmcRegInfo;->enabled:Z

    .line 2395
    iput-boolean v2, p0, Lcom/android/server/CNE$FmcRegInfo;->actionStop:Z

    .line 2396
    iput-boolean v2, p0, Lcom/android/server/CNE$FmcRegInfo;->dsAvail:Z

    .line 2397
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/CNE$FmcRegInfo;->ssid:Ljava/lang/String;

    .line 2398
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/CNE$FmcRegInfo;->lastSendStatus:I

    .line 2400
    iget-object v1, p0, Lcom/android/server/CNE$FmcRegInfo;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 2401
    invoke-static {p2}, Landroid/net/IFmcEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IFmcEventListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/CNE$FmcRegInfo;->mListener:Landroid/net/IFmcEventListener;

    .line 2404
    :try_start_0
    iget-object v1, p0, Lcom/android/server/CNE$FmcRegInfo;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2410
    :cond_0
    :goto_0
    return-void

    .line 2405
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2406
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/CNE$FmcRegInfo;->binderDied()V

    .line 2407
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$2700(Lcom/android/server/CNE$FmcRegInfo;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/android/server/CNE$FmcRegInfo;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 2413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/CNE$FmcRegInfo;->mListener:Landroid/net/IFmcEventListener;

    .line 2415
    return-void
.end method
