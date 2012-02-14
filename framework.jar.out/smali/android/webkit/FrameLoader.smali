.class Landroid/webkit/FrameLoader;
.super Ljava/lang/Object;
.source "FrameLoader.java"


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field static final HEADER_STR:Ljava/lang/String; = "text/xml, text/html, application/xhtml+xml, image/png, text/plain, */*;q=0.8"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final URI_PROTOCOL:I = 0x100

.field private static final mAboutBlank:Ljava/lang/String; = "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

.field private static final mBrowserUA2G:Ljava/lang/String;

.field private static final mBrowserUA3G:Ljava/lang/String;

.field private static final mUseBrowserUA:Z


# instance fields
.field private mCacheMode:I

.field private mContentType:Ljava/lang/String;

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

.field private final mListener:Landroid/webkit/LoadListener;

.field private final mMethod:Ljava/lang/String;

.field private mNetwork:Landroid/webkit/Network;

.field private mPostData:[B

.field private mReferrer:Ljava/lang/String;

.field private final mSettings:Landroid/webkit/WebSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "ro.config.hw_use_browser_ua"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/webkit/FrameLoader;->mUseBrowserUA:Z

    .line 65
    const-string v0, "ro.config.hw_browser_ua3g"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/FrameLoader;->mBrowserUA3G:Ljava/lang/String;

    .line 66
    const-string v0, "ro.config.hw_browser_ua2g"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/FrameLoader;->mBrowserUA2G:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;Ljava/lang/String;)V
    .locals 1
    .parameter "listener"
    .parameter "settings"
    .parameter "method"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    .line 73
    iput-object p3, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    .line 75
    iput-object p2, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    .line 76
    return-void
.end method

