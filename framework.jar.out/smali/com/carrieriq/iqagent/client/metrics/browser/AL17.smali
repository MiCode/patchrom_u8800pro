.class public Lcom/carrieriq/iqagent/client/metrics/browser/AL17;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "AL17.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwSize:I

.field public wErrorCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "AL17"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/AL17;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL17;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL17;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(IS)V
    .locals 1
    .parameter "_dwSize"
    .parameter "_wErrorCode"

    .prologue
    .line 19
    sget v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL17;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 20
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL17;->dwSize:I

    .line 21
    iput-short p2, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL17;->wErrorCode:S

    .line 22
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
    .line 25
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL17;->dwSize:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 26
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL17;->wErrorCode:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
