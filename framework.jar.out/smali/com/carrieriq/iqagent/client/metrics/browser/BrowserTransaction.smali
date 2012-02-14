.class public Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;
.super Ljava/lang/Object;
.source "BrowserTransaction.java"


# static fields
.field public static final HTTP_ERROR_CODE_NONE:I = 0x0

.field static final LOGTAG:Ljava/lang/String; = "BrowserMetric"

.field public static final PAGE_ATTR_FULLY_CACHED:B = 0x1t

.field public static final PAGE_ATTR_NOT_CACHED:B

.field static client:Lcom/carrieriq/iqagent/client/IQClient;

.field private static count:I


# instance fields
.field committed:Z

.field errorCode:I

.field fullyCached:Z

.field id:I

.field loadFinished:Z

.field mainFrameUrl:Ljava/lang/String;

.field rawData:I

.field renderStarted:Z

.field renderedData:I

.field result:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->count:I

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 4
    .parameter "sessionId"
    .parameter "mainFrameUrl"

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p2, :cond_0

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "we need a main frame url!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-static {}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->id()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->id:I

    .line 61
    iput-object p2, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->mainFrameUrl:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->fullyCached:Z

    .line 64
    iput v3, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->errorCode:I

    .line 65
    iput-short v3, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->result:S

    .line 66
    return-void
.end method

.method static final declared-synchronized id()I
    .locals 2

    .prologue
    .line 52
    const-class v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static final submit(Lcom/carrieriq/iqagent/client/Metric;)V
    .locals 3
    .parameter "metric"

    .prologue
    .line 93
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->client:Lcom/carrieriq/iqagent/client/IQClient;

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "BrowserMetric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "submit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->client:Lcom/carrieriq/iqagent/client/IQClient;

    invoke-virtual {v0, p0}, Lcom/carrieriq/iqagent/client/IQClient;->submitMetric(Lcom/carrieriq/iqagent/client/Metric;)I

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method submitAL34()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL34;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/AL34;-><init>()V

    .line 70
    .local v0, metric:Lcom/carrieriq/iqagent/client/metrics/browser/AL34;
    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->id:I

    iput v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL34;->dwPageID:I

    .line 71
    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->mainFrameUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL34;->sUrl:Ljava/lang/String;

    .line 72
    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->submit(Lcom/carrieriq/iqagent/client/Metric;)V

    .line 73
    return-void
.end method

.method submitAL35(B)V
    .locals 2
    .parameter "event"

    .prologue
    .line 76
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL35;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/AL35;-><init>()V

    .line 77
    .local v0, metric:Lcom/carrieriq/iqagent/client/metrics/browser/AL35;
    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->id:I

    iput v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL35;->dwPageID:I

    .line 78
    iput-byte p1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL35;->ucEvent:B

    .line 79
    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->submit(Lcom/carrieriq/iqagent/client/Metric;)V

    .line 80
    return-void
.end method

.method submitAL36()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;-><init>()V

    .line 84
    .local v0, metric:Lcom/carrieriq/iqagent/client/metrics/browser/AL36;
    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->id:I

    iput v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->dwPageID:I

    .line 85
    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->renderedData:I

    iput v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->dwSize:I

    .line 86
    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->result:S

    iput-short v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->wErrorCode:S

    .line 87
    iget-boolean v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->fullyCached:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-byte v1, v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->ucPageAttr:B

    .line 89
    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/BrowserTransaction;->submit(Lcom/carrieriq/iqagent/client/Metric;)V

    .line 90
    return-void

    .line 87
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