.method private getXWapProfileHeaderValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, dataNetType:I
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 399
    .local v1, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 400
    packed-switch v0, :pswitch_data_0

    .line 405
    sget-object v2, Landroid/webkit/FrameLoader;->mBrowserUA3G:Ljava/lang/String;

    :goto_0
    return-object v2

    .line 403
    :pswitch_0
    sget-object v2, Landroid/webkit/FrameLoader;->mBrowserUA2G:Ljava/lang/String;

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleCache()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 300
    iget v2, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    packed-switch v2, :pswitch_data_0

    .line 354
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3}, Landroid/webkit/LoadListener;->checkCache(Ljava/util/Map;)Z

    move-result v2

    .line 357
    :goto_0
    return v2

    .line 311
    :pswitch_0
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->postIdentifier()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v5}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 313
    .local v1, result:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v1, :cond_0

    .line 314
    invoke-direct {p0, v1}, Landroid/webkit/FrameLoader;->startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V

    :goto_1
    move v2, v6

    .line 325
    goto :goto_0

    .line 320
    :cond_0
    const/16 v0, -0xe

    .line 321
    .local v0, err:I
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/net/http/EventHandler;->errorStringResources:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 339
    .end local v0           #err:I
    .end local v1           #result:Landroid/webkit/CacheManager$CacheResult;
    :pswitch_1
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->postIdentifier()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v5}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 341
    .restart local v1       #result:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v1, :cond_1

    .line 342
    invoke-direct {p0, v1}, Landroid/webkit/FrameLoader;->startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V

    move v2, v6

    .line 343
    goto :goto_0

    .line 357
    .end local v1           #result:Landroid/webkit/CacheManager$CacheResult;
    :cond_1
    :pswitch_2
    const/4 v2, 0x0

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static handleLocalFile(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;)Z
    .locals 9
    .parameter "url"
    .parameter "loadListener"
    .parameter "settings"

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x2

    const/16 v6, 0x65

    const/4 v5, 0x1

    const-string v8, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    .line 156
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local p0
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    new-instance v2, Landroid/webkit/FileLoader;

    invoke-direct {v2, v1, p1, v5, v5}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2}, Landroid/webkit/FileLoader;->load()V

    :goto_0
    move v2, v5

    .line 224
    .end local v1           #url:Ljava/lang/String;
    :goto_1
    return v2

    .line 157
    .restart local p0
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 158
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/16 v2, -0xc

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040007

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v2, v5

    .line 163
    goto :goto_1

    .line 171
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local p0
    .restart local v1       #url:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    new-instance v3, Landroid/webkit/FileLoader;

    invoke-direct {v3, v1, p1, v5, v5}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2, v6, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {v1}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    new-instance v2, Landroid/webkit/FileLoader;

    invoke-direct {v2, v1, p1, v4, v5}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2}, Landroid/webkit/FileLoader;->load()V

    :goto_2
    move v2, v5

    .line 188
    goto :goto_1

    .line 183
    :cond_2
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    new-instance v3, Landroid/webkit/FileLoader;

    invoke-direct {v3, v1, p1, v4, v5}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2, v6, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 189
    :cond_3
    invoke-static {v1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 190
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 191
    new-instance v2, Landroid/webkit/FileLoader;

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v3

    invoke-direct {v2, v1, p1, v7, v3}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2}, Landroid/webkit/FileLoader;->load()V

    :goto_3
    move v2, v5

    .line 200
    goto :goto_1

    .line 195
    :cond_4
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    new-instance v3, Landroid/webkit/FileLoader;

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v4

    invoke-direct {v3, v1, p1, v7, v4}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2, v6, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 201
    :cond_5
    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowContentAccess()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 205
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 206
    new-instance v2, Landroid/webkit/ContentLoader;

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/webkit/ContentLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    invoke-virtual {v2}, Landroid/webkit/ContentLoader;->load()V

    :goto_4
    move v2, v5

    .line 214
    goto/16 :goto_1

    .line 209
    :cond_6
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    new-instance v3, Landroid/webkit/ContentLoader;

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/webkit/ContentLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    invoke-virtual {v2, v6, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    .line 215
    :cond_7
    invoke-static {v1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 217
    new-instance v2, Landroid/webkit/DataLoader;

    invoke-direct {v2, v1, p1}, Landroid/webkit/DataLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    invoke-virtual {v2}, Landroid/webkit/DataLoader;->load()V

    move v2, v5

    .line 218
    goto/16 :goto_1

    .line 219
    :cond_8
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 220
    const-string v2, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/webkit/LoadListener;->data([BI)V

    .line 221
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->endData()V

    move v2, v5

    .line 222
    goto/16 :goto_1

    .line 224
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private populateHeaders()V
    .locals 7

    .prologue
    .line 416
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "Referer"

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_0
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "content-type"

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_1
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v4}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 425
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    monitor-enter v4

    .line 426
    :try_start_0
    iget-object v5, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v5}, Landroid/webkit/Network;->getProxyUsername()Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, username:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v5}, Landroid/webkit/Network;->getProxyPassword()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, password:Ljava/lang/String;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 431
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, proxyHeader:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Basic "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3, v1}, Landroid/net/http/RequestHandle;->computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .end local v1           #password:Ljava/lang/String;
    .end local v2           #proxyHeader:Ljava/lang/String;
    .end local v3           #username:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v5}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/CookieManager;->getCookie(Landroid/net/WebAddress;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, cookie:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 442
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "Cookie"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_3
    return-void

    .line 428
    .end local v0           #cookie:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private populateStaticHeaders()V
    .locals 6

    .prologue
    const-string v5, "Accept"

    .line 366
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "Accept"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    .local v0, accept:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 368
    :cond_0
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "Accept"

    const-string/jumbo v4, "text/xml, text/html, application/xhtml+xml, image/png, text/plain, */*;q=0.8"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_1
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "Accept-Charset"

    const-string/jumbo v5, "utf-8, iso-8859-1, utf-16, *;q=0.7"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, acceptLanguage:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 374
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "Accept-Language"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_2
    sget-boolean v3, Landroid/webkit/FrameLoader;->mUseBrowserUA:Z

    if-eqz v3, :cond_3

    .line 380
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->getXWapProfileHeaderValue()Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, uaProfile:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 382
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string/jumbo v4, "x-wap-profile"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .end local v2           #uaProfile:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "User-Agent"

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    return-void
.end method

