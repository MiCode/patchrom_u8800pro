.class Lcom/android/server/am/ActivityRecord$ActivityPerformanceInfo;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActivityPerformanceInfo"
.end annotation


# instance fields
.field activityName:Ljava/lang/String;

.field consumedTime:J

.field endTime:Ljava/lang/String;

.field killProcsCount:I

.field startupTime:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
