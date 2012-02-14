.class public Landroid/net/LinkProvider;
.super Ljava/lang/Object;
.source "LinkProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkProvider$1;,
        Landroid/net/LinkProvider$NotificationsThread;,
        Landroid/net/LinkProvider$ConSvcEventListener;,
        Landroid/net/LinkProvider$LinkRequirement;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "LinkProvider"

.field private static final ON_BETTER_LINK_AVAIL:I = 0x2

.field private static final ON_GET_LINK_FAILURE:I = 0x4

.field private static final ON_LINK_AVAIL:I = 0x1

.field private static final ON_LINK_LOST:I = 0x3

.field public static final ROLE_DEFAULT:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerAvail:Ljava/util/concurrent/locks/Condition;

.field private mLinkNotifier:Landroid/net/LinkNotifier;

.field private mLinkReqs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/LinkProvider$LinkRequirement;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mLooper:Landroid/os/Looper;

.field private mPid:I

.field private mRole:I

.field private mService:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>(ILjava/util/Map;Landroid/net/LinkNotifier;)V
    .locals 3
    .parameter "role"
    .parameter
    .parameter "notifier"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Landroid/net/LinkProvider$LinkRequirement;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/LinkNotifier;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 105
    .local p2, reqs:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/LinkProvider$LinkRequirement;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/LinkProvider;->mLinkReqs:Ljava/util/Map;

    .line 106
    iput p1, p0, Landroid/net/LinkProvider;->mRole:I

    .line 107
    iput-object p2, p0, Landroid/net/LinkProvider;->mLinkReqs:Ljava/util/Map;

    .line 108
    iput-object p3, p0, Landroid/net/LinkProvider;->mLinkNotifier:Landroid/net/LinkNotifier;

    .line 110
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 111
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Landroid/net/LinkProvider;->mService:Landroid/net/IConnectivityManager;

    .line 113
    iget-object v1, p0, Landroid/net/LinkProvider;->mService:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "mService can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Landroid/net/LinkProvider;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 118
    iget-object v1, p0, Landroid/net/LinkProvider;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Landroid/net/LinkProvider;->mHandlerAvail:Ljava/util/concurrent/locks/Condition;

    .line 119
    return-void
.end method

