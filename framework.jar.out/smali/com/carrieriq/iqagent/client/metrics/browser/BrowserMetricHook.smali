.class public Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;
.super Ljava/lang/Object;
.source "BrowserMetricHook.java"


# static fields
.field static final BROWSER_PACKAGE_NAME:Ljava/lang/String; = "com.android.browser"

.field static final LOGTAG:Ljava/lang/String; = "BrowserMetric"

.field static map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static data(Ljava/lang/Object;I)V
    .locals 4
    .parameter "browserFrame"
    .parameter "length"

    .prologue
    const-string v3, "BrowserMetric"

    .line 203
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v1, "BrowserMetric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;

    .line 211
    .local v0, session:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;
    if-nez v0, :cond_1

    .line 212
    const-string v1, "BrowserMetric"

    const-string v1, "session has been reclaimed"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {v0, p1}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->data(I)V

    goto :goto_0
.end method

.method public static didFirstLayout(Ljava/lang/Object;)V
    .locals 3
    .parameter "browserFrame"

    .prologue
    const-string v2, "BrowserMetric"

    .line 291
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 295
    :cond_0
    const-string v1, "BrowserMetric"

    const-string v1, "didFirstLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;

    .line 299
    .local v0, session:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;
    if-nez v0, :cond_1

    .line 300
    const-string v1, "BrowserMetric"

    const-string v1, "session has been reclaimed"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->didFirstLayout()V

    goto :goto_0
.end method

.method public static error(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 4
    .parameter "browserFrame"
    .parameter "errorCode"
    .parameter "desc"

    .prologue
    const-string v3, "BrowserMetric"

    .line 149
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string v1, "BrowserMetric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;

    .line 157
    .local v0, session:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;
    if-nez v0, :cond_1

    .line 158
    const-string v1, "BrowserMetric"

    const-string v1, "session has been reclaimed"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->error(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static goBackOrForward(Ljava/lang/Object;I)V
    .locals 4
    .parameter "browserFrame"
    .parameter "steps"

    .prologue
    const-string v3, "BrowserMetric"

    .line 268
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 272
    :cond_0
    const-string v1, "BrowserMetric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goBackOrForward: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;

    .line 276
    .local v0, session:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;
    if-nez v0, :cond_1

    .line 277
    const-string v1, "BrowserMetric"

    const-string v1, "session has been reclaimed"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->stopLoading()V

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-string v0, "BrowserMetric"

    .line 38
    const-class v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "ro.config.ciq_browser_enable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    :cond_0
    const-string v1, "BrowserMetric"

    const-string v2, "Part of browser metric of CIQ is not enabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_0
    monitor-exit v0

    return-void

    .line 43
    :cond_1
    if-nez p0, :cond_2

    .line 44
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "we need a context"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 48
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.browser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 49
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "invalid application"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_3
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    if-nez v1, :cond_4

    .line 54
    const-string v1, "BrowserMetric"

    const-string v2, "init hook"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    .line 56
    new-instance v1, Lcom/carrieriq/iqagent/client/IQClient;

    invoke-direct {v1, p0}, Lcom/carrieriq/iqagent/client/IQClient;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->client:Lcom/carrieriq/iqagent/client/IQClient;

    goto :goto_0

    .line 58
    :cond_4
    const-string v1, "BrowserMetric"

    const-string v2, "already initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static loadFinished(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "browserFrame"
    .parameter "url"

    .prologue
    const-string v2, "BrowserMetric"

    .line 98
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v1, "BrowserMetric"

    const-string v1, "loadFinished"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;

    .line 106
    .local v0, session:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;
    if-nez v0, :cond_1

    .line 107
    const-string v1, "BrowserMetric"

    const-string v1, "session has been reclaimed"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->loadFinished()V

    goto :goto_0
.end method

.method public static loadStart(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .parameter "browserFrame"
    .parameter "url"

    .prologue
    const-string v3, "BrowserMetric"

    .line 73
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string v1, "BrowserMetric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;

    .line 80
    .local v0, session:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;
    if-nez v0, :cond_1

    .line 81
    const-string v1, "BrowserMetric"

    const-string v1, "a new session"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;

    .end local v0           #session:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;
    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;-><init>()V

    .line 83
    .restart local v0       #session:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_1
    invoke-virtual {v0, p1}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->loadStart(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static notCached(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .parameter "browserFrame"
    .parameter "url"

    .prologue
    const-string v3, "BrowserMetric"

    .line 176
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string v1, "BrowserMetric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notCached: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;

    .line 184
    .local v0, session:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;
    if-nez v0, :cond_1

    .line 185
    const-string v1, "BrowserMetric"

    const-string v1, "session has been reclaimed"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v0, p1}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->notCached(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stopLoading(Ljava/lang/Object;)V
    .locals 3
    .parameter "browserFrame"

    .prologue
    const-string v2, "BrowserMetric"

    .line 251
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 255
    :cond_0
    const-string v1, "BrowserMetric"

    const-string/jumbo v1, "stopLoading"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;

    .line 259
    .local v0, session:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;
    if-nez v0, :cond_1

    .line 260
    const-string v1, "BrowserMetric"

    const-string v1, "session has been reclaimed"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->stopLoading()V

    goto :goto_0
.end method

.method public static transitionToCommitted(Ljava/lang/Object;)V
    .locals 3
    .parameter "browserFrame"

    .prologue
    const-string v2, "BrowserMetric"

    .line 120
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string v1, "BrowserMetric"

    const-string v1, "committed"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;

    .line 128
    .local v0, session:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;
    if-nez v0, :cond_1

    .line 129
    const-string v1, "BrowserMetric"

    const-string v1, "session has been reclaimed"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->transitionToCommitted()V

    goto :goto_0
.end method

.method public static webkitDraw(Ljava/lang/Object;)V
    .locals 3
    .parameter "browserFrame"

    .prologue
    const-string v2, "BrowserMetric"

    .line 228
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string v1, "BrowserMetric"

    const-string v1, "draw"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserMetricHook;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;

    .line 236
    .local v0, session:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;
    if-nez v0, :cond_1

    .line 237
    const-string v1, "BrowserMetric"

    const-string v1, "session has been reclaimed"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->webkitDraw()V

    goto :goto_0
.end method
