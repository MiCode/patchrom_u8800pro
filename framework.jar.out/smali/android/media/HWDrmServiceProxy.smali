.class public Landroid/media/HWDrmServiceProxy;
.super Ljava/lang/Object;
.source "HWDrmServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/HWDrmServiceProxy$1;,
        Landroid/media/HWDrmServiceProxy$Connection;
    }
.end annotation


# static fields
.field private static final ACTION_HUAWEI_DRM_SERVICE:Ljava/lang/String; = "android.hwdrm.action.IHWDrmService"

.field private static final TAG:Ljava/lang/String; = "HWDrmServiceProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private final mMutex:Ljava/lang/Object;

.field private mServiceConnection:Landroid/media/HWDrmServiceProxy$Connection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/HWDrmServiceProxy;->mMutex:Ljava/lang/Object;

    .line 22
    new-instance v0, Landroid/media/HWDrmServiceProxy$Connection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/HWDrmServiceProxy$Connection;-><init>(Landroid/media/HWDrmServiceProxy$1;)V

    iput-object v0, p0, Landroid/media/HWDrmServiceProxy;->mServiceConnection:Landroid/media/HWDrmServiceProxy$Connection;

    .line 25
    iput-object p1, p0, Landroid/media/HWDrmServiceProxy;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hwdrm.action.IHWDrmService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/HWDrmServiceProxy;->mIntent:Landroid/content/Intent;

    .line 27
    iget-object v0, p0, Landroid/media/HWDrmServiceProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/HWDrmServiceProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroid/media/HWDrmServiceProxy;->mServiceConnection:Landroid/media/HWDrmServiceProxy$Connection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 28
    return-void
.end method


