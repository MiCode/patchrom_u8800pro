.class public Lcom/carrieriq/iqagent/client/metrics/hw/HW10;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "HW10.java"


# static fields
.field public static final ID:I


# instance fields
.field public strModel:Ljava/lang/String;

.field public ucMaxVoltage:B

.field public ucMinVoltage:B

.field public wCapacity:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "HW10"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/hw/HW10;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW10;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW10;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 18
    return-void
.end method

.method public constructor <init>(BBSLjava/lang/String;)V
    .locals 1
    .parameter "_ucMinVoltage"
    .parameter "_ucMaxVoltage"
    .parameter "_wCapacity"
    .parameter "_strModel"

    .prologue
    .line 21
    sget v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW10;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 22
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW10;->ucMinVoltage:B

    .line 23
    iput-byte p2, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW10;->ucMaxVoltage:B

    .line 24
    iput-short p3, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW10;->wCapacity:S

    .line 25
    iput-object p4, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW10;->strModel:Ljava/lang/String;

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
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW10;->ucMinVoltage:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 30
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW10;->ucMaxVoltage:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 31
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW10;->wCapacity:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 32
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW10;->strModel:Ljava/lang/String;

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
