.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_ANIMATION_WAIT_TIME:I = 0x7d0

.field private static final SHUTDOWN_ANIMATION_WAIT_TIME_MORE:I = 0x1f4

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final SYSFS_MDM_EFS_SYNC_COMPLETE:Ljava/lang/String; = "/sys/devices/platform/rs300100a7.65536/sync_sts"

.field private static final SYSFS_MDM_EFS_SYNC_START:Ljava/lang/String; = "/sys/devices/platform/rs300100a7.65536/force_sync"

.field private static final SYSFS_MSM_EFS_SYNC_COMPLETE:Ljava/lang/String; = "/sys/devices/platform/rs300000a7.65536/sync_sts"

.field private static final SYSFS_MSM_EFS_SYNC_START:Ljava/lang/String; = "/sys/devices/platform/rs300000a7.65536/force_sync"

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static animProcess:Ljava/lang/Process;

.field private static isHaveShutdownAnimation:Z

.field private static mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mShutdown_path1:Ljava/lang/String;

.field private static mShutdown_path2:Ljava/lang/String;

.field private static mShutdown_path3:Ljava/lang/String;

.field private static pd:Landroid/app/ProgressDialog;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsRestart:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRilShutdown:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->isHaveShutdownAnimation:Z

    .line 86
    const-string v0, "/data/cust/media/shutdownanimation.zip"

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mShutdown_path1:Ljava/lang/String;

    .line 87
    const-string v0, "/data/local/shutdownanimation.zip"

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mShutdown_path2:Ljava/lang/String;

    .line 88
    const-string v0, "/system/media/shutdownanimation.zip"

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mShutdown_path3:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 92
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 101
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    .line 118
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsRestart:Z

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->animProcess:Ljava/lang/Process;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 115
    const-string v0, "ro.ril.shutdown"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mRilShutdown:Z

    .line 122
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->isHaveShutdownAnimation:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Process;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->animProcess:Ljava/lang/Process;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/Process;)Ljava/lang/Process;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/internal/app/ShutdownThread;->animProcess:Ljava/lang/Process;

    return-object p0
.end method

