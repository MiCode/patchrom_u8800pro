.class public Lcom/carrieriq/iqagent/client/metrics/rf/RF55;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "RF55.java"


# static fields
.field public static final ID:I


# instance fields
.field public cRssi:B

.field public cdmaEcio:S

.field public evdoEcio:S

.field public gsmBer:B

.field public haveCdmaEcio:Z

.field public haveEvdoEcio:Z

.field public haveGsmBer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "RF55"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 21
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .parameter "rssi"

    .prologue
    .line 24
    sget v0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 25
    invoke-virtual {p0}, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->clearData()V

    .line 26
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->cRssi:B

    .line 27
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->cRssi:B

    .line 31
    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->cdmaEcio:S

    .line 32
    iput-boolean v0, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->haveCdmaEcio:Z

    .line 33
    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->evdoEcio:S

    .line 34
    iput-boolean v0, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->haveEvdoEcio:Z

    .line 35
    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->gsmBer:B

    .line 36
    iput-boolean v0, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->haveGsmBer:Z

    .line 37
    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 55
    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->cRssi:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, optDataCount:B
    iget-boolean v1, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->haveCdmaEcio:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 58
    :cond_0
    iget-boolean v1, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->haveEvdoEcio:Z

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 59
    :cond_1
    iget-boolean v1, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->haveGsmBer:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 60
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 61
    iget-boolean v1, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->haveCdmaEcio:Z

    if-eqz v1, :cond_3

    .line 62
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 63
    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->cdmaEcio:S

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 65
    :cond_3
    iget-boolean v1, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->haveEvdoEcio:Z

    if-eqz v1, :cond_4

    .line 66
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 67
    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->evdoEcio:S

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 69
    :cond_4
    iget-boolean v1, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->haveGsmBer:Z

    if-eqz v1, :cond_5

    .line 70
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 71
    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->gsmBer:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 73
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    return v1
.end method

.method public setCdmaEcio(S)V
    .locals 1
    .parameter "rfValue"

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->haveCdmaEcio:Z

    .line 41
    iput-short p1, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->cdmaEcio:S

    .line 42
    return-void
.end method

.method public setEvdoEcio(S)V
    .locals 1
    .parameter "rfValue"

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->haveEvdoEcio:Z

    .line 46
    iput-short p1, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->evdoEcio:S

    .line 47
    return-void
.end method

.method public setGsmBer(B)V
    .locals 1
    .parameter "rfValue"

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->haveGsmBer:Z

    .line 51
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF55;->gsmBer:B

    .line 52
    return-void
.end method
