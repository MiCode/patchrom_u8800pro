.class public Landroid/net/http/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Landroid/net/http/RequestFeeder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/RequestQueue$ConnectionManager;,
        Landroid/net/http/RequestQueue$SyncFeeder;,
        Landroid/net/http/RequestQueue$ActivePool;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CONNECTION_COUNT:I = 0x0

.field private static final PRE_CONNECTION_THREADS:I = 0x5


# instance fields
.field private final mActivePool:Landroid/net/http/RequestQueue$ActivePool;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mPending:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

.field private final mPriorities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/apache/http/HttpHost;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mProxyHost:Lorg/apache/http/HttpHost;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "net.http.threads"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/net/http/RequestQueue;->CONNECTION_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 233
    sget v0, Landroid/net/http/RequestQueue;->CONNECTION_COUNT:I

    invoke-direct {p0, p1, v0}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;I)V

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "connectionCount"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v4, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 247
    iput-object p1, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    .line 249
    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    .line 250
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/net/http/RequestQueue;->mPriorities:Ljava/util/HashSet;

    .line 252
    new-instance v1, Landroid/net/http/RequestQueue$ActivePool;

    invoke-direct {v1, p0, p2}, Landroid/net/http/RequestQueue$ActivePool;-><init>(Landroid/net/http/RequestQueue;I)V

    iput-object v1, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    .line 253
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v1}, Landroid/net/http/RequestQueue$ActivePool;->startup()V

    .line 255
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Landroid/net/http/RequestQueue;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 258
    new-array v1, v3, [Landroid/net/http/PreConnectionThread;

    iput-object v1, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    .line 259
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 260
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    aput-object v4, v1, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/net/http/RequestQueue;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/http/RequestQueue;)Lorg/apache/http/HttpHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/http/RequestQueue;Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/http/RequestQueue;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->setProxyConfig()V

    return-void
.end method

.method private commitPrioritiesForList(Ljava/util/LinkedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    new-instance v0, Landroid/net/http/RequestQueue$1;

    invoke-direct {v0, p0}, Landroid/net/http/RequestQueue$1;-><init>(Landroid/net/http/RequestQueue;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 300
    return-void
.end method

.method private determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .locals 2
    .parameter "host"

    .prologue
    .line 510
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_0
.end method

.method private priorityList()Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 554
    const/4 v0, -0x1

    .line 556
    .local v0, curPri:I
    const/4 v4, 0x0

    .line 557
    .local v4, ret:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    iget-object v5, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 558
    iget-object v5, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 559
    .end local p0
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 560
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 561
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    if-nez v4, :cond_1

    .line 562
    move-object v4, v1

    .line 564
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/http/Request;

    iget v2, p0, Landroid/net/http/Request;->mPriority:I

    .line 565
    .local v2, entryPri:I
    if-eq v2, v6, :cond_0

    if-eq v0, v6, :cond_2

    if-le v0, v2, :cond_0

    .line 566
    :cond_2
    move-object v4, v1

    .line 567
    move v0, v2

    goto :goto_0

    .line 571
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v2           #entryPri:I
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    :cond_3
    return-object v4
.end method

.method private removeFirst(Ljava/util/LinkedHashMap;)Landroid/net/http/Request;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;>;)",
            "Landroid/net/http/Request;"
        }
    .end annotation

    .prologue
    .line 689
    .local p1, requestQueue:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    const/4 v3, 0x0

    .line 690
    .local v3, ret:Landroid/net/http/Request;
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 691
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 692
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 693
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 694
    .local v2, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ret:Landroid/net/http/Request;
    check-cast v3, Landroid/net/http/Request;

    .line 695
    .restart local v3       #ret:Landroid/net/http/Request;
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 696
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v2           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    return-object v3
.end method

.method private declared-synchronized setProxyConfig()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 355
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 356
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 357
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 368
    :goto_0
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/net/http/RequestQueue$ActivePool;->setShutdownFeature(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    monitor-exit p0

    return-void

    .line 359
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, host:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 362
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 355
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 364
    .restart local v0       #host:Ljava/lang/String;
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v2}, Landroid/net/http/RequestQueue$ActivePool;->disablePersistence()V

    .line 365
    new-instance v2, Lorg/apache/http/HttpHost;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v3

    const-string v4, "http"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 368
    .end local v0           #host:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkPageFinished()V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->checkPageFinished()V

    .line 685
    return-void
.end method

.method public cleanPreConnectionThreadEntry(I)V
    .locals 2
    .parameter "preConnectionThreadId"

    .prologue
    .line 737
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 738
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 741
    :cond_0
    return-void
.end method

