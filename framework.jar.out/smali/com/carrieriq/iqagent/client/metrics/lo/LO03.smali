.class public Lcom/carrieriq/iqagent/client/metrics/lo/LO03;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "LO03.java"


# static fields
.field public static final ID:I


# instance fields
.field public fileId:S

.field public lineNumber:S

.field public logString:Ljava/lang/String;

.field public moduleId:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "LO03"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/lo/LO03;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/lo/LO03;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/carrieriq/iqagent/client/metrics/lo/LO03;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 22
    sget v0, Lcom/carrieriq/iqagent/client/metrics/lo/LO03;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/lo/LO03;->logString:Ljava/lang/String;

    .line 24
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
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/lo/LO03;->moduleId:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 28
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/lo/LO03;->fileId:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 29
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/lo/LO03;->lineNumber:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 30
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/lo/LO03;->logString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
