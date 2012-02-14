.class public Lcom/carrieriq/iqagent/client/metrics/http/HT01;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "HT01.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwRequestID:I

.field public dwSocketID:I

.field public szUri:Ljava/lang/String;

.field public ucType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "HT01"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/http/HT01;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/http/HT01;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/carrieriq/iqagent/client/metrics/http/HT01;->ID:I

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
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT01;->dwRequestID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 22
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT01;->dwSocketID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 23
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT01;->ucType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 24
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT01;->szUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT01;->szUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 25
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
