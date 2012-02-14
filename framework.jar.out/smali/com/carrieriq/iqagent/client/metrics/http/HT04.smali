.class public Lcom/carrieriq/iqagent/client/metrics/http/HT04;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "HT04.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwRequestID:I

.field public dwSocketID:I

.field public szResponseString:Ljava/lang/String;

.field public ucProtocol:B

.field public wCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "HT04"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/http/HT04;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/http/HT04;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/carrieriq/iqagent/client/metrics/http/HT04;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 19
    return-void
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 22
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT04;->dwRequestID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 23
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT04;->dwSocketID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 24
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT04;->ucProtocol:B

    shl-int/lit8 v0, v0, 0xc

    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT04;->wCode:S

    and-int/lit16 v1, v1, 0xfff

    or-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 25
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT04;->szResponseString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT04;->szResponseString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 26
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
