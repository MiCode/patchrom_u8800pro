.class public abstract Lcom/carrieriq/iqagent/client/MetricQueryCallback;
.super Ljava/lang/Object;
.source "MetricQueryCallback.java"

# interfaces
.implements Lcom/carrieriq/iqagent/client/IEventCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(IILjava/nio/ByteBuffer;)V
    .locals 1
    .parameter "event"
    .parameter "eventParam"
    .parameter "extraData"

    .prologue
    .line 7
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    .line 9
    :goto_0
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/carrieriq/iqagent/client/MetricQueryCallback;->onMetricQuery(ILjava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public abstract onMetricQuery(ILjava/nio/ByteBuffer;)V
.end method
