.class public Lcom/carrieriq/iqagent/client/IQBoosterPackUI;
.super Ljava/lang/Object;
.source "IQBoosterPackUI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native shouldSubmitMetricUI08()Z
.end method

.method private native submitMetricUI08(BB)I
.end method


# virtual methods
.method public native initialize()I
.end method

.method public submitMetricUI08(Lcom/carrieriq/iqagent/client/metrics/ui/UI08;)I
    .locals 2
    .parameter "metric"

    .prologue
    .line 9
    iget-byte v0, p1, Lcom/carrieriq/iqagent/client/metrics/ui/UI08;->ucSignal:B

    iget-byte v1, p1, Lcom/carrieriq/iqagent/client/metrics/ui/UI08;->ucTechnology:B

    invoke-direct {p0, v0, v1}, Lcom/carrieriq/iqagent/client/IQBoosterPackUI;->submitMetricUI08(BB)I

    move-result v0

    return v0
.end method
