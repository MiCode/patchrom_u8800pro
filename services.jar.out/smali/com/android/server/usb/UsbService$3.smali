.class Lcom/android/server/usb/UsbService$3;
.super Landroid/os/Handler;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbService;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private addEnabledFunctionsLocked(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 376
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$900(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$900(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "enabled"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$1000(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$1000(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "disabled"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 382
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v5, "accessory"

    .line 386
    iget-object v5, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/usb/UsbService;->access$100(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 387
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 438
    .end local p0
    :cond_0
    :goto_0
    monitor-exit v5

    .line 439
    :goto_1
    return-void

    .line 389
    .restart local p0
    :pswitch_0
    iget-object v6, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mLastConnected:I
    invoke-static {v7}, Lcom/android/server/usb/UsbService;->access$1100(Lcom/android/server/usb/UsbService;)I

    move-result v7

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConfiguration:I
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mLastConfiguration:I
    invoke-static {v7}, Lcom/android/server/usb/UsbService;->access$1200(Lcom/android/server/usb/UsbService;)I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 390
    :cond_1
    iget-object v6, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v6

    if-nez v6, :cond_5

    .line 391
    const-string v6, "accessory"

    invoke-static {v6}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 394
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "exited USB accessory mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v6, "accessory"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/hardware/usb/UsbManager;->setFunctionEnabled(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 397
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "could not disable accessory function"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_2
    iget-object v6, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$1300(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 400
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_4

    .line 401
    iget-object v6, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$1300(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 402
    .local v2, function:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v2, v6}, Landroid/hardware/usb/UsbManager;->setFunctionEnabled(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    .line 403
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not reenable function "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 407
    .end local v2           #function:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$700(Lcom/android/server/usb/UsbService;)Landroid/hardware/usb/UsbAccessory;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 408
    iget-object v6, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$800(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceSettingsManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;
    invoke-static {v7}, Lcom/android/server/usb/UsbService;->access$700(Lcom/android/server/usb/UsbService;)Landroid/hardware/usb/UsbAccessory;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/usb/UsbDeviceSettingsManager;->accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V

    .line 409
    iget-object v6, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;
    invoke-static {v6, v7}, Lcom/android/server/usb/UsbService;->access$702(Lcom/android/server/usb/UsbService;Landroid/hardware/usb/UsbAccessory;)Landroid/hardware/usb/UsbAccessory;

    .line 414
    .end local v0           #count:I
    .end local v3           #i:I
    :cond_5
    iget-object v6, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$1400(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 415
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v6, "device_provisioned"

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_6

    .line 417
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Device not provisioned, skipping USB broadcast"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    monitor-exit v5

    goto/16 :goto_1

    .line 438
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local p0
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 421
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local p0
    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v7, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v7}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v7

    #setter for: Lcom/android/server/usb/UsbService;->mLastConnected:I
    invoke-static {v6, v7}, Lcom/android/server/usb/UsbService;->access$1102(Lcom/android/server/usb/UsbService;I)I

    .line 422
    iget-object v6, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v7, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConfiguration:I
    invoke-static {v7}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)I

    move-result v7

    #setter for: Lcom/android/server/usb/UsbService;->mLastConfiguration:I
    invoke-static {v6, v7}, Lcom/android/server/usb/UsbService;->access$1202(Lcom/android/server/usb/UsbService;I)I

    .line 425
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v4, intent:Landroid/content/Intent;
    const/high16 v6, 0x2000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 427
    const-string v6, "connected"

    iget-object v7, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v7}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v7

    if-eqz v7, :cond_7

    move v7, v10

    :goto_3
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 428
    const-string v6, "configuration"

    iget-object v7, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConfiguration:I
    invoke-static {v7}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbService$3;->addEnabledFunctionsLocked(Landroid/content/Intent;)V

    .line 430
    iget-object v6, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$1400(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    move v7, v9

    .line 427
    goto :goto_3

    .line 435
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/usb/UsbService$3;->this$0:Lcom/android/server/usb/UsbService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v10, :cond_8

    move v7, v10

    :goto_4
    #calls: Lcom/android/server/usb/UsbService;->functionEnabledLocked(Ljava/lang/String;Z)V
    invoke-static {v6, p0, v7}, Lcom/android/server/usb/UsbService;->access$1500(Lcom/android/server/usb/UsbService;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_8
    move v7, v9

    goto :goto_4

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
