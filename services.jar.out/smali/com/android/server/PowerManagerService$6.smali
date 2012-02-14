.class Lcom/android/server/PowerManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1811
    iput-object p1, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v0

    monitor-enter v0

    .line 1814
    const/16 v1, 0xaa6

    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    iget-wide v6, v6, Lcom/android/server/PowerManagerService;->mScreenOffStart:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$4100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v4

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1816
    iget-object v1, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$4100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1818
    iget-object v1, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 1820
    iget-object v1, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSamplingRateAdjuster:Lcom/android/server/PowerManagerService$SamplingRateAdjuster;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SamplingRateAdjuster;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1821
    iget-object v1, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    new-instance v2, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;-><init>(Lcom/android/server/PowerManagerService$1;)V

    #setter for: Lcom/android/server/PowerManagerService;->mSamplingRateAdjuster:Lcom/android/server/PowerManagerService$SamplingRateAdjuster;
    invoke-static {v1, v2}, Lcom/android/server/PowerManagerService;->access$4502(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$SamplingRateAdjuster;)Lcom/android/server/PowerManagerService$SamplingRateAdjuster;

    .line 1824
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSamplingRateAdjuster:Lcom/android/server/PowerManagerService$SamplingRateAdjuster;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SamplingRateAdjuster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$SamplingRateAdjuster;->increaseSamplingRate()V

    .line 1826
    :cond_1
    monitor-exit v0

    .line 1827
    return-void

    .line 1826
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
