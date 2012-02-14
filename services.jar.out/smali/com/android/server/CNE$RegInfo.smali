.class Lcom/android/server/CNE$RegInfo;
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
    name = "RegInfo"
.end annotation


# instance fields
.field activeRat:I

.field betterRat:I

.field private cbInfo:Lcom/android/server/CNE$CallbackInfo;

.field compatibleRatsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/CNE$RatInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBinder:Landroid/os/IBinder;

.field private notificationsSent:I

.field private pid:I

.field private regId:I

.field private role:I

.field final synthetic this$0:Lcom/android/server/CNE;


# direct methods
.method public constructor <init>(Lcom/android/server/CNE;Landroid/os/IBinder;)V
    .locals 4
    .parameter
    .parameter "binder"

    .prologue
    const/4 v3, 0x4

    const/4 v2, -0x1

    .line 694
    iput-object p1, p0, Lcom/android/server/CNE$RegInfo;->this$0:Lcom/android/server/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput v2, p0, Lcom/android/server/CNE$RegInfo;->role:I

    .line 696
    invoke-static {}, Lcom/android/server/CNE;->access$1108()I

    move-result v1

    iput v1, p0, Lcom/android/server/CNE$RegInfo;->regId:I

    .line 697
    iput v2, p0, Lcom/android/server/CNE$RegInfo;->pid:I

    .line 698
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/CNE$RegInfo;->compatibleRatsList:Ljava/util/ArrayList;

    .line 699
    iput v3, p0, Lcom/android/server/CNE$RegInfo;->activeRat:I

    .line 700
    iput v3, p0, Lcom/android/server/CNE$RegInfo;->betterRat:I

    .line 701
    new-instance v1, Lcom/android/server/CNE$CallbackInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/CNE$CallbackInfo;-><init>(Lcom/android/server/CNE;Lcom/android/server/CNE$1;)V

    iput-object v1, p0, Lcom/android/server/CNE$RegInfo;->cbInfo:Lcom/android/server/CNE$CallbackInfo;

    .line 702
    iput-object p2, p0, Lcom/android/server/CNE$RegInfo;->mBinder:Landroid/os/IBinder;

    .line 703
    iget-object v1, p0, Lcom/android/server/CNE$RegInfo;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/android/server/CNE$RegInfo;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 708
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/CNE$RegInfo;->binderDied()V

    goto :goto_0
.end method

.method static synthetic access$2100(Lcom/android/server/CNE$RegInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 677
    iget v0, p0, Lcom/android/server/CNE$RegInfo;->role:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/CNE$RegInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 677
    iput p1, p0, Lcom/android/server/CNE$RegInfo;->role:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/CNE$RegInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 677
    iget v0, p0, Lcom/android/server/CNE$RegInfo;->pid:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/CNE$RegInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 677
    iput p1, p0, Lcom/android/server/CNE$RegInfo;->pid:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/CNE$RegInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 677
    iget v0, p0, Lcom/android/server/CNE$RegInfo;->regId:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/CNE$RegInfo;)Lcom/android/server/CNE$CallbackInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/server/CNE$RegInfo;->cbInfo:Lcom/android/server/CNE$CallbackInfo;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/CNE$RegInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 677
    iget v0, p0, Lcom/android/server/CNE$RegInfo;->notificationsSent:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/CNE$RegInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 677
    iput p1, p0, Lcom/android/server/CNE$RegInfo;->notificationsSent:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/CNE$RegInfo;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/server/CNE$RegInfo;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/server/CNE$RegInfo;->this$0:Lcom/android/server/CNE;

    iget v1, p0, Lcom/android/server/CNE$RegInfo;->role:I

    iget v2, p0, Lcom/android/server/CNE$RegInfo;->pid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/CNE;->releaseLink(II)Z

    .line 716
    return-void
.end method

.method public dump()V
    .locals 0

    .prologue
    .line 731
    return-void
.end method
