.class Lcom/android/server/BatteryService;
.super Landroid/os/Binder;
.source "BatteryService.java"


# static fields
.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field static final BATTERY_SCALE:I = 0x64

.field private static final BATTERY_STATS_SERVICE_NAME:Ljava/lang/String; = "batteryinfo"

.field private static final CRITICAL_BATTERY_LEVEL:I = 0x4

.field private static final DUMPSYS_ARGS:[Ljava/lang/String; = null

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final DUMP_MAX_LENGTH:I = 0x6000

.field private static final LOCAL_LOGV:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hw03:Lcom/carrieriq/iqagent/client/metrics/hw/HW03;

.field private mAcOnline:Z

.field private mBatteryHealth:I

.field private mBatteryLevel:I

.field private mBatteryLevelCritical:Z

.field private mBatteryMaxVoltage:I

.field private mBatteryPresent:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatus:I

.field private mBatteryTechnology:Ljava/lang/String;

.field private mBatteryTemperature:I

.field private mBatteryVoltage:I

.field private final mContext:Landroid/content/Context;

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryPresent:Z

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastPlugType:I

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mPlugType:I

.field private mSentLowBatteryBroadcast:Z

.field private mUEventObserver:Landroid/os/UEventObserver;

.field private mUsbOnline:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--checkin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-u"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 127
    new-instance v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW03;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/carrieriq/iqagent/client/metrics/hw/HW03;-><init>(B)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->hw03:Lcom/carrieriq/iqagent/client/metrics/hw/HW03;

    .line 172
    new-instance v0, Lcom/android/server/BatteryService$1;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mUEventObserver:Landroid/os/UEventObserver;

    .line 130
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 133
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 135
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 138
    iget-object v0, p0, Lcom/android/server/BatteryService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "SUBSYSTEM=power_supply"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/android/server/BatteryService;->update()V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/BatteryService;->update()V

    return-void
.end method

.method private final getIcon(I)I
    .locals 2
    .parameter "level"

    .prologue
    .line 503
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 504
    const v0, 0x10802ac

    .line 510
    :goto_0
    return v0

    .line 505
    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 508
    :cond_1
    const v0, 0x1080296

    goto :goto_0

    .line 510
    :cond_2
    const v0, 0x10802b3

    goto :goto_0
.end method

.method private final logBatteryStats()V
    .locals 12

    .prologue
    const-string v9, "BATTERY_DISCHARGE_INFO"

    const-string v11, "failed to delete temporary dumpsys file: "

    const-string v10, "failed to close dumpsys output stream"

    .line 437
    const-string v7, "batteryinfo"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 438
    .local v0, batteryInfoService:Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 441
    .local v1, db:Landroid/os/DropBoxManager;
    if-eqz v1, :cond_0

    const-string v7, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v1, v9}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 443
    const/4 v2, 0x0

    .line 444
    .local v2, dumpFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 447
    .local v4, dumpStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/batteryinfo.dump"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 448
    .end local v2           #dumpFile:Ljava/io/File;
    .local v3, dumpFile:Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 449
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .local v5, dumpStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 450
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 453
    const-string v7, "BATTERY_DISCHARGE_INFO"

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v3, v8}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 460
    if-eqz v5, :cond_2

    .line 462
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 467
    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_7

    .line 468
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_0

    .line 463
    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 464
    .local v6, e:Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 454
    .end local v3           #dumpFile:Ljava/io/File;
    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #dumpFile:Ljava/io/File;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 455
    .local v6, e:Landroid/os/RemoteException;
    :goto_2
    :try_start_4
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to dump battery service"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 460
    if-eqz v4, :cond_3

    .line 462
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 467
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 468
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 463
    .restart local v6       #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 464
    .local v6, e:Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 456
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    move-object v6, v7

    .line 457
    .restart local v6       #e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 460
    if-eqz v4, :cond_4

    .line 462
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 467
    :cond_4
    :goto_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 468
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 463
    :catch_4
    move-exception v6

    .line 464
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 460
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v4, :cond_5

    .line 462
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 467
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_6

    .line 468
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to delete temporary dumpsys file: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v7

    .line 463
    :catch_5
    move-exception v6

    .line 464
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "failed to close dumpsys output stream"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 460
    .end local v2           #dumpFile:Ljava/io/File;
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_6

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_6

    .line 456
    .end local v2           #dumpFile:Ljava/io/File;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catch_6
    move-exception v7

    move-object v6, v7

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_4

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v7

    move-object v6, v7

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_4

    .line 454
    .end local v2           #dumpFile:Ljava/io/File;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catch_8
    move-exception v7

    move-object v6, v7

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_2

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v7

    move-object v6, v7

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_2

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :cond_7
    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_0
