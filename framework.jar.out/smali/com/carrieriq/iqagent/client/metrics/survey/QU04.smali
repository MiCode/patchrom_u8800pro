.class public Lcom/carrieriq/iqagent/client/metrics/survey/QU04;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "QU04.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carrieriq/iqagent/client/metrics/survey/QU04$Answer;
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field answers:Ljava/util/Vector;

.field public dwQuestionnaireInstanceID:I

.field public qwTriggeredAtTime:J

.field public szQuestionnaireID:Ljava/lang/String;

.field public szTriggerTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "QU04"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/survey/QU04;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04;->answers:Ljava/util/Vector;

    .line 26
    return-void
.end method


# virtual methods
.method public addAnswer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 33
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04$Answer;

    invoke-direct {v0}, Lcom/carrieriq/iqagent/client/metrics/survey/QU04$Answer;-><init>()V

    .line 34
    .local v0, ans:Lcom/carrieriq/iqagent/client/metrics/survey/QU04$Answer;
    iput-object p1, v0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04$Answer;->szQuestionID:Ljava/lang/String;

    .line 35
    iput-object p2, v0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04$Answer;->szAnswer:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04;->answers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public clearAnswers()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04;->answers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 30
    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 40
    iget-object v2, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04;->szQuestionnaireID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04;->szQuestionnaireID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 41
    :cond_0
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 42
    iget v2, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04;->dwQuestionnaireInstanceID:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 43
    iget-object v2, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04;->szTriggerTag:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04;->szTriggerTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 44
    :cond_1
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 45
    iget-wide v2, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04;->qwTriggeredAtTime:J

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 47
    iget-object v2, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04;->answers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 48
    .local v1, len:I
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 50
    iget-object v2, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04;->answers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/carrieriq/iqagent/client/metrics/survey/QU04$Answer;

    iget-object v2, v2, Lcom/carrieriq/iqagent/client/metrics/survey/QU04$Answer;->szQuestionID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 52
    iget-object v2, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU04;->answers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/carrieriq/iqagent/client/metrics/survey/QU04$Answer;

    iget-object v2, v2, Lcom/carrieriq/iqagent/client/metrics/survey/QU04$Answer;->szAnswer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    return v2
.end method
