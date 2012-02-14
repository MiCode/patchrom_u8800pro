.class public Lcom/carrieriq/iqagent/client/metrics/gs/GS01;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "GS01.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwCallId:I

.field public szNumber:Ljava/lang/String;

.field public ucCallAttr:B

.field public ucCallState:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "GS01"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 18
    return-void
.end method

.method public constructor <init>(IBLjava/lang/String;)V
    .locals 1
    .parameter "callId"
    .parameter "callState"
    .parameter "number"

    .prologue
    .line 37
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 38
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->dwCallId:I

    .line 39
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallAttr:B

    .line 40
    iput-byte p2, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallState:B

    .line 41
    iput-object p3, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->szNumber:Ljava/lang/String;

    .line 42
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
    .line 46
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->dwCallId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 47
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallAttr:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 48
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallState:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 49
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->szNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setOriginated()V
    .locals 1

    .prologue
    .line 25
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallAttr:B

    and-int/lit16 v0, v0, 0xfe

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallAttr:B

    .line 26
    return-void
.end method

.method public setTerminated()V
    .locals 1

    .prologue
    .line 21
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallAttr:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallAttr:B

    .line 22
    return-void
.end method

.method public setVideo()V
    .locals 1

    .prologue
    .line 33
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallAttr:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallAttr:B

    .line 34
    return-void
.end method

.method public setVoice()V
    .locals 1

    .prologue
    .line 29
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallAttr:B

    and-int/lit16 v0, v0, 0xfd

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallAttr:B

    .line 30
    return-void
.end method
