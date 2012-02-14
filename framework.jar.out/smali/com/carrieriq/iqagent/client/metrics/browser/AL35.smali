.class public Lcom/carrieriq/iqagent/client/metrics/browser/AL35;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "AL35.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwPageID:I

.field public ucEvent:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "AL35"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/AL35;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL35;->ID:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL35;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 16
    return-void
.end method

.method protected constructor <init>(IB)V
    .locals 1
    .parameter "_dwPageID"
    .parameter "_ucEvent"

    .prologue
    .line 19
    sget v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL35;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 20
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL35;->dwPageID:I

    .line 21
    iput-byte p2, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL35;->ucEvent:B

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
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL35;->dwPageID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 26
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL35;->ucEvent:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 33
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "<AL35>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    const-string v1, "dwPageID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL35;->dwPageID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 36
    const-string v1, ";ucEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL35;->ucEvent:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