.method public declared-synchronized commitRequestPriorities()V
    .locals 4

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPriorities:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    :goto_0
    monitor-exit p0

    return-void

    .line 305
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPriorities:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 306
    .local v1, iter:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    .line 308
    .local v0, host:Lorg/apache/http/HttpHost;
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 310
    .local v2, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-direct {p0, v2}, Landroid/net/http/RequestQueue;->commitPrioritiesForList(Ljava/util/LinkedList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 303
    .end local v0           #host:Lorg/apache/http/HttpHost;
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v2           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 313
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_2
    :try_start_2
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPriorities:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized disablePlatformNotifications()V
    .locals 2

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :cond_0
    monitor-exit p0

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized dump()V
    .locals 12

    .prologue
    const-string v10, " "

    .line 526
    monitor-enter p0

    :try_start_0
    const-string v10, "dump()"

    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .local v2, dump:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 533
    .local v0, count:I
    iget-object v10, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 534
    iget-object v10, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    move v1, v0

    .line 535
    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 536
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 537
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/HttpHost;

    invoke-virtual {v10}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    .line 538
    .local v4, hostName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "p"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .local v6, line:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedList;

    .line 541
    .local v8, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    .line 542
    .local v7, reqIter:Ljava/util/ListIterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 543
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/http/Request;

    .line 544
    .local v9, request:Landroid/net/http/Request;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 526
    .end local v0           #count:I
    .end local v2           #dump:Ljava/lang/StringBuilder;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v4           #hostName:Ljava/lang/String;
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .end local v6           #line:Ljava/lang/StringBuilder;
    .end local v7           #reqIter:Ljava/util/ListIterator;
    .end local v8           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    .end local v9           #request:Landroid/net/http/Request;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 546
    .restart local v0       #count:I
    .restart local v2       #dump:Ljava/lang/StringBuilder;
    .restart local v3       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .restart local v4       #hostName:Ljava/lang/String;
    .restart local v5       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .restart local v6       #line:Ljava/lang/StringBuilder;
    .restart local v7       #reqIter:Ljava/util/ListIterator;
    .restart local v8       #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 547
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 548
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v4           #hostName:Ljava/lang/String;
    .end local v6           #line:Ljava/lang/StringBuilder;
    .end local v7           #reqIter:Ljava/util/ListIterator;
    .end local v8           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_1
    move v0, v1

    .line 550
    .end local v1           #count:I
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .restart local v0       #count:I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized enablePlatformNotifications()V
    .locals 4

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Landroid/net/http/RequestQueue$2;

    invoke-direct {v0, p0}, Landroid/net/http/RequestQueue$2;-><init>(Landroid/net/http/RequestQueue;)V

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 330
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    :cond_0
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->setProxyConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProxyHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public declared-synchronized getRequest()Landroid/net/http/Request;
    .locals 6

    .prologue
    .line 590
    monitor-enter p0

    const/4 v3, 0x0

    .line 592
    .local v3, ret:Landroid/net/http/Request;
    :try_start_0
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->priorityList()Ljava/util/Map$Entry;

    move-result-object v1

    .line 593
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    if-eqz v1, :cond_0

    .line 594
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 595
    .local v2, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/http/Request;

    move-object v3, v0

    .line 596
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    iget-object v4, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    .end local v2           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    monitor-exit p0

    return-object v3

    .line 590
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;
    .locals 4
    .parameter "host"

    .prologue
    .line 609
    monitor-enter p0

    const/4 v2, 0x0

    .line 611
    .local v2, ret:Landroid/net/http/Request;
    :try_start_0
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 612
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 613
    .local v1, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/net/http/Request;

    move-object v2, v0

    .line 614
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    .end local v1           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    monitor-exit p0

    return-object v2

    .line 609
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public handleConnectionRequest(Landroid/webkit/PreConnectionManager;Ljava/util/LinkedList;)I
    .locals 8
    .parameter "preConnectionMgr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/PreConnectionManager;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/Subhost;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 704
    .local p2, subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    if-eqz p2, :cond_1

    .line 705
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v0, 0x5

    if-ge v6, v0, :cond_1

    .line 706
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    aget-object v0, v0, v6

    if-nez v0, :cond_0

    .line 707
    iget-object v7, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    new-instance v0, Landroid/net/http/PreConnectionThread;

    iget-object v2, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    move-object v1, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/net/http/PreConnectionThread;-><init>(Ljava/util/LinkedList;Landroid/net/http/RequestQueue$ConnectionManager;Landroid/content/Context;Landroid/net/http/RequestFeeder;Landroid/webkit/PreConnectionManager;)V

    aput-object v0, v7, v6

    .line 708
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/net/http/PreConnectionThread;->start()V

    move v0, v6

    .line 715
    .end local v6           #i:I
    :goto_1
    return v0

    .line 705
    .restart local v6       #i:I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 715
    .end local v6           #i:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public declared-synchronized haveRequest(Lorg/apache/http/HttpHost;)Z
    .locals 1
    .parameter "host"

    .prologue
    .line 626
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peekRequest()Landroid/net/http/Request;
    .locals 4

    .prologue
    .line 575
    monitor-enter p0

    const/4 v1, 0x0

    .line 577
    .local v1, ret:Landroid/net/http/Request;
    :try_start_0
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->priorityList()Ljava/util/Map$Entry;

    move-result-object v0

    .line 578
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/http/Request;

    iget v2, v2, Landroid/net/http/Request;->mPriority:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 580
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ret:Landroid/net/http/Request;
    check-cast v1, Landroid/net/http/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    .restart local v1       #ret:Landroid/net/http/Request;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 575
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v1           #ret:Landroid/net/http/Request;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;IIZ)Landroid/net/http/RequestHandle;
    .locals 16
    .parameter "url"
    .parameter "uri"
    .parameter "method"
    .parameter
    .parameter "eventHandler"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .parameter "pri"
    .parameter "commit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "IIZ)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .line 426
    .local p4, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p5, :cond_0

    .line 427
    new-instance p5, Landroid/net/http/LoggingEventHandler;

    .end local p5
    invoke-direct/range {p5 .. p5}, Landroid/net/http/LoggingEventHandler;-><init>()V

    .line 432
    .restart local p5
    :cond_0
    new-instance v6, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/WebAddress;->mPort:I

    move v7, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    move-object v8, v0

    invoke-direct {v6, v5, v7, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 435
    .local v6, httpHost:Lorg/apache/http/HttpHost;
    new-instance v4, Landroid/net/http/Request;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object v7, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v5, p3

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p5

    move-object/from16 v12, p4

    move/from16 v13, p8

    invoke-direct/range {v4 .. v13}, Landroid/net/http/Request;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;I)V

    .line 438
    .local v4, req:Landroid/net/http/Request;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move/from16 v3, p9

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/http/RequestQueue;->queueRequest(Landroid/net/http/Request;ZZ)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    move-object v5, v0

    invoke-static {v5}, Landroid/net/http/RequestQueue$ActivePool;->access$408(Landroid/net/http/RequestQueue$ActivePool;)I

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/net/http/RequestQueue$ActivePool;->startConnectionThread()V

    .line 443
    new-instance v7, Landroid/net/http/RequestHandle;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move-object v15, v4

    invoke-direct/range {v7 .. v15}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V

    return-object v7