.method private startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 282
    new-instance v0, Landroid/webkit/CacheLoader;

    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-direct {v0, v1, p1}, Landroid/webkit/CacheLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V

    .line 284
    .local v0, cacheLoader:Landroid/webkit/CacheLoader;
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v0}, Landroid/webkit/LoadListener;->setCacheLoader(Landroid/webkit/CacheLoader;)V

    .line 285
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {v0}, Landroid/webkit/CacheLoader;->load()V

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public executeLoad()Z
    .locals 7

    .prologue
    const v6, 0x1040007

    const/4 v4, 0x1

    const/16 v3, -0xc

    const/4 v5, 0x0

    .line 112
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBlockNetworkLoads()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v5

    .line 146
    :goto_0
    return v1

    .line 123
    :cond_0
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->verifyURLEncoding(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v5

    .line 127
    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    .line 130
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {p0}, Landroid/webkit/FrameLoader;->handleHTTPLoad()Z

    move-result v1

    goto :goto_0

    .line 133
    :cond_2
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    move v1, v4

    .line 135
    goto :goto_0

    .line 136
    :cond_3
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v2, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-static {v0, v1, v2}, Landroid/webkit/FrameLoader;->handleLocalFile(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    .line 137
    goto :goto_0

    .line 143
    :cond_4
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    const/16 v2, -0xa

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040008

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v5

    .line 146
    goto :goto_0
.end method

.method public getLoadListener()Landroid/webkit/LoadListener;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    return-object v0
.end method

.method handleHTTPLoad()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 228
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 229
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    .line 231
    :cond_0
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->populateStaticHeaders()V

    .line 232
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->populateHeaders()V

    .line 235
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->handleCache()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    invoke-virtual {v3, v4, v5, v6}, Landroid/webkit/LoadListener;->setRequestData(Ljava/lang/String;Ljava/util/Map;[B)V

    move v3, v8

    .line 269
    :goto_0
    return v3

    .line 244
    :cond_1
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->getFrame()Landroid/webkit/BrowserFrame;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->notCached(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    const/4 v2, 0x0

    .line 252
    .local v2, ret:Z
    const/16 v0, -0xa

    .line 255
    .local v0, error:I
    :try_start_0
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    iget-object v7, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/webkit/Network;->requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 264
    :goto_1
    if-nez v2, :cond_2

    .line 265
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/net/http/EventHandler;->errorStringResources:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 267
    const/4 v3, 0x0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 258
    .local v1, ex:Landroid/net/ParseException;
    const/16 v0, -0xc

    .line 263
    goto :goto_1

    .line 259
    .end local v1           #ex:Landroid/net/ParseException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 262
    .local v1, ex:Ljava/lang/RuntimeException;
    const/16 v0, -0xc

    goto :goto_1

    .end local v1           #ex:Ljava/lang/RuntimeException;
    :cond_2
    move v3, v8

    .line 269
    goto :goto_0
.end method

.method public setCacheMode(I)V
    .locals 0
    .parameter "cacheMode"

    .prologue
    .line 92
    iput p1, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    .line 93
    return-void
.end method

.method public setContentTypeForPost(Ljava/lang/String;)V
    .locals 0
    .parameter "postContentType"

    .prologue
    .line 88
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setHeaders(Ljava/util/HashMap;)V
    .locals 0
    .parameter "headers"

    .prologue
    .line 96
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    .line 97
    return-void
.end method

.method public setPostData([B)V
    .locals 0
    .parameter "postData"

    .prologue
    .line 84
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    .line 85
    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 1
    .parameter "ref"

    .prologue
    .line 80
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    .line 81
    :cond_0
    return-void
.end method
