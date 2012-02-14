.class public Lcom/carrieriq/iqagent/client/metrics/location/LC30;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "LC30.java"


# static fields
.field public static final ID:I


# instance fields
.field public lLatitude:I

.field public lLongitude:I

.field public timestamp_hi:I

.field public timestamp_lo:I

.field public ucFieldsValid:B

.field public ucMethod:B

.field public wAccuracy:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "LC30"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 24
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
    .line 38
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->timestamp_lo:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 39
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->timestamp_hi:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 40
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->lLatitude:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 41
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->lLongitude:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->wAccuracy:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 43
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->ucFieldsValid:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 44
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->ucMethod:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setLatitude(D)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 27
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->lLatitude:I

    .line 28
    return-void
.end method

.method public setLongitude(D)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 31
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC30;->lLongitude:I

    .line 32
    return-void
.end method