.end method

.method public queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 9
    .parameter "url"
    .parameter "method"
    .parameter
    .parameter "eventHandler"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .line 394
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;IIZ)Landroid/net/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;IIZ)Landroid/net/http/RequestHandle;
    .locals 10
    .parameter "url"
    .parameter "method"
    .parameter
    .parameter "eventHandler"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .parameter "pri"
    .parameter "commit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "IIZ)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .line 402
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/net/WebAddress;

    invoke-direct {v2, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .local v2, uri:Landroid/net/WebAddress;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 403
    invoke-virtual/range {v0 .. v9}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;IIZ)Landroid/net/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized queueRequest(Landroid/net/http/Request;ZZ)V
    .locals 4
    .parameter "request"
    .parameter "head"
    .parameter "commit"

    .prologue
    const/4 v3, -0x1

    .line 650
    monitor-enter p0

    :try_start_0
    iget-object v2, p1, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    move-object v0, v2

    .line 652
    .local v0, host:Lorg/apache/http/HttpHost;
    :goto_0
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 653
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 658
    .local v1, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :goto_1
    if-eqz p2, :cond_3

    .line 659
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 663
    :goto_2
    if-eqz p3, :cond_4

    iget v2, p1, Landroid/net/http/Request;->mPriority:I

    if-eq v2, v3, :cond_4

    .line 664
    invoke-direct {p0, v1}, Landroid/net/http/RequestQueue;->commitPrioritiesForList(Ljava/util/LinkedList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    :cond_0
    :goto_3
    monitor-exit p0

    return-void

    .line 650
    .end local v0           #host:Lorg/apache/http/HttpHost;
    .end local v1           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_1
    :try_start_1
    iget-object v2, p1, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object v0, v2

    goto :goto_0

    .line 655
    .restart local v0       #host:Lorg/apache/http/HttpHost;
    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 656
    .restart local v1       #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 650
    .end local v0           #host:Lorg/apache/http/HttpHost;
    .end local v1           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 661
    .restart local v0       #host:Lorg/apache/http/HttpHost;
    .restart local v1       #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_3
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 665
    :cond_4
    if-nez p3, :cond_0

    iget v2, p1, Landroid/net/http/Request;->mPriority:I

    if-eq v2, v3, :cond_0

    .line 666
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPriorities:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public queueSynchronousRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 13
    .parameter "url"
    .parameter "uri"
    .parameter "method"
    .parameter
    .parameter "eventHandler"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .line 484
    .local p4, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/apache/http/HttpHost;

    iget-object v1, p2, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    iget v3, p2, Landroid/net/WebAddress;->mPort:I

    iget-object v4, p2, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 486
    .local v2, host:Lorg/apache/http/HttpHost;
    new-instance v0, Landroid/net/http/Request;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    iget-object v4, p2, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v1, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Landroid/net/http/Request;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;I)V

    .line 491
    .local v0, req:Landroid/net/http/Request;
    invoke-direct {p0, v2}, Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 492
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    new-instance v4, Landroid/net/http/RequestQueue$SyncFeeder;

    invoke-direct {v4}, Landroid/net/http/RequestQueue$SyncFeeder;-><init>()V

    invoke-static {v1, v2, v3, v4}, Landroid/net/http/Connection;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;

    move-result-object v12

    .line 497
    .local v12, conn:Landroid/net/http/Connection;
    new-instance v3, Landroid/net/http/RequestHandle;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object v11, v0

    invoke-direct/range {v3 .. v12}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;Landroid/net/http/Connection;)V

    return-object v3
