.class public Lcom/carrieriq/iqagent/client/metrics/hw/HW13;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "HW13.java"


# static fields
.field public static final EXTRA_RAW_DATA:Ljava/lang/String; = "raw_data"

.field public static final ID:I


# instance fields
.field public strRawData:[B

.field public ucRemaining:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "HW13"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/hw/HW13;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW13;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW13;->ID:I

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
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW13;->ucRemaining:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 22
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW13;->strRawData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/hw/HW13;->strRawData:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 23
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