# virtual methods
.method public endConsume(I)I
    .locals 5
    .parameter "drmContentID"

    .prologue
    .line 102
    const/4 v1, -0x1

    .line 103
    .local v1, returnValue:I
    iget-object v3, p0, Landroid/media/HWDrmServiceProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 104
    :try_start_0
    iget-object v4, p0, Landroid/media/HWDrmServiceProxy;->mServiceConnection:Landroid/media/HWDrmServiceProxy$Connection;

    invoke-virtual {v4}, Landroid/media/HWDrmServiceProxy$Connection;->getService()Landroid/media/IHWDrmService;

    move-result-object v2

    .line 105
    .local v2, serviceProxy:Landroid/media/IHWDrmService;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :try_start_1
    invoke-interface {v2, p1}, Landroid/media/IHWDrmService;->endConsume(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 111
    :goto_0
    return v1

    .line 105
    .end local v2           #serviceProxy:Landroid/media/IHWDrmService;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 108
    .restart local v2       #serviceProxy:Landroid/media/IHWDrmService;
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "HWDrmServiceProxy"

    const-string v4, "endConsume failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isPresent()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 116
    iget-object v2, p0, Landroid/media/HWDrmServiceProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 117
    :try_start_0
    iget-object v3, p0, Landroid/media/HWDrmServiceProxy;->mServiceConnection:Landroid/media/HWDrmServiceProxy$Connection;

    invoke-virtual {v3}, Landroid/media/HWDrmServiceProxy$Connection;->getService()Landroid/media/IHWDrmService;

    move-result-object v1

    .line 118
    .local v1, serviceProxy:Landroid/media/IHWDrmService;
    monitor-exit v2

    .line 120
    if-nez v1, :cond_0

    move v2, v4

    .line 127
    :goto_0
    return v2

    .line 118
    .end local v1           #serviceProxy:Landroid/media/IHWDrmService;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 125
    .restart local v1       #serviceProxy:Landroid/media/IHWDrmService;
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/media/IHWDrmService;->isPresent()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    move v2, v4

    .line 127
    goto :goto_0
.end method

.method public newDrmContent(Ljava/lang/String;)I
    .locals 4
    .parameter "path"

    .prologue
    .line 44
    iget-object v2, p0, Landroid/media/HWDrmServiceProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 45
    :try_start_0
    iget-object v3, p0, Landroid/media/HWDrmServiceProxy;->mServiceConnection:Landroid/media/HWDrmServiceProxy$Connection;

    invoke-virtual {v3}, Landroid/media/HWDrmServiceProxy$Connection;->getService()Landroid/media/IHWDrmService;

    move-result-object v1

    .line 46
    .local v1, serviceProxy:Landroid/media/IHWDrmService;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-eqz v1, :cond_0

    .line 49
    :try_start_1
    invoke-interface {v1, p1}, Landroid/media/IHWDrmService;->newDrmContent(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 54
    :goto_0
    return v2

    .line 46
    .end local v1           #serviceProxy:Landroid/media/IHWDrmService;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 50
    .restart local v1       #serviceProxy:Landroid/media/IHWDrmService;
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "HWDrmServiceProxy"

    const-string v3, "newDrmContent failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public pauseConsume(I)I
    .locals 5
    .parameter "drmContentID"

    .prologue
    .line 74
    const/4 v1, -0x1

    .line 75
    .local v1, returnValue:I
    iget-object v3, p0, Landroid/media/HWDrmServiceProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 76
    :try_start_0
    iget-object v4, p0, Landroid/media/HWDrmServiceProxy;->mServiceConnection:Landroid/media/HWDrmServiceProxy$Connection;

    invoke-virtual {v4}, Landroid/media/HWDrmServiceProxy$Connection;->getService()Landroid/media/IHWDrmService;

    move-result-object v2

    .line 77
    .local v2, serviceProxy:Landroid/media/IHWDrmService;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :try_start_1
    invoke-interface {v2, p1}, Landroid/media/IHWDrmService;->pauseConsume(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 83
    :goto_0
    return v1

    .line 77
    .end local v2           #serviceProxy:Landroid/media/IHWDrmService;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 80
    .restart local v2       #serviceProxy:Landroid/media/IHWDrmService;
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "HWDrmServiceProxy"

    const-string v4, "pauseConsume failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reconnect()V
    .locals 5

    .prologue
    .line 31
    iget-object v0, p0, Landroid/media/HWDrmServiceProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Landroid/media/HWDrmServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/HWDrmServiceProxy;->mServiceConnection:Landroid/media/HWDrmServiceProxy$Connection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 33
    new-instance v1, Landroid/media/HWDrmServiceProxy$Connection;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/HWDrmServiceProxy$Connection;-><init>(Landroid/media/HWDrmServiceProxy$1;)V

    iput-object v1, p0, Landroid/media/HWDrmServiceProxy;->mServiceConnection:Landroid/media/HWDrmServiceProxy$Connection;

    .line 34
    iget-object v1, p0, Landroid/media/HWDrmServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/HWDrmServiceProxy;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Landroid/media/HWDrmServiceProxy;->mServiceConnection:Landroid/media/HWDrmServiceProxy$Connection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Landroid/media/HWDrmServiceProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/HWDrmServiceProxy;->mServiceConnection:Landroid/media/HWDrmServiceProxy$Connection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 40
    return-void
.end method

.method public resumeConsume(I)I
    .locals 5
    .parameter "drmContentID"

    .prologue
    .line 88
    const/4 v1, -0x1

    .line 89
    .local v1, returnValue:I
    iget-object v3, p0, Landroid/media/HWDrmServiceProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 90
    :try_start_0
    iget-object v4, p0, Landroid/media/HWDrmServiceProxy;->mServiceConnection:Landroid/media/HWDrmServiceProxy$Connection;

    invoke-virtual {v4}, Landroid/media/HWDrmServiceProxy$Connection;->getService()Landroid/media/IHWDrmService;

    move-result-object v2

    .line 91
    .local v2, serviceProxy:Landroid/media/IHWDrmService;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    invoke-interface {v2, p1}, Landroid/media/IHWDrmService;->resumeConsume(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 97
    :goto_0
    return v1

    .line 91
    .end local v2           #serviceProxy:Landroid/media/IHWDrmService;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 94
    .restart local v2       #serviceProxy:Landroid/media/IHWDrmService;
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "HWDrmServiceProxy"

    const-string v4, "resumeConsume failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startConsume(III)Ljava/lang/String;
    .locals 4
    .parameter "drmContentID"
    .parameter "roPermission"
    .parameter "mode"

    .prologue
    .line 59
    iget-object v2, p0, Landroid/media/HWDrmServiceProxy;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 60
    :try_start_0
    iget-object v3, p0, Landroid/media/HWDrmServiceProxy;->mServiceConnection:Landroid/media/HWDrmServiceProxy$Connection;

    invoke-virtual {v3}, Landroid/media/HWDrmServiceProxy$Connection;->getService()Landroid/media/IHWDrmService;

    move-result-object v1

    .line 61
    .local v1, serviceProxy:Landroid/media/IHWDrmService;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    if-eqz v1, :cond_0

    .line 64
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IHWDrmService;->startConsume(III)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 69
    :goto_0
    return-object v2

    .line 61
    .end local v1           #serviceProxy:Landroid/media/IHWDrmService;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 65
    .restart local v1       #serviceProxy:Landroid/media/IHWDrmService;
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "HWDrmServiceProxy"

    const-string/jumbo v3, "startConsume failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
