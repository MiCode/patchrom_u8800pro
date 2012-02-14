.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$MyHandler;,
        Lcom/android/server/ConnectivityService$FeatureUser;,
        Lcom/android/server/ConnectivityService$ConnectivityThread;,
        Lcom/android/server/ConnectivityService$RadioAttributes;,
        Lcom/android/server/ConnectivityService$NetworkAttributes;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x66

.field private static final EVENT_INET_CONDITION_CHANGE:I = 0x68

.field private static final EVENT_INET_CONDITION_HOLD_END:I = 0x69

.field private static final EVENT_RESTORE_DEFAULT_NETWORK:I = 0x65

.field private static final EVENT_SET_BACKGROUND_DATA:I = 0x6a

.field private static final EVENT_SET_MOBILE_DATA:I = 0x6b

.field private static final EVENT_SET_NETWORK_PREFERENCE:I = 0x67

.field private static final INET_CONDITION_LOG_MAX_SIZE:I = 0xf

.field protected static final INTENT_TURNOFF_DC:Ljava/lang/String; = "android.telephony.turnoff_DC"

.field private static final MAX_NETWORK_STATE_TRACKER_EVENT:I = 0x64

.field private static final MIN_NETWORK_STATE_TRACKER_EVENT:I = 0x1

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field protected static final TURNOFF_DC_MILLIS:I = 0x1b7740

.field private static final isAlwaysAllowMMS:Z

.field private static final remindWifiToPdp:Z

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private mActiveDefaultNetwork:I

.field private mCneService:Lcom/android/server/CNE;

.field private mCneStarted:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultConnectionSequence:I

.field private mDefaultInetCondition:I

.field private mDefaultInetConditionPublished:I

.field private mFeatureUsers:Ljava/util/List;

.field private mHandler:Landroid/os/Handler;

.field private mInetConditionChangeInFlight:Z

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiConnectedOrConnecting:Z

.field mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

