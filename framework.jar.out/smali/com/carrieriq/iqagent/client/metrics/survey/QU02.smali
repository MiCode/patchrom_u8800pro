.class public Lcom/carrieriq/iqagent/client/metrics/survey/QU02;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "QU02.java"


# static fields
.field public static final ID:I


# instance fields
.field public dwQuestionnaireInstanceID:I

.field public qwTriggeredAtTime:J

.field public szQuestionnaireID:Ljava/lang/String;

.field public szTriggerTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "QU02"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/survey/QU02;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/survey/QU02;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/carrieriq/iqagent/client/metrics/survey/QU02;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 18
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

    .line 21
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU02;->szQuestionnaireID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU02;->szQuestionnaireID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 22
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 23
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU02;->dwQuestionnaireInstanceID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 24
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU02;->szTriggerTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU02;->szTriggerTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 25
    :cond_1
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26
    iget-wide v0, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU02;->qwTriggeredAtTime:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
