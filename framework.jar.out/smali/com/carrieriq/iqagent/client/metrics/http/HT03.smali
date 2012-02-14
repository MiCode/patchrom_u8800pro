.class public Lcom/carrieriq/iqagent/client/metrics/http/HT03;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "HT03.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwRequestID:I

.field public dwSize:I

.field public dwSocketID:I

.field public wObjectCount:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "HT03"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/http/HT03;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/http/HT03;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/carrieriq/iqagent/client/metrics/http/HT03;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 18
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
    .line 21
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT03;->dwRequestID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 22
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT03;->dwSocketID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 23
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT03;->dwSize:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 24
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT03;->wObjectCount:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
