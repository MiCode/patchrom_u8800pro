.class public Lcom/carrieriq/iqagent/client/metrics/net/NT0F;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "NT0F.java"


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

.field public ucType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "NT0F"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/net/NT0F;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/net/NT0F;->ID:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/carrieriq/iqagent/client/metrics/net/NT0F;->ID:I

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
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT0F;->dwSize:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 26
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT0F;->dwSocketID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 27
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT0F;->ucType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 28
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT0F;->ucActiveProfile:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 29
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT0F;->ucIsModem:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 30
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT0F;->ucAppType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 31
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT0F;->ucMode:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 32
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/net/NT0F;->sUri:Ljava/lang/String;

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
