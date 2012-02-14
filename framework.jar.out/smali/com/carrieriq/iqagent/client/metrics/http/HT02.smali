.class public Lcom/carrieriq/iqagent/client/metrics/http/HT02;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "HT02.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwRequestID:I

.field public szKey:Ljava/lang/String;

.field public szValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "HT02"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/http/HT02;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/http/HT02;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    sget v0, Lcom/carrieriq/iqagent/client/metrics/http/HT02;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 17
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
    const/4 v1, 0x0

    .line 20
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT02;->dwRequestID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 21
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT02;->szKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT02;->szKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 22
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 23
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT02;->szValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/http/HT02;->szValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 24
    :cond_1
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
