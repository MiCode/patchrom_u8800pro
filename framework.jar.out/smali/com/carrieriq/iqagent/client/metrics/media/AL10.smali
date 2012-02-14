.class public Lcom/carrieriq/iqagent/client/metrics/media/AL10;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "AL10.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwSize:I

.field public ucAvgRate:B

.field public ucCodec:B

.field public wErrorCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "AL10"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/media/AL10;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/media/AL10;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/carrieriq/iqagent/client/metrics/media/AL10;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 18
    return-void
.end method

.method public constructor <init>(ISBB)V
    .locals 1
    .parameter "_dwSize"
    .parameter "_wErrorCode"
    .parameter "_ucCodec"
    .parameter "_ucAvgRate"

    .prologue
    .line 21
    sget v0, Lcom/carrieriq/iqagent/client/metrics/media/AL10;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 22
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/media/AL10;->dwSize:I

    .line 23
    iput-short p2, p0, Lcom/carrieriq/iqagent/client/metrics/media/AL10;->wErrorCode:S

    .line 24
    iput-byte p3, p0, Lcom/carrieriq/iqagent/client/metrics/media/AL10;->ucCodec:B

    .line 25
    iput-byte p4, p0, Lcom/carrieriq/iqagent/client/metrics/media/AL10;->ucAvgRate:B

    .line 26
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
    .line 29
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/media/AL10;->dwSize:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 30
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/media/AL10;->wErrorCode:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 31
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/media/AL10;->ucCodec:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 32
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/media/AL10;->ucAvgRate:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
