.class public Landroid/app/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$1;,
        Landroid/app/ActivityManager$RunningAppProcessInfo;,
        Landroid/app/ActivityManager$ProcessErrorStateInfo;,
        Landroid/app/ActivityManager$MemoryInfo;,
        Landroid/app/ActivityManager$RunningServiceInfo;,
        Landroid/app/ActivityManager$RunningTaskInfo;,
        Landroid/app/ActivityManager$RecentTaskInfo;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final RECENT_IGNORE_UNAVAILABLE:I = 0x2

.field public static final RECENT_WITH_EXCLUDED:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static localLOGV:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const-string v0, "ActivityManager"

    sput-object v0, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    .line 40
    sput-boolean v1, Landroid/app/ActivityManager;->DEBUG:Z

    .line 41
    sget-boolean v0, Landroid/app/ActivityManager;->DEBUG:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/app/ActivityManager;->localLOGV:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Landroid/app/ActivityManager;->mHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method public static isUserAMonkey()Z
    .locals 1

    .prologue
    .line 1207
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isUserAMonkey()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1210
    :goto_0
    return v0

    .line 1208
    :catch_0
    move-exception v0

    .line 1210
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static staticGetMemoryClass()I
    .locals 4

    .prologue
    .line 67
    const-string v1, "dalvik.vm.heapsize"

    const-string v2, "16m"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, vmHeapSize:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    .locals 8
    .parameter "packageName"
    .parameter "observer"

    .prologue
    const/4 v7, 0x0

    const-string v5, "fm_state"

    .line 667
    const-string v5, "com.huawei.android.FMRadio"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 670
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 671
    .local v1, fmContext:Landroid/content/Context;
    const/4 v5, 0x1

    invoke-virtual {v1, p1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 674
    .local v2, fmSp:Landroid/content/SharedPreferences;
    const-string v5, "fm_state"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 676
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.huawei.android.FMRadio.fmradioservicecommand.stop"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 677
    .local v4, intent:Landroid/content/Intent;
    iget-object v5, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 679
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v5, 0x8

    if-ge v3, v5, :cond_0

    .line 680
    const-wide/16 v5, 0xfa

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 681
    const/4 v5, 0x1

    invoke-virtual {v1, p1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 683
    const-string v5, "fm_state"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 694
    .end local v1           #fmContext:Landroid/content/Context;
    .end local v2           #fmSp:Landroid/content/SharedPreferences;
    .end local v3           #i:I
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 697
    :goto_2
    return v5

    .line 679
    .restart local v1       #fmContext:Landroid/content/Context;
    .restart local v2       #fmSp:Landroid/content/SharedPreferences;
    .restart local v3       #i:I
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 688
    .end local v1           #fmContext:Landroid/content/Context;
    .end local v2           #fmSp:Landroid/content/SharedPreferences;
    .end local v3           #i:I
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 689
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 696
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    move-object v0, v5

    .local v0, e:Landroid/os/RemoteException;
    move v5, v7

    .line 697
    goto :goto_2
.end method

.method public clearRecentTasks()V
    .locals 1

    .prologue
    .line 182
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->clearRecentTasks()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"

    .prologue
    const-string v5, "fm_state"

    .line 1158
    const-string v5, "com.huawei.android.FMRadio"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1161
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 1162
    .local v1, fmContext:Landroid/content/Context;
    const/4 v5, 0x1

    invoke-virtual {v1, p1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1165
    .local v2, fmSp:Landroid/content/SharedPreferences;
    const-string v5, "fm_state"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1167
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.huawei.android.FMRadio.fmradioservicecommand.stop"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v4, intent:Landroid/content/Intent;
    iget-object v5, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1170
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v5, 0x8

    if-ge v3, v5, :cond_0

    .line 1171
    const-wide/16 v5, 0xfa

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 1172
    const/4 v5, 0x1

    invoke-virtual {v1, p1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1174
    const-string v5, "fm_state"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 1185
    .end local v1           #fmContext:Landroid/content/Context;
    .end local v2           #fmSp:Landroid/content/SharedPreferences;
    .end local v3           #i:I
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1188
    :goto_2
    return-void

    .line 1170
    .restart local v1       #fmContext:Landroid/content/Context;
    .restart local v2       #fmSp:Landroid/content/SharedPreferences;
    .restart local v3       #i:I
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1179
    .end local v1           #fmContext:Landroid/content/Context;
    .end local v2           #fmSp:Landroid/content/SharedPreferences;
    .end local v3           #i:I
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1180
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1186
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .locals 1

    .prologue
    .line 1195
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1198
    :goto_0
    return-object v0

    .line 1196
    :catch_0
    move-exception v0

    .line 1198
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMemoryClass()I
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Landroid/app/ActivityManager;->staticGetMemoryClass()I

    move-result v0

    return v0
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 1
    .parameter "outInfo"

    .prologue
    .line 656
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .locals 2
    .parameter "pids"

    .prologue
    .line 1071
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1073
    :goto_0
    return-object v1

    .line 1072
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1073
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProcessesInErrorState()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 813
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getProcessesInErrorState()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 815
    :goto_0
    return-object v1

    .line 814
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 815
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRecentTasks(II)Ljava/util/List;
    .locals 2
    .parameter "maxNum"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->getRecentTasks(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    :goto_0
    return-object v1

    .line 173
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1055
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1057
    :goto_0
    return-object v1

    .line 1056
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1057
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRunningExternalApplications()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1040
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningExternalApplications()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1042
    :goto_0
    return-object v1

    .line 1041
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1042
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 2
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 586
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 590
    :goto_0
    return-object v1

    .line 588
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 590
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRunningServices(I)Ljava/util/List;
    .locals 3
    .parameter "maxNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 570
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 574
    :goto_0
    return-object v1

    .line 572
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 574
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRunningTasks(I)Ljava/util/List;
    .locals 2
    .parameter "maxNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;
    .locals 2
    .parameter "maxNum"
    .parameter "flags"
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/app/IThumbnailReceiver;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 316
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 319
    :goto_0
    return-object v1

    .line 317
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 319
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTasks(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 340
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getTasks(I)Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 343
    :goto_0
    return-object v1

    .line 341
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 343
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTasksNum()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 362
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getTasksNum()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 365
    :goto_0
    return v1

    .line 363
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 365
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public killBackgroundProcesses(Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"

    .prologue
    const-string v5, "fm_state"

    .line 1105
    const-string v5, "com.huawei.android.FMRadio"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1108
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 1109
    .local v1, fmContext:Landroid/content/Context;
    const/4 v5, 0x1

    invoke-virtual {v1, p1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1112
    .local v2, fmSp:Landroid/content/SharedPreferences;
    const-string v5, "fm_state"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1114
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.huawei.android.FMRadio.fmradioservicecommand.stop"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1115
    .local v4, intent:Landroid/content/Intent;
    iget-object v5, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1117
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v5, 0x8

    if-ge v3, v5, :cond_0

    .line 1118
    const-wide/16 v5, 0xfa

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 1119
    const/4 v5, 0x1

    invoke-virtual {v1, p1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1121
    const-string v5, "fm_state"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 1132
    .end local v1           #fmContext:Landroid/content/Context;
    .end local v2           #fmSp:Landroid/content/SharedPreferences;
    .end local v3           #i:I
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1135
    :goto_2
    return-void

    .line 1117
    .restart local v1       #fmContext:Landroid/content/Context;
    .restart local v2       #fmSp:Landroid/content/SharedPreferences;
    .restart local v3       #i:I
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1126
    .end local v1           #fmContext:Landroid/content/Context;
    .end local v2           #fmSp:Landroid/content/SharedPreferences;
    .end local v3           #i:I
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1127
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1133
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public restartPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1086
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 1087
    return-void
.end method
