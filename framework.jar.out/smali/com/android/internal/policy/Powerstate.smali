.class public Lcom/android/internal/policy/Powerstate;
.super Ljava/lang/Object;
.source "Powerstate.java"


# static fields
.field private static final AIRPLANE_MODE:Ljava/lang/String; = "airplanemode"

.field private static final BLUETOOTH_STATE:Ljava/lang/String; = "btstate"

.field private static DEBUG:Z = false

.field private static final DELAY_FM_TIME:I = 0x64

.field private static final DELEY_WAITTOSHOW_TIME:I = 0x64

.field private static final FAST_POWER_OFF:Ljava/lang/String; = "fastpoweroff"

.field private static final FAST_POWER_STATE_FILENAME:Ljava/lang/String; = "before_power_off.xml"

.field private static final GPS_STATE:Ljava/lang/String; = "gpsstate"

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_STATE_READS:I = 0x10

.field static final MAX_RECENT_TASKS:I = 0x14

.field private static final MAX_SERVICES:I = 0x64

.field private static final MAX_TIMES_WAIT_ANIMATION:I = 0x28

.field private static final MAX_TIMES_WAIT_FM:I = 0x14

.field private static final MAX_WAIT_TIME_CLOSETETHER:I = 0x1b58

.field public static final POWERUP_ANIMATION:I = 0x1

.field private static final RADIO_STATE:Ljava/lang/String; = "radiostate"

.field private static final RINGER_MODE:Ljava/lang/String; = "ringermode"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "Powerstate"

.field private static final TIME_POWERON_ANIMATION:I = 0x1388

.field private static final TIME_SECOND_KILL_WAIT:I = 0x258

.field private static final WIFI_STATE:Ljava/lang/String; = "wifistate"

.field private static bGetWallPaperProc:Z

.field private static bootAnimateIsRun:Z

.field private static broadcastDone:Z

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mPowerManagerService:Landroid/os/IPowerManager;

.field public static sHandler:Landroid/os/Handler;

.field private static wallPaperProcName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    .line 93
    sput-boolean v1, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    .line 101
    sput-object v2, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 102
    sput-object v2, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    .line 114
    sput-boolean v1, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    .line 115
    sput-object v2, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;

    .line 565
    sput-boolean v1, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    sput-boolean p0, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    return p0
.end method

