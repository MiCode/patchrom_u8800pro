.class public Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;
.super Ljava/lang/Object;
.source "BrowserSession.java"


# static fields
.field static final LOGTAG:Ljava/lang/String; = "BrowserMetric"

.field static count:B


# instance fields
.field currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

.field id:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-byte v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->count:B

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->id()B

    move-result v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->id:B

    .line 28
    return-void
.end method

.method private errorCodeToMetricErrorCode(I)S
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 191
    .local v0, metricErrorCode:S
    const/16 v1, -0xc

    if-lt p1, v1, :cond_0

    if-ltz p1, :cond_1

    :cond_0
    const/16 v1, -0xf

    if-eq p1, v1, :cond_1

    const/16 v1, 0x190

    if-lt p1, v1, :cond_3

    const/16 v1, 0x258

    if-ge p1, v1, :cond_3

    .line 194
    :cond_1
    const/4 v0, 0x2

    .line 204
    :cond_2
    :goto_0
    return v0

    .line 196
    :cond_3
    const/16 v1, -0xd

    if-eq p1, v1, :cond_4

    const/16 v1, -0xe

    if-ne p1, v1, :cond_5

    .line 197
    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    .line 200
    :cond_5
    if-nez p1, :cond_2

    .line 201
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static final declared-synchronized id()B
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;

    monitor-enter v0

    :try_start_0
    sget-byte v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->count:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->count:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized data(I)V
    .locals 2
    .parameter "length"

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 108
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    iget v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->rawData:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->rawData:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized didFirstLayout()V
    .locals 2

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    const/4 v1, 0x0

    iput v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->renderedData:I

    .line 173
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->renderStarted:Z

    .line 175
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->submitAL35(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized error(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "desc"

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 81
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    iput p1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->errorCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadFinished()V
    .locals 2

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 57
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->loadFinished:Z

    .line 60
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    iget-boolean v0, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->committed:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->submitAL35(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadStart(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    iget v0, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->errorCode:I

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    iget v1, v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->errorCode:I

    invoke-direct {p0, v1}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->errorCodeToMetricErrorCode(I)S

    move-result v1

    iput-short v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->result:S

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->submitAL36()V

    .line 45
    :cond_1
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->id:B

    invoke-direct {v0, v1, p1}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;-><init>(BLjava/lang/String;)V

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    .line 46
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->submitAL34()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notCached(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->fullyCached:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopLoading()V
    .locals 2

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    monitor-exit p0

    return-void

    .line 147
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    iget-boolean v0, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->loadFinished:Z

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    const/4 v1, 0x4

    iput-short v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->result:S

    .line 149
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->submitAL36()V

    .line 151
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized transitionToCommitted()V
    .locals 2

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 165
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->committed:Z

    .line 163
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->submitAL35(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized webkitDraw()V
    .locals 2

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    iget-boolean v0, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->renderStarted:Z

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    iget v1, v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->rawData:I

    iput v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->renderedData:I

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    iget-boolean v0, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->loadFinished:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    iget-boolean v0, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->renderStarted:Z

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->submitAL35(B)V

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    iget v1, v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->errorCode:I

    invoke-direct {p0, v1}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->errorCodeToMetricErrorCode(I)S

    move-result v1

    iput-short v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->result:S

    .line 134
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    invoke-virtual {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->submitAL36()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserSession;->currentTransaction:Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