.end method

.method declared-synchronized requestsPending()Z
    .locals 1

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

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

.method public requeueRequest(Landroid/net/http/Request;)V
    .locals 1
    .parameter "request"

    .prologue
    const/4 v0, 0x1

    .line 633
    invoke-virtual {p0, p1, v0, v0}, Landroid/net/http/RequestQueue;->requeueRequest(Landroid/net/http/Request;ZZ)V

    .line 634
    return-void
.end method

.method public requeueRequest(Landroid/net/http/Request;ZZ)V
    .locals 1
    .parameter "request"
    .parameter "commit"
    .parameter "notif"

    .prologue
    .line 637
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/net/http/RequestQueue;->queueRequest(Landroid/net/http/Request;ZZ)V

    .line 638
    if-eqz p3, :cond_0

    .line 639
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->startConnectionThread()V

    .line 640
    :cond_0
    return-void
.end method

.method public setPageFinished(Z)V
    .locals 1
    .parameter "done"

    .prologue
    .line 680
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestQueue$ActivePool;->setPageFinished(Z)V

    .line 681
    return-void
.end method

.method public declared-synchronized setRequestPriority(Landroid/net/WebAddress;I)Z
    .locals 8
    .parameter "uri"
    .parameter "priority"

    .prologue
    const/4 v7, 0x0

    .line 266
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v4, p1, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    iget v5, p1, Landroid/net/WebAddress;->mPort:I

    iget-object v6, p1, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    .local v0, host:Lorg/apache/http/HttpHost;
    iget-object v4, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    iget-object v4, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 270
    .local v2, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 271
    .local v1, iter:Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/http/Request;

    .line 273
    .local v3, request:Landroid/net/http/Request;
    iget-object v4, v3, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    iget-object v5, p1, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    iput p2, v3, Landroid/net/http/Request;->mPriority:I

    .line 275
    iget-object v4, p0, Landroid/net/http/RequestQueue;->mPriorities:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    const/4 v4, 0x1

    .line 280
    .end local v1           #iter:Ljava/util/ListIterator;
    .end local v2           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    .end local v3           #request:Landroid/net/http/Request;
    :goto_0
    monitor-exit p0

    return v4

    :cond_1
    move v4, v7

    goto :goto_0

    .line 266
    .end local v0           #host:Lorg/apache/http/HttpHost;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->shutdown()V

    .line 647
    return-void
.end method

.method public startTiming()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->startTiming()V

    .line 673
    return-void
.end method

.method public stopConnectionRequest(I)V
    .locals 2
    .parameter "preConnectionThreadId"

    .prologue
    .line 721
    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/http/PreConnectionThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/http/PreConnectionThread;->Stop()V

    .line 726
    :cond_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPreConnectionThreads:[Landroid/net/http/PreConnectionThread;

    const/4 v1, 0x0

    aput-object v1, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :cond_1
    :goto_0
    return-void

    .line 728
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopTiming()V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->stopTiming()V

    .line 677
    return-void
.end method
