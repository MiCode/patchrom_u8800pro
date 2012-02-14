.class Landroid/webkit/Network;
.super Ljava/lang/Object;
.source "Network.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "network"

.field private static sNetwork:Landroid/webkit/Network;

.field private static sPlatformNotificationEnableRefCount:I

.field private static sPlatformNotifications:Z


# instance fields
.field private mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

.field private mProxyPassword:Ljava/lang/String;

.field private mProxyUsername:Ljava/lang/String;

.field private mRequestQueue:Landroid/net/http/RequestQueue;

.field private mSslErrorHandler:Landroid/webkit/SslErrorHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Landroid/webkit/SslErrorHandler;

    invoke-direct {v0}, Landroid/webkit/SslErrorHandler;-><init>()V

    iput-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 144
    new-instance v0, Landroid/webkit/HttpAuthHandler;

    invoke-direct {v0, p0}, Landroid/webkit/HttpAuthHandler;-><init>(Landroid/webkit/Network;)V

    iput-object v0, p0, Landroid/webkit/Network;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    .line 146
    new-instance v0, Landroid/net/http/RequestQueue;

    invoke-direct {v0, p1}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 147
    return-void
.end method

.method public static disablePlatformNotifications()V
    .locals 2

    .prologue
    .line 125
    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-eqz v0, :cond_1

    .line 127
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v0, v0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->disablePlatformNotifications()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/Network;->sPlatformNotifications:Z

    goto :goto_0
.end method

.method public static enablePlatformNotifications()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 111
    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    if-ne v0, v1, :cond_0

    .line 112
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v0, v0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->enablePlatformNotifications()V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    sput-boolean v1, Landroid/webkit/Network;->sPlatformNotifications:Z

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/Network;
    .locals 3
    .parameter "context"

    .prologue
    .line 87
    const-class v0, Landroid/webkit/Network;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Landroid/webkit/Network;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/Network;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    .line 95
    sget-boolean v1, Landroid/webkit/Network;->sPlatformNotifications:Z

    if-eqz v1, :cond_0

    .line 99
    sget v1, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    .line 100
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    .line 103
    :cond_0
    sget-object v1, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z
    .locals 1
    .parameter "loader"
    .parameter "error"

    .prologue
    .line 337
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 338
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/SslErrorHandler;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v0

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cleanPreConnectionThreadEntry(I)V
    .locals 1
    .parameter "preConnectionThreadId"

    .prologue
    .line 387
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestQueue;->cleanPreConnectionThreadEntry(I)V

    .line 389
    return-void
.end method

.method public clearUserSslPrefTable()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->clear()V

    .line 321
    return-void
.end method

.method public commitPriorities()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->commitRequestPriorities()V

    .line 166
    return-void
.end method

.method public getProxyHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/Network;->mProxyPassword:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxyUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/Network;->mProxyUsername:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleAuthRequest(Landroid/webkit/LoadListener;)V
    .locals 1
    .parameter "loader"

    .prologue
    .line 351
    if-eqz p1, :cond_0

    .line 352
    iget-object v0, p0, Landroid/webkit/Network;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/HttpAuthHandler;->handleAuthRequest(Landroid/webkit/LoadListener;)V

    .line 354
    :cond_0
    return-void
.end method

.method public handleSslErrorRequest(Landroid/webkit/LoadListener;)V
    .locals 1
    .parameter "loader"

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandler;->handleSslErrorRequest(Landroid/webkit/LoadListener;)V

    .line 333
    :cond_0
    return-void
.end method

