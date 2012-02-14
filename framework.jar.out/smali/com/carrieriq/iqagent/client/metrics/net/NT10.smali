.class public Lcom/carrieriq/iqagent/client/metrics/net/NT10;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "NT10.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwSize:I

.field public dwSocketID:I

.field public sUri:Ljava/lang/String;

.field public ucActiveProfile:B

.field public ucAppType:B

.field public ucIsModem:B

.field public ucMode:B

.field public wCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "NT10"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/net/NT10;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/net/NT10;->ID:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/carrieriq/iqagent/client/metrics/net/NT10;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 22
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
    .line 25
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT10;->dwSize:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 26
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT10;->dwSocketID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 27
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT10;->wCode:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 28
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT10;->ucActiveProfile:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 29
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT10;->ucIsModem:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 30
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT10;->ucAppType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 31
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT10;->ucMode:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 32
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT10;->sUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