.field private mNetRequestersPids:[Ljava/util/List;

.field private mNetTrackers:[Landroid/net/NetworkStateTracker;

.field private mNetworkPreference:I

.field mNetworksDefined:I

.field private mNumDnsEntries:I

.field private mPriorityList:[I

.field mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

.field private mShouldShutdownMobile:Z

.field protected mStartPowerSaving:Z

.field private mSwitchPdpListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mSwitchToNet:Landroid/net/NetworkStateTracker;

.field private mSystemReady:Z

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mTetheringConfigValid:Z

.field protected mTurnoffDCIntent:Landroid/app/PendingIntent;

.field private mWifiToPdpDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    const-string v0, "ro.config.hw_always_allow_mms"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ConnectivityService;->isAlwaysAllowMMS:Z

    .line 207
    const-string v0, "ro.config.hw_RemindWifiToPdp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ConnectivityService;->remindWifiToPdp:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 32
    .parameter "context"

    .prologue
    .line 312
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 94
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 119
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 121
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 122
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 123
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 124
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 190
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    .line 191
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mCneStarted:Z

    .line 201
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mTurnoffDCIntent:Landroid/app/PendingIntent;

    .line 203
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 208
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    .line 213
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mSwitchToNet:Landroid/net/NetworkStateTracker;

    .line 221
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mShouldShutdownMobile:Z

    .line 228
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mIsWifiConnectedOrConnecting:Z

    .line 1321
    new-instance v28, Lcom/android/server/ConnectivityService$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mSwitchPdpListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2385
    new-instance v28, Lcom/android/server/ConnectivityService$3;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    const-string v28, "ConnectivityService"

    const-string v29, "ConnectivityService starting up"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "android_id"

    invoke-static/range {v28 .. v29}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 318
    .local v10, id:Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_0

    .line 319
    new-instance v28, Ljava/lang/String;

    const-string v29, "android_"

    invoke-direct/range {v28 .. v29}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 320
    .local v18, name:Ljava/lang/String;
    const-string v28, "net.hostname"

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .end local v18           #name:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 324
    const/16 v28, 0xa

    move/from16 v0, v28

    new-array v0, v0, [Landroid/net/NetworkStateTracker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .line 326
    new-instance v28, Lcom/android/server/ConnectivityService$MyHandler;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$MyHandler;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getPersistedNetworkPreference()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 330
    const/16 v28, 0xa

    move/from16 v0, v28

    new-array v0, v0, [Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    .line 331
    const/16 v28, 0xa

    move/from16 v0, v28

    new-array v0, v0, [Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    .line 334
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x107000b

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    .line 336
    .local v25, raStrings:[Ljava/lang/String;
    move-object/from16 v5, v25

    .local v5, arr$:[Ljava/lang/String;
    array-length v13, v5

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v13, :cond_3

    aget-object v24, v5, v9

    .line 337
    .local v24, raString:Ljava/lang/String;
    new-instance v23, Lcom/android/server/ConnectivityService$RadioAttributes;

    invoke-direct/range {v23 .. v24}, Lcom/android/server/ConnectivityService$RadioAttributes;-><init>(Ljava/lang/String;)V

    .line 338
    .local v23, r:Lcom/android/server/ConnectivityService$RadioAttributes;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v28, v0

    const/16 v29, 0x9

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_1

    .line 339
    const-string v28, "ConnectivityService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error in radioAttributes - ignoring attempt to define type "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 342
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    if-eqz v28, :cond_2

    .line 343
    const-string v28, "ConnectivityService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error in radioAttributes - ignoring attempt to redefine type "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 347
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v29, v0

    aput-object v23, v28, v29

    goto :goto_1

    .line 350
    .end local v23           #r:Lcom/android/server/ConnectivityService$RadioAttributes;
    .end local v24           #raString:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x107000a

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 352
    .local v17, naStrings:[Ljava/lang/String;
    move-object/from16 v5, v17

    array-length v13, v5

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v13, :cond_7

    aget-object v16, v5, v9

    .line 354
    .local v16, naString:Ljava/lang/String;
    :try_start_0
    new-instance v14, Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$NetworkAttributes;-><init>(Ljava/lang/String;)V

    .line 355
    .local v14, n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v28, v0

    const/16 v29, 0x9

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_4

    .line 356
    const-string v28, "ConnectivityService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v14           #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 360
    .restart local v14       #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v28, v0

    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    if-eqz v28, :cond_5

    .line 361
    const-string v28, "ConnectivityService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 372
    .end local v14           #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :catch_0
    move-exception v28

    goto :goto_3

    .line 365
    .restart local v14       #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v28, v0

    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v29, v0

    aget-object v28, v28, v29

    if-nez v28, :cond_6

    .line 366
    const-string v28, "ConnectivityService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error in networkAttributes - ignoring attempt to use undefined radio "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " in network type "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 370
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v28, v0

    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v29, v0

    aput-object v14, v28, v29

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 378
    .end local v14           #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    .end local v16           #naString:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    move/from16 v28, v0

    const/16 v29, 0x1

    sub-int v11, v28, v29

    .line 381
    .local v11, insertionPoint:I
    const/4 v6, 0x0

    .line 382
    .local v6, currentLowest:I
    const/16 v20, 0x0

    .line 383
    .end local v5           #arr$:[Ljava/lang/String;
    .local v20, nextLowest:I
    :goto_4
    const/16 v28, -0x1

    move v0, v11

    move/from16 v1, v28

    if-le v0, v1, :cond_d

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object v5, v0

    .local v5, arr$:[Lcom/android/server/ConnectivityService$NetworkAttributes;
    array-length v13, v5

    const/4 v9, 0x0

    move v12, v11

    .end local v11           #insertionPoint:I
    .local v12, insertionPoint:I
    :goto_5
    if-ge v9, v13, :cond_c

    aget-object v15, v5, v9

    .line 385
    .local v15, na:Lcom/android/server/ConnectivityService$NetworkAttributes;
    if-nez v15, :cond_8

    move v11, v12

    .line 384
    .end local v12           #insertionPoint:I
    .restart local v11       #insertionPoint:I
    :goto_6
    add-int/lit8 v9, v9, 0x1

    move v12, v11

    .end local v11           #insertionPoint:I
    .restart local v12       #insertionPoint:I
    goto :goto_5

    .line 386
    :cond_8
    move-object v0, v15

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v28, v0

    move/from16 v0, v28

    move v1, v6

    if-ge v0, v1, :cond_9

    move v11, v12

    .end local v12           #insertionPoint:I
    .restart local v11       #insertionPoint:I
    goto :goto_6

    .line 387
    .end local v11           #insertionPoint:I
    .restart local v12       #insertionPoint:I
    :cond_9
    move-object v0, v15

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v28, v0

    move/from16 v0, v28

    move v1, v6

    if-le v0, v1, :cond_b

    .line 388
    move-object v0, v15

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v20

    if-lt v0, v1, :cond_a

    if-nez v20, :cond_18

    .line 389
    :cond_a
    move-object v0, v15

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v20, v0

    move v11, v12

    .end local v12           #insertionPoint:I
    .restart local v11       #insertionPoint:I
    goto :goto_6

    .line 393
    .end local v11           #insertionPoint:I
    .restart local v12       #insertionPoint:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    move-object/from16 v28, v0

    add-int/lit8 v11, v12, -0x1

    .end local v12           #insertionPoint:I
    .restart local v11       #insertionPoint:I
    move-object v0, v15

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v29, v0

    aput v29, v28, v12

    goto :goto_6

    .line 395
    .end local v11           #insertionPoint:I
    .end local v15           #na:Lcom/android/server/ConnectivityService$NetworkAttributes;
    .restart local v12       #insertionPoint:I
    :cond_c
    move/from16 v6, v20

    .line 396
    const/16 v20, 0x0

    move v11, v12

    .end local v12           #insertionPoint:I
    .restart local v11       #insertionPoint:I
    goto :goto_4

    .line 400
    .end local v5           #arr$:[Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_d
    const/16 v28, 0xa

    move/from16 v0, v28

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    move-object v5, v0

    .local v5, arr$:[I
    array-length v13, v5

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v13, :cond_e

    aget v8, v5, v9

    .line 402
    .local v8, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v28, v0

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    aput-object v29, v28, v8

    .line 401
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 405
    .end local v8           #i:I
    :cond_e
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    .line 407
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 409
    const-string v28, "cm.test.mode"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "true"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    const-string v28, "ro.build.type"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "eng"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    const/16 v28, 0x1

    :goto_8
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mTestMode:Z

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v28

    if-nez v28, :cond_11

    const/16 v28, 0x1

    move/from16 v21, v28

    .line 419
    .local v21, noMobileData:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    move-object v5, v0

    array-length v13, v5

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v13, :cond_13

    aget v19, v5, v9

    .line 420
    .local v19, netType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v28, v0

    aget-object v28, v28, v19

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v28, v0

    sparse-switch v28, :sswitch_data_0

    .line 452
    const-string v28, "ConnectivityService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Trying to create a DataStateTracker for an unknown radio type "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v30, v0

    aget-object v30, v30, v19

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_f
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 409
    .end local v19           #netType:I
    .end local v21           #noMobileData:Z
    :cond_10
    const/16 v28, 0x0

    goto :goto_8

    .line 418
    :cond_11
    const/16 v28, 0x0

    move/from16 v21, v28

    goto :goto_9

    .line 422
    .restart local v19       #netType:I
    .restart local v21       #noMobileData:Z
    :sswitch_0
    const-string v28, "ConnectivityService"

    const-string v29, "Starting Wifi Service."

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v27, Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 424
    .local v27, wst:Landroid/net/wifi/WifiStateTracker;
    new-instance v26, Lcom/android/server/WifiService;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V

    .line 425
    .local v26, wifiService:Lcom/android/server/WifiService;
    const-string v28, "wifi"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 426
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/WifiService;->startWifi()V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aput-object v27, v28, v29

    .line 428
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiStateTracker;->startMonitoring()V

    goto :goto_b

    .line 432
    .end local v26           #wifiService:Lcom/android/server/WifiService;
    .end local v27           #wst:Landroid/net/wifi/WifiStateTracker;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v28, v0

    new-instance v29, Landroid/net/MobileDataStateTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v31, v0

    aget-object v31, v31, v19

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move/from16 v3, v19

    move-object/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/MobileDataStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;)V

    aput-object v29, v28, v19

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v28, v0

    aget-object v28, v28, v19

    invoke-virtual/range {v28 .. v28}, Landroid/net/NetworkStateTracker;->startMonitoring()V

    .line 435
    if-eqz v21, :cond_f

    .line 436
    const-string v28, "ConnectivityService"

    const-string v29, "tearing down Mobile networks due to setting"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v28, v0

    aget-object v28, v28, v19

    invoke-virtual/range {v28 .. v28}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto/16 :goto_b

    .line 441
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->makeWimaxStateTracker()Landroid/net/NetworkStateTracker;

    move-result-object v22

    .line 442
    .local v22, nst:Landroid/net/NetworkStateTracker;
    if-eqz v22, :cond_12

    .line 443
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkStateTracker;->startMonitoring()V

    .line 445
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v28, v0

    aput-object v22, v28, v19

    .line 446
    if-eqz v21, :cond_f

    .line 447
    const-string v28, "ConnectivityService"

    const-string v29, "tearing down WiMAX networks due to setting"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v28, v0

    aget-object v28, v28, v19

    invoke-virtual/range {v28 .. v28}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto/16 :goto_b

    .line 458
    .end local v19           #netType:I
    .end local v22           #nst:Landroid/net/NetworkStateTracker;
    :cond_13
    new-instance v28, Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    aget-object v28, v28, v29

    if-nez v28, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/connectivity/Tethering;->isDunRequired()Z

    move-result v28

    if-nez v28, :cond_17

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    if-nez v28, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    if-eqz v28, :cond_17

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceRegexs()[Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    if-eqz v28, :cond_17

    const/16 v28, 0x1

    :goto_c
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 466
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    .line 469
    const-string v28, "ro.config.hw_power_saving"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    .line 471
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 472
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v28, "android.intent.action.SCREEN_ON"

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    const-string v28, "android.intent.action.SCREEN_OFF"

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    const-string v28, "android.telephony.turnoff_DC"

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 478
    .end local v7           #filter:Landroid/content/IntentFilter;
    :cond_16
    return-void

    .line 459
    :cond_17
    const/16 v28, 0x0

    goto :goto_c

    .end local v11           #insertionPoint:I
    .end local v21           #noMobileData:Z
    .local v5, arr$:[Lcom/android/server/ConnectivityService$NetworkAttributes;
    .restart local v12       #insertionPoint:I
    .restart local v15       #na:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_18
    move v11, v12

    .end local v12           #insertionPoint:I
    .restart local v11       #insertionPoint:I
    goto/16 :goto_6

    .line 420
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/ConnectivityService;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/server/ConnectivityService;->sServiceInstance:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput-object p0, Lcom/android/server/ConnectivityService;->sServiceInstance:Lcom/android/server/ConnectivityService;

    return-object p0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/server/ConnectivityService;->remindWifiToPdp:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnecting(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleScanResultsAvailable(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/ConnectivityService;ZILandroid/app/Notification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleNotificationChange(ZILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/ConnectivityService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetBackgroundData(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/ConnectivityService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->cancelPowerSaving()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/ConnectivityService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getPowerSavingState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->tryPowerSaving()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->turnoffDC()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ConnectivityService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mShouldShutdownMobile:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/ConnectivityService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mShouldShutdownMobile:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/ConnectivityService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/ConnectivityService;)Landroid/net/NetworkStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSwitchToNet:Landroid/net/NetworkStateTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method private addOneDefaultRoute(I)V
    .locals 5
    .parameter "netType"

    .prologue
    const/4 v4, 0x4

    .line 2488
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 2493
    .local v0, dunEnabled:Z
    :goto_0
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOneDefaultRoute: dunEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", netType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    if-eqz v0, :cond_1

    .line 2497
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->addDefaultRoute()V

    .line 2501
    :goto_1
    return-void

    .line 2488
    .end local v0           #dunEnabled:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 2499
    .restart local v0       #dunEnabled:Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->addDefaultRoute()V

    goto :goto_1
.end method

.method private bumpDns()V
    .locals 5

    .prologue
    const-string v4, "net.dnschange"

    .line 1718
    const-string v2, "net.dnschange"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1719
    .local v1, propVal:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1720
    .local v0, n:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1722
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1725
    :cond_0
    :goto_0
    const-string v2, "net.dnschange"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    return-void

    .line 1723
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private cancelPowerSaving()V
    .locals 3

    .prologue
    .line 2433
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTurnoffDCIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 2434
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2435
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTurnoffDCIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2436
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mTurnoffDCIntent:Landroid/app/PendingIntent;

    .line 2439
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->turnonDC()V

    .line 2440
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    return-void
.end method

.method private enforcePreference()V
    .locals 4

    .prologue
    .line 627
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 644
    :cond_0
    return-void

    .line 630
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    const/4 v0, 0x0

    .local v0, t:I
    :goto_0
    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 634
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 637
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tearing down "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in enforcePreference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 633
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private enforceTetherAccessPermission()V
    .locals 3

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    return-void
.end method

.method private enforceTetherChangePermission()V
    .locals 3

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;
    .locals 1
    .parameter "context"

    .prologue
    .line 309
    invoke-static {p0}, Lcom/android/server/ConnectivityService$ConnectivityThread;->getServiceInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;

    move-result-object v0

    return-object v0
.end method

.method private getNumConnectedNetworks()I
    .locals 6

    .prologue
    .line 1144
    const/4 v4, 0x0

    .line 1146
    .local v4, numConnectedNets:I
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1147
    .local v3, nt:Landroid/net/NetworkStateTracker;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1149
    add-int/lit8 v4, v4, 0x1

    .line 1146
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1152
    .end local v3           #nt:Landroid/net/NetworkStateTracker;
    :cond_1
    return v4
.end method

.method private getPersistedNetworkPreference()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 608
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 610
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "network_preference"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 612
    .local v1, networkPrefSetting:I
    if-eq v1, v3, :cond_0

    move v2, v1

    .line 616
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getPowerSavingState()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2477
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 2478
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_saving_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    move v0, v4

    .line 2480
    .local v0, retVal:Z
    :goto_0
    return v0

    .end local v0           #retVal:Z
    :cond_0
    move v0, v3

    .line 2478
    goto :goto_0
.end method

.method private getRestoreDefaultNetworkDelay()I
    .locals 2

    .prologue
    .line 1800
    const-string v1, "android.telephony.apn-restore"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1802
    .local v0, restoreDefaultNetworkDelayStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1805
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1809
    :goto_0
    return v1

    .line 1806
    :catch_0
    move-exception v1

    .line 1809
    :cond_0
    const v1, 0xea60

    goto :goto_0
.end method

.method private handleConnect(Landroid/net/NetworkInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "ConnectivityService"

    .line 1488
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 1489
    .local v3, type:I
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got Network Connection Succ from Driver nwtype="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    sget-boolean v4, Lcom/android/server/ConnectivityService;->remindWifiToPdp:Z

    if-eqz v4, :cond_1

    .line 1494
    if-ne v3, v8, :cond_1

    .line 1495
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 1498
    iput-boolean v7, p0, Lcom/android/server/ConnectivityService;->mShouldShutdownMobile:Z

    .line 1499
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1503
    :cond_0
    iput-boolean v8, p0, Lcom/android/server/ConnectivityService;->mIsWifiConnectedOrConnecting:Z

    .line 1508
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v0

    .line 1509
    .local v0, isFailover:Z
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v4, v3

    .line 1513
    .local v2, thisNet:Landroid/net/NetworkStateTracker;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1514
    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v4, v3, :cond_7

    .line 1515
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    if-gt v4, v5, :cond_3

    :cond_2
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v4, v5, :cond_5

    .line 1519
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isCneEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1521
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not broadcasting CONNECT_ACTION to torn down network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 1562
    :goto_0
    return-void

    .line 1525
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    goto :goto_0

    .line 1530
    :cond_5
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v4, v5

    .line 1532
    .local v1, otherNet:Landroid/net/NetworkStateTracker;
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Policy requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " teardown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isCneEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1536
    const-string v4, "ConnectivityService"

    const-string v4, "CNE To support Simultaneous Nws we will not tear down other nw"

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1539
    const-string v4, "ConnectivityService"

    const-string v4, "Network declined teardown request"

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1543
    :cond_6
    if-eqz v0, :cond_7

    .line 1544
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->releaseWakeLock()V

    .line 1548
    .end local v1           #otherNet:Landroid/net/NetworkStateTracker;
    :cond_7
    iput v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 1552
    iput v7, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1553
    iget v4, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 1554
    iput-boolean v7, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 1558
    :cond_8
    invoke-virtual {v2, v7}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1559
    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->updateNetworkSettings()V

    .line 1560
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(I)V

    .line 1561
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private handleConnecting(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x1

    .line 1473
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mShouldShutdownMobile:Z

    .line 1478
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1481
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mIsWifiConnectedOrConnecting:Z

    .line 1484
    :cond_0
    return-void
.end method

.method private handleConnectionFailure(Landroid/net/NetworkInfo;)V
    .locals 12
    .parameter "info"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "noConnectivity"

    .line 1395
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5, v8}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1397
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 1398
    .local v2, reason:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 1401
    .local v0, extraInfo:Ljava/lang/String;
    if-nez v2, :cond_6

    .line 1402
    const-string v3, "."

    .line 1406
    .local v3, reasonText:Ljava/lang/String;
    :goto_0
    const-string v5, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1409
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "networkInfo"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1410
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1411
    const-string v5, "noConnectivity"

    invoke-virtual {v1, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1413
    :cond_0
    if-eqz v2, :cond_1

    .line 1414
    const-string v5, "reason"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1416
    :cond_1
    if-eqz v0, :cond_2

    .line 1417
    const-string v5, "extraInfo"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1419
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1420
    const-string v5, "isFailover"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1421
    invoke-virtual {p1, v8}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1424
    :cond_3
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1425
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 1426
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v5, v10, :cond_7

    .line 1427
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1428
    .local v4, switchTo:Landroid/net/NetworkInfo;
    const-string v5, "otherNetwork"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1435
    .end local v4           #switchTo:Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    const-string v5, "inetCondition"

    iget v6, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1436
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1441
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v5, v10, :cond_5

    .line 1442
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 1444
    :cond_5
    return-void

    .line 1404
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #reasonText:Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #reasonText:Ljava/lang/String;
    goto/16 :goto_0

    .line 1430
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_7
    iput v8, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1431
    const-string v5, "noConnectivity"

    invoke-virtual {v1, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private handleConnectivityChange(I)V
    .locals 12
    .parameter "netType"

    .prologue
    const-string v11, "ConnectivityService"

    const-string v10, "392"

    const-string v7, "26"

    const-string v9, "persist.cne.UseCne"

    const-string v8, "none"

    .line 1597
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    .line 1599
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1601
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x4

    if-ne p1, v6, :cond_2

    .line 1602
    :cond_0
    const-string v6, "persist.cne.UseCne"

    const-string v6, "none"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "vendor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1603
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->addOneDefaultRoute(I)V

    .line 1660
    :cond_1
    :goto_0
    return-void

    .line 1618
    :cond_2
    const-string v6, "ro.config.hw_opta"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1619
    .local v3, opta:Ljava/lang/String;
    const-string v6, "ro.config.hw_optb"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1620
    .local v4, optb:Ljava/lang/String;
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    const-string v6, "26"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "392"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "persist.cne.UseCne"

    const-string v6, "none"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "none"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1622
    const-string v6, "ConnectivityService"

    const-string v6, "handleDnsConfigurationChange, addDefaultRoute"

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->addDefaultRoute()V

    .line 1627
    :cond_3
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->addPrivateDnsRoutes()V

    goto :goto_0

    .line 1631
    .end local v3           #opta:Ljava/lang/String;
    .end local v4           #optb:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1632
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->removeDefaultRoute()V

    .line 1649
    :goto_1
    const-string v6, "persist.cne.UseCne"

    const-string v6, "none"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "vendor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1650
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v2, :cond_1

    aget v5, v0, v1

    .line 1651
    .local v5, type:I
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1653
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->addDefaultRoute()V

    goto/16 :goto_0

    .line 1636
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #type:I
    :cond_5
    const-string v6, "ro.config.hw_opta"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1637
    .restart local v3       #opta:Ljava/lang/String;
    const-string v6, "ro.config.hw_optb"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1638
    .restart local v4       #optb:Ljava/lang/String;
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    const-string v6, "26"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "392"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "persist.cne.UseCne"

    const-string v6, "none"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "none"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1640
    const-string v6, "ConnectivityService"

    const-string v6, "handleDnsConfigurationChange, removeDefaultRoute"

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->removeDefaultRoute()V

    .line 1645
    :cond_6
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->removePrivateDnsRoutes()V

    goto :goto_1

    .line 1650
    .end local v3           #opta:Ljava/lang/String;
    .end local v4           #optb:Ljava/lang/String;
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v5       #type:I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private handleDisconnect(Landroid/net/NetworkInfo;)V
    .locals 12
    .parameter "info"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1189
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 1190
    .local v4, prevNetType:I
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got Network Disconnected from Driver nwtype="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v4

    invoke-virtual {v6, v9}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1198
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1199
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v3, v6, v4

    .line 1200
    .local v3, pids:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 1201
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1205
    .local v2, pid:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6, v9}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 1200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1209
    .end local v0           #i:I
    .end local v2           #pid:Ljava/lang/Integer;
    .end local v3           #pids:Ljava/util/List;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1210
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "networkInfo"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1211
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1212
    const-string v6, "isFailover"

    invoke-virtual {v1, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1213
    invoke-virtual {p1, v9}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1215
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1216
    const-string v6, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1218
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1219
    const-string v6, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1223
    :cond_3
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1224
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 1225
    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v6, v10, :cond_6

    .line 1226
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1227
    .local v5, switchTo:Landroid/net/NetworkInfo;
    const-string v6, "otherNetwork"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1233
    .end local v5           #switchTo:Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    const-string v6, "inetCondition"

    iget v7, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1235
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(I)V

    .line 1237
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1242
    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v6, v10, :cond_5

    .line 1243
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 1245
    :cond_5
    return-void

    .line 1229
    :cond_6
    iput v9, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1230
    const-string v6, "noConnectivity"

    invoke-virtual {v1, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private handleDnsConfigurationChange(I)V
    .locals 15
    .parameter "netType"

    .prologue
    .line 1768
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v12, p1

    .line 1769
    .local v8, nt:Landroid/net/NetworkStateTracker;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1770
    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v2

    .line 1771
    .local v2, dnsList:[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v12, v12, p1

    invoke-virtual {v12}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1772
    const/4 v4, 0x1

    .line 1773
    .local v4, j:I
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v5, v4

    .end local v4           #j:I
    .local v5, j:I
    :goto_0
    if-ge v3, v7, :cond_0

    aget-object v1, v0, v3

    .line 1774
    .local v1, dns:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v12, "0.0.0.0"

    invoke-static {v1, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1776
    const-string v12, "ConnectivityService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adding dns "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "net.dns"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v4, v5, 0x1

    .end local v5           #j:I
    .restart local v4       #j:I
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4           #j:I
    .restart local v5       #j:I
    goto :goto_0

    .line 1782
    .end local v1           #dns:Ljava/lang/String;
    :cond_0
    move v6, v5

    .local v6, k:I
    :goto_2
    iget v12, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    if-ge v6, v12, :cond_1

    .line 1783
    const-string v12, "ConnectivityService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "erasing net.dns"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "net.dns"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1786
    :cond_1
    iput v5, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 1796
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #dnsList:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #j:I
    .end local v6           #k:I
    .end local v7           #len$:I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    .line 1797
    return-void

    .line 1789
    .restart local v2       #dnsList:[Ljava/lang/String;
    :cond_3
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v12, p1

    .line 1790
    .local v10, pids:Ljava/util/List;
    const/4 v11, 0x0

    .local v11, y:I
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 1791
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1792
    .local v9, pid:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {p0, v2, v12}, Lcom/android/server/ConnectivityService;->writePidDns([Ljava/lang/String;I)V

    .line 1790
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .end local v9           #pid:Ljava/lang/Integer;
    .end local v10           #pids:Ljava/util/List;
    .end local v11           #y:I
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #dns:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v5       #j:I
    .restart local v7       #len$:I
    :cond_4
    move v4, v5

    .end local v5           #j:I
    .restart local v4       #j:I
    goto :goto_1
.end method

.method private handleInetConditionChange(II)V
    .locals 6
    .parameter "netType"
    .parameter "condition"

    .prologue
    const-string v3, "ConnectivityService"

    .line 2101
    const-string v1, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inet connectivity change, net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mActiveDefaultNetwork="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2106
    const-string v1, "ConnectivityService"

    const-string v1, "no active default network - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    :goto_0
    return-void

    .line 2109
    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v1, p1, :cond_1

    .line 2110
    const-string v1, "ConnectivityService"

    const-string v1, "given net not default - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2113
    :cond_1
    iput p2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 2115
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    if-nez v1, :cond_3

    .line 2116
    const-string v1, "ConnectivityService"

    const-string v1, "starting a change hold"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_2

    .line 2119
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_up_delay"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2125
    .local v0, delay:I
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 2126
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2122
    .end local v0           #delay:I
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_down_delay"

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #delay:I
    goto :goto_1

    .line 2131
    .end local v0           #delay:I
    :cond_3
    const-string v1, "ConnectivityService"

    const-string v1, "currently in hold - not setting new end evt"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleInetConditionHoldEnd(II)V
    .locals 4
    .parameter "netType"
    .parameter "sequence"

    .prologue
    const-string v3, "ConnectivityService"

    .line 2137
    const-string v1, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inet hold end, net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", published condition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 2143
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2144
    const-string v1, "ConnectivityService"

    const-string v1, "no active default network - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    :goto_0
    return-void

    .line 2147
    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    if-eq v1, p2, :cond_1

    .line 2148
    const-string v1, "ConnectivityService"

    const-string v1, "event hold for obsolete network - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2151
    :cond_1
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    if-ne v1, v2, :cond_2

    .line 2152
    const-string v1, "ConnectivityService"

    const-string v1, "no change in condition - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2155
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2156
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2157
    const-string v1, "ConnectivityService"

    const-string v1, "default network not connected - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2160
    :cond_3
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 2161
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private handleNotificationChange(ZILandroid/app/Notification;)V
    .locals 3
    .parameter "visible"
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 1576
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1579
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_0

    .line 1580
    invoke-virtual {v0, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1584
    :goto_0
    return-void

    .line 1582
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private handleScanResultsAvailable(Landroid/net/NetworkInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 1565
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 1566
    .local v0, networkType:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1567
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got ScanResultsAvailable for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " network. Don\'t know how to handle."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->interpretScanResultsAvailable()V

    .line 1572
    return-void
.end method

.method private handleSetBackgroundData(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getBackgroundDataSetting()Z

    move-result v1

    if-eq p1, v1, :cond_0

    .line 1065
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "background_data"

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1067
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1071
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void

    .line 1065
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleSetMobileData(Z)V
    .locals 13
    .parameter "enabled"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    const-string v12, "starting up "

    const-string v11, "ConnectivityService"

    const-string v10, "data service log"

    .line 1100
    const-string v5, "data service log"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data service log : handleSetMobileData,enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v5

    if-ne v5, p1, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    if-eqz p1, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1107
    if-eqz p1, :cond_4

    .line 1109
    const-string v5, "data service log"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNetTrackers[ConnectivityManager.TYPE_MOBILE]  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const-string v5, "data service log"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNetTrackers[ConnectivityManager.TYPE_WIMAX]   = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v9

    if-eqz v5, :cond_2

    .line 1114
    const-string v5, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "starting up "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 1118
    :cond_2
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v8

    if-eqz v5, :cond_0

    .line 1120
    const-string v5, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "starting up "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto/16 :goto_0

    :cond_3
    move v7, v9

    .line 1104
    goto/16 :goto_1

    .line 1125
    :cond_4
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v2, :cond_7

    aget-object v4, v0, v1

    .line 1126
    .local v4, nt:Landroid/net/NetworkStateTracker;
    if-nez v4, :cond_6

    .line 1125
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1127
    :cond_6
    invoke-virtual {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 1129
    .local v3, netType:I
    const-string v5, "data service log"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNetTrackers[ConnectivityManager.TYPE_MOBILE] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const-string v5, "data service log"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNetTrackers[ConnectivityManager.TYPE_WIMAX] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    if-nez v5, :cond_5

    .line 1133
    const-string v5, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tearing down "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-virtual {v4}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto :goto_3

    .line 1137
    .end local v3           #netType:I
    .end local v4           #nt:Landroid/net/NetworkStateTracker;
    :cond_7
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v8

    if-eqz v5, :cond_0

    .line 1138
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto/16 :goto_0
.end method

.method private handleSetNetworkPreference(I)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 588
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v1, p1, :cond_0

    .line 592
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 593
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "network_preference"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    monitor-enter p0

    .line 595
    :try_start_0
    iput p1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 596
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isCneEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    invoke-virtual {v1, p1}, Lcom/android/server/CNE;->setDefaultConnectionNwPref(I)V

    .line 605
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 596
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 601
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforcePreference()V

    goto :goto_0
.end method

.method private makeWimaxStateTracker()Landroid/net/NetworkStateTracker;
    .locals 23

    .prologue
    .line 482
    const/16 v16, 0x0

    .line 483
    .local v16, wimaxStateTrackerClass:Ljava/lang/Class;
    const/4 v13, 0x0

    .line 491
    .local v13, wimaxServiceClass:Ljava/lang/Class;
    const/4 v15, 0x0

    .line 493
    .local v15, wimaxStateTracker:Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10d001a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 496
    .local v6, isWimaxEnabled:Z
    if-eqz v6, :cond_0

    .line 498
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x104001c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 500
    .local v9, wimaxJarLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x104001d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 502
    .local v10, wimaxLibLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x104001e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 504
    .local v12, wimaxManagerClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x104001f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 506
    .local v14, wimaxServiceClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1040020

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 509
    .local v17, wimaxStateTrackerClassName:Ljava/lang/String;
    new-instance v8, Ldalvik/system/DexClassLoader;

    new-instance v20, Landroid/content/ContextWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v20

    move-object v3, v10

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 514
    .local v8, wimaxClassLoader:Ldalvik/system/DexClassLoader;
    :try_start_1
    invoke-virtual {v8, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 515
    .local v11, wimaxManagerClass:Ljava/lang/Class;
    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 516
    invoke-virtual {v8, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 527
    :try_start_2
    const-string v20, "ConnectivityService"

    const-string v21, "Starting Wimax Service... "

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Landroid/content/Context;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-class v22, Landroid/os/Handler;

    aput-object v22, v20, v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v19

    .line 531
    .local v19, wmxStTrkrConst:Ljava/lang/reflect/Constructor;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #wimaxStateTrackerClassName:Ljava/lang/String;
    move-object/from16 v0, v17

    check-cast v0, Landroid/net/NetworkStateTracker;

    move-object v15, v0

    .line 533
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Landroid/content/Context;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v16, v20, v21

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v18

    .line 535
    .local v18, wmxSrvConst:Ljava/lang/reflect/Constructor;
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 536
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v15, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    .line 537
    .local v7, svcInvoker:Landroid/os/IBinder;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 539
    const-string v20, "WiMax"

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-object/from16 v20, v15

    .line 565
    .end local v7           #svcInvoker:Landroid/os/IBinder;
    .end local v8           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v9           #wimaxJarLocation:Ljava/lang/String;
    .end local v10           #wimaxLibLocation:Ljava/lang/String;
    .end local v11           #wimaxManagerClass:Ljava/lang/Class;
    .end local v12           #wimaxManagerClassName:Ljava/lang/String;
    .end local v14           #wimaxServiceClassName:Ljava/lang/String;
    .end local v18           #wmxSrvConst:Ljava/lang/reflect/Constructor;
    .end local v19           #wmxStTrkrConst:Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v20

    .line 517
    .restart local v8       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .restart local v9       #wimaxJarLocation:Ljava/lang/String;
    .restart local v10       #wimaxLibLocation:Ljava/lang/String;
    .restart local v12       #wimaxManagerClassName:Ljava/lang/String;
    .restart local v14       #wimaxServiceClassName:Ljava/lang/String;
    .restart local v17       #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_0
    move-exception v20

    move-object/from16 v5, v20

    .line 518
    .local v5, ex:Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 519
    const/16 v20, 0x0

    goto :goto_0

    .line 521
    .end local v5           #ex:Ljava/lang/ClassNotFoundException;
    .end local v8           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v9           #wimaxJarLocation:Ljava/lang/String;
    .end local v10           #wimaxLibLocation:Ljava/lang/String;
    .end local v12           #wimaxManagerClassName:Ljava/lang/String;
    .end local v14           #wimaxServiceClassName:Ljava/lang/String;
    .end local v17           #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_1
    move-exception v20

    move-object/from16 v5, v20

    .line 522
    .local v5, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v20, "ConnectivityService"

    const-string v21, "Wimax Resources does not exist!!! "

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/16 v20, 0x0

    goto :goto_0

    .line 541
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v8       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .restart local v9       #wimaxJarLocation:Ljava/lang/String;
    .restart local v10       #wimaxLibLocation:Ljava/lang/String;
    .restart local v11       #wimaxManagerClass:Ljava/lang/Class;
    .restart local v12       #wimaxManagerClassName:Ljava/lang/String;
    .restart local v14       #wimaxServiceClassName:Ljava/lang/String;
    :catch_2
    move-exception v20

    move-object/from16 v5, v20

    .line 542
    .local v5, ex:Ljava/lang/ClassCastException;
    invoke-virtual {v5}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 543
    const/16 v20, 0x0

    goto :goto_0

    .line 544
    .end local v5           #ex:Ljava/lang/ClassCastException;
    :catch_3
    move-exception v20

    move-object/from16 v5, v20

    .line 545
    .local v5, ex:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 546
    const/16 v20, 0x0

    goto :goto_0

    .line 547
    .end local v5           #ex:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v20

    move-object/from16 v5, v20

    .line 548
    .local v5, ex:Ljava/lang/InstantiationException;
    invoke-virtual {v5}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 549
    const/16 v20, 0x0

    goto :goto_0

    .line 550
    .end local v5           #ex:Ljava/lang/InstantiationException;
    :catch_5
    move-exception v20

    move-object/from16 v5, v20

    .line 551
    .local v5, ex:Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 552
    const/16 v20, 0x0

    goto :goto_0

    .line 553
    .end local v5           #ex:Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v20

    move-object/from16 v5, v20

    .line 554
    .local v5, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 555
    const/16 v20, 0x0

    goto :goto_0

    .line 556
    .end local v5           #ex:Ljava/lang/reflect/InvocationTargetException;
    :catch_7
    move-exception v20

    move-object/from16 v5, v20

    .line 557
    .local v5, ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 558
    const/16 v20, 0x0

    goto :goto_0

    .line 561
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v8           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v9           #wimaxJarLocation:Ljava/lang/String;
    .end local v10           #wimaxLibLocation:Ljava/lang/String;
    .end local v11           #wimaxManagerClass:Ljava/lang/Class;
    .end local v12           #wimaxManagerClassName:Ljava/lang/String;
    .end local v14           #wimaxServiceClassName:Ljava/lang/String;
    :cond_0
    const-string v20, "ConnectivityService"

    const-string v21, "Wimax is not enabled or not added to the network attributes!!! "

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/16 v20, 0x0

    goto :goto_0
.end method

.method private reassessPidDns(IZ)V
    .locals 13
    .parameter "myPid"
    .parameter "doBump"

    .prologue
    .line 1669
    const-string v10, "ConnectivityService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reassessPidDns for pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_4

    aget v2, v0, v3

    .line 1671
    .local v2, i:I
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1670
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1674
    :cond_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v10, v2

    .line 1675
    .local v6, nt:Landroid/net/NetworkStateTracker;
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1677
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v8, v10, v2

    .line 1678
    .local v8, pids:Ljava/util/List;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 1679
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1680
    .local v7, pid:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, p1, :cond_3

    .line 1681
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v1

    .line 1682
    .local v1, dnsList:[Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityService;->writePidDns([Ljava/lang/String;I)V

    .line 1683
    if-eqz p2, :cond_2

    .line 1684
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    .line 1698
    .end local v1           #dnsList:[Ljava/lang/String;
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #pid:Ljava/lang/Integer;
    .end local v8           #pids:Ljava/util/List;
    :cond_2
    :goto_2
    return-void

    .line 1678
    .restart local v4       #j:I
    .restart local v6       #nt:Landroid/net/NetworkStateTracker;
    .restart local v7       #pid:Ljava/lang/Integer;
    .restart local v8       #pids:Ljava/util/List;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1692
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #pid:Ljava/lang/Integer;
    .end local v8           #pids:Ljava/util/List;
    :cond_4
    const/4 v2, 0x1

    .line 1693
    .restart local v2       #i:I
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "net.dns"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1694
    .local v9, prop:Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    .line 1695
    if-eqz p2, :cond_2

    .line 1696
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    goto :goto_2

    .line 1700
    :cond_5
    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private reconnect(I)Z
    .locals 6
    .parameter "networkType"

    .prologue
    const/4 v4, 0x1

    const-string v5, "ConnectivityService"

    .line 2219
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v2, p1

    .line 2221
    .local v1, network:Landroid/net/NetworkStateTracker;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 2222
    const-string v2, "ConnectivityService"

    const-string v3, "Sending Network Connection Request to Driver."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 2229
    :goto_0
    return v2

    .line 2225
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2226
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network Obj is Null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2229
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1365
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1366
    return-void
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 3
    .parameter "info"
    .parameter "bcastType"

    .prologue
    .line 1373
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1374
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "networkInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1375
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1376
    const-string v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1377
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1379
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1380
    const-string v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1383
    const-string v1, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1386
    :cond_2
    const-string v1, "inetCondition"

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1387
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1388
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1369
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1370
    return-void
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1447
    monitor-enter p0

    .line 1448
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 1449
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 1451
    :cond_0
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1452
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1453
    monitor-exit p0

    .line 1454
    return-void

    .line 1453
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showSwitchToPdpWarning()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 1343
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1344
    .local v0, buider:Landroid/app/AlertDialog$Builder;
    const v2, 0x2020010

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1345
    const v2, 0x2020011

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1346
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1347
    const v2, 0x104000a

    new-instance v3, Lcom/android/server/ConnectivityService$2;

    invoke-direct {v3, p0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1358
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1359
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1360
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1361
    return-object v1
.end method

.method private stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .locals 13
    .parameter "u"
    .parameter "ignoreDups"

    .prologue
    .line 903
    iget v4, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 904
    .local v4, networkType:I
    iget-object v2, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 905
    .local v2, feature:Ljava/lang/String;
    iget v5, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 906
    .local v5, pid:I
    iget v7, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 908
    .local v7, uid:I
    const/4 v6, 0x0

    .line 909
    .local v6, tracker:Landroid/net/NetworkStateTracker;
    const/4 v0, 0x0

    .line 912
    .local v0, callTeardown:Z
    const-string v10, "ConnectivityService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stopUsingNetworkFeature for net "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 917
    const/4 v10, -0x1

    .line 985
    :goto_0
    return v10

    .line 922
    :cond_0
    monitor-enter p0

    .line 924
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 925
    const-string v10, "ConnectivityService"

    const-string v11, "ignoring - this process has no outstanding requests"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v10, 0x1

    monitor-exit p0

    goto :goto_0

    .line 978
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 928
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 929
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 937
    if-nez p2, :cond_3

    .line 938
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 939
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 940
    .local v9, x:Lcom/android/server/ConnectivityService$FeatureUser;
    iget v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    iget v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    if-ne v10, v11, :cond_2

    iget v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    iget v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    if-ne v10, v11, :cond_2

    iget v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    iget v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    if-ne v10, v11, :cond_2

    iget-object v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 943
    const-string v10, "ConnectivityService"

    const-string v11, "ignoring stopUsingNetworkFeature as dup is found"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/4 v10, 0x1

    monitor-exit p0

    goto :goto_0

    .line 938
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 950
    .end local v3           #i:I
    .end local v9           #x:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_3
    move v8, v4

    .line 951
    .local v8, usedNetworkType:I
    if-nez v4, :cond_4

    .line 952
    const-string v10, "enableMMS"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 953
    const/4 v8, 0x2

    .line 962
    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v10, v8

    .line 963
    if-nez v6, :cond_8

    .line 964
    const-string v10, "ConnectivityService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ignoring - no known tracker for net type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const/4 v10, -0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 954
    :cond_5
    const-string v10, "enableSUPL"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 955
    const/4 v8, 0x3

    goto :goto_2

    .line 956
    :cond_6
    const-string v10, "enableDUN"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 957
    const/4 v8, 0x4

    goto :goto_2

    .line 958
    :cond_7
    const-string v10, "enableHIPRI"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 959
    const/4 v8, 0x5

    goto :goto_2

    .line 967
    :cond_8
    if-eq v8, v4, :cond_a

    .line 968
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 969
    .local v1, currentPid:Ljava/lang/Integer;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v8

    invoke-interface {v10, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 970
    const/4 v10, 0x1

    invoke-direct {p0, v5, v10}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 971
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_9

    .line 972
    const-string v10, "ConnectivityService"

    const-string v11, "not tearing down special network - others still using it"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v10, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 976
    :cond_9
    const/4 v0, 0x1

    .line 978
    .end local v1           #currentPid:Ljava/lang/Integer;
    :cond_a
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 979
    const-string v10, "ConnectivityService"

    const-string v11, "Doing network teardown"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    if-eqz v0, :cond_b

    .line 981
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->teardown()Z

    .line 982
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 985
    :cond_b
    invoke-virtual {v6, v2, v5, v7}, Landroid/net/NetworkStateTracker;->stopUsingNetworkFeature(Ljava/lang/String;II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private teardown(Landroid/net/NetworkStateTracker;)Z
    .locals 2
    .parameter "netTracker"

    .prologue
    const/4 v1, 0x1

    .line 647
    invoke-virtual {p1}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p1, v1}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    move v0, v1

    .line 651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryFailover(I)V
    .locals 11
    .parameter "prevNetType"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v10, "not failing over to mobile type "

    const-string v9, " because Mobile Data Disabled"

    const-string v7, "ConnectivityService"

    .line 1252
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1253
    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v4, p1, :cond_0

    .line 1254
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 1257
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    move v3, v6

    .line 1258
    .local v3, noMobileData:Z
    :goto_0
    const/4 v2, 0x0

    .local v2, checkType:I
    :goto_1
    const/16 v4, 0x9

    if-gt v2, v4, :cond_a

    .line 1259
    if-ne v2, p1, :cond_3

    .line 1258
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2           #checkType:I
    .end local v3           #noMobileData:Z
    :cond_2
    move v3, v8

    .line 1257
    goto :goto_0

    .line 1260
    .restart local v2       #checkType:I
    .restart local v3       #noMobileData:Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    .line 1261
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1262
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    .line 1264
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not failing over to mobile type "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because Mobile Data Disabled"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1268
    :cond_4
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    if-eqz v3, :cond_5

    .line 1270
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not failing over to mobile type "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because Mobile Data Disabled"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1274
    :cond_5
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v4, v2

    .line 1275
    .local v1, checkTracker:Landroid/net/NetworkStateTracker;
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1276
    .local v0, checkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1277
    :cond_6
    invoke-virtual {v0, v6}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1280
    sget-boolean v4, Lcom/android/server/ConnectivityService;->remindWifiToPdp:Z

    if-eqz v4, :cond_9

    .line 1281
    if-ne p1, v6, :cond_8

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    if-nez v4, :cond_8

    if-nez v3, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnectingOrSuspended()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1284
    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mIsWifiConnectedOrConnecting:Z

    if-eqz v4, :cond_7

    .line 1286
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mSwitchToNet:Landroid/net/NetworkStateTracker;

    .line 1292
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->showSwitchToPdpWarning()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    .line 1294
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mSwitchPdpListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1295
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1297
    iput-boolean v8, p0, Lcom/android/server/ConnectivityService;->mIsWifiConnectedOrConnecting:Z

    .line 1310
    :cond_7
    :goto_3
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to switch to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1301
    :cond_8
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_3

    .line 1305
    :cond_9
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_3

    .line 1313
    .end local v0           #checkInfo:Landroid/net/NetworkInfo;
    .end local v1           #checkTracker:Landroid/net/NetworkStateTracker;
    .end local v2           #checkType:I
    .end local v3           #noMobileData:Z
    :cond_a
    return-void
.end method

.method private tryPowerSaving()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2443
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2445
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTurnoffDCIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 2446
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTurnoffDCIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2447
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mTurnoffDCIntent:Landroid/app/PendingIntent;

    .line 2451
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.telephony.turnoff_DC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2452
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ConnectivityService;->mTurnoffDCIntent:Landroid/app/PendingIntent;

    .line 2453
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x1b7740

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mTurnoffDCIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2455
    return-void
.end method

.method private turnoffDC()V
    .locals 3

    .prologue
    .line 2460
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2465
    :goto_0
    return-void

    .line 2462
    :catch_0
    move-exception v0

    .line 2463
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ConnectivityService"

    const-string v2, "have exception in turnoffDC function!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private turnonDC()V
    .locals 3

    .prologue
    .line 2469
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2474
    :goto_0
    return-void

    .line 2471
    :catch_0
    move-exception v0

    .line 2472
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ConnectivityService"

    const-string v2, "have exception in turnonDC function!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writePidDns([Ljava/lang/String;I)V
    .locals 8
    .parameter "dnsList"
    .parameter "pid"

    .prologue
    .line 1705
    const/4 v3, 0x1

    .line 1706
    .local v3, j:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v0, v2

    .line 1707
    .local v1, dns:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v6, "0.0.0.0"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1708
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net.dns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_0

    .line 1711
    .end local v1           #dns:Ljava/lang/String;
    :cond_0
    return-void

    .restart local v1       #dns:Ljava/lang/String;
    :cond_1
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_1
.end method


# virtual methods
.method public bringDownRat(I)Z
    .locals 5
    .parameter "ratType"

    .prologue
    const-string v4, "ConnectivityService"

    .line 2235
    const/4 v1, 0x0

    .line 2237
    .local v1, networkType:I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 2238
    const/4 v1, 0x1

    .line 2239
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, v1

    check-cast v0, Landroid/net/wifi/WifiStateTracker;

    .line 2240
    .local v0, network:Landroid/net/wifi/WifiStateTracker;
    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->hasWifiLocks()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2241
    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->resetTornDownbyConnMgr()V

    .line 2242
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v2

    .line 2253
    .end local v0           #network:Landroid/net/wifi/WifiStateTracker;
    :goto_0
    return v2

    .line 2244
    .restart local v0       #network:Landroid/net/wifi/WifiStateTracker;
    :cond_0
    const-string v2, "ConnectivityService"

    const-string v2, "WifiLocks active not issuing bring down"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    .end local v0           #network:Landroid/net/wifi/WifiStateTracker;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2246
    :cond_1
    if-nez p1, :cond_2

    .line 2247
    const/4 v1, 0x0

    .line 2248
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, v1

    .line 2249
    .local v0, network:Landroid/net/NetworkStateTracker;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v2

    goto :goto_0

    .line 2251
    .end local v0           #network:Landroid/net/NetworkStateTracker;
    :cond_2
    const-string v2, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown RatType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public bringUpRat(I)Z
    .locals 4
    .parameter "ratType"

    .prologue
    const-string v3, "ConnectivityService"

    .line 2204
    const-string v1, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bring Up Rat called for rat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const/4 v0, 0x0

    .line 2207
    .local v0, networkType:I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2208
    const/4 v0, 0x1

    .line 2215
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->reconnect(I)Z

    move-result v1

    :goto_1
    return v1

    .line 2209
    :cond_0
    if-nez p1, :cond_1

    .line 2210
    const/4 v0, 0x0

    goto :goto_0

    .line 2212
    :cond_1
    const-string v1, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown RatType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1814
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_1

    .line 1817
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump ConnectivityService from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1860
    :cond_0
    return-void

    .line 1822
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1823
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v6, v0, v2

    .line 1824
    .local v6, nst:Landroid/net/NetworkStateTracker;
    if-eqz v6, :cond_3

    .line 1825
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1826
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Active network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1829
    :cond_2
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1830
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1831
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1823
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1835
    .end local v6           #nst:Landroid/net/NetworkStateTracker;
    :cond_4
    const-string v10, "Network Requester Pids:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_6

    aget v5, v0, v3

    .line 1837
    .local v5, net:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1838
    .local v8, pidString:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v5

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1839
    .local v7, pid:Ljava/lang/Object;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 1841
    .end local v7           #pid:Ljava/lang/Object;
    :cond_5
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    add-int/lit8 v2, v3, 0x1

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .line 1843
    .end local v5           #net:I
    .end local v8           #pidString:Ljava/lang/String;
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1845
    const-string v10, "FeatureUsers:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1846
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1847
    .local v9, requester:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1849
    .end local v9           #requester:Ljava/lang/Object;
    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1851
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1853
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    .line 1854
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1855
    const-string v10, "Inet condition reports:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1856
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 1857
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1856
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 664
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 667
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 8

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 682
    iget v7, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    new-array v5, v7, [Landroid/net/NetworkInfo;

    .line 683
    .local v5, result:[Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 684
    .local v1, i:I
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 685
    .local v6, t:Landroid/net/NetworkStateTracker;
    if-eqz v6, :cond_1

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    aput-object v7, v5, v2

    .line 684
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 687
    .end local v6           #t:Landroid/net/NetworkStateTracker;
    :cond_0
    return-object v5

    .restart local v6       #t:Landroid/net/NetworkStateTracker;
    :cond_1
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1
.end method

.method public getBackgroundDataSetting()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1047
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "background_data"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFmcStatus(Landroid/os/IBinder;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    if-eqz v0, :cond_0

    .line 2377
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    invoke-virtual {v0, p1}, Lcom/android/server/CNE;->getFmcStatus(Landroid/os/IBinder;)Z

    move-result v0

    .line 2381
    :goto_0
    return v0

    .line 2380
    :cond_0
    const-string v0, "ConnectivityService"

    const-string v1, "mCneService is null while calling startFmc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 2021
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2023
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    .line 2026
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getLink(ILjava/util/Map;ILandroid/os/IBinder;)Z
    .locals 2
    .parameter "role"
    .parameter "linkReqs"
    .parameter "mPid"
    .parameter "listener"

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    if-eqz v0, :cond_0

    .line 2264
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/CNE;->getLink(ILjava/util/Map;ILandroid/os/IBinder;)Z

    move-result v0

    .line 2268
    :goto_0
    return v0

    .line 2267
    :cond_0
    const-string v0, "ConnectivityService"

    const-string v1, "mCneService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1077
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1078
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v0, v3

    .line 1080
    .local v0, retVal:Z
    :goto_0
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileDataEnabled returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    return v0

    .line 1078
    .end local v0           #retVal:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 672
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 674
    .local v0, t:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 677
    .end local v0           #t:Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPreference()I
    .locals 2

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 581
    monitor-enter p0

    .line 582
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 583
    .local v0, preference:I
    monitor-exit p0

    .line 584
    return v0

    .line 583
    .end local v0           #preference:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2052
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2053
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2032
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2033
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 2036
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2041
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2042
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 2045
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2057
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2058
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2062
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2063
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCneEnabled()Z
    .locals 4

    .prologue
    const-string v3, "persist.cne.UseCne"

    const-string v2, "none"

    .line 2193
    const-string v0, "persist.cne.UseCne"

    const-string v0, "none"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vendor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.cne.UseCne"

    const-string v0, "none"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/server/CNE;->isCndUp:Z

    if-eqz v0, :cond_1

    .line 2196
    const/4 v0, 0x1

    .line 2198
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCneStarted()Z
    .locals 1

    .prologue
    .line 2189
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mCneStarted:Z

    return v0
.end method

.method public isTetheringSupported()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2070
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2071
    const-string v2, "ro.tether.denied"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v4

    .line 2072
    .local v0, defaultVal:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tether_supported"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    .line 2074
    .local v1, tetherEnabledInSettings:Z
    :goto_1
    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    if-eqz v2, :cond_2

    move v2, v5

    :goto_2
    return v2

    .end local v0           #defaultVal:I
    .end local v1           #tetherEnabledInSettings:Z
    :cond_0
    move v0, v5

    .line 2071
    goto :goto_0

    .restart local v0       #defaultVal:I
    :cond_1
    move v1, v4

    .line 2072
    goto :goto_1

    .restart local v1       #tetherEnabledInSettings:Z
    :cond_2
    move v2, v4

    .line 2074
    goto :goto_2
.end method

.method public rejectSwitch(IILandroid/net/LinkInfo;Z)Z
    .locals 2
    .parameter "role"
    .parameter "mPid"
    .parameter "info"
    .parameter "isNotifyBetterLink"

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    if-eqz v0, :cond_0

    .line 2314
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/CNE;->rejectSwitch(IILandroid/net/LinkInfo;Z)Z

    move-result v0

    .line 2321
    :goto_0
    return v0

    .line 2320
    :cond_0
    const-string v0, "ConnectivityService"

    const-string v1, "mCneService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseLink(II)Z
    .locals 2
    .parameter "role"
    .parameter "mPid"

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    if-eqz v0, :cond_0

    .line 2328
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/CNE;->releaseLink(II)Z

    move-result v0

    .line 2332
    :goto_0
    return v0

    .line 2331
    :cond_0
    const-string v0, "ConnectivityService"

    const-string v1, "mCneService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportInetCondition(II)V
    .locals 7
    .parameter "networkType"
    .parameter "percentage"

    .prologue
    const-string v6, "ConnectivityService"

    .line 2079
    const-string v3, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportNetworkCondition("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.STATUS_BAR"

    const-string v5, "ConnectivityService"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v0

    .line 2086
    .local v0, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 2087
    .local v2, uid:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reports inet is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x32

    if-le p2, v4, :cond_0

    const-string v4, "connected"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "network Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2090
    .local v1, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2091
    :goto_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_1

    .line 2092
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2087
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    const-string v4, "disconnected"

    goto :goto_0

    .line 2095
    .restart local v1       #s:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2097
    return-void
.end method

.method public reportLinkSatisfaction(IILandroid/net/LinkInfo;ZZ)Z
    .locals 6
    .parameter "role"
    .parameter "mPid"
    .parameter "info"
    .parameter "isSatisfied"
    .parameter "isNotifyBetterCon"

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    if-eqz v0, :cond_0

    .line 2279
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/CNE;->reportLinkSatisfaction(IILandroid/net/LinkInfo;ZZ)Z

    move-result v0

    .line 2287
    :goto_0
    return v0

    .line 2286
    :cond_0
    const-string v0, "ConnectivityService"

    const-string v1, "mCneService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestRouteToHost(II)Z
    .locals 2
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 1001
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 1003
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 1004
    const/4 v1, 0x0

    .line 1007
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/ConnectivityService;->requestRouteToHostAddress(ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public requestRouteToHostAddress(ILjava/lang/String;)Z
    .locals 7
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    const/4 v6, 0x0

    .line 1020
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1021
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v6

    .line 1039
    :goto_0
    return v3

    .line 1024
    :cond_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v3, p1

    .line 1026
    .local v2, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1029
    :cond_1
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestRouteToHostAddress on down network ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - dropped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 1032
    goto :goto_0

    .line 1036
    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1037
    .local v1, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v2, v1}, Landroid/net/NetworkStateTracker;->requestRouteToHost(Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1038
    .end local v1           #inetAddress:Ljava/net/InetAddress;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/net/UnknownHostException;
    move v3, v6

    .line 1039
    goto :goto_0
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 5
    .parameter "allowBackgroundDataUsage"

    .prologue
    const/4 v4, 0x0

    .line 1055
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_BACKGROUND_DATA_SETTING"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1061
    return-void

    :cond_0
    move v3, v4

    .line 1059
    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v4, 0x0

    const-string v3, ")"

    .line 1088
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1090
    const-string v0, "data service log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data service log : setMobileDataEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1096
    return-void

    :cond_0
    move v3, v4

    .line 1094
    goto :goto_0
.end method

.method public setNetworkPreference(I)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 575
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 576
    return-void
.end method

.method public setRadio(IZ)Z
    .locals 3
    .parameter "netType"
    .parameter "turnOn"

    .prologue
    const/4 v2, 0x0

    .line 700
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 701
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 705
    :goto_0
    return v1

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 705
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public setRadios(Z)Z
    .locals 6
    .parameter "turnOn"

    .prologue
    .line 691
    const/4 v3, 0x1

    .line 692
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 693
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 694
    .local v4, t:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    move v3, v5

    .line 693
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 694
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    goto :goto_1

    .line 696
    .end local v4           #t:Landroid/net/NetworkStateTracker;
    :cond_2
    return v3
.end method

.method public startCne()V
    .locals 5

    .prologue
    const-string v4, "persist.cne.UseCne"

    const-string v3, "none"

    const-string v2, "ConnectivityService"

    .line 2167
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mCneStarted:Z

    if-nez v0, :cond_2

    .line 2168
    const-string v0, "persist.cne.UseCne"

    const-string v0, "none"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vendor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.cne.UseCne"

    const-string v0, "none"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2170
    :cond_0
    const-string v0, "ConnectivityService"

    const-string v0, "CNE starting up"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    monitor-enter p0

    .line 2175
    :try_start_0
    new-instance v0, Lcom/android/server/CNE;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/CNE;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    .line 2177
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    invoke-virtual {v0, v1}, Lcom/android/server/CNE;->sendDefaultNwPref2Cne(I)V

    .line 2178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mCneStarted:Z

    .line 2179
    monitor-exit p0

    .line 2186
    :goto_0
    return-void

    .line 2179
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2181
    :cond_1
    const-string v0, "ConnectivityService"

    const-string v0, "CNE is disabled."

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2184
    :cond_2
    const-string v0, "ConnectivityService"

    const-string v0, "CNE already Started"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startFmc(Landroid/os/IBinder;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    if-eqz v0, :cond_0

    .line 2346
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    invoke-virtual {v0, p1}, Lcom/android/server/CNE;->startFmc(Landroid/os/IBinder;)Z

    move-result v0

    .line 2350
    :goto_0
    return v0

    .line 2349
    :cond_0
    const-string v0, "ConnectivityService"

    const-string v1, "mCneService is null while calling startFmc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    .locals 11
    .parameter "networkType"
    .parameter "feature"
    .parameter "binder"

    .prologue
    .line 767
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startUsingNetworkFeature for net "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 771
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v7, v7, p1

    if-nez v7, :cond_1

    .line 773
    :cond_0
    const/4 v7, 0x3

    .line 868
    :goto_0
    return v7

    .line 776
    :cond_1
    new-instance v2, Lcom/android/server/ConnectivityService$FeatureUser;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/ConnectivityService$FeatureUser;-><init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 779
    .local v2, f:Lcom/android/server/ConnectivityService$FeatureUser;
    move v6, p1

    .line 780
    .local v6, usedNetworkType:I
    if-nez p1, :cond_4

    .line 783
    sget-boolean v7, Lcom/android/server/ConnectivityService;->isAlwaysAllowMMS:Z

    if-eqz v7, :cond_2

    .line 784
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "enableMMS"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 785
    const-string v7, "ConnectivityService"

    const-string v8, "requested special network with data disabled - rejected"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v7, 0x2

    goto :goto_0

    .line 789
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 790
    const-string v7, "ConnectivityService"

    const-string v8, "requested special network with data disabled - rejected"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v7, 0x2

    goto :goto_0

    .line 795
    :cond_3
    const-string v7, "enableMMS"

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 796
    const/4 v6, 0x2

    .line 805
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v7, v6

    .line 806
    .local v3, network:Landroid/net/NetworkStateTracker;
    if-eqz v3, :cond_f

    .line 807
    if-eq v6, p1, :cond_e

    .line 808
    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 810
    .local v1, currentPid:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v7, p1

    .line 811
    .local v5, radio:Landroid/net/NetworkStateTracker;
    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 813
    .local v4, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-nez v7, :cond_8

    .line 814
    const-string v7, "ConnectivityService"

    const-string v8, "special network not available"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/4 v7, 0x2

    goto :goto_0

    .line 797
    .end local v1           #currentPid:Ljava/lang/Integer;
    .end local v3           #network:Landroid/net/NetworkStateTracker;
    .end local v4           #ni:Landroid/net/NetworkInfo;
    .end local v5           #radio:Landroid/net/NetworkStateTracker;
    :cond_5
    const-string v7, "enableSUPL"

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 798
    const/4 v6, 0x3

    goto :goto_1

    .line 799
    :cond_6
    const-string v7, "enableDUN"

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 800
    const/4 v6, 0x4

    goto :goto_1

    .line 801
    :cond_7
    const-string v7, "enableHIPRI"

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 802
    const/4 v6, 0x5

    goto :goto_1

    .line 818
    .restart local v1       #currentPid:Ljava/lang/Integer;
    .restart local v3       #network:Landroid/net/NetworkStateTracker;
    .restart local v4       #ni:Landroid/net/NetworkInfo;
    .restart local v5       #radio:Landroid/net/NetworkStateTracker;
    :cond_8
    monitor-enter p0

    .line 819
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v7, v7, v6

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 822
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v7, v7, v6

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getRestoreDefaultNetworkDelay()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 829
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v7

    if-nez v7, :cond_b

    .line 831
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 833
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    .line 834
    const-string v7, "ConnectivityService"

    const-string v8, "special network already active"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 824
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 837
    :cond_a
    const-string v7, "ConnectivityService"

    const-string v8, "special network already connecting"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 844
    :cond_b
    const-string v7, "ConnectivityService"

    const-string v8, "reconnecting to special network"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v0

    .line 848
    .local v0, connectState:Z
    const/4 v7, 0x3

    if-ne v7, v6, :cond_d

    .line 849
    if-eqz v0, :cond_c

    .line 850
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 852
    :cond_c
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 856
    :cond_d
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 858
    .end local v0           #connectState:Z
    .end local v1           #currentPid:Ljava/lang/Integer;
    .end local v4           #ni:Landroid/net/NetworkInfo;
    .end local v5           #radio:Landroid/net/NetworkStateTracker;
    :cond_e
    monitor-enter p0

    .line 859
    :try_start_2
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 861
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getRestoreDefaultNetworkDelay()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 864
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v7

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v8

    invoke-virtual {v3, p2, v7, v8}, Landroid/net/NetworkStateTracker;->startUsingNetworkFeature(Ljava/lang/String;II)I

    move-result v7

    goto/16 :goto_0

    .line 860
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 868
    :cond_f
    const/4 v7, 0x2

    goto/16 :goto_0
.end method

.method public stopFmc(Landroid/os/IBinder;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    if-eqz v0, :cond_0

    .line 2361
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    invoke-virtual {v0, p1}, Lcom/android/server/CNE;->stopFmc(Landroid/os/IBinder;)Z

    move-result v0

    .line 2365
    :goto_0
    return v0

    .line 2364
    :cond_0
    const-string v0, "ConnectivityService"

    const-string v1, "mCneService is null while calling startFmc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 9
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v8, 0x1

    .line 873
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 875
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v3

    .line 876
    .local v3, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v5

    .line 878
    .local v5, uid:I
    const/4 v4, 0x0

    .line 879
    .local v4, u:Lcom/android/server/ConnectivityService$FeatureUser;
    const/4 v1, 0x0

    .line 881
    .local v1, found:Z
    monitor-enter p0

    .line 882
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 883
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/ConnectivityService$FeatureUser;

    move-object v4, v0

    .line 884
    iget v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    if-ne v5, v6, :cond_1

    iget v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    if-ne v3, v6, :cond_1

    iget v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    if-ne p1, v6, :cond_1

    iget-object v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 887
    const/4 v1, 0x1

    .line 891
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 894
    invoke-direct {p0, v4, v8}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v6

    .line 898
    :goto_1
    return v6

    .line 882
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 891
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 897
    :cond_2
    const-string v6, "ConnectivityService"

    const-string v7, "ignoring stopUsingNetworkFeature - not a live request"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 898
    goto :goto_1
.end method

.method public switchLink(IILandroid/net/LinkInfo;Z)Z
    .locals 2
    .parameter "role"
    .parameter "mPid"
    .parameter "info"
    .parameter "isNotifyBetterLink"

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    if-eqz v0, :cond_0

    .line 2297
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneService:Lcom/android/server/CNE;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/CNE;->switchLink(IILandroid/net/LinkInfo;Z)Z

    move-result v0

    .line 2304
    :goto_0
    return v0

    .line 2303
    :cond_0
    const-string v0, "ConnectivityService"

    const-string v1, "mCneService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    const/4 v0, 0x0

    goto :goto_0
.end method

.method systemReady()V
    .locals 2

    .prologue
    .line 1457
    monitor-enter p0

    .line 1458
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 1459
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 1463
    :cond_0
    monitor-exit p0

    .line 1464
    return-void

    .line 1463
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 1999
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 2001
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    .line 2004
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 2010
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 2012
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 2015
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method
