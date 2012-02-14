.class public Lcom/carrieriq/iqagent/client/metrics/http/HT06;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "HT06.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwRequestID:I

.field public dwSize:I

.field public dwSocketID:I

.field public scTransState:B

.field public wObjectCount:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "HT06"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/http/HT06;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/http/HT06;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/carrieriq/iqagent/client/metrics/http/HT06;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 19
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
    .line 22
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT06;->dwRequestID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 23
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT06;->dwSocketID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 24
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT06;->dwSize:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 25
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT06;->wObjectCount:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 26
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT06;->scTransState:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
