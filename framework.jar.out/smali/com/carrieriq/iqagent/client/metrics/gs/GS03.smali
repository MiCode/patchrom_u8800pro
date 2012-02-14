.class public Lcom/carrieriq/iqagent/client/metrics/gs/GS03;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "GS03.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwCallId:I

.field public dwErrCode:I

.field public wTermCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "GS03"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 17
    return-void
.end method

.method public constructor <init>(IIS)V
    .locals 1
    .parameter "callId"
    .parameter "errCode"
    .parameter "termCode"

    .prologue
    .line 21
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 22
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->dwCallId:I

    .line 23
    iput p2, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->dwErrCode:I

    .line 24
    iput-short p3, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->wTermCode:S

    .line 25
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
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->dwCallId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 30
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->dwErrCode:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->wTermCode:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