.method public static checkIfNotKilled(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 13
    .parameter "rapi"

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    const-string v11, "Powerstate"

    .line 444
    move-object v4, p0

    .line 446
    .local v4, rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    if-nez v8, :cond_5

    .line 447
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "Powerstate"

    const-string v8, "begin parser"

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    .local v2, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 451
    .local v5, stream:Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 452
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 455
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 456
    .local v7, type:I
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 457
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 458
    .local v6, tag:Ljava/lang/String;
    const-string/jumbo v8, "wp"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 459
    const/4 v8, 0x0

    const-string v9, "component"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, comp:Ljava/lang/String;
    const/4 v8, 0x0

    const/16 v9, 0x2f

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 463
    .end local v0           #comp:Ljava/lang/String;
    .end local v6           #tag:Ljava/lang/String;
    :cond_2
    if-ne v7, v10, :cond_1

    .line 465
    if-eqz v5, :cond_3

    .line 466
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 475
    .end local v2           #file:Ljava/io/File;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #stream:Ljava/io/FileInputStream;
    .end local v7           #type:I
    :cond_3
    :goto_0
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "Powerstate"

    const-string v8, "end parser"

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_4
    sput-boolean v10, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    .line 480
    :cond_5
    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_6

    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v9, 0x3e9

    if-eq v8, v9, :cond_6

    const-string v8, "android.process.acore"

    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "android.process.media"

    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;

    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    move v8, v10

    .line 486
    :goto_1
    return v8

    .line 468
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    .restart local v7       #type:I
    :catch_0
    move-exception v1

    .line 469
    .local v1, e:Ljava/io/IOException;
    const/4 v8, 0x1

    :try_start_2
    sput-boolean v8, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 471
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #stream:Ljava/io/FileInputStream;
    .end local v7           #type:I
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 472
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "Powerstate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed parsing  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    sput-boolean v10, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_7
    move v8, v12

    .line 486
    goto :goto_1
.end method

.method private static getAirplaneModeOn(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getBluetoothState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 124
    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 126
    .local v0, bluetooth:Landroid/bluetooth/IBluetooth;
    const/16 v2, 0xa

    .line 128
    .local v2, state:I
    if-nez v0, :cond_0

    .line 129
    const/16 v3, 0xa

    .line 137
    :goto_0
    return v3

    .line 133
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 137
    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getWifiState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 147
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 149
    .local v1, wfm:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .local v0, state:I
    move v2, v0

    .line 153
    .end local v0           #state:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public static isAllowToShow(I)Z
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 844
    if-ne v1, p0, :cond_1

    .line 846
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    if-ne v0, v1, :cond_0

    move v0, v2

    .line 848
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 846
    goto :goto_0

    :cond_1
    move v0, v2

    .line 848
    goto :goto_0
.end method

.method public static killRunningProcess(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const-string v10, "Powerstate"

    .line 405
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 407
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v8, 0x64

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 409
    .local v5, runServiceInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 411
    .local v6, sumRS:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_3

    .line 412
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 413
    .local v3, rs:Landroid/app/ActivityManager$RunningServiceInfo;
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "Powerstate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RunningServiceInfo  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  service name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    const-string v8, "android.process.acore"

    iget-object v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const/16 v8, 0x3e9

    iget v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    if-eq v8, v9, :cond_1

    const/16 v8, 0x3e8

    iget v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    if-eq v8, v9, :cond_1

    const-string v8, "android.process.media"

    iget-object v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 411
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 420
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "Powerstate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "stop RunningServiceInfo name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 423
    .end local v3           #rs:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 425
    .local v4, runAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 426
    .local v7, sumRunProcesses:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_6

    .line 427
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 428
    .local v2, rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "Powerstate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "killRunningProcess runAppInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   packagename:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  uid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_4
    invoke-static {v2}, Lcom/android/internal/policy/Powerstate;->checkIfNotKilled(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 426
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 433
    :cond_5
    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Landroid/os/Process;->killProcess(I)V

    goto :goto_3

    .line 435
    .end local v2           #rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    .line 436
    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearRecentTasks()V

    .line 437
    return-void
.end method

.method public static powerOnforAlarm(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const-string v12, "airplanemode"

    const-string v10, "Powerstate"

    .line 858
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "Powerstate"

    const-string v7, "restorePhoneState"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    const-string v7, "persist.sys.quickpoweron"

    const-string/jumbo v8, "startpoweron"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v4

    .line 862
    .local v4, result:Z
    if-nez v4, :cond_1

    .line 864
    const-string v7, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restorePhoneState readStateFromFile result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :goto_0
    return-void

    .line 867
    :cond_1
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v8, "wifistate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 869
    .local v6, wifiState:Ljava/lang/Integer;
    if-nez v6, :cond_2

    .line 871
    const-string v7, "Powerstate"

    const-string v7, "restorePhoneState wifiState get failed use the default value"

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 874
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleWifi(Landroid/content/Context;I)V

    .line 876
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v8, "btstate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 877
    .local v1, bluethState:Ljava/lang/Integer;
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restorePhoneState bluethState ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_3
    if-nez v1, :cond_4

    .line 880
    const-string v7, "Powerstate"

    const-string v7, "restorePhoneState bluethState get failed use the default value"

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 883
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleBluetooth(Landroid/content/Context;I)V

    .line 885
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v8, "gpsstate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 886
    .local v2, gpsState:Ljava/lang/Integer;
    if-nez v2, :cond_5

    .line 888
    const-string v7, "Powerstate"

    const-string v7, "restorePhoneState gpsState get failed use the default value"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 891
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_a

    move v0, v9

    .line 892
    .local v0, bgpsState:Z
    :goto_1
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restorePhoneState gpsState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bgpsState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_6
    invoke-static {p0, v0}, Lcom/android/internal/policy/Powerstate;->toggleGps(Landroid/content/Context;Z)V

    .line 895
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v8, "ringermode"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 896
    .local v5, ringtoneMode:Ljava/lang/Integer;
    if-nez v5, :cond_7

    .line 898
    const-string v7, "Powerstate"

    const-string v7, "restorePhoneState ringtoneMode get failed use the default value"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 901
    :cond_7
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restorePhoneState ringtonemode ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleRingToneMode(Landroid/content/Context;I)V

    .line 905
    const-string/jumbo v7, "true"

    const-string v8, "ro.poweroff_alarm"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 907
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v8, "airplanemode"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 909
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "user_set_airplane"

    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v10, "airplanemode"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 915
    :cond_9
    :goto_2
    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->showAnimationAgain(Landroid/content/Context;)V

    .line 917
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 918
    .local v3, mHomeIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 919
    const/high16 v7, 0x1020

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 920
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v0           #bgpsState:Z
    .end local v3           #mHomeIntent:Landroid/content/Intent;
    .end local v5           #ringtoneMode:Ljava/lang/Integer;
    :cond_a
    move v0, v11

    .line 891
    goto/16 :goto_1

    .line 911
    .restart local v0       #bgpsState:Z
    .restart local v5       #ringtoneMode:Ljava/lang/Integer;
    :cond_b
    const-string v7, "Powerstate"

    const-string v7, "mMap.get(AIRPLANE_MODE) is null"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static readStateFromFile()Z
    .locals 15

    .prologue
    const-string v14, "failed parsing "

    const-string v13, "Powerstate"

    .line 786
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "Powerstate"

    const-string v11, "readStateFromFile begin"

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v11, "/data/system/before_power_off.xml"

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 789
    .local v1, file:Ljava/io/File;
    sget-object v11, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 790
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 791
    const/4 v11, 0x0

    .line 835
    :goto_0
    return v11

    .line 794
    :cond_1
    const/4 v5, 0x0

    .line 795
    .local v5, stream:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 797
    .local v7, success:Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 798
    .end local v5           #stream:Ljava/io/FileInputStream;
    .local v6, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 799
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v4, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 802
    const/4 v2, 0x0

    .line 804
    .local v2, itemIndex:I
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 805
    .local v9, type:I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_3

    .line 806
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 807
    .local v8, tag:Ljava/lang/String;
    const-string v11, "item"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 808
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 809
    .local v3, k:Ljava/lang/String;
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 810
    .local v10, v:Ljava/lang/Integer;
    sget-object v11, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v11, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 813
    .end local v3           #k:Ljava/lang/String;
    .end local v8           #tag:Ljava/lang/String;
    .end local v10           #v:Ljava/lang/Integer;
    :cond_3
    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    .line 814
    const/4 v7, 0x1

    move-object v5, v6

    .line 828
    .end local v2           #itemIndex:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v9           #type:I
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v5, :cond_4

    .line 829
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 834
    :cond_4
    :goto_2
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_5

    const-string v11, "Powerstate"

    const-string v11, "readStateFromFile end"

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v11, v7

    .line 835
    goto :goto_0

    .line 815
    :catch_0
    move-exception v11

    move-object v0, v11

    .line 816
    .local v0, e:Ljava/lang/NullPointerException;
    :goto_3
    const-string v11, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 817
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v11

    move-object v0, v11

    .line 818
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_4
    const-string v11, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 819
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v11

    move-object v0, v11

    .line 820
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v11, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 821
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v11

    move-object v0, v11

    .line 822
    .local v0, e:Ljava/io/IOException;
    :goto_6
    const-string v11, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 823
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v11

    move-object v0, v11

    .line 824
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_7
    const-string v11, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 831
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v11

    goto/16 :goto_2

    .line 823
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v11

    move-object v0, v11

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 821
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v11

    move-object v0, v11

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 819
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v11

    move-object v0, v11

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 817
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v11

    move-object v0, v11

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 815
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v11

    move-object v0, v11

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public static restorePhoneState(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v9, "Powerstate"

    .line 494
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "Powerstate"

    const-string v7, "restorePhoneState"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v4

    .line 497
    .local v4, result:Z
    if-nez v4, :cond_1

    .line 499
    const-string v7, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restorePhoneState readStateFromFile result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :goto_0
    return-void

    .line 502
    :cond_1
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v8, "wifistate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 504
    .local v6, wifiState:Ljava/lang/Integer;
    if-nez v6, :cond_2

    .line 506
    const-string v7, "Powerstate"

    const-string v7, "restorePhoneState wifiState get failed use the default value"

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 509
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleWifi(Landroid/content/Context;I)V

    .line 511
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v8, "btstate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 512
    .local v2, bluethState:Ljava/lang/Integer;
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restorePhoneState bluethState ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_3
    if-nez v2, :cond_4

    .line 515
    const-string v7, "Powerstate"

    const-string v7, "restorePhoneState bluethState get failed use the default value"

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 518
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleBluetooth(Landroid/content/Context;I)V

    .line 520
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v8, "gpsstate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 521
    .local v3, gpsState:Ljava/lang/Integer;
    if-nez v3, :cond_5

    .line 523
    const-string v7, "Powerstate"

    const-string v7, "restorePhoneState gpsState get failed use the default value"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 526
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v11, :cond_b

    move v1, v11

    .line 527
    .local v1, bgpsState:Z
    :goto_1
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restorePhoneState gpsState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bgpsState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_6
    invoke-static {p0, v1}, Lcom/android/internal/policy/Powerstate;->toggleGps(Landroid/content/Context;Z)V

    .line 530
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v8, "airplanemode"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 531
    .local v0, airplaneMode:Ljava/lang/Integer;
    if-nez v0, :cond_7

    .line 533
    const-string v7, "Powerstate"

    const-string v7, "restorePhoneState airplaneMode get failed use the default value"

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 536
    :cond_7
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restorePhoneState airplaneMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleAirPlane(Landroid/content/Context;I)V

    .line 539
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v8, "ringermode"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 540
    .local v5, ringtoneMode:Ljava/lang/Integer;
    if-nez v5, :cond_9

    .line 542
    const-string v7, "Powerstate"

    const-string v7, "restorePhoneState ringtoneMode get failed use the default value"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 545
    :cond_9
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_a

    const-string v7, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restorePhoneState ringtonemode ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleRingToneMode(Landroid/content/Context;I)V

    goto/16 :goto_0

    .end local v0           #airplaneMode:Ljava/lang/Integer;
    .end local v1           #bgpsState:Z
    .end local v5           #ringtoneMode:Ljava/lang/Integer;
    :cond_b
    move v1, v10

    .line 526
    goto/16 :goto_1
.end method

.method public static savePhoneSate(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const-string v8, "Powerstate"

    const-string v5, "airplanemode"

    .line 366
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "fastpoweroff"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v3, "wifistate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getWifiState(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "btstate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getBluetoothState(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "gpsstate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getGpsState(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v7

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string/jumbo v2, "true"

    const-string v3, "ro.poweroff_alarm"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "RTC"

    const-string v3, "persist.sys.powerup_reason"

    const-string v4, "NORMAL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_set_airplane"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 376
    .local v1, userSetAirplane:I
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power off Alarm userSetAirplane : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    if-ne v6, v1, :cond_4

    .line 379
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getAirplaneModeOn(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .end local v1           #userSetAirplane:I
    :goto_1
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_1

    .line 390
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    .line 392
    :cond_1
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "ringermode"

    sget-object v4, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->saveStateToFile()Z

    move-result v0

    .line 395
    .local v0, bResult:Z
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePhoneSatesaveStateToFile bResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2
    return-void

    .line 369
    .end local v0           #bResult:Z
    .restart local p0
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 381
    .restart local v1       #userSetAirplane:I
    :cond_4
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 385
    .end local v1           #userSetAirplane:I
    :cond_5
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getAirplaneModeOn(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static saveStateToFile()Z
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const-string/jumbo v10, "state"

    const-string v10, "item"

    .line 730
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "Powerstate"

    const-string v11, "saveStateToFile"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v10, "/data/system/before_power_off.xml"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 734
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 736
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 742
    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 744
    .local v7, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v10, 0x0

    invoke-direct {v8, v2, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 745
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .local v8, stream:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 746
    .local v6, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v10, "utf-8"

    invoke-interface {v6, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 747
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 748
    const/4 v10, 0x0

    const-string/jumbo v11, "state"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 749
    const/4 v4, 0x0

    .line 751
    .local v4, itemIndex:I
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v4

    .line 752
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 753
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 754
    .local v5, k:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 755
    .local v9, v:Ljava/lang/Object;
    const/4 v10, 0x0

    const-string v11, "item"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 756
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v6, v10, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 757
    const/4 v10, 0x0

    const-string/jumbo v11, "value"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 758
    const/4 v10, 0x0

    const-string v11, "item"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 765
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #itemIndex:I
    .end local v5           #k:Ljava/lang/String;
    .end local v6           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v9           #v:Ljava/lang/Object;
    :catch_0
    move-exception v10

    move-object v0, v10

    move-object v7, v8

    .line 767
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v7, :cond_2

    .line 768
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 773
    :cond_2
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 774
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    move v10, v13

    .line 776
    .end local v0           #e:Ljava/io/IOException;
    :goto_4
    return v10

    .line 761
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #itemIndex:I
    .restart local v6       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :cond_4
    const/4 v10, 0x0

    :try_start_4
    const-string/jumbo v11, "state"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 762
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 763
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    move v10, v14

    .line 764
    goto :goto_4

    .line 737
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #itemIndex:I
    .end local v6           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v7           #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v10

    goto/16 :goto_0

    .line 770
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    goto :goto_3

    .line 765
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v10

    move-object v0, v10

    goto :goto_2
.end method

.method public static sendStopBC(Landroid/content/Context;)V
    .locals 16
    .parameter "context"

    .prologue
    .line 576
    :try_start_0
    const-string v9, "com.huawei.android.FMRadio"

    .line 578
    .local v9, fmPackageName:Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 579
    .local v8, fmContext:Landroid/content/Context;
    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 582
    .local v8, fmSp:Landroid/content/SharedPreferences;
    const-string v9, "fm_state"

    .end local v9           #fmPackageName:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 584
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.huawei.android.FMRadio.fmradioservicecommand.stop"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 586
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    const/16 v10, 0x14

    if-ge v9, v10, :cond_0

    .line 587
    const-wide/16 v10, 0x64

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 589
    const-string v10, "fm_state"

    const/4 v11, 0x1

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_2

    .line 600
    .end local v8           #fmSp:Landroid/content/SharedPreferences;
    .end local v9           #i:I
    :cond_0
    :goto_1
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v8, closeDialogs:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 605
    new-instance v15, Ljava/lang/Object;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 606
    .local v15, broadcastDoneSync:Ljava/lang/Object;
    new-instance v10, Lcom/android/internal/policy/Powerstate$2;

    invoke-direct {v10, v15}, Lcom/android/internal/policy/Powerstate$2;-><init>(Ljava/lang/Object;)V

    .line 615
    .local v10, br:Landroid/content/BroadcastReceiver;
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    .line 616
    .end local v8           #closeDialogs:Landroid/content/Intent;
    const-string v8, "Powerstate"

    const-string v9, "begin Sending shutdown broadcast"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    sget-object v11, Lcom/android/internal/policy/Powerstate;->sHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 618
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    add-long/2addr v10, v8

    .line 619
    .local v10, endTime:J
    monitor-enter v15

    .line 620
    .end local p0
    :goto_2
    :try_start_1
    sget-boolean p0, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    if-nez p0, :cond_1

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v10, v8

    .line 622
    .local v8, delay:J
    const-wide/16 v12, 0x0

    cmp-long p0, v8, v12

    if-gtz p0, :cond_3

    .line 623
    const-string p0, "Powerstate"

    const-string/jumbo v8, "shutdown broadcast timed out"

    .end local v8           #delay:J
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    const-string p0, "Powerstate"

    const-string v8, "end Sending shutdown broadcast"

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void

    .line 586
    .end local v10           #endTime:J
    .end local v15           #broadcastDoneSync:Ljava/lang/Object;
    .local v8, fmSp:Landroid/content/SharedPreferences;
    .restart local v9       #i:I
    .restart local p0
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 594
    .end local v8           #fmSp:Landroid/content/SharedPreferences;
    .end local v9           #i:I
    :catch_0
    move-exception v8

    .line 595
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 627
    .end local p0
    .local v8, delay:J
    .restart local v10       #endTime:J
    .restart local v15       #broadcastDoneSync:Ljava/lang/Object;
    :cond_3
    :try_start_2
    invoke-virtual {v15, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 628
    :catch_1
    move-exception p0

    goto :goto_2

    .line 631
    .end local v8           #delay:J
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static setPoweroffState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 557
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Powerstate"

    const-string/jumbo v1, "setPoweroffState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    invoke-static {p0, v3}, Lcom/android/internal/policy/Powerstate;->toggleWifi(Landroid/content/Context;I)V

    .line 559
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/android/internal/policy/Powerstate;->toggleBluetooth(Landroid/content/Context;I)V

    .line 560
    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleGps(Landroid/content/Context;Z)V

    .line 561
    invoke-static {p0, v3}, Lcom/android/internal/policy/Powerstate;->toggleAirPlane(Landroid/content/Context;I)V

    .line 562
    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleRingToneMode(Landroid/content/Context;I)V

    .line 563
    return-void
.end method

.method public static showAnimationAgain(Landroid/content/Context;)V
    .locals 11
    .parameter "mContext"

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    const-string v6, "persist.sys.animationstart"

    const-string v6, "false"

    const-string v9, "Powerstate"

    .line 646
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    if-eqz v6, :cond_1

    .line 648
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "Powerstate"

    const-string v6, "Power on animation is running"

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    sput-boolean v7, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    .line 657
    invoke-static {v10}, Landroid/os/Power;->notifyArmNineSleep(Z)Z

    move-result v0

    .line 658
    .local v0, bSleep:Z
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "Powerstate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifiy the arm nine to stop sleep : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_2
    const-string/jumbo v6, "vibrator"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    .line 662
    .local v5, vibrator:Landroid/os/Vibrator;
    if-eqz v5, :cond_3

    .line 663
    const/4 v6, 0x2

    new-array v6, v6, [J

    fill-array-data v6, :array_0

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 666
    :cond_3
    const/4 v2, 0x0

    .line 670
    .local v2, fProcess:Ljava/lang/Process;
    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v6

    sput-object v6, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 672
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "Powerstate"

    const-string/jumbo v6, "start to show power on AnimationAgain"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "/system/bin/bootanimationex"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 678
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v6, 0x28

    if-ge v3, v6, :cond_5

    .line 679
    const-string/jumbo v6, "true"

    const-string v7, "persist.sys.animationstart"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_a

    .line 688
    :cond_5
    :try_start_1
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/os/IPowerManager;->allowShowScreenWithDelay(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 694
    :cond_6
    :goto_2
    :try_start_2
    const-string v6, "ro.config.hw_poanimation"

    const/16 v7, 0x1388

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 695
    .local v4, timeLong:I
    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 699
    .end local v4           #timeLong:I
    :goto_3
    if-eqz v2, :cond_7

    .line 700
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 701
    const/4 v2, 0x0

    .line 704
    :cond_7
    const-string v6, "persist.sys.animationstart"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v6, "persist.sys.quickpoweron"

    const-string v7, "normal"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 708
    :try_start_4
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/os/IPowerManager;->allowShowScreenWithDelay(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 720
    .end local v3           #i:I
    :cond_8
    :goto_4
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_9

    const-string v6, "Powerstate"

    const-string/jumbo v6, "showAnimation finished"

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_9
    sput-boolean v10, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    goto/16 :goto_0

    .line 682
    .restart local v3       #i:I
    :cond_a
    :try_start_5
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_b

    const-string v6, "Powerstate"

    const-string/jumbo v7, "wait to show animation"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_b
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 678
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 689
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 690
    .local v1, e:Landroid/os/RemoteException;
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPowerManagerService.allowShowScreenWithDelay true failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 712
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #i:I
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 713
    .local v1, e:Ljava/io/IOException;
    if-eqz v2, :cond_c

    .line 714
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 715
    const/4 v2, 0x0

    .line 717
    :cond_c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 696
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #i:I
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 697
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 709
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v6

    move-object v1, v6

    .line 710
    .local v1, e:Landroid/os/RemoteException;
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPowerManagerService.allowShowScreenWithDelay false failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 663
    :array_0
    .array-data 0x8
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static toggleAirPlane(Landroid/content/Context;I)V
    .locals 5
    .parameter "mContext"
    .parameter "isOn"

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 282
    .local v0, stateAirPlane:I
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggle AirPlane now stateAirPlane is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    if-ne p1, v0, :cond_2

    .line 285
    sget-boolean p0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    .end local p0
    if-eqz p0, :cond_1

    const-string p0, "Powerstate"

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #stateAirPlane:I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toggle AirPlane now is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v0, "  then return"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1
    :goto_0
    return-void

    .line 289
    .restart local v0       #stateAirPlane:I
    .restart local p0
    .restart local p1
    :cond_2
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    .end local v0           #stateAirPlane:I
    if-eqz v0, :cond_3

    const-string v0, "Powerstate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleAirPlane switch air mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_3
    if-nez p1, :cond_4

    .line 291
    move-object v0, p0

    .line 292
    .local v0, modeContext:Landroid/content/Context;
    move p1, p1

    .line 293
    .local p1, stateIson:I
    new-instance p0, Lcom/android/internal/policy/Powerstate$1;

    .end local p0
    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/Powerstate$1;-><init>(Landroid/content/Context;I)V

    .line 314
    .local p0, aThread:Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 315
    .end local v0           #modeContext:Landroid/content/Context;
    .local p0, mContext:Landroid/content/Context;
    .local p1, isOn:I
    :cond_4
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    new-instance p1, Landroid/content/Intent;

    .end local p1           #isOn:I
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local p1, intent:Landroid/content/Intent;
    const-string/jumbo v0, "state"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    const-string p0, "phone"

    .end local p0           #mContext:Landroid/content/Context;
    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 325
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_5

    const/4 p0, 0x1

    move p1, p0

    .line 327
    .local p1, radioOff:Z
    :goto_1
    const/4 p0, 0x0

    .local p0, i:I
    move v4, p0

    .end local p0           #i:I
    .local v4, i:I
    move p0, p1

    .local p0, radioOff:I
    move p1, v4

    .end local v4           #i:I
    .local p1, i:I
    :goto_2
    const/16 v1, 0x10

    if-ge p1, v1, :cond_1

    .line 328
    if-nez p0, :cond_8

    .line 330
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    .end local p0           #radioOff:I
    if-nez p0, :cond_6

    const/4 p0, 0x1

    .local p0, radioOff:Z
    :goto_3
    move v1, p0

    .line 336
    .end local p0           #radioOff:Z
    .local v1, radioOff:I
    :goto_4
    if-eqz v1, :cond_7

    .line 337
    const-string p0, "Powerstate"

    const-string p1, "Radio shutdown complete."

    .end local p1           #i:I
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 325
    .end local v1           #radioOff:I
    .local p1, intent:Landroid/content/Intent;
    :cond_5
    const/4 p0, 0x0

    move p1, p0

    goto :goto_1

    .line 330
    .local p1, i:I
    :cond_6
    const/4 p0, 0x0

    goto :goto_3

    .line 331
    .local p0, radioOff:I
    :catch_0
    move-exception p0

    .line 332
    .local p0, ex:Landroid/os/RemoteException;
    const-string v1, "Powerstate"

    const-string v2, "RemoteException during radio shutdown"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    const/4 p0, 0x1

    .local p0, radioOff:Z
    move v1, p0

    .restart local v1       #radioOff:I
    goto :goto_4

    .line 340
    .end local p0           #radioOff:Z
    :cond_7
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 327
    add-int/lit8 p0, p1, 0x1

    .end local p1           #i:I
    .local p0, i:I
    move p1, p0

    .end local p0           #i:I
    .restart local p1       #i:I
    move p0, v1

    .end local v1           #radioOff:I
    .local p0, radioOff:I
    goto :goto_2

    :cond_8
    move v1, p0

    .end local p0           #radioOff:I
    .restart local v1       #radioOff:I
    goto :goto_4
.end method

.method private static toggleBluetooth(Landroid/content/Context;I)V
    .locals 10
    .parameter "context"
    .parameter "state"

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    const-string v7, "Powerstate"

    .line 184
    const-string v5, "bluetooth"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 187
    .local v0, bluetooth:Landroid/bluetooth/IBluetooth;
    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getBluetoothState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 192
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "Powerstate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "toggleBluetooth now is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,then  return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :cond_2
    if-ne v9, p1, :cond_5

    .line 198
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "Powerstate"

    const-string v5, "Disabling Bluetooth..."

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_3
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v0, v5}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, bluetoothOff:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/16 v5, 0x10

    if-ge v4, v5, :cond_5

    .line 204
    if-nez v1, :cond_4

    .line 206
    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-ne v5, v9, :cond_7

    const/4 v5, 0x1

    move v1, v5

    .line 212
    :cond_4
    :goto_2
    if-eqz v1, :cond_8

    .line 213
    :try_start_2
    const-string v5, "Powerstate"

    const-string v6, "Bluetooth shutdown complete."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 224
    .end local v1           #bluetoothOff:Z
    .end local v4           #i:I
    :cond_5
    :goto_3
    const/16 v5, 0xc

    if-ne v5, p1, :cond_0

    .line 225
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "Powerstate"

    const-string v5, "enable Bluetooth..."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_6
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v1       #bluetoothOff:Z
    .restart local v4       #i:I
    :cond_7
    move v1, v8

    .line 206
    goto :goto_2

    .line 207
    :catch_1
    move-exception v3

    .line 208
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "Powerstate"

    const-string v6, "RemoteException during bluetooth shutdown"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    const/4 v1, 0x1

    goto :goto_2

    .line 216
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_8
    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 219
    .end local v1           #bluetoothOff:Z
    .end local v4           #i:I
    :catch_2
    move-exception v5

    move-object v2, v5

    .line 220
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method private static toggleGps(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 267
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggleGps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 270
    return-void
.end method

.method private static toggleRingToneMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "mContext"
    .parameter "mode"

    .prologue
    .line 352
    sget-object v0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 353
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    .line 355
    :cond_0
    sget-object v0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 356
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Powerstate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleRingToneMode mAudioManager mode is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_1
    return-void
.end method

.method private static toggleWifi(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const-string v3, "Powerstate"

    .line 240
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 242
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 247
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiState now is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , nothing then  return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 252
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 253
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    const-string/jumbo v1, "wifi state is enable"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_3
    if-ne p1, v2, :cond_0

    .line 255
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 256
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    const-string/jumbo v1, "wifi state is disable"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
