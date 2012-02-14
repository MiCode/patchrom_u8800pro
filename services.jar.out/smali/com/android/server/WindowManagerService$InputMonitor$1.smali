.class Lcom/android/server/WindowManagerService$InputMonitor$1;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService$InputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/WindowManagerService$InputMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService$InputMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 5424
    iput-object p1, p0, Lcom/android/server/WindowManagerService$InputMonitor$1;->this$1:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "false"

    const-string v13, "WindowManager"

    .line 5426
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor$1;->this$1:Lcom/android/server/WindowManagerService$InputMonitor;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/WindowManagerService;->isFastPowerisRun:Z

    .line 5428
    const-string v0, "WindowManager"

    const-string v0, "power up key coming"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5429
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor$1;->this$1:Lcom/android/server/WindowManagerService$InputMonitor;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/Powerstate;->restorePhoneState(Landroid/content/Context;)V

    .line 5430
    const-string v0, "WindowManager"

    const-string v0, "end Powerstate.restorePhoneState"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5432
    const-string v0, "true"

    const-string v1, "ro.poweroff_alarm"

    const-string v3, "false"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5433
    const-string v0, "persist.sys.powerup_reason"

    const-string v1, "NORMAL"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5436
    :cond_0
    const-string v0, "persist.sys.quickpoweron"

    const-string v1, "startpoweron"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5437
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor$1;->this$1:Lcom/android/server/WindowManagerService$InputMonitor;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/Powerstate;->showAnimationAgain(Landroid/content/Context;)V

    .line 5440
    const-string v0, "persist.sys.actualpoweron"

    const-string v1, "false"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5443
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v11, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5444
    .local v11, mHomeIntent:Landroid/content/Intent;
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5445
    const/high16 v0, 0x1020

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5447
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor$1;->this$1:Lcom/android/server/WindowManagerService$InputMonitor;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 5449
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5450
    .local v2, bootComIntent:Landroid/content/Intent;
    const-string v0, "hwbootcompleted"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5452
    :try_start_0
    const-string v0, "WindowManager"

    const-string v1, "begin send ACTION_BOOT_COMPLETED intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5453
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor$1;->this$1:Lcom/android/server/WindowManagerService$InputMonitor;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5459
    :goto_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor$1;->this$1:Lcom/android/server/WindowManagerService$InputMonitor;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iput-boolean v12, v0, Lcom/android/server/WindowManagerService;->isFastPowerisRun:Z

    .line 5461
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor$1;->this$1:Lcom/android/server/WindowManagerService$InputMonitor;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFastPoweronlock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5463
    const-string v0, "WindowManager"

    const-string v0, "mFastPoweronlock release"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5464
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor$1;->this$1:Lcom/android/server/WindowManagerService$InputMonitor;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    new-instance v1, Lcom/android/server/WindowManagerService$InputMonitor$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/WindowManagerService$InputMonitor$1$1;-><init>(Lcom/android/server/WindowManagerService$InputMonitor$1;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5473
    :cond_1
    return-void

    .line 5456
    :catch_0
    move-exception v0

    goto :goto_0
.end method
