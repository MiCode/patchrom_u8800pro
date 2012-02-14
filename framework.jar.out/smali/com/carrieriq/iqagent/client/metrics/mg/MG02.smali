.class public Lcom/carrieriq/iqagent/client/metrics/mg/MG02;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "MG02.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwErrCode:I

.field public dwSmsId:I

.field public wResultCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "MG02"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/mg/MG02;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG02;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/carrieriq/iqagent/client/metrics/mg/MG02;->ID:I

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
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG02;->dwSmsId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 22
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG02;->dwErrCode:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 23
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/mg/MG02;->wResultCode:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
