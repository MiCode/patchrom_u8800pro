.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 724
    const-string v0, "AlarmManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 725
    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 731
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v7, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mDescriptor:I
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$000(Lcom/android/server/AlarmManagerService;)I

    move-result v7

    #calls: Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I
    invoke-static {v6, v7}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;I)I

    move-result v25

    .line 733
    .local v25, result:I
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v27, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/high16 v6, 0x1

    and-int v6, v6, v25

    if-eqz v6, :cond_0

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v7, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 738
    new-instance v19, Landroid/content/Intent;

    const-string v6, "android.intent.action.TIME_SET"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 739
    .local v19, intent:Landroid/content/Intent;
    const/high16 v6, 0x2000

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 740
    const/high16 v6, 0x1000

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 744
    .end local v19           #intent:Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19

    .line 745
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 746
    .local v23, nowRTC:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 751
    .local v21, nowELAPSED:J
    and-int/lit8 v6, v25, 0x1

    if-eqz v6, :cond_1

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v7, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v27

    move-wide/from16 v3, v23

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 754
    :cond_1
    and-int/lit8 v6, v25, 0x2

    if-eqz v6, :cond_2

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v7, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v27

    move-wide/from16 v3, v23

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 757
    :cond_2
    and-int/lit8 v6, v25, 0x4

    if-eqz v6, :cond_3

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v7, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v27

    move-wide/from16 v3, v21

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 760
    :cond_3
    and-int/lit8 v6, v25, 0x8

    if-eqz v6, :cond_4

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v7, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v27

    move-wide/from16 v3, v21

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 765
    :cond_4
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 766
    .local v20, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_5
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 767
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AlarmManagerService$Alarm;

    .line 768
    .local v16, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    const-string v6, "persist.sys.quickpoweron"

    const-string v7, "normal"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 770
    .local v26, statePoweron:Ljava/lang/String;
    const-string v6, "true"

    const-string v7, "ro.config.hw_quickpoweron"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object v7, v0

    if-eq v6, v7, :cond_6

    const-string v6, "normal"

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "true"

    const-string v7, "ro.poweroff_alarm"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "true"

    const-string v7, "ro.poweroff_alarm"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "com.android.deskclock"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_5

    .line 780
    :cond_6
    :try_start_1
    const-string v6, "true"

    const-string v7, "ro.poweroff_alarm"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 782
    const-string v6, "true"

    const-string v7, "ro.config.hw_quickpoweron"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "shutdown"

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "com.android.deskclock"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 785
    const-string v6, "persist.sys.powerup_reason"

    const-string v7, "RTC"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v6, "persist.sys.actualpoweron"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    const/4 v7, 0x1

    #setter for: Lcom/android/server/AlarmManagerService;->mIsFirstPowerOffAlarm:Z
    invoke-static {v6, v7}, Lcom/android/server/AlarmManagerService;->access$1102(Lcom/android/server/AlarmManagerService;Z)Z

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/Powerstate;->powerOnforAlarm(Landroid/content/Context;)V

    .line 792
    new-instance v7, Landroid/content/Intent;

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 793
    .local v7, bootComIntent:Landroid/content/Intent;
    const-string v6, "hwbootcompleted"

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 796
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 798
    .local v5, mActivityManager:Landroid/app/IActivityManager;
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v5 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 804
    .end local v5           #mActivityManager:Landroid/app/IActivityManager;
    .end local v7           #bootComIntent:Landroid/content/Intent;
    :cond_7
    :goto_2
    :try_start_3
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move v6, v0

    if-nez v6, :cond_8

    const-string v6, "com.android.deskclock"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 806
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v7, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mIsFirstPowerOffAlarm:Z
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Z

    move-result v7

    if-ne v6, v7, :cond_b

    const-string v6, "RTC"

    const-string v7, "persist.sys.powerup_reason"

    const-string v8, "NORMAL"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 807
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1200()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "FLAG_IS_FIRST_POWER_OFF_ALARM"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/android/server/AlarmManagerService;->mIsFirstPowerOffAlarm:Z
    invoke-static {v6, v7}, Lcom/android/server/AlarmManagerService;->access$1102(Lcom/android/server/AlarmManagerService;Z)Z

    .line 814
    :cond_8
    :goto_3
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1200()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.intent.extra.ALARM_COUNT"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    move v11, v0

    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-result-object v13

    invoke-virtual/range {v8 .. v13}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)I

    move-result v6

    if-nez v6, :cond_9

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 823
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$1508(Lcom/android/server/AlarmManagerService;)I

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object v7, v0

    #calls: Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-static {v6, v7}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v17

    .line 826
    .local v17, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    move v6, v0

    if-nez v6, :cond_c

    .line 827
    move-wide/from16 v0, v21

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 831
    :goto_4
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_a

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move v6, v0

    if-nez v6, :cond_5

    .line 833
    :cond_a
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 834
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object v6, v0

    invoke-static {v6}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 837
    .end local v17           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_0
    move-exception v6

    move-object/from16 v18, v6

    .line 838
    .local v18, e:Landroid/app/PendingIntent$CanceledException;
    :try_start_4
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide v8, v0

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_5

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 850
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v18           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v20           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v21           #nowELAPSED:J
    .end local v23           #nowRTC:J
    .end local v26           #statePoweron:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 810
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v20       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v21       #nowELAPSED:J
    .restart local v23       #nowRTC:J
    .restart local v26       #statePoweron:Ljava/lang/String;
    :cond_b
    :try_start_5
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1200()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "FLAG_IS_FIRST_POWER_OFF_ALARM"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 843
    :catch_1
    move-exception v6

    move-object/from16 v18, v6

    .line 844
    .local v18, e:Ljava/lang/RuntimeException;
    :try_start_6
    const-string v6, "AlarmManager"

    const-string v7, "Failure sending alarm."

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 829
    .end local v18           #e:Ljava/lang/RuntimeException;
    .restart local v17       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_c
    :try_start_7
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 850
    .end local v16           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v17           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v26           #statePoweron:Ljava/lang/String;
    :cond_d
    :try_start_8
    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 801
    .restart local v7       #bootComIntent:Landroid/content/Intent;
    .restart local v16       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v26       #statePoweron:Ljava/lang/String;
    :catch_2
    move-exception v6

    goto/16 :goto_2
.end method
