.class public Lcom/carrieriq/iqagent/client/metrics/gs/GS46;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "GS46.java"


# static fields
.field public static final ID:I


# instance fields
.field public ucAccessTech:B

.field public ucFieldValidity:B

.field public ucFreqBand:B

.field public ucRAC:B

.field public wCellId:S

.field public wLAC:S

.field public wMCC:S

.field public wMNC:S

.field public wRNCId:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "GS46"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 23
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 24
    return-void
.end method

.method public constructor <init>(BB)V
    .locals 1
    .parameter "tech"
    .parameter "band"

    .prologue
    .line 27
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 28
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 29
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucAccessTech:B

    .line 30
    iput-byte p2, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFreqBand:B

    .line 31
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
    .line 65
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 66
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucRAC:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 67
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucAccessTech:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 68
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFreqBand:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 69
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMCC:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 70
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMNC:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 71
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wLAC:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 72
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wCellId:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 73
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wRNCId:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setCellId(S)V
    .locals 1
    .parameter "cellId"

    .prologue
    .line 60
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 61
    iput-short p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wCellId:S

    .line 62
    return-void
.end method

.method public setLAC(S)V
    .locals 1
    .parameter "lac"

    .prologue
    .line 55
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 56
    iput-short p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wLAC:S

    .line 57
    return-void
.end method

.method public setMCC(S)V
    .locals 1
    .parameter "mcc"

    .prologue
    .line 45
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 46
    iput-short p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMCC:S

    .line 47
    return-void
.end method

.method public setMNC(S)V
    .locals 1
    .parameter "mnc"

    .prologue
    .line 50
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 51
    iput-short p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wMNC:S

    .line 52
    return-void
.end method

.method public setRAC(B)V
    .locals 1
    .parameter "rac"

    .prologue
    .line 35
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 36
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucRAC:B

    .line 37
    return-void
.end method

.method public setRNCId(B)V
    .locals 1
    .parameter "rncId"

    .prologue
    .line 40
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->ucFieldValidity:B

    .line 41
    int-to-short v0, p1

    iput-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS46;->wRNCId:S

    .line 42
    return-void
.end method
