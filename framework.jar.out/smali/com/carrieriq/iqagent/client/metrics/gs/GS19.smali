.class public Lcom/carrieriq/iqagent/client/metrics/gs/GS19;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "GS19.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwAssocContextId:I

.field public dwContextId:I

.field public szAPN:Ljava/lang/String;

.field public ucInitiator:B

.field public ucNSAPI:B

.field public ucOrdinal:B

.field public ucSAPI:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "GS19"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->szAPN:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(IIBBBLjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "assocContext"
    .parameter "ordinal"
    .parameter "nsapi"
    .parameter "sapi"
    .parameter "apn"

    .prologue
    .line 24
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->szAPN:Ljava/lang/String;

    .line 25
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->dwContextId:I

    .line 26
    iput p2, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->dwAssocContextId:I

    .line 27
    iput-byte p4, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->ucNSAPI:B

    .line 28
    iput-byte p5, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->ucSAPI:B

    .line 29
    iput-object p6, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->szAPN:Ljava/lang/String;

    .line 30
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
    .line 34
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->dwContextId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 35
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->dwAssocContextId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 36
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->ucOrdinal:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 37
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->ucInitiator:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 38
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->ucNSAPI:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 39
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->ucSAPI:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 40
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS19;->szAPN:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
