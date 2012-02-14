.class Lcom/android/server/AlarmManagerService$ResultReceiver;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .parameter "pi"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "resultExtras"

    .prologue
    .line 1008
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1009
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #calls: Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-static {v4, p1}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    .line 1010
    .local v0, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-eqz v0, :cond_1

    .line 1011
    iget v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 1012
    iget v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-gtz v4, :cond_1

    .line 1013
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 1014
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 1016
    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1017
    .local v1, fc:Landroid/content/Intent$FilterComparison;
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1018
    .local v2, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    if-nez v2, :cond_0

    .line 1019
    new-instance v2, Lcom/android/server/AlarmManagerService$FilterStats;

    .end local v2           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/AlarmManagerService$1;)V

    .line 1020
    .restart local v2       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    :cond_0
    iget v4, v2, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 1025
    .end local v1           #fc:Landroid/content/Intent$FilterComparison;
    .end local v2           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1510(Lcom/android/server/AlarmManagerService;)I

    .line 1026
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)I

    move-result v4

    if-nez v4, :cond_2

    .line 1027
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1029
    :cond_2
    monitor-exit v3

    .line 1030
    return-void

    .line 1029
    .end local v0           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
