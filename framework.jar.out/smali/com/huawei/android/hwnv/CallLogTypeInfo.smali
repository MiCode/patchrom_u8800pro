.class public Lcom/huawei/android/hwnv/CallLogTypeInfo;
.super Ljava/lang/Object;
.source "CallLogTypeInfo.java"


# instance fields
.field private callLogCounter:J

.field private callLogTime:J

.field private mDataTraffic:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallLogCounter()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/huawei/android/hwnv/CallLogTypeInfo;->callLogCounter:J

    return-wide v0
.end method

.method public getCallLogTime()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/huawei/android/hwnv/CallLogTypeInfo;->callLogTime:J

    return-wide v0
.end method

.method public getDataTraffic()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/huawei/android/hwnv/CallLogTypeInfo;->mDataTraffic:J

    return-wide v0
.end method

.method public setCallLogCounter(J)V
    .locals 0
    .parameter "callLogCounter"

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/huawei/android/hwnv/CallLogTypeInfo;->callLogCounter:J

    .line 37
    return-void
.end method

.method public setCallLogTime(J)V
    .locals 0
    .parameter "callLogTime"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/huawei/android/hwnv/CallLogTypeInfo;->callLogTime:J

    .line 41
    return-void
.end method

.method public setDataTraffic(J)V
    .locals 0
    .parameter "dataTraffic"

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/huawei/android/hwnv/CallLogTypeInfo;->mDataTraffic:J

    .line 24
    return-void
.end method
