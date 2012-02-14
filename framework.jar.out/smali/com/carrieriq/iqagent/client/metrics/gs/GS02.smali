.class public Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "GS02.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwCallId:I

.field public ucCallState:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "GS02"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(IB)V
    .locals 1
    .parameter "callId"
    .parameter "callState"

    .prologue
    .line 20
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 21
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->dwCallId:I

    .line 22
    iput-byte p2, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ucCallState:B

    .line 23
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
    .line 27
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->dwCallId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 28
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ucCallState:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
