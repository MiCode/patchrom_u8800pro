.class public Lcom/carrieriq/iqagent/client/metrics/ss/SS2B;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "SS2B.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ID:I = 0x0

.field private static final IQ_VERSION_FIRMWARE_AP:B = 0x0t

.field private static final IQ_VERSION_FIRMWARE_BP:B = 0x1t

.field private static final ucNumVersions:B = 0x2t


# instance fields
.field private szAPPVersion:Ljava/lang/String;

.field private szBPVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "SS2B"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ss/SS2B;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ss/SS2B;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ss/SS2B;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szAPPVer"
    .parameter "szBPVer"

    .prologue
    .line 22
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ss/SS2B;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/metrics/ss/SS2B;->szAPPVersion:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/carrieriq/iqagent/client/metrics/ss/SS2B;->szBPVersion:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 28
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 30
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 31
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ss/SS2B;->szAPPVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ss/SS2B;->szAPPVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 34
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 37
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ss/SS2B;->szBPVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/ss/SS2B;->szBPVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 40
    :cond_1
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