.method static synthetic access$200(Landroid/net/LinkProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/LinkProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/LinkProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/net/LinkProvider;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/LinkProvider;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/net/LinkProvider;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$400(Landroid/net/LinkProvider;)Landroid/net/LinkNotifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/LinkProvider;->mLinkNotifier:Landroid/net/LinkNotifier;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/LinkProvider;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/LinkProvider;->mLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/LinkProvider;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/LinkProvider;->mHandlerAvail:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method private deInit()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/net/LinkProvider;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LinkProvider;->mHandler:Landroid/os/Handler;

    .line 171
    return-void
.end method

.method private init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Landroid/net/LinkProvider$NotificationsThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/LinkProvider$NotificationsThread;-><init>(Landroid/net/LinkProvider;Landroid/net/LinkProvider$1;)V

    invoke-virtual {v0}, Landroid/net/LinkProvider$NotificationsThread;->start()V

    .line 159
    :try_start_0
    iget-object v0, p0, Landroid/net/LinkProvider;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 160
    iget-object v0, p0, Landroid/net/LinkProvider;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Landroid/net/LinkProvider;->mHandlerAvail:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    iget-object v0, p0, Landroid/net/LinkProvider;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 166
    return-void

    .line 164
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/net/LinkProvider;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public getLink()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 132
    :try_start_0
    iget-object v3, p0, Landroid/net/LinkProvider;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    .line 134
    :try_start_1
    invoke-direct {p0}, Landroid/net/LinkProvider;->init()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :try_start_2
    new-instance v3, Landroid/net/LinkProvider$ConSvcEventListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/net/LinkProvider$ConSvcEventListener;-><init>(Landroid/net/LinkProvider;Landroid/net/LinkProvider$1;)V

    invoke-static {v3}, Landroid/net/IConSvcEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConSvcEventListener;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProvider$ConSvcEventListener;

    .line 145
    .local v2, listener:Landroid/net/LinkProvider$ConSvcEventListener;
    invoke-static {}, Landroid/net/LinkProvider$ConSvcEventListener;->getCallingPid()I

    move-result v3

    iput v3, p0, Landroid/net/LinkProvider;->mPid:I

    .line 147
    iget-object v3, p0, Landroid/net/LinkProvider;->mService:Landroid/net/IConnectivityManager;

    iget v4, p0, Landroid/net/LinkProvider;->mRole:I

    iget-object v5, p0, Landroid/net/LinkProvider;->mLinkReqs:Ljava/util/Map;

    iget v6, p0, Landroid/net/LinkProvider;->mPid:I

    invoke-interface {v3, v4, v5, v6, v2}, Landroid/net/IConnectivityManager;->getLink(ILjava/util/Map;ILandroid/os/IBinder;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    .line 151
    .end local v2           #listener:Landroid/net/LinkProvider$ConSvcEventListener;
    :goto_0
    return v3

    .line 135
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/InterruptedException;
    move v3, v7

    .line 137
    goto :goto_0

    .end local v1           #ex:Ljava/lang/InterruptedException;
    :cond_0
    move v3, v7

    .line 141
    goto :goto_0

    .line 149
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/os/RemoteException;
    move v3, v7

    .line 151
    goto :goto_0
.end method

.method public rejectSwitch(Landroid/net/LinkInfo;Z)Z
    .locals 4
    .parameter "info"
    .parameter "isNotifyBetterLink"

    .prologue
    .line 243
    :try_start_0
    iget-object v1, p0, Landroid/net/LinkProvider;->mService:Landroid/net/IConnectivityManager;

    iget v2, p0, Landroid/net/LinkProvider;->mRole:I

    iget v3, p0, Landroid/net/LinkProvider;->mPid:I

    invoke-interface {v1, v2, v3, p1, p2}, Landroid/net/IConnectivityManager;->rejectSwitch(IILandroid/net/LinkInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 250
    :goto_0
    return v1

    .line 248
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 250
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public releaseLink()Z
    .locals 5

    .prologue
    .line 264
    :try_start_0
    iget-object v2, p0, Landroid/net/LinkProvider;->mService:Landroid/net/IConnectivityManager;

    iget v3, p0, Landroid/net/LinkProvider;->mRole:I

    iget v4, p0, Landroid/net/LinkProvider;->mPid:I

    invoke-interface {v2, v3, v4}, Landroid/net/IConnectivityManager;->releaseLink(II)Z

    move-result v1

    .line 265
    .local v1, retVal:Z
    invoke-direct {p0}, Landroid/net/LinkProvider;->deInit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 269
    .end local v1           #retVal:Z
    :goto_0
    return v2

    .line 267
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 269
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reportLinkSatisfaction(Landroid/net/LinkInfo;ZZ)Z
    .locals 7
    .parameter "info"
    .parameter "isSatisfied"
    .parameter "isNotifyBetterLink"

    .prologue
    .line 192
    :try_start_0
    iget-object v0, p0, Landroid/net/LinkProvider;->mService:Landroid/net/IConnectivityManager;

    iget v1, p0, Landroid/net/LinkProvider;->mRole:I

    iget v2, p0, Landroid/net/LinkProvider;->mPid:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/IConnectivityManager;->reportLinkSatisfaction(IILandroid/net/LinkInfo;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 200
    :goto_0
    return v0

    .line 198
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 200
    .local v6, e:Landroid/os/RemoteException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchLink(Landroid/net/LinkInfo;Z)Z
    .locals 4
    .parameter "info"
    .parameter "isNotifyBetterLink"

    .prologue
    .line 218
    :try_start_0
    iget-object v1, p0, Landroid/net/LinkProvider;->mService:Landroid/net/IConnectivityManager;

    iget v2, p0, Landroid/net/LinkProvider;->mRole:I

    iget v3, p0, Landroid/net/LinkProvider;->mPid:I

    invoke-interface {v1, v2, v3, p1, p2}, Landroid/net/IConnectivityManager;->switchLink(IILandroid/net/LinkInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 225
    :goto_0
    return v1

    .line 223
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 225
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