.method static synthetic access$200()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    return p0
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->sIsRestart:Z

    return p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const v7, 0x1040119

    const v5, 0x1040118

    const/4 v4, 0x1

    const-string v6, "ShutdownThread"

    .line 356
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 357
    :try_start_0
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    .line 358
    const-string v3, "ShutdownThread"

    const-string v4, "Request to shutdown already running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    monitor-exit v2

    .line 425
    .end local p0
    :goto_0
    return-void

    .line 361
    .restart local p0
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 362
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mShutdown_path1:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mShutdown_path2:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mShutdown_path3:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 368
    :cond_1
    sput-boolean v4, Lcom/android/internal/app/ShutdownThread;->isHaveShutdownAnimation:Z

    .line 370
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "/system/bin/shutdownanima"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 409
    :goto_1
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object p0, v2, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 410
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    iput-object p0, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 411
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v8, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 412
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    :try_start_2
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "Shutdown"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 416
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 422
    :cond_2
    :goto_2
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v3, Lcom/android/internal/app/ShutdownThread$4;

    invoke-direct {v3}, Lcom/android/internal/app/ShutdownThread$4;-><init>()V

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 424
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v2}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto :goto_0

    .line 362
    .restart local p0
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 371
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 372
    .local v0, e:Ljava/io/IOException;
    const-string v2, "ShutdownThread"

    const-string v2, "run shutdown animation failed"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 377
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 380
    .local v1, pd:Landroid/app/ProgressDialog;
    const-string/jumbo v2, "true"

    const-string v3, "ro.config.hw_quickpoweron"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fast_power_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_6

    .line 383
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsRestart:Z

    if-ne v2, v4, :cond_5

    .line 384
    const v2, 0x202000b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 385
    const v2, 0x202000f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 396
    :goto_3
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 397
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 398
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 401
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 404
    :cond_4
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_1

    .line 387
    :cond_5
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 388
    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 392
    :cond_6
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 417
    .end local v1           #pd:Landroid/app/ProgressDialog;
    .end local p0
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 418
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v2, "No permission to acquire wake lock"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v8, v2, Lcom/android/internal/app/ShutdownThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_2
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 350
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 351
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 352
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 353
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 5
    .parameter "reboot"
    .parameter "reason"

    .prologue
    const-string v4, "ShutdownThread"

    .line 670
    const-string v2, "persist.sys.actualpoweron"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    if-eqz p0, :cond_0

    .line 673
    const-string v2, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting, reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :try_start_0
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    const-string v2, "ShutdownThread"

    const-string v2, "Performing low-level shutdown..."

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 709
    return-void

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v2, "Reboot failed, will attempt shutdown instead"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 682
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->isHaveShutdownAnimation:Z

    if-eqz v2, :cond_1

    .line 684
    const-wide/16 v2, 0x7d0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 691
    :cond_1
    :goto_1
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .line 693
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 701
    :goto_2
    const-wide/16 v2, 0x1f4

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 702
    :catch_1
    move-exception v2

    goto :goto_0

    .line 685
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :catch_2
    move-exception v0

    .line 686
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "ShutdownThread"

    const-string/jumbo v2, "shutdown animation thread sleep 2s failed"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 694
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #vibrator:Landroid/os/Vibrator;
    :catch_3
    move-exception v0

    .line 696
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v2, "Failed to vibrate during shutdown."

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static restart(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-string v3, "ShutdownThread"

    .line 311
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_0
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_0

    .line 313
    const-string v2, "ShutdownThread"

    const-string v3, "Request to shutdown already running, returning."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    monitor-exit v1

    .line 338
    :goto_0
    return-void

    .line 316
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    const-string v1, "ShutdownThread"

    const-string v1, "Notifying thread to restart"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x202000d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x202000e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/internal/app/ShutdownThread$3;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ShutdownThread$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 332
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 337
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 316
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static showPowerOffWait(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 128
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mShutdown_path1:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mShutdown_path2:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mShutdown_path3:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    :cond_0
    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->isHaveShutdownAnimation:Z

    .line 134
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "/system/bin/shutdownanima"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    sput-object v1, Lcom/android/internal/app/ShutdownThread;->animProcess:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ShutdownThread"

    const-string v2, "run shutdown animation failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 139
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :cond_3
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 141
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v2, 0x1040118

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v2, 0x1040119

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 143
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 144
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 145
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 148
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 151
    :cond_4
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "ro.config.hw_quickpoweron"

    const-string/jumbo v8, "true"

    const-string v7, "ShutdownThread"

    .line 167
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 168
    :try_start_0
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_0

    .line 169
    const-string v6, "ShutdownThread"

    const-string v7, "Request to shutdown already running, returning."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    monitor-exit v5

    .line 306
    :goto_0
    return-void

    .line 172
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    const-string v5, "ro.monkey"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 176
    .local v4, isDebuggableMonkeyBuild:Z
    if-eqz v4, :cond_1

    .line 177
    const-string v5, "ShutdownThread"

    const-string v5, "Rejected shutdown as monkey is detected to be running."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    .end local v4           #isDebuggableMonkeyBuild:Z
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 181
    .restart local v4       #isDebuggableMonkeyBuild:Z
    :cond_1
    const-string v5, "ShutdownThread"

    const-string v5, "Notifying thread to start radio shutdown"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string/jumbo v5, "true"

    const-string v5, "ro.config.hw_quickpoweron"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    sput-boolean v9, Lcom/android/internal/app/ShutdownThread;->sIsRestart:Z

    .line 189
    :cond_2
    const-string v5, "persist.sys.actualpoweron"

    const-string/jumbo v6, "true"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    if-eqz p1, :cond_7

    .line 195
    const-string/jumbo v5, "true"

    const-string v5, "ro.config.hw_quickpoweron"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "fast_power_on"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_5

    .line 198
    const-string v5, "batteryinfo"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    sput-object v5, Lcom/android/internal/app/ShutdownThread;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, bBattery:Z
    :try_start_2
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5}, Lcom/android/internal/app/IBatteryStats;->isOnBattery()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 209
    :goto_1
    if-eqz v0, :cond_4

    .line 210
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 211
    :try_start_3
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_3

    .line 212
    const-string v6, "ShutdownThread"

    const-string v7, " Poweroff shutdown already return  running, returning."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    monitor-exit v5

    goto :goto_0

    .line 216
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 203
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 204
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "ShutdownThread"

    const-string v5, "RemoteException:"

    invoke-static {v7, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    const/4 v0, 0x0

    goto :goto_1

    .line 215
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v6, 0x1

    :try_start_4
    sput-boolean v6, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 216
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->showPowerOffWait(Landroid/content/Context;)V

    .line 218
    new-instance v3, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    .line 278
    .local v3, fakeshutdownThread:Ljava/lang/Thread;
    const-string/jumbo v5, "shutdown"

    invoke-virtual {v3, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 282
    .end local v3           #fakeshutdownThread:Ljava/lang/Thread;
    :cond_4
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 285
    .end local v0           #bBattery:Z
    :cond_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040118

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104011a

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    new-instance v7, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v7, p0}, Lcom/android/internal/app/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 296
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 299
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 301
    :cond_6
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 304
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_7
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 430
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 431
    monitor-exit v0

    .line 432
    return-void

    .line 431
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 35

    .prologue
    .line 443
    new-instance v6, Lcom/android/internal/app/ShutdownThread$5;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$5;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 456
    .local v6, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v4, :cond_f

    const-string v4, "1"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v4, :cond_10

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 457
    .local v33, reason:Ljava/lang/String;
    const-string/jumbo v3, "sys.shutdown.requested"

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v3, "ShutdownThread"

    const-string v4, "Sending shutdown broadcast..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    move-object v3, v0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 467
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long v19, v3, v5

    .line 468
    .local v19, endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3

    .line 469
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    move v4, v0

    if-nez v4, :cond_0

    .line 470
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v14, v19, v4

    .line 471
    .local v14, delay:J
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-gtz v4, :cond_11

    .line 472
    const-string v4, "ShutdownThread"

    const-string v5, "Shutdown broadcast timed out"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local v14           #delay:J
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    const-string v3, "ShutdownThread"

    const-string v4, "Shutting down activity manager..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v3, "activity"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 486
    .local v11, am:Landroid/app/IActivityManager;
    if-eqz v11, :cond_1

    .line 488
    const/16 v3, 0x2710

    :try_start_1
    invoke-interface {v11, v3}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_c

    .line 493
    :cond_1
    :goto_3
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v31

    .line 495
    .local v31, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v12

    .line 499
    .local v12, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v26

    .line 504
    .local v26, mount:Landroid/os/storage/IMountService;
    if-eqz v12, :cond_2

    :try_start_2
    invoke-interface {v12}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_12

    :cond_2
    const/4 v3, 0x1

    move v13, v3

    .line 506
    .local v13, bluetoothOff:Z
    :goto_4
    if-nez v13, :cond_3

    .line 507
    const-string v3, "ShutdownThread"

    const-string v4, "Disabling Bluetooth..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 516
    :cond_3
    :goto_5
    if-eqz v31, :cond_4

    :try_start_3
    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v3

    if-nez v3, :cond_13

    :cond_4
    const/4 v3, 0x1

    move/from16 v32, v3

    .line 517
    .local v32, radioOff:Z
    :goto_6
    if-nez v32, :cond_5

    .line 518
    const-string v3, "ShutdownThread"

    const-string v4, "Turning off radio..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v3, 0x0

    move-object/from16 v0, v31

    move v1, v3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 528
    :cond_5
    :goto_7
    const/16 v29, 0x0

    .line 530
    .local v29, outStream:Ljava/io/PrintWriter;
    const/16 v27, 0x0

    .line 531
    .local v27, msmEfsSyncDone:Z
    :try_start_4
    new-instance v23, Ljava/io/FileOutputStream;

    const-string v3, "/sys/devices/platform/rs300000a7.65536/force_sync"

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 532
    .local v23, fos:Ljava/io/FileOutputStream;
    new-instance v30, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v30

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 533
    .end local v29           #outStream:Ljava/io/PrintWriter;
    .local v30, outStream:Ljava/io/PrintWriter;
    :try_start_5
    const-string v3, "1"

    move-object/from16 v0, v30

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e

    .line 537
    if-eqz v30, :cond_6

    .line 538
    invoke-virtual/range {v30 .. v30}, Ljava/io/PrintWriter;->close()V

    .line 542
    .end local v23           #fos:Ljava/io/FileOutputStream;
    :cond_6
    :goto_8
    const/16 v25, 0x0

    .line 543
    .local v25, mdmEfsSyncDone:Z
    :try_start_6
    new-instance v23, Ljava/io/FileOutputStream;

    const-string v3, "/sys/devices/platform/rs300100a7.65536/force_sync"

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 544
    .restart local v23       #fos:Ljava/io/FileOutputStream;
    new-instance v29, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v29

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 545
    .end local v30           #outStream:Ljava/io/PrintWriter;
    .restart local v29       #outStream:Ljava/io/PrintWriter;
    :try_start_7
    const-string v3, "1"

    move-object/from16 v0, v29

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d

    .line 549
    if-eqz v29, :cond_7

    .line 550
    .end local v23           #fos:Ljava/io/FileOutputStream;
    :goto_9
    invoke-virtual/range {v29 .. v29}, Ljava/io/PrintWriter;->close()V

    .line 553
    :cond_7
    const-string v3, "ShutdownThread"

    const-string v4, "Waiting for Bluetooth and Radio..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/16 v24, 0x0

    .local v24, i:I
    :goto_a
    const/16 v3, 0x10

    move/from16 v0, v24

    move v1, v3

    if-ge v0, v1, :cond_c

    .line 557
    if-nez v13, :cond_8

    .line 559
    :try_start_8
    invoke-interface {v12}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_17

    const/4 v3, 0x1

    move v13, v3

    .line 566
    :cond_8
    :goto_b
    if-nez v32, :cond_9

    .line 568
    :try_start_9
    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_6

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    move/from16 v32, v3

    .line 574
    :cond_9
    :goto_c
    if-nez v27, :cond_a

    .line 576
    :try_start_a
    new-instance v22, Ljava/io/FileInputStream;

    const-string v3, "/sys/devices/platform/rs300000a7.65536/sync_sts"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 577
    .local v22, fis:Ljava/io/FileInputStream;
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->read()I

    move-result v34

    .line 578
    .local v34, result:I
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 579
    const/16 v3, 0x31

    move/from16 v0, v34

    move v1, v3

    if-ne v0, v1, :cond_a

    .line 581
    const/16 v27, 0x1

    .line 587
    .end local v22           #fis:Ljava/io/FileInputStream;
    .end local v34           #result:I
    :cond_a
    :goto_d
    if-nez v25, :cond_b

    .line 589
    :try_start_b
    new-instance v22, Ljava/io/FileInputStream;

    const-string v3, "/sys/devices/platform/rs300100a7.65536/sync_sts"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 590
    .restart local v22       #fis:Ljava/io/FileInputStream;
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->read()I

    move-result v34

    .line 591
    .restart local v34       #result:I
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 592
    const/16 v3, 0x31

    move/from16 v0, v34

    move v1, v3

    if-ne v0, v1, :cond_b

    .line 594
    const/16 v25, 0x1

    .line 600
    .end local v22           #fis:Ljava/io/FileInputStream;
    .end local v34           #result:I
    :cond_b
    :goto_e
    if-eqz v32, :cond_19

    if-eqz v13, :cond_19

    if-eqz v27, :cond_19

    if-eqz v25, :cond_19

    .line 601
    const-string v3, "ShutdownThread"

    const-string v4, "Radio and Bluetooth shutdown complete."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_c
    new-instance v28, Lcom/android/internal/app/ShutdownThread$6;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$6;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 615
    .local v28, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v3, "ShutdownThread"

    const-string v4, "Shutting down MountService"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 618
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x4e20

    add-long v17, v3, v5

    .line 619
    .local v17, endShutTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3

    .line 621
    if-eqz v26, :cond_1a

    .line 622
    :try_start_c
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 629
    :goto_f
    :try_start_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    move v4, v0

    if-nez v4, :cond_d

    .line 630
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v14, v17, v4

    .line 631
    .restart local v14       #delay:J
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-gtz v4, :cond_1b

    .line 632
    const-string v4, "ShutdownThread"

    const-string v5, "Shutdown wait timed out"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v14           #delay:J
    :cond_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 642
    const-string/jumbo v3, "true"

    const-string v4, "ro.config.hw_quickpoweron"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 643
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsRestart:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    .line 644
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->isHaveShutdownAnimation:Z

    if-eqz v3, :cond_e

    .line 646
    const-wide/16 v3, 0x7d0

    :try_start_e
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_b

    .line 651
    :cond_e
    :goto_10
    const/4 v3, 0x1

    const-string v4, "restart phone"

    invoke-static {v3, v4}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 659
    :goto_11
    return-void

    .line 456
    .end local v11           #am:Landroid/app/IActivityManager;
    .end local v12           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v13           #bluetoothOff:Z
    .end local v17           #endShutTime:J
    .end local v19           #endTime:J
    .end local v24           #i:I
    .end local v25           #mdmEfsSyncDone:Z
    .end local v26           #mount:Landroid/os/storage/IMountService;
    .end local v27           #msmEfsSyncDone:Z
    .end local v28           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v29           #outStream:Ljava/io/PrintWriter;
    .end local v31           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v32           #radioOff:Z
    .end local v33           #reason:Ljava/lang/String;
    :cond_f
    const-string v4, "0"

    goto/16 :goto_0

    :cond_10
    const-string v4, ""

    goto/16 :goto_1

    .line 476
    .restart local v14       #delay:J
    .restart local v19       #endTime:J
    .restart local v33       #reason:Ljava/lang/String;
    :cond_11
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v4, v0

    invoke-virtual {v4, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_2

    .line 477
    :catch_0
    move-exception v4

    goto/16 :goto_2

    .line 480
    .end local v14           #delay:J
    :catchall_0
    move-exception v4

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw v4

    .line 504
    .restart local v11       #am:Landroid/app/IActivityManager;
    .restart local v12       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v26       #mount:Landroid/os/storage/IMountService;
    .restart local v31       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_12
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_4

    .line 510
    :catch_1
    move-exception v3

    move-object/from16 v21, v3

    .line 511
    .local v21, ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    const/4 v13, 0x1

    .restart local v13       #bluetoothOff:Z
    goto/16 :goto_5

    .line 516
    .end local v21           #ex:Landroid/os/RemoteException;
    :cond_13
    const/4 v3, 0x0

    move/from16 v32, v3

    goto/16 :goto_6

    .line 521
    :catch_2
    move-exception v3

    move-object/from16 v21, v3

    .line 522
    .restart local v21       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during radio shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    const/16 v32, 0x1

    .restart local v32       #radioOff:Z
    goto/16 :goto_7

    .line 534
    .end local v21           #ex:Landroid/os/RemoteException;
    .restart local v27       #msmEfsSyncDone:Z
    .restart local v29       #outStream:Ljava/io/PrintWriter;
    :catch_3
    move-exception v3

    move-object/from16 v16, v3

    .line 535
    .local v16, e:Ljava/lang/Exception;
    :goto_12
    const/16 v27, 0x1

    .line 537
    if-eqz v29, :cond_14

    .line 538
    invoke-virtual/range {v29 .. v29}, Ljava/io/PrintWriter;->close()V

    :cond_14
    move-object/from16 v30, v29

    .line 539
    .end local v29           #outStream:Ljava/io/PrintWriter;
    .restart local v30       #outStream:Ljava/io/PrintWriter;
    goto/16 :goto_8

    .line 537
    .end local v16           #e:Ljava/lang/Exception;
    .end local v30           #outStream:Ljava/io/PrintWriter;
    .restart local v29       #outStream:Ljava/io/PrintWriter;
    :catchall_1
    move-exception v3

    :goto_13
    if-eqz v29, :cond_15

    .line 538
    invoke-virtual/range {v29 .. v29}, Ljava/io/PrintWriter;->close()V

    .line 537
    :cond_15
    throw v3

    .line 546
    .end local v29           #outStream:Ljava/io/PrintWriter;
    .restart local v25       #mdmEfsSyncDone:Z
    .restart local v30       #outStream:Ljava/io/PrintWriter;
    :catch_4
    move-exception v3

    move-object/from16 v16, v3

    move-object/from16 v29, v30

    .line 547
    .end local v30           #outStream:Ljava/io/PrintWriter;
    .restart local v16       #e:Ljava/lang/Exception;
    .restart local v29       #outStream:Ljava/io/PrintWriter;
    :goto_14
    const/16 v25, 0x1

    .line 549
    if-eqz v29, :cond_7

    goto/16 :goto_9

    .end local v16           #e:Ljava/lang/Exception;
    .end local v29           #outStream:Ljava/io/PrintWriter;
    .restart local v30       #outStream:Ljava/io/PrintWriter;
    :catchall_2
    move-exception v3

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/PrintWriter;
    .restart local v29       #outStream:Ljava/io/PrintWriter;
    :goto_15
    if-eqz v29, :cond_16

    .line 550
    invoke-virtual/range {v29 .. v29}, Ljava/io/PrintWriter;->close()V

    .line 549
    :cond_16
    throw v3

    .line 559
    .restart local v24       #i:I
    :cond_17
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_b

    .line 561
    :catch_5
    move-exception v21

    .line 562
    .restart local v21       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    const/4 v13, 0x1

    goto/16 :goto_b

    .line 568
    .end local v21           #ex:Landroid/os/RemoteException;
    :cond_18
    const/4 v3, 0x0

    move/from16 v32, v3

    goto/16 :goto_c

    .line 569
    :catch_6
    move-exception v21

    .line 570
    .restart local v21       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during radio shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 571
    const/16 v32, 0x1

    goto/16 :goto_c

    .line 583
    .end local v21           #ex:Landroid/os/RemoteException;
    :catch_7
    move-exception v3

    move-object/from16 v21, v3

    .line 584
    .local v21, ex:Ljava/lang/Exception;
    const/16 v27, 0x1

    goto/16 :goto_d

    .line 596
    .end local v21           #ex:Ljava/lang/Exception;
    :catch_8
    move-exception v3

    move-object/from16 v21, v3

    .line 597
    .restart local v21       #ex:Ljava/lang/Exception;
    const/16 v25, 0x1

    goto/16 :goto_e

    .line 604
    .end local v21           #ex:Ljava/lang/Exception;
    :cond_19
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 556
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_a

    .line 624
    .restart local v17       #endShutTime:J
    .restart local v28       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_1a
    :try_start_11
    const-string v4, "ShutdownThread"

    const-string v5, "MountService unavailable for shutdown"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_f

    .line 626
    :catch_9
    move-exception v4

    move-object/from16 v16, v4

    .line 627
    .restart local v16       #e:Ljava/lang/Exception;
    :try_start_12
    const-string v4, "ShutdownThread"

    const-string v5, "Exception during MountService shutdown"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 640
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    throw v4

    .line 636
    .restart local v14       #delay:J
    :cond_1b
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-object v4, v0

    invoke-virtual {v4, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_a

    goto/16 :goto_f

    .line 637
    :catch_a
    move-exception v4

    goto/16 :goto_f

    .line 647
    .end local v14           #delay:J
    :catch_b
    move-exception v16

    .line 648
    .local v16, e:Ljava/lang/InterruptedException;
    const-string v3, "ShutdownThread"

    const-string/jumbo v4, "shutdown animation thread sleep 2s failed"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 653
    .end local v16           #e:Ljava/lang/InterruptedException;
    :cond_1c
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto/16 :goto_11

    .line 656
    :cond_1d
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto/16 :goto_11

    .line 489
    .end local v12           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v13           #bluetoothOff:Z
    .end local v17           #endShutTime:J
    .end local v24           #i:I
    .end local v25           #mdmEfsSyncDone:Z
    .end local v26           #mount:Landroid/os/storage/IMountService;
    .end local v27           #msmEfsSyncDone:Z
    .end local v28           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v29           #outStream:Ljava/io/PrintWriter;
    .end local v31           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v32           #radioOff:Z
    :catch_c
    move-exception v3

    goto/16 :goto_3

    .line 549
    .restart local v12       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v13       #bluetoothOff:Z
    .restart local v23       #fos:Ljava/io/FileOutputStream;
    .restart local v25       #mdmEfsSyncDone:Z
    .restart local v26       #mount:Landroid/os/storage/IMountService;
    .restart local v27       #msmEfsSyncDone:Z
    .restart local v29       #outStream:Ljava/io/PrintWriter;
    .restart local v31       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v32       #radioOff:Z
    :catchall_4
    move-exception v3

    goto/16 :goto_15

    .line 546
    :catch_d
    move-exception v3

    move-object/from16 v16, v3

    goto/16 :goto_14

    .line 537
    .end local v25           #mdmEfsSyncDone:Z
    .end local v29           #outStream:Ljava/io/PrintWriter;
    .restart local v30       #outStream:Ljava/io/PrintWriter;
    :catchall_5
    move-exception v3

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/PrintWriter;
    .restart local v29       #outStream:Ljava/io/PrintWriter;
    goto/16 :goto_13

    .line 534
    .end local v29           #outStream:Ljava/io/PrintWriter;
    .restart local v30       #outStream:Ljava/io/PrintWriter;
    :catch_e
    move-exception v3

    move-object/from16 v16, v3

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/PrintWriter;
    .restart local v29       #outStream:Ljava/io/PrintWriter;
    goto/16 :goto_12
.end method
