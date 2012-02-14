.class public Lcom/carrieriq/iqagent/client/metrics/gs/GS15;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "GS15.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwContextId:I

.field public dwDns1:I

.field public dwDns2:I

.field public dwIpAddress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "GS15"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/gs/GS15;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS15;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS15;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 18
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .parameter "context"
    .parameter "ip"
    .parameter "dns1"
    .parameter "dns2"

    .prologue
    .line 21
    sget v0, Lcom/carrieriq/iqagent/client/metrics/gs/GS15;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 22
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS15;->dwContextId:I

    .line 23
    iput p2, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS15;->dwIpAddress:I

    .line 24
    iput p3, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS15;->dwDns1:I

    .line 25
    iput p4, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS15;->dwDns2:I

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
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS15;->dwContextId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS15;->dwIpAddress:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 32
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS15;->dwDns1:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 33
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/gs/GS15;->dwDns2:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
