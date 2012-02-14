.class public Lcom/huawei/android/hwnv/RefurbishTypeInfo;
.super Ljava/lang/Object;
.source "RefurbishTypeInfo.java"


# instance fields
.field private refurbish_counter:J

.field private refurbish_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRefurbishCounter()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/huawei/android/hwnv/RefurbishTypeInfo;->refurbish_counter:J

    return-wide v0
.end method

.method public getRefurbishDate()Ljava/util/Date;
    .locals 5

    .prologue
    .line 42
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/huawei/android/hwnv/RefurbishTypeInfo;->refurbish_time:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 44
    .local v0, refurbishDate:Ljava/util/Date;
    return-object v0
.end method

.method public getRefurbishTime()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/huawei/android/hwnv/RefurbishTypeInfo;->refurbish_time:J

    return-wide v0
.end method