.method public isValidProxySet()Z
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v1}, Landroid/net/http/RequestQueue;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestNetworkConnections(Landroid/webkit/PreConnectionManager;Ljava/util/LinkedList;)I
    .locals 1
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
    .line 371
    .local p2, subhosts:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/webkit/Subhost;>;"
    if-eqz p2, :cond_0

    .line 372
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0, p1, p2}, Landroid/net/http/RequestQueue;->handleConnectionRequest(Landroid/webkit/PreConnectionManager;Ljava/util/LinkedList;)I

    move-result v0

    .line 375
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z
    .locals 11
    .parameter "method"
    .parameter
    .parameter "postData"
    .parameter "loader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Landroid/webkit/LoadListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 182
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 225
    :goto_0
    return v2

    .line 191
    :cond_0
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v3

    .line 193
    goto :goto_0

    .line 198
    :cond_2
    const/4 v6, 0x0

    .line 199
    .local v6, bodyProvider:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 200
    .local v7, bodyLength:I
    if-eqz p3, :cond_3

    .line 201
    array-length v7, p3

    .line 202
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .end local v6           #bodyProvider:Ljava/io/InputStream;
    invoke-direct {v6, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 205
    .restart local v6       #bodyProvider:Ljava/io/InputStream;
    :cond_3
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 206
    .local v0, q:Landroid/net/http/RequestQueue;
    const/4 v10, 0x0

    .line 207
    .local v10, handle:Landroid/net/http/RequestHandle;
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 208
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueSynchronousRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v10

    .line 210
    invoke-virtual {p4, v10}, Landroid/webkit/LoadListener;->attachRequestHandle(Landroid/net/http/RequestHandle;)V

    .line 211
    invoke-virtual {v10}, Landroid/net/http/RequestHandle;->processRequest()V

    .line 212
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->loadSynchronousMessages()V

    .line 225
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 214
    :cond_4
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v2

    invoke-virtual {p4}, Landroid/webkit/LoadListener;->priority()I

    move-result v8

    invoke-virtual {p4}, Landroid/webkit/LoadListener;->shouldCommit()Z

    move-result v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v9}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;IIZ)Landroid/net/http/RequestHandle;

    move-result-object v10

    .line 222
    invoke-virtual {p4, v10}, Landroid/webkit/LoadListener;->attachRequestHandle(Landroid/net/http/RequestHandle;)V

    goto :goto_1
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "inState"

    .prologue
    .line 313
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandler;->restoreState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "outState"

    .prologue
    .line 299
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandler;->saveState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setPageFinished(Z)V
    .locals 1
    .parameter "done"

    .prologue
    .line 366
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestQueue;->setPageFinished(Z)V

    .line 367
    return-void
.end method

.method public setPriority(Ljava/lang/String;I)Z
    .locals 5
    .parameter "url"
    .parameter "priority"

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, uri:Landroid/net/WebAddress;
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    invoke-static {p1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, nurl:Ljava/lang/String;
    :try_start_0
    new-instance v3, Landroid/net/WebAddress;

    invoke-direct {v3, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #uri:Landroid/net/WebAddress;
    .local v3, uri:Landroid/net/WebAddress;
    move-object v2, v3

    .line 159
    .end local v1           #nurl:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/WebAddress;
    .restart local v2       #uri:Landroid/net/WebAddress;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 160
    iget-object v4, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v4, v2, p2}, Landroid/net/http/RequestQueue;->setRequestPriority(Landroid/net/WebAddress;I)Z

    move-result v4

    .line 161
    :goto_1
    return v4

    .line 155
    .restart local v1       #nurl:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 156
    .local v0, e:Landroid/net/ParseException;
    invoke-virtual {v0}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v0           #e:Landroid/net/ParseException;
    .end local v1           #nurl:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public declared-synchronized setProxyPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "proxyPassword"

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/Network;->mProxyPassword:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyUsername(Ljava/lang/String;)V
    .locals 1
    .parameter "proxyUsername"

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/Network;->mProxyUsername:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTiming()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->startTiming()V

    .line 359
    return-void
.end method

.method public stopNetworkConnections(I)V
    .locals 1
    .parameter "preConnectionThreadId"

    .prologue
    .line 380
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestQueue;->stopConnectionRequest(I)V

    .line 382
    return-void
.end method

.method public stopTiming()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->stopTiming()V

    .line 363
    return-void
.end method
