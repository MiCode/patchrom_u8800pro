.class public Lcom/carrieriq/iqagent/client/metrics/browser/AL36;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "AL36.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwPageID:I

.field public dwSize:I

.field public ucPageAttr:B

.field public wErrorCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "AL36"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->ID:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 18
    return-void
.end method

.method public constructor <init>(IISB)V
    .locals 1
    .parameter "_dwSize"
    .parameter "_dwPageID"
    .parameter "_wErrorCode"
    .parameter "_ucPageAttr"

    .prologue
    .line 21
    sget v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 22
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->dwSize:I

    .line 23
    iput p2, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->dwPageID:I

    .line 24
    iput-short p3, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->wErrorCode:S

    .line 25
    iput-byte p4, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->ucPageAttr:B

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
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->dwSize:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 30
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->dwPageID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    iget-short v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->wErrorCode:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 32
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->ucPageAttr:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "<AL36>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    const-string v1, "dwPageID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->dwPageID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 42
    const-string v1, ";dwSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->dwSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 44
    const-string v1, ";wErrorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    iget-short v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->wErrorCode:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 46
    const-string v1, ";ucPageAttr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    iget-byte v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL36;->ucPageAttr:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
