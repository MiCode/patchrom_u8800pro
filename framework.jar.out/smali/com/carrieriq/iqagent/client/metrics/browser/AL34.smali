.class public Lcom/carrieriq/iqagent/client/metrics/browser/AL34;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "AL34.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwPageID:I

.field public sUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "AL34"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/browser/AL34;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL34;->ID:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL34;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 20
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "_dwPageID"
    .parameter "_sUrl"

    .prologue
    .line 23
    sget v0, Lcom/carrieriq/iqagent/client/metrics/browser/AL34;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 24
    iput p1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL34;->dwPageID:I

    .line 25
    iput-object p2, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL34;->sUrl:Ljava/lang/String;

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
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL34;->dwPageID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 30
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL34;->sUrl:Ljava/lang/String;

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

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "<AL34>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    const-string v1, "dwPageID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    iget v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL34;->dwPageID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 41
    const-string v1, ";sUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/browser/AL34;->sUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
