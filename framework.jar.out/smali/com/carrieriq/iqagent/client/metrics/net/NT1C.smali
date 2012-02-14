.class public Lcom/carrieriq/iqagent/client/metrics/net/NT1C;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "NT1C.java"


# static fields
.field public static final ID:I


# instance fields
.field public ucEvent:B

.field public ucInterface:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "NT1C"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/net/NT1C;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/net/NT1C;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    sget v0, Lcom/carrieriq/iqagent/client/metrics/net/NT1C;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 17
    return-void
.end method

.method public constructor <init>(BB)V
    .locals 1
    .parameter "_ucInterface"
    .parameter "_ucEvent"

    .prologue
    .line 20
    sget v0, Lcom/carrieriq/iqagent/client/metrics/net/NT1C;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 21
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT1C;->ucInterface:B

    .line 22
    iput-byte p2, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT1C;->ucEvent:B

    .line 23
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
    .line 26
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT1C;->ucInterface:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 27
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT1C;->ucEvent:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