.end method

.method private final logOutlier(J)V
    .locals 10
    .parameter "duration"

    .prologue
    .line 475
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 476
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v7, "battery_discharge_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, dischargeThresholdString:Ljava/lang/String;
    const-string v7, "battery_discharge_duration_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, durationThresholdString:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    .line 483
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 484
    .local v3, durationThreshold:J
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 485
    .local v1, dischargeThreshold:I
    cmp-long v7, p1, v3

    if-gtz v7, :cond_0

    iget v7, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    sub-int/2addr v7, v8

    if-lt v7, v1, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStats()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v1           #dischargeThreshold:I
    .end local v3           #durationThreshold:J
    :cond_0
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 495
    .local v6, e:Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native native_update()V
.end method

.method private final sendIntent()V
    .locals 4

    .prologue
    .line 400
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x6000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 404
    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->getIcon(I)I

    move-result v0

    .line 406
    .local v0, icon:I
    const-string v2, "status"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    const-string v2, "health"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    const-string v2, "present"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 409
    const-string v2, "level"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    const-string v2, "icon-small"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    const-string v2, "plugged"

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    const-string v2, "voltage"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    const-string v2, "temperature"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    const-string v2, "technology"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    sget-boolean v2, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v2, :cond_0

    .line 419
    const-string v2, "event"

    iget-object v3, p0, Lcom/android/server/BatteryService;->hw03:Lcom/carrieriq/iqagent/client/metrics/hw/HW03;

    iget-byte v3, v3, Lcom/carrieriq/iqagent/client/metrics/hw/HW03;->ucBatteryEvent:B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 433
    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method private final shutdownIfNoPower()V
    .locals 4

    .prologue
    .line 193
    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    sget-boolean v2, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/server/BatteryService;->hw03:Lcom/carrieriq/iqagent/client/metrics/hw/HW03;

    const/4 v3, 0x1

    iput-byte v3, v2, Lcom/carrieriq/iqagent/client/metrics/hw/HW03;->ucBatteryEvent:B

    .line 200
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v1, iqIntent:Landroid/content/Intent;
    const/high16 v2, 0x6000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    const-string v2, "event"

    iget-object v3, p0, Lcom/android/server/BatteryService;->hw03:Lcom/carrieriq/iqagent/client/metrics/hw/HW03;

    iget-byte v3, v3, Lcom/carrieriq/iqagent/client/metrics/hw/HW03;->ucBatteryEvent:B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 204
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 207
    .end local v1           #iqIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_CONFIRM"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 212
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private final shutdownIfOverTemp()V
    .locals 3

    .prologue
    .line 217
    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    const/16 v2, 0x2a8

    if-le v1, v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 223
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private final declared-synchronized update()V
    .locals 14

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/BatteryService;->native_update()V

    .line 230
    const/4 v9, 0x0

    .line 231
    .local v9, logOutlier:Z
    const-wide/16 v7, 0x0

    .line 233
    .local v7, dischargeDuration:J
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 234
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-eqz v0, :cond_10

    .line 235
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iget v6, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPower()V

    .line 252
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfOverTemp()V

    .line 254
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v0, v1, :cond_e

    .line 262
    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_2

    .line 263
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_12

    .line 267
    sget-boolean v0, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/server/BatteryService;->hw03:Lcom/carrieriq/iqagent/client/metrics/hw/HW03;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW03;->ucBatteryEvent:B

    .line 274
    :cond_1
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    if-eq v0, v1, :cond_2

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v7, v0, v2

    .line 276
    const/4 v9, 0x1

    .line 277
    const/16 v0, 0xaaa

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 295
    :cond_2
    :goto_3
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_4

    .line 299
    :cond_3
    const/16 v0, 0xaa3

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 303
    :cond_4
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v0, v1, :cond_6

    .line 306
    :cond_5
    const/16 v0, 0xaa2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 309
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_7

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v7, v0, v2

    .line 314
    const/4 v9, 0x1

    .line 319
    :cond_7
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    .line 321
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iput v0, p0, Lcom/android/server/BatteryService;->mBatteryMaxVoltage:I

    .line 322
    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    .line 324
    sget-boolean v0, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v0, :cond_8

    .line 326
    iget-object v0, p0, Lcom/android/server/BatteryService;->hw03:Lcom/carrieriq/iqagent/client/metrics/hw/HW03;

    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW03;->ucBatteryEvent:B

    .line 332
    :cond_8
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    move v11, v0

    .line 333
    .local v11, plugged:Z
    :goto_5
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    move v10, v0

    .line 341
    .local v10, oldPlugged:Z
    :goto_6
    if-nez v11, :cond_16

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_16

    if-nez v10, :cond_9

    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v0, v1, :cond_16

    :cond_9
    const/4 v0, 0x1

    move v12, v0

    .line 348
    .local v12, sendBatteryLow:Z
    :goto_7
    if-eqz v12, :cond_a

    .line 349
    sget-boolean v0, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v0, :cond_a

    .line 351
    iget-object v0, p0, Lcom/android/server/BatteryService;->hw03:Lcom/carrieriq/iqagent/client/metrics/hw/HW03;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW03;->ucBatteryEvent:B

    .line 356
    :cond_a
    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendIntent()V

    .line 361
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 362
    .local v13, statusIntent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 363
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_17

    .line 364
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 372
    :cond_b
    :goto_8
    if-eqz v12, :cond_18

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 374
    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 383
    :cond_c
    :goto_9
    if-eqz v9, :cond_d

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_d

    .line 384
    invoke-direct {p0, v7, v8}, Lcom/android/server/BatteryService;->logOutlier(J)V

    .line 387
    :cond_d
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 388
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 389
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 390
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 391
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 392
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 393
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 394
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    .end local v10           #oldPlugged:Z
    .end local v11           #plugged:Z
    .end local v12           #sendBatteryLow:Z
    .end local v13           #statusIntent:Landroid/content/Intent;
    :cond_e
    monitor-exit p0

    return-void

    .line 233
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 236
    :cond_10
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-eqz v0, :cond_11

    .line 237
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 228
    .end local v7           #dischargeDuration:J
    .end local v9           #logOutlier:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 239
    .restart local v7       #dischargeDuration:J
    .restart local v9       #logOutlier:Z
    :cond_11
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    .line 282
    :cond_12
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_2

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 285
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 288
    sget-boolean v0, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 290
    iget-object v0, p0, Lcom/android/server/BatteryService;->hw03:Lcom/carrieriq/iqagent/client/metrics/hw/HW03;

    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/carrieriq/iqagent/client/metrics/hw/HW03;->ucBatteryEvent:B

    goto/16 :goto_3

    .line 299
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 332
    :cond_14
    const/4 v0, 0x0

    move v11, v0

    goto/16 :goto_5

    .line 333
    .restart local v11       #plugged:Z
    :cond_15
    const/4 v0, 0x0

    move v10, v0

    goto/16 :goto_6

    .line 341
    .restart local v10       #oldPlugged:Z
    :cond_16
    const/4 v0, 0x0

    move v12, v0

    goto/16 :goto_7

    .line 367
    .restart local v12       #sendBatteryLow:Z
    .restart local v13       #statusIntent:Landroid/content/Intent;
    :cond_17
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_b

    .line 368
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 376
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v1, :cond_c

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 378
    const-string v0, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_9

    .line 247
    .end local v10           #oldPlugged:Z
    .end local v11           #plugged:Z
    .end local v12           #sendBatteryLow:Z
    .end local v13           #statusIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump Battery service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    :goto_0
    return-void

    .line 525
    :cond_0
    monitor-enter p0

    .line 526
    :try_start_0
    const-string v0, "Current Battery Service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AC powered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USB powered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  health: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  present: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    const-string v0, "  scale: 100"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  voltage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  temperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  technology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final getBatteryLevel()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    return v0
.end method

.method final getPlugType()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method final isPowered()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 146
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isPowered(I)Z
    .locals 4
    .parameter "plugTypeSet"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 152
    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 165
    :goto_0
    return v1

    .line 155
    :cond_0
    if-nez p1, :cond_1

    move v1, v3

    .line 156
    goto :goto_0

    .line 158
    :cond_1
    const/4 v0, 0x0

    .line 159
    .local v0, plugTypeBit:I
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-eqz v1, :cond_2

    .line 160
    or-int/lit8 v0, v0, 0x1

    .line 162
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-eqz v1, :cond_3

    .line 163
    or-int/lit8 v0, v0, 0x2

    .line 165
    :cond_3
    and-int v1, p1, v0

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method systemReady()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPower()V

    .line 187
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfOverTemp()V

    .line 188
    return-void
.end method
