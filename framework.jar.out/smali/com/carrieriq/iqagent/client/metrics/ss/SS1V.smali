.class public Lcom/carrieriq/iqagent/client/metrics/ss/SS1V;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "SS1V.java"


# static fields
.field public static final ID:I


# instance fields
.field public szESN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "SS1V"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ss/SS1V;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ss/SS1V;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ss/SS1V;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "ESN"

    .prologue
    .line 18
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ss/SS1V;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 19
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/ss/SS1V;->szESN:Ljava/lang/String;

    .line 20
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
    .line 23
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ss/SS1V;->szESN:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ss/SS1V;->szESN:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 26
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
