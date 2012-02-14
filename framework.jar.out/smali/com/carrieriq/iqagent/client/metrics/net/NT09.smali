.class public Lcom/carrieriq/iqagent/client/metrics/net/NT09;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "NT09.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwActHA:I

.field public dwActIP:I

.field public dwHeaderSizeRcvd:I

.field public dwHeaderSizeSent:I

.field public dwPayloadSizeRcvd:I

.field public dwPayloadSizeSent:I

.field public ucCompressionType:B

.field public ucCompressionUsed:B

.field public wActiveTime:S

.field public wDormantTime:S

.field public wIpLifetime:S

.field public wLcpConfigsSent:S

.field public wLcpConfigsSuccess:S

.field public wLcpTermSent:S

.field public wLcpTermSuccess:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "NT09"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 33
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->dwActIP:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 34
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->dwActHA:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 35
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->wIpLifetime:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 36
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->wActiveTime:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 37
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->wDormantTime:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 38
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->ucCompressionUsed:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 39
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->ucCompressionType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 40
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->wLcpConfigsSent:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->wLcpConfigsSuccess:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 42
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->wLcpTermSent:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 43
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->wLcpTermSuccess:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 44
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->dwPayloadSizeSent:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 45
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->dwPayloadSizeRcvd:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 46
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->dwHeaderSizeSent:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 47
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT09;->dwHeaderSizeRcvd:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
