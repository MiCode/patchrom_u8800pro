.class Lcom/android/server/PowerManagerService$13;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
    .line 3509
    iput-object p1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 3556
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 3511
    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v3

    monitor-enter v3

    .line 3513
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3514
    monitor-exit v3

    .line 3552
    :goto_0
    return-void

    .line 3517
    :cond_0
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 3518
    .local v2, value:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3525
    .local v0, milliseconds:J
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValueTemp:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6400(Lcom/android/server/PowerManagerService;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 3526
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorValueTemp:I
    invoke-static {v4, v2}, Lcom/android/server/PowerManagerService;->access$6402(Lcom/android/server/PowerManagerService;I)I

    .line 3536
    :cond_1
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$4000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3537
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6600(Lcom/android/server/PowerManagerService;)F

    move-result v4

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 3545
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v5, v2

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$5602(Lcom/android/server/PowerManagerService;F)F

    .line 3546
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$4000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0xdac

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3551
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0           #milliseconds:J
    .end local v2           #value:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3549
    .restart local v0       #milliseconds:J
    .restart local v2       #value:I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    const/high16 v5, -0x4080

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$5602(Lcom/android/server/PowerManagerService;F)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
