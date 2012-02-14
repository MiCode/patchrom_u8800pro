.class Landroid/media/HWDrmServiceProxy$Connection;
.super Ljava/lang/Object;
.source "HWDrmServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/HWDrmServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Connection"
.end annotation


# instance fields
.field private mIHWDrmService:Landroid/media/IHWDrmService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/HWDrmServiceProxy$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/media/HWDrmServiceProxy$Connection;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Landroid/media/IHWDrmService;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/media/HWDrmServiceProxy$Connection;->mIHWDrmService:Landroid/media/IHWDrmService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 135
    const-string v0, "HWDrmServiceProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    invoke-static {p2}, Landroid/media/IHWDrmService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IHWDrmService;

    move-result-object v0

    iput-object v0, p0, Landroid/media/HWDrmServiceProxy$Connection;->mIHWDrmService:Landroid/media/IHWDrmService;

    .line 138
    monitor-exit p0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 142
    const-string v0, "HWDrmServiceProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    monitor-enter p0

    .line 144
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/HWDrmServiceProxy$Connection;->mIHWDrmService:Landroid/media/IHWDrmService;

    .line 145
    monitor-exit p0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
