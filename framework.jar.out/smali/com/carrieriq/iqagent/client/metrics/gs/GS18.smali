.class public Lcom/carrieriq/iqagent/client/metrics/gs/GS18;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "GS18.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwContextId:I

.field public dwErrCode:I

.field public ucInitiator:B

.field public wTermCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "GS18"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 18
    return-void
.end method

.method public constructor <init>(IISB)V
    .locals 1
    .parameter "context"
    .parameter "errCode"
    .parameter "termCode"
    .parameter "initiator"

    .prologue
    .line 21
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 22
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->dwContextId:I

    .line 23
    iput p2, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->dwErrCode:I

    .line 24
    iput-short p3, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->wTermCode:S

    .line 25
    iput-byte p4, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->ucInitiator:B

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
    .line 30
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->dwContextId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->dwErrCode:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 32
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->wTermCode:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 33
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS18;->ucInitiator:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
