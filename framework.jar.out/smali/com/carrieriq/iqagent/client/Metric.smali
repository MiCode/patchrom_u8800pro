.class public Lcom/carrieriq/iqagent/client/Metric;
.super Ljava/lang/Object;
.source "Metric.java"


# static fields
.field public static final CURRENT_TIME:J = -0x1L


# instance fields
.field public metricID:I

.field public timestamp:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "_metricID"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/carrieriq/iqagent/client/Metric;->metricID:I

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/carrieriq/iqagent/client/Metric;->timestamp:J

    .line 38
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .parameter "_metricID"
    .parameter "_ts"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/carrieriq/iqagent/client/Metric;->metricID:I

    .line 42
    iput-wide p2, p0, Lcom/carrieriq/iqagent/client/Metric;->timestamp:J

    .line 43
    return-void
.end method

.method public static idFromString(Ljava/lang/String;)I
    .locals 4
    .parameter "_id"

    .prologue
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    move v1, v3

    .line 19
    :goto_0
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x18

    .line 16
    .local v0, id:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 17
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 18
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    move v1, v0

    .line 19
    goto :goto_0
.end method

.method public static idToBytes(I[BI)V
    .locals 2
    .parameter "_id"
    .parameter "array"
    .parameter "offset"

    .prologue
    .line 23
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 24
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 25
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 26
    add-int/lit8 v0, p2, 0x3

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 27
    return-void
.end method

.method public static idToString(I)Ljava/lang/String;
    .locals 4
    .parameter "_id"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 30
    new-array v0, v3, [B

    .line 31
    .local v0, bytes:[B
    invoke-static {p0, v0, v2}, Lcom/carrieriq/iqagent/client/Metric;->idToBytes(I[BI)V

    .line 32
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v1
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
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public setTimestamp(J)V
    .locals 0
    .parameter "_ts"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/carrieriq/iqagent/client/Metric;->timestamp:J

    .line 47
    return-void
.end method
