.class public Lcom/carrieriq/iqagent/client/metrics/survey/QU05;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "QU05.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ID:I = 0x0

.field public static final TERM_ABORTED:I = 0x2

.field public static final TERM_DEFERRED:I = 0x3

.field public static final TERM_FINISHED:I = 0x1

.field public static final TERM_UNKNOWN:I


# instance fields
.field public dwQuestionnaireInstanceID:I

.field public dwTermination:I

.field public szQuestionnaireID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "QU05"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/survey/QU05;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/survey/QU05;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/carrieriq/iqagent/client/metrics/survey/QU05;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

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
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU05;->szQuestionnaireID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU05;->szQuestionnaireID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 26
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 27
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU05;->dwQuestionnaireInstanceID:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 28
    iget v0, p0, Lcom/carrieriq/iqagent/client/metrics/survey/QU05;->dwTermination:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
