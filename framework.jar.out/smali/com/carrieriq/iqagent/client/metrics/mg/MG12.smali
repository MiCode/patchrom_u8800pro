.class public Lcom/carrieriq/iqagent/client/metrics/mg/MG12;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "MG12.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwErrorCode:I

.field public szMmsMsgId:Ljava/lang/String;

.field public szMmsTransId:Ljava/lang/String;

.field public wMmsVersion:S

.field public wResultCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "MG12"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 20
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

    .line 23
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->dwErrorCode:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 24
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->wResultCode:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 25
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->wMmsVersion:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 26
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->szMmsTransId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 28
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG12;->szMmsMsgId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
