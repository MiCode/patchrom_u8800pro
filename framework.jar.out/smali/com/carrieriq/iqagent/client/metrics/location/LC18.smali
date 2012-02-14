.class public Lcom/carrieriq/iqagent/client/metrics/location/LC18;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "LC18.java"


# static fields
.field public static final ID:I


# instance fields
.field public lAltitude:I

.field public lHeading:I

.field public lLatitude:I

.field public lLongitude:I

.field public lUncertiantyAint:I

.field public lUncertiantyAltitude:I

.field public lUncertiantyAngle:I

.field public lUncertiantyPerpendicular:I

.field public lVelocityHorizontal:I

.field public lVelocityVertical:I

.field public ucFieldsValid:B

.field public ucGpsRequestType:B

.field public ucGpsResult:B

.field public ucGpsSource:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "LC18"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 29
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
    .line 52
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->ucGpsRequestType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 53
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->ucGpsSource:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 54
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->ucGpsResult:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 55
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->ucFieldsValid:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 56
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->lLatitude:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 57
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->lLongitude:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 58
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->lAltitude:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 59
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->lVelocityHorizontal:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 60
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->lVelocityVertical:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 61
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->lHeading:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 62
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->lUncertiantyAngle:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 63
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->lUncertiantyAint:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 64
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->lUncertiantyPerpendicular:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 65
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->lUncertiantyAltitude:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setAltitude(D)V
    .locals 2
    .parameter "meters"

    .prologue
    .line 40
    const-wide v0, 0x408f400000000000L

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->lAltitude:I

    .line 41
    return-void
.end method

.method public setBearing(F)V
    .locals 4
    .parameter "degrees"

    .prologue
    .line 48
    float-to-double v0, p1

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->lHeading:I

    .line 49
    return-void
.end method

.method public setLatitude(D)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 32
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->lLatitude:I

    .line 33
    return-void
.end method

.method public setLongitude(D)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 36
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->lLongitude:I

    .line 37
    return-void
.end method

.method public setVelocity(F)V
    .locals 4
    .parameter "meters_per_sec"

    .prologue
    .line 44
    float-to-double v0, p1

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/carrieriq/iqagent/client/metrics/location/LC18;->lVelocityHorizontal:I

    .line 45
    return-void
.end method
