.class Lcom/android/server/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 347
    .local v6, action:Ljava/lang/String;
    const/16 v20, 0x0

    .line 349
    .local v20, queryRestart:Z
    const-string v25, "android.intent.action.BATTERY_CHANGED"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 350
    const-string v25, "plugged"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_5

    const/16 v25, 0x1

    move/from16 v9, v25

    .line 351
    .local v9, batteryCharging:Z
    :goto_0
    const-string v25, "level"

    const/16 v26, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 352
    .local v17, level:I
    if-ltz v17, :cond_6

    const/16 v25, 0xa

    move/from16 v0, v17

    move/from16 v1, v25

    if-gt v0, v1, :cond_6

    const/16 v25, 0x1

    move/from16 v11, v25

    .line 353
    .local v11, batteryLow:Z
    :goto_1
    const-string v25, "status"

    const/16 v26, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 354
    .local v22, status:I
    const/16 v25, 0x5

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    const/16 v25, 0x5a

    move/from16 v0, v17

    move/from16 v1, v25

    if-lt v0, v1, :cond_7

    :cond_0
    const/16 v25, 0x1

    move/from16 v10, v25

    .line 356
    .local v10, batteryFull:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Z

    move-result v25

    move v0, v9

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mBatteryLow:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Z

    move-result v25

    move v0, v11

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mBatteryFull:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Z

    move-result v25

    move v0, v10

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 359
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v9

    #setter for: Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v11

    #setter for: Lcom/android/server/NotificationManagerService;->mBatteryLow:Z
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v10

    #setter for: Lcom/android/server/NotificationManagerService;->mBatteryFull:Z
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$1302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    #calls: Lcom/android/server/NotificationManagerService;->updateLights()V
    invoke-static/range {v25 .. v25}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)V

    .line 421
    .end local v9           #batteryCharging:Z
    .end local v10           #batteryFull:Z
    .end local v11           #batteryLow:Z
    .end local v17           #level:I
    .end local v22           #status:I
    :cond_2
    :goto_3
    const-string v25, "true"

    const-string v26, "ro.config.hw_quickpoweron"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 422
    const-string v25, "android.intent.action.ACTION_SHUTDOWN"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v25

    monitor-enter v25

    .line 424
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v26, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 425
    .local v5, N:I
    const/16 v26, 0x1

    sub-int v13, v5, v26

    .local v13, i:I
    :goto_4
    if-ltz v13, :cond_16

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v26, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 427
    .local v21, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x6

    if-eqz v26, :cond_4

    const-string v26, "android"

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    const-string v26, "system"

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 429
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    move-object/from16 v26, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v26, :cond_3

    .line 431
    :try_start_1
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 438
    :cond_3
    :goto_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v26, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    #calls: Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    :cond_4
    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    .line 350
    .end local v5           #N:I
    .end local v13           #i:I
    .end local v21           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_5
    const/16 v25, 0x0

    move/from16 v9, v25

    goto/16 :goto_0

    .line 352
    .restart local v9       #batteryCharging:Z
    .restart local v17       #level:I
    :cond_6
    const/16 v25, 0x0

    move/from16 v11, v25

    goto/16 :goto_1

    .line 354
    .restart local v11       #batteryLow:Z
    .restart local v22       #status:I
    :cond_7
    const/16 v25, 0x0

    move/from16 v10, v25

    goto/16 :goto_2

    .line 364
    .end local v9           #batteryCharging:Z
    .end local v11           #batteryLow:Z
    .end local v17           #level:I
    .end local v22           #status:I
    :cond_8
    const-string v25, "android.hardware.usb.action.USB_STATE"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->extras:Landroid/os/Bundle;

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->extras:Landroid/os/Bundle;

    move-object/from16 v25, v0

    const-string v26, "connected"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    .line 369
    .local v24, usbConnected:Z
    const-string v25, "enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->extras:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v27, "adb"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 372
    .local v7, adbEnabled:Z
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "wifi_usb_tmo_set"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 373
    if-eqz v24, :cond_9

    .line 374
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 375
    .local v15, intents:Landroid/content/Intent;
    const-string v25, "android.wk.usb.RECEIVED"

    move-object v0, v15

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    .end local v15           #intents:Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    if-eqz v24, :cond_a

    if-eqz v7, :cond_a

    const/16 v26, 0x1

    :goto_6
    #calls: Lcom/android/server/NotificationManagerService;->updateAdbNotification(Z)V
    invoke-static/range {v25 .. v26}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;Z)V

    goto/16 :goto_3

    :cond_a
    const/16 v26, 0x0

    goto :goto_6

    .line 382
    .end local v7           #adbEnabled:Z
    .end local v24           #usbConnected:Z
    :cond_b
    const-string v25, "android.hardware.action.USB_DISCONNECTED"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #calls: Lcom/android/server/NotificationManagerService;->updateAdbNotification(Z)V
    invoke-static/range {v25 .. v26}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;Z)V

    goto/16 :goto_3

    .line 385
    :cond_c
    const-string v25, "android.intent.action.PACKAGE_REMOVED"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_d

    const-string v25, "android.intent.action.PACKAGE_RESTARTED"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_d

    const-string v25, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    const-string v25, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 389
    :cond_d
    const/16 v18, 0x0

    .line 390
    .local v18, pkgList:[Ljava/lang/String;
    const-string v25, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 391
    const-string v25, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 405
    :goto_7
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_2

    .line 406
    move-object/from16 v8, v18

    .local v8, arr$:[Ljava/lang/String;
    move-object v0, v8

    array-length v0, v0

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_8
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    aget-object v19, v8, v14

    .line 407
    .local v19, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    if-nez v20, :cond_12

    const/16 v28, 0x1

    :goto_9
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 406
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 392
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v16           #len$:I
    .end local v19           #pkgName:Ljava/lang/String;
    :cond_e
    if-eqz v20, :cond_f

    .line 393
    const-string v25, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    goto :goto_7

    .line 395
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    .line 396
    .local v23, uri:Landroid/net/Uri;
    if-nez v23, :cond_11

    .line 447
    .end local v18           #pkgList:[Ljava/lang/String;
    .end local v23           #uri:Landroid/net/Uri;
    :cond_10
    :goto_a
    return-void

    .line 399
    .restart local v18       #pkgList:[Ljava/lang/String;
    .restart local v23       #uri:Landroid/net/Uri;
    :cond_11
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v19

    .line 400
    .restart local v19       #pkgName:Ljava/lang/String;
    if-eqz v19, :cond_10

    .line 403
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v18           #pkgList:[Ljava/lang/String;
    const/16 v25, 0x0

    aput-object v19, v18, v25

    .restart local v18       #pkgList:[Ljava/lang/String;
    goto :goto_7

    .line 407
    .end local v23           #uri:Landroid/net/Uri;
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v14       #i$:I
    .restart local v16       #len$:I
    :cond_12
    const/16 v28, 0x0

    goto :goto_9

    .line 410
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v16           #len$:I
    .end local v18           #pkgList:[Ljava/lang/String;
    .end local v19           #pkgName:Ljava/lang/String;
    :cond_13
    const-string v25, "android.intent.action.SCREEN_ON"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static/range {v25 .. v26}, Lcom/android/server/NotificationManagerService;->access$1602(Lcom/android/server/NotificationManagerService;Z)Z

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static/range {v25 .. v25}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_3

    .line 413
    :cond_14
    const-string v25, "android.intent.action.SCREEN_OFF"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static/range {v25 .. v26}, Lcom/android/server/NotificationManagerService;->access$1602(Lcom/android/server/NotificationManagerService;Z)Z

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static/range {v25 .. v25}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_3

    .line 416
    :cond_15
    const-string v25, "android.intent.action.PHONE_STATE"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    const-string v26, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    sget-object v27, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    #setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static/range {v25 .. v26}, Lcom/android/server/NotificationManagerService;->access$1802(Lcom/android/server/NotificationManagerService;Z)Z

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v25, v0

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static/range {v25 .. v25}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_3

    .line 432
    .restart local v5       #N:I
    .restart local v13       #i:I
    .restart local v21       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catch_0
    move-exception v26

    move-object/from16 v12, v26

    .line 435
    .local v12, ex:Landroid/app/PendingIntent$CanceledException;
    :try_start_3
    const-string v26, "NotificationService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "canceled PendingIntent for "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v12

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 443
    .end local v5           #N:I
    .end local v12           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v13           #i:I
    .end local v21           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v26

    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v26

    .line 442
    .restart local v5       #N:I
    .restart local v13       #i:I
    :cond_16
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v26, v0

    #calls: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/NotificationManagerService;->access$1000(Lcom/android/server/NotificationManagerService;)V

    .line 443
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_a
.end method
