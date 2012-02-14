.class public Lcom/android/internal/telephony/MMDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "MMDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MMDataConnectionTracker$2;,
        Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    }
.end annotation


# static fields
.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field private static final DATA_CONNECTION_POOL_SIZE:I = 0x8

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.gprs-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final INTENT_RECONNECT_ALARM_IP_VERSION:Ljava/lang/String; = "ipv"

.field private static final INTENT_RECONNECT_ALARM_SERVICE_TYPE:Ljava/lang/String; = "ds"

.field private static final LOG_TAG:Ljava/lang/String; = "DATA"

.field private static final SUPPORT_IPV4:Z

.field private static final SUPPORT_IPV6:Z

.field private static final SUPPORT_MPDN:Z

.field private static final SUPPORT_MPDN_SERVICE_ARBITRATION:Z


# instance fields
.field isDctActive:Z

.field mCdmaHomeOperatorNumeric:Ljava/lang/String;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mDataCallSetupPending:Z

.field private mDataConnectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredPowerState:Z

.field private mDisconnectAllDataCalls:Z

.field mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mIsEhrpdCapable:Z

.field private mIsPsRestricted:Z

.field private mIsWifiConnected:Z

.field private mNoAutoAttach:Z

.field mPendingPowerOffCompleteMsg:Landroid/os/Message;

.field private mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

.field private mReconnectIntent:Landroid/app/PendingIntent;

.field mUpdateDataConnectionsContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 159
    const-string v0, "persist.telephony.support_ipv4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV4:Z

    .line 163
    const-string v0, "persist.telephony.support_ipv6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV6:Z

    .line 174
    const-string v0, "persist.telephony.mpdn"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN:Z

    .line 184
    const-string v0, "persist.telephony.ds.arbit"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 18
    .parameter "context"
    .parameter "notifier"
    .parameter "ci"

    .prologue
    .line 258
    invoke-direct/range {p0 .. p3}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 139
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDctActive:Z

    .line 146
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsWifiConnected:Z

    .line 149
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 152
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mNoAutoAttach:Z

    .line 153
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    .line 154
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDesiredPowerState:Z

    .line 187
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsEhrpdCapable:Z

    .line 189
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaHomeOperatorNumeric:Ljava/lang/String;

    .line 195
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllDataCalls:Z

    .line 196
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataCallSetupPending:Z

    .line 198
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 204
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    .line 211
    new-instance v15, Lcom/android/internal/telephony/MMDataConnectionTracker$1;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    new-instance v15, Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/DataServiceStateTracker;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    .line 261
    new-instance v15, Lcom/android/internal/telephony/DataNetStatistics;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataNetStatistics;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0x8

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0x9

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0xa

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0x13

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForTetheredModeStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0xb

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0xc

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0x12

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0xd

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0xe

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0x14

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 278
    new-instance v15, Landroid/os/Registrant;

    const/16 v16, 0x15

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Registrant;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0x19

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0x1a

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    move-object v15, v0

    const/16 v16, 0x1e

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v15, v0

    const/16 v16, 0xf

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataProfileTracker;->registerForDataProfileDbChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 293
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 294
    .local v10, filter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v5

    .local v5, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v12, v5

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v8, v5, v11

    .line 295
    .local v8, ds:Lcom/android/internal/telephony/DataServiceType;
    sget-object v15, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getAlarmIntentName(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    sget-object v15, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getAlarmIntentName(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 298
    .end local v8           #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_0
    const-string v15, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v15, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v15, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v15, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string v15, "android.intent.action.VOICE_CALL_STARTED"

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    const-string v15, "android.intent.action.VOICE_CALL_ENDED"

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mContext:Landroid/content/Context;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v10

    move-object/from16 v3, v17

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 307
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->createDataCallList()V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-static {v15}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 313
    .local v14, sp:Landroid/content/SharedPreferences;
    const-string v15, "disabled_on_boot_key"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 314
    .local v7, dataDisabledOnBoot:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v15, v0

    sget-object v16, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    if-nez v7, :cond_3

    const/16 v17, 0x1

    :goto_1
    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 315
    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mNoAutoAttach:Z

    .line 317
    const-string v15, "ro.config.ehrpd"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsEhrpdCapable:Z

    .line 319
    const-string v15, "persist.cust.tel.sdc.feature"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "socket_data_call_enable"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-lez v15, :cond_4

    const/4 v15, 0x1

    :goto_2
    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mMasterDataEnabled:Z

    .line 335
    :cond_1
    const-string v15, "connectivity"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 336
    .local v6, b:Landroid/os/IBinder;
    invoke-static {v6}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v13

    .line 339
    .local v13, service:Landroid/net/IConnectivityManager;
    :try_start_0
    invoke-interface {v13}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z

    move-result v15

    if-nez v15, :cond_5

    .line 341
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v5

    array-length v12, v5

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v12, :cond_5

    aget-object v8, v5, v11

    .line 342
    .restart local v8       #ds:Lcom/android/internal/telephony/DataServiceType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v15, v0

    invoke-virtual {v15, v8}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object v15, v0

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v8

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 344
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Disabling ds"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 314
    .end local v6           #b:Landroid/os/IBinder;
    .end local v8           #ds:Lcom/android/internal/telephony/DataServiceType;
    .end local v13           #service:Landroid/net/IConnectivityManager;
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 323
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 348
    .restart local v6       #b:Landroid/os/IBinder;
    .restart local v13       #service:Landroid/net/IConnectivityManager;
    :catch_0
    move-exception v15

    move-object v9, v15

    .line 350
    .local v9, e:Landroid/os/RemoteException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not access Connectivity Service."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    .line 354
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_5
    const-string v15, "ro.cdma.home.operator.numeric"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaHomeOperatorNumeric:Ljava/lang/String;

    .line 357
    const/4 v15, 0x2

    const-string v16, "ro.telephony.default_network"

    const/16 v17, -0x1

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    const/4 v15, 0x1

    const-string v16, "ro.config.cdma_subscription"

    const/16 v17, -0x1

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 359
    const-string v15, "cdmaSubscriptionSourceNV"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateOperatorNumericInDpt(Ljava/lang/String;)Z

    .line 363
    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SUPPORT_IPV4 = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV4:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 364
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SUPPORT_IPV6 = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV6:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 365
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SUPPORT_MPDN = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 366
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SUPPORT_MPDN_SERVICE_ARBITRATION = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 367
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SUPPORT_OMH = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/DataProfileTracker;->isOmhEnabled()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 368
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SUPPORT_OOS_IS_DISCONNECT = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mOosIsDisconnect:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/MMDataConnectionTracker;)Lcom/android/internal/telephony/DataNetStatistics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method private checkAndBringUpDs(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "ds"
    .parameter "ipv"
    .parameter "reason"
    .parameter "dataCallsInOrderOfPriority"

    .prologue
    const/4 v3, 0x1

    .line 1341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipv = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dataCallsInOrderOfPriority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1343
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1344
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_0

    .line 1345
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->trySetupDataCall(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)Z

    move-result v0

    .line 1347
    .local v0, setupDone:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1349
    if-eqz v0, :cond_1

    move v1, v3

    .line 1359
    .end local v0           #setupDone:Z
    :goto_0
    return v1

    .line 1351
    :cond_0
    if-ne p4, v3, :cond_1

    .line 1354
    const-string v1, "Skipping bringing up of low pri ds due to pending high pri ds"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    move v1, v3

    .line 1355
    goto :goto_0

    .line 1359
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createDataCallList()V
    .locals 3

    .prologue
    .line 1653
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    .line 1656
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 1657
    invoke-static {p0}, Lcom/android/internal/telephony/MMDataConnection;->makeDataConnection(Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/MMDataConnection;

    move-result-object v0

    .line 1658
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1660
    .end local v0           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_0
    return-void
.end method

.method private destroyDataCallList()V
    .locals 2

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1666
    :cond_0
    return-void
.end method

.method private disconnectOneLowPriorityDataCall(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z
    .locals 8
    .parameter "serviceType"
    .parameter "reason"

    .prologue
    .line 1107
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v3, v0, v4

    .line 1108
    .local v3, ds:Lcom/android/internal/telephony/DataServiceType;
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/DataServiceType;->isLowerPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1112
    const/4 v2, 0x0

    .line 1114
    .local v2, disconnectDone:Z
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    .line 1115
    .local v1, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v1, :cond_0

    .line 1116
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    .line 1117
    const/4 v2, 0x1

    .line 1119
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    .line 1120
    if-eqz v1, :cond_1

    .line 1121
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    .line 1122
    const/4 v2, 0x1

    .line 1124
    :cond_1
    if-eqz v2, :cond_2

    .line 1125
    const/4 v6, 0x1

    .line 1129
    .end local v1           #dc:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #disconnectDone:Z
    .end local v3           #ds:Lcom/android/internal/telephony/DataServiceType;
    :goto_1
    return v6

    .line 1107
    .restart local v3       #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1129
    .end local v3           #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private findFreeDataCall()Lcom/android/internal/telephony/MMDataConnection;
    .locals 5

    .prologue
    .line 1669
    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 1670
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/MMDataConnection;

    move-object v2, v0

    .line 1671
    .local v2, dc:Lcom/android/internal/telephony/MMDataConnection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/MMDataConnection;->isInactive()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 1675
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #dc:Lcom/android/internal/telephony/MMDataConnection;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getAlarmIntentName(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 2
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.internal.telephony.gprs-reconnect."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataCallStateByCid(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/DataCallState;
    .locals 3
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;I)",
            "Lcom/android/internal/telephony/DataCallState;"
        }
    .end annotation

    .prologue
    .line 814
    .local p1, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local p0
    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 815
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    if-ne v2, p2, :cond_0

    .line 816
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    move-object v2, p0

    .line 818
    :goto_1
    return-object v2

    .line 814
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 818
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getDataProfileTypeToUse()Lcom/android/internal/telephony/DataProfile$DataProfileType;
    .locals 4

    .prologue
    .line 1616
    const/4 v1, 0x0

    .line 1617
    .local v1, type:Lcom/android/internal/telephony/DataProfile$DataProfileType;
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v0

    .line 1618
    .local v0, r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    .line 1619
    :cond_0
    const/4 v1, 0x0

    .line 1649
    :goto_0
    return-object v1

    .line 1620
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsEhrpdCapable:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isEvdo()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1627
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v3, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isAnyDataProfileAvailable(Lcom/android/internal/telephony/DataProfile$DataProfileType;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1629
    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    goto :goto_0

    .line 1635
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_NAI:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    goto :goto_0

    .line 1637
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1638
    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    goto :goto_0

    .line 1640
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileTracker;->isOmhEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1641
    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    goto :goto_0

    .line 1645
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    goto :goto_0
.end method

.method private getDesiredPowerState()Z
    .locals 1

    .prologue
    .line 1363
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDesiredPowerState:Z

    return v0
.end method

.method private getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v0

    return-object v0
.end method

.method private isHigherPriorityDataCallActive(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 5
    .parameter "serviceType"

    .prologue
    .line 1137
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1138
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataServiceType;->isHigherPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1140
    const/4 v4, 0x1

    .line 1143
    .end local v1           #ds:Lcom/android/internal/telephony/DataServiceType;
    :goto_1
    return v4

    .line 1137
    .restart local v1       #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1143
    .end local v1           #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isIpAddrChanged(Lcom/android/internal/telephony/DataCallState;Lcom/android/internal/telephony/DataConnection;)Z
    .locals 3
    .parameter "activeDC"
    .parameter "dc"

    .prologue
    .line 822
    const/4 v0, 0x0

    .line 826
    .local v0, ipaddrChanged:Z
    invoke-virtual {p2}, Lcom/android/internal/telephony/DataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 827
    iget-object v1, p1, Lcom/android/internal/telephony/DataCallState;->address:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/internal/telephony/DataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 828
    const/4 v0, 0x1

    .line 831
    :cond_0
    return v0
.end method

.method private isReadyForData()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1387
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDataConnectivityEnabled()Z

    move-result v1

    .line 1389
    .local v1, isReadyForData:Z
    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    .line 1390
    .local v3, roaming:Z
    if-eqz v1, :cond_7

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_0
    move v1, v5

    .line 1392
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1393
    .local v0, dataRegState:I
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v2

    .line 1396
    .local v2, r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    if-eqz v1, :cond_8

    if-nez v0, :cond_1

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v2, v4, :cond_2

    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mNoAutoAttach:Z

    if-eqz v4, :cond_8

    :cond_2
    move v1, v5

    .line 1401
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v2, v4, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isUnknown()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mNoAutoAttach:Z

    if-eqz v4, :cond_4

    .line 1404
    :cond_3
    if-eqz v1, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    if-nez v4, :cond_9

    move v1, v5

    .line 1408
    :cond_4
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1409
    if-eqz v1, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget v4, v4, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRecordsLoaded()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_5
    move v1, v5

    .line 1415
    :cond_6
    :goto_3
    return v1

    .end local v0           #dataRegState:I
    .end local v2           #r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    :cond_7
    move v1, v6

    .line 1390
    goto :goto_0

    .restart local v0       #dataRegState:I
    .restart local v2       #r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    :cond_8
    move v1, v6

    .line 1396
    goto :goto_1

    :cond_9
    move v1, v6

    .line 1404
    goto :goto_2

    :cond_a
    move v1, v6

    .line 1409
    goto :goto_3
.end method

.method private isReadyForData(Ljava/lang/String;)Z
    .locals 7
    .parameter "reason"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1421
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDataConnectivityEnabled()Z

    move-result v1

    .line 1423
    .local v1, isReadyForData:Z
    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    .line 1424
    .local v3, roaming:Z
    if-eqz v1, :cond_7

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_0
    move v1, v5

    .line 1426
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1427
    .local v0, dataRegState:I
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v2

    .line 1429
    .local v2, r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    if-eqz v1, :cond_8

    if-nez v0, :cond_1

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v2, v4, :cond_2

    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mNoAutoAttach:Z

    if-nez v4, :cond_2

    const-string v4, "apnTypeEnabled"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_2
    move v1, v5

    .line 1433
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v2, v4, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isUnknown()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mNoAutoAttach:Z

    if-eqz v4, :cond_4

    .line 1436
    :cond_3
    if-eqz v1, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    if-nez v4, :cond_9

    move v1, v5

    .line 1440
    :cond_4
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1441
    if-eqz v1, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget v4, v4, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRecordsLoaded()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_5
    move v1, v5

    .line 1447
    :cond_6
    :goto_3
    return v1

    .end local v0           #dataRegState:I
    .end local v2           #r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    :cond_7
    move v1, v6

    .line 1424
    goto :goto_0

    .restart local v0       #dataRegState:I
    .restart local v2       #r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    :cond_8
    move v1, v6

    .line 1429
    goto :goto_1

    :cond_9
    move v1, v6

    .line 1436
    goto :goto_2

    :cond_a
    move v1, v6

    .line 1441
    goto :goto_3
.end method

.method private logDataConnectionFailure(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile;Lcom/android/internal/telephony/Phone$IPVersion;Lcom/android/internal/telephony/DataConnectionFailCause;)V
    .locals 7
    .parameter "ds"
    .parameter "dp"
    .parameter "ipv"
    .parameter "cause"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1083
    invoke-virtual {p4}, Lcom/android/internal/telephony/DataConnectionFailCause;->isEventLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1084
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 1085
    .local v1, loc:Landroid/telephony/CellLocation;
    const/4 v0, -0x1

    .line 1086
    .local v0, id:I
    if-eqz v1, :cond_0

    .line 1087
    instance-of v2, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_3

    .line 1088
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .end local v1           #loc:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 1093
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v2, v3, :cond_4

    .line 1095
    :cond_1
    const v2, 0xc3bd

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1102
    .end local v0           #id:I
    :cond_2
    :goto_1
    return-void

    .line 1090
    .restart local v0       #id:I
    .restart local v1       #loc:Landroid/telephony/CellLocation;
    :cond_3
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v1           #loc:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    goto :goto_0

    .line 1098
    :cond_4
    const v2, 0xc3bf

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private onCdmaOtaProvision(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 494
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 496
    .local v1, otaProvision:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 497
    const/4 v2, 0x0

    aget v2, v1, v2

    packed-switch v2, :pswitch_data_0

    .line 509
    .end local v1           #otaProvision:[I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 500
    .restart local v1       #otaProvision:[I
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 501
    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 502
    const-string v2, "cdmaOtaPovisioning"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDataProfileListChanged(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 512
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 514
    .local v0, reason:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 515
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 516
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectAllConnections(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method private tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z
    .locals 3
    .parameter "dc"
    .parameter "reason"

    .prologue
    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryDisconnectDataCall : dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 1542
    const/4 v0, 0x0

    .line 1544
    .local v0, dcReason:I
    const-string v1, "radioTurnedOff"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1545
    const/4 v0, 0x1

    .line 1549
    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/DataConnection;->disconnect(Landroid/os/Message;)V

    .line 1550
    const/4 v1, 0x1

    return v1

    .line 1547
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private trySetupDataCall(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)Z
    .locals 8
    .parameter "ds"
    .parameter "ipv"
    .parameter "reason"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1554
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trySetupDataCall : ds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ipv="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 1555
    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataProfileTypeToUse()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v5

    invoke-virtual {v4, p1, v5, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getNextWorkingDataProfile(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v2

    .line 1556
    .local v2, dp:Lcom/android/internal/telephony/DataProfile;
    if-nez v2, :cond_0

    .line 1557
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no working data profile available to establish service type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    .line 1558
    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 1559
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    move v4, v7

    .line 1612
    :goto_0
    return v4

    .line 1570
    :cond_0
    sget-boolean v4, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v5, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataProfileTracker;->isAnyDataProfileAvailable(Lcom/android/internal/telephony/DataProfile$DataProfileType;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1573
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectOneLowPriorityDataCall(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1574
    const-string v4, "Lower/Equal priority call disconnected."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    move v4, v6

    .line 1575
    goto :goto_0

    .line 1577
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isHigherPriorityDataCallActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1578
    const-string v4, "Higher priority call active. Ignoring setup data call request."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    move v4, v7

    .line 1579
    goto :goto_0

    .line 1583
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->findFreeDataCall()Lcom/android/internal/telephony/MMDataConnection;

    move-result-object v1

    .line 1584
    .local v1, dc:Lcom/android/internal/telephony/DataConnection;
    if-nez v1, :cond_5

    .line 1587
    sget-boolean v4, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    if-eqz v4, :cond_4

    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectOneLowPriorityDataCall(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v6

    .line 1594
    .local v3, ret:Z
    :goto_1
    const-string v4, "dc = null , return"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    move v4, v6

    .line 1596
    goto :goto_0

    .end local v3           #ret:Z
    :cond_4
    move v3, v7

    .line 1587
    goto :goto_1

    .line 1599
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 1600
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 1602
    iput-boolean v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataCallSetupPending:Z

    .line 1605
    new-instance v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;-><init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V

    .line 1606
    .local v0, c:Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    iput-object v1, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    .line 1607
    iput-object v2, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    .line 1608
    iput-object p1, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    .line 1609
    iput-object p2, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    .line 1610
    iput-object p3, v0, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    .line 1611
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {p0, v5, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v2, p2, v5}, Lcom/android/internal/telephony/DataConnection;->connect(Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;Lcom/android/internal/telephony/DataProfile;Lcom/android/internal/telephony/Phone$IPVersion;Landroid/os/Message;)V

    move v4, v6

    .line 1612
    goto :goto_0
.end method

.method private updateOperatorNumericInDpt(Ljava/lang/String;)Z
    .locals 4
    .parameter "reason"

    .prologue
    const/4 v3, 0x0

    .line 538
    const-string v0, "cdmaSubscriptionSourceNV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaHomeOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/DataProfileTracker;->updateOperatorNumeric(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 558
    :goto_0
    return v0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const-string v1, "ro.telephony.default_network"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/DataProfileTracker;->updateOperatorNumeric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v3

    .line 558
    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/DataProfileTracker;->updateOperatorNumeric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 556
    :cond_2
    const-string v0, "records are loaded, but both mSimrecords & mRuimRecords are null."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public disconnectAllConnections(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 1152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllDataCalls:Z

    .line 1153
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 1154
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDctActive:Z

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataStateChanged(Landroid/os/Handler;)V

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForTetheredModeStateChanged(Landroid/os/Handler;)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unRegisterForRadioTechnologyChanged(Landroid/os/Handler;)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataProfileTracker;->unregisterForDataProfileDbChanged(Landroid/os/Handler;)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->dispose()V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    .line 401
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->destroyDataCallList()V

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 405
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 406
    return-void
.end method

.method dumpDataCalls()V
    .locals 5

    .prologue
    .line 1496
    const-string v3, "---dc list---"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 1497
    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    .line 1498
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->isInactive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1500
    .local v2, sb:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getStateAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", ipv = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getIpVersion()Lcom/android/internal/telephony/Phone$IPVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", ipaddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", gw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", dns="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1509
    .end local v0           #dc:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public dumpDataReadinessinfo()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "/"

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1473
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "[DataRadioTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getRadioTechnology()Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1474
    const-string v1, ", data network state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1475
    const-string v1, ", mMasterDataEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mMasterDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1476
    const-string v1, ", is Roaming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1477
    const-string v1, ", dataOnRoamingEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1478
    const-string v1, ", isPsRestricted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1479
    const-string v1, ", desiredPowerState  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDesiredPowerState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1480
    const-string v1, ", mSIMRecords = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v1, :cond_0

    .line 1482
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    :cond_0
    const-string v1, ", cdmaSubSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget v2, v2, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1485
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCdmaHomeOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    :cond_1
    const-string v1, ", mRuimRecords = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v1, :cond_2

    .line 1489
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRecordsLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method dumpDataServiceTypes()V
    .locals 10

    .prologue
    const-string v9, ")"

    const-string v8, "("

    .line 1512
    const-string v5, "---ds list---"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 1513
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1514
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1515
    .local v4, sb:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ds= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    const-string v5, ", active = v4:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1519
    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v6, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v1, v6}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1520
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    :cond_0
    const-string v5, " v6:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1524
    iget-object v5, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v6, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v1, v6}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1525
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 1513
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1529
    .end local v1           #ds:Lcom/android/internal/telephony/DataServiceType;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1733
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1734
    .local v0, dcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataConnection;>;"
    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 1711
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 1712
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataActivityState;
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1713
    sget-object v1, Lcom/android/internal/telephony/MMDataConnectionTracker$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataNetStatistics;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1728
    :cond_0
    :goto_0
    return-object v0

    .line 1715
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 1716
    goto :goto_0

    .line 1718
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 1719
    goto :goto_0

    .line 1721
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 1722
    goto :goto_0

    .line 1724
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 1713
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1694
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 1697
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 1694
    goto :goto_0

    .line 1696
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 1697
    goto :goto_0
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->isDctActive:Z

    if-nez v0, :cond_0

    .line 411
    const-string v0, "Ignoring handler messages, DCT marked as disposed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logw(Ljava/lang/String;)V

    .line 482
    :goto_0
    return-void

    .line 415
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 479
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 417
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onUpdateDataConnections(Ljava/lang/String;I)V

    goto :goto_0

    .line 421
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_0

    .line 425
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onDataConnectionAttached()V

    goto :goto_0

    .line 429
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onDataConnectionDetached()V

    goto :goto_0

    .line 433
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onRadioTechnologyChanged()V

    goto :goto_0

    .line 438
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onDataCallListChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 442
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onDataProfileListChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 446
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onCdmaOtaProvision(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 450
    :sswitch_8
    const-string v0, "cdmaSubscriptionSourceChanged"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :sswitch_9
    const-string v0, "PS restrict enabled."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->stopNetStatPoll()V

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    goto :goto_0

    .line 466
    :sswitch_a
    const-string v0, "PS restrict disable."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsPsRestricted:Z

    .line 472
    const-string v0, "psRestrictDisabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->onTetheredModeStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 415
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_5
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xf -> :sswitch_6
        0x12 -> :sswitch_4
        0x13 -> :sswitch_b
        0x14 -> :sswitch_7
        0x15 -> :sswitch_8
        0x19 -> :sswitch_9
        0x1a -> :sswitch_a
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method protected isConcurrentVoiceAndData()Z
    .locals 1

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 1463
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isReadyForData()Z

    move-result v0

    return v0
.end method

.method logd(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 1754
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    return-void
.end method

.method loge(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 1746
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    return-void
.end method

.method logi(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 1762
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    return-void
.end method

.method logv(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 1758
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    return-void
.end method

.method logw(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 1750
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    return-void
.end method

.method protected onConnectDone(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    .line 837
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataCallSetupPending:Z

    .line 839
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;

    .line 845
    .local v2, c:Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;
    iget-object v10, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_1

    .line 847
    const-string v10, "--------------------------"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 848
    const-string v10, "Data call setup : SUCCESS"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 849
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  service type  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 850
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  data profile  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 851
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  data call id  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget v11, v11, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 852
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ip version    : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 853
    const-string v10, "--------------------------"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 858
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dc:Lcom/android/internal/telephony/DataConnection;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeAsActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 859
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 861
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    sget-object v11, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    if-ne v10, v11, :cond_0

    .line 862
    const-string v10, "gsm.defaultpdpcontext.active"

    const-string/jumbo v11, "true"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_0
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 1075
    .end local p1
    :goto_0
    return-void

    .line 875
    .restart local p1
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 876
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 878
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/DataConnectionFailCause;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    move-object v3, v0

    .line 880
    .local v3, cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    const-string v10, "--------------------------"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 881
    const-string v10, "Data call setup : FAILED"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 882
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  service type  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 883
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  data profile  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 884
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ip version    : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 885
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  fail cause    : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 886
    const-string v10, "--------------------------"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 888
    const/4 v5, 0x1

    .line 897
    .local v5, needDataConnectionUpdate:Z
    sget-object v10, Lcom/android/internal/telephony/DataConnectionFailCause;->IP_VERSION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne v3, v10, :cond_4

    .line 903
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disabling data profile. dp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ipv="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 904
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    const/4 v11, 0x0

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    .line 907
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 1068
    :cond_2
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "needDataConnectionUpdate = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1070
    if-eqz v5, :cond_3

    .line 1071
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 1074
    :cond_3
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, v10, v11, v12, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logDataConnectionFailure(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile;Lcom/android/internal/telephony/Phone$IPVersion;Lcom/android/internal/telephony/DataConnectionFailCause;)V

    goto/16 :goto_0

    .line 908
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionFailCause;->isDataProfileFailure()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 911
    const-string v10, "ro.config.hw_opta"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "26"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "ro.config.hw_optb"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "392"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 913
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure with data profile. dp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ipv="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", return!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 924
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disabling data profile. dp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ipv="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 925
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    const/4 v11, 0x0

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    .line 928
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    goto/16 :goto_1

    .line 929
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionFailCause;->isPdpAvailabilityFailure()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 938
    sget-boolean v10, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    if-eqz v10, :cond_7

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectOneLowPriorityDataCall(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 939
    const-string v10, "Disconnected low priority data call [pdp availability failure.]"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 940
    const/4 v5, 0x0

    .line 945
    :cond_7
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    goto/16 :goto_1

    .line 946
    :cond_8
    sget-boolean v10, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectOneLowPriorityDataCall(Lcom/android/internal/telephony/DataServiceType;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 948
    const-string v10, "Disconnected low priority data call [pdp availability failure.]"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 955
    const/4 v5, 0x0

    .line 958
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    goto/16 :goto_1

    .line 959
    :cond_9
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionFailCause;->isPermanentFail()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 965
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permanent failure. Disabling data profile. dp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ipv="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 967
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    const/4 v11, 0x0

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    .line 970
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    goto/16 :goto_1

    .line 972
    :cond_a
    const-string v10, "Data call setup failure cause unknown / temporary failure."

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 984
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/DataProfileTracker;->getRetryManager(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v8

    .line 986
    .local v8, retryManager:Lcom/android/internal/telephony/RetryManager;
    const/4 v9, 0x0

    .line 987
    .local v9, scheduleAlarm:Z
    const-wide/16 v6, 0x0

    .line 989
    .local v6, nextReconnectDelay:J
    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 991
    const/4 v9, 0x1

    .line 992
    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v10

    int-to-long v6, v10

    .line 993
    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    .line 996
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 997
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 1047
    :goto_2
    if-eqz v9, :cond_2

    .line 1048
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scheduling next attempt on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    div-long v11, v6, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "s. Retry count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1051
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mContext:Landroid/content/Context;

    const-string v11, "alarm"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 1053
    .local v1, am:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getAlarmIntentName(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1054
    .local v4, intent:Landroid/content/Intent;
    const-string v10, "reason"

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    const-string v10, "ds"

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataServiceType;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    const-string v10, "ipv"

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone$IPVersion;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 1060
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1061
    const/4 v10, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    add-long/2addr v11, v6

    iget-object v13, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1063
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 1000
    .end local v1           #am:Landroid/app/AlarmManager;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No retries left, disabling data profile. dp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ipv = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 1002
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    const/4 v11, 0x0

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    .line 1003
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataProfileTypeToUse()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v12

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->getNextWorkingDataProfile(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 1006
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    goto/16 :goto_2

    .line 1008
    :cond_c
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    sget-object v11, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    if-eq v10, v11, :cond_e

    .line 1014
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 1015
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No data profiles left to try, disabling service  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 1016
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 1018
    :cond_d
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 1019
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1026
    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retry forever using last disabled data profile. dp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfile;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ipv = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 1028
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->dp:Lcom/android/internal/telephony/DataProfile;

    const/4 v11, 0x1

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    .line 1029
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v13, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 1030
    iget-object v10, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ds:Lcom/android/internal/telephony/DataServiceType;

    iget-object v11, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    iget-object v12, v2, Lcom/android/internal/telephony/MMDataConnectionTracker$CallbackData;->reason:Ljava/lang/String;

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->retryForeverUsingLastTimeout()V

    .line 1040
    const/4 v9, 0x1

    .line 1041
    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v10

    int-to-long v6, v10

    .line 1042
    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    goto/16 :goto_2
.end method

.method protected onDataCallListChanged(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    .line 685
    iget-object v10, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    move-object v0, v10

    check-cast v0, Ljava/util/ArrayList;

    move-object v5, v0

    .line 687
    .local v5, dcStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v10, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_0

    .line 777
    :goto_0
    return-void

    .line 694
    :cond_0
    const-string v10, "onDataCallListChanged:"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 695
    const-string v10, "---dc state list---"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataCallState;

    .line 697
    .local v2, d:Lcom/android/internal/telephony/DataCallState;
    if-eqz v2, :cond_1

    iget v10, v2, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v10, :cond_1

    .line 698
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataCallState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    goto :goto_1

    .line 700
    .end local v2           #d:Lcom/android/internal/telephony/DataCallState;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dumpDataCalls()V

    .line 702
    const/4 v9, 0x0

    .line 703
    .local v9, needDataConnectionUpdate:Z
    const/4 v3, 0x0

    .line 704
    .local v3, dataConnectionUpdateReason:Ljava/lang/String;
    const/4 v8, 0x1

    .line 707
    .local v8, isDataDormant:Z
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    :pswitch_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataConnection;

    .line 709
    .local v4, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection;->isActive()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 713
    iget v10, v4, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-direct {p0, v5, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataCallStateByCid(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/DataCallState;

    move-result-object v1

    .line 714
    .local v1, activeDC:Lcom/android/internal/telephony/DataCallState;
    if-nez v1, :cond_4

    .line 715
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DC has disappeared from list : dc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection;->resetSynchronously()V

    .line 719
    const/4 v9, 0x1

    .line 720
    if-nez v3, :cond_3

    .line 721
    const-string v3, "networkOrModemDisconnect"

    goto :goto_2

    .line 723
    :cond_4
    iget v10, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    if-nez v10, :cond_5

    .line 724
    iget v10, v1, Lcom/android/internal/telephony/DataCallState;->inactiveReason:I

    invoke-static {v10}, Lcom/android/internal/telephony/DataConnectionFailCause;->getDataConnectionDisconnectCause(I)Lcom/android/internal/telephony/DataConnectionFailCause;

    move-result-object v6

    .line 727
    .local v6, failCause:Lcom/android/internal/telephony/DataConnectionFailCause;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DC is inactive : dc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 728
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "   inactive cause = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection;->resetSynchronously()V

    .line 731
    const/4 v9, 0x1

    .line 732
    if-nez v3, :cond_3

    .line 733
    const-string v3, "networkOrModemDisconnect"

    goto :goto_2

    .line 735
    .end local v6           #failCause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :cond_5
    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isIpAddrChanged(Lcom/android/internal/telephony/DataCallState;Lcom/android/internal/telephony/DataConnection;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 740
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ip address change detected on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 741
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new IpAddr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/internal/telephony/DataCallState;->address:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",old IpAddr"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 743
    const-string v10, "dataConnectionPropertyChanged"

    invoke-direct {p0, v4, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 745
    :cond_6
    iget v10, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    packed-switch v10, :pswitch_data_0

    .line 759
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dc.cid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", unexpected DataCallState.active="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 751
    :pswitch_1
    const/4 v8, 0x0

    .line 752
    goto/16 :goto_2

    .line 765
    .end local v1           #activeDC:Lcom/android/internal/telephony/DataCallState;
    .end local v4           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_7
    if-eqz v9, :cond_8

    .line 766
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 769
    :cond_8
    if-eqz v8, :cond_9

    .line 770
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/DataNetStatistics;->setActivity(Lcom/android/internal/telephony/DataConnectionTracker$Activity;)V

    .line 771
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->stopNetStatPoll()V

    .line 776
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataActivity()V

    goto/16 :goto_0

    .line 773
    :cond_9
    iget-object v10, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/DataNetStatistics;->setActivity(Lcom/android/internal/telephony/DataConnectionTracker$Activity;)V

    .line 774
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->startNetStatPoll()V

    goto :goto_3

    .line 745
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDataConnectionAttached()V
    .locals 2

    .prologue
    const-string v1, "dataNetworkAttached"

    .line 563
    const-string v0, " songhao trySetupData due to  onGprsAttached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 575
    const-string v0, "dataNetworkAttached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    .line 577
    const-string v0, "dataNetworkAttached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method protected onDataConnectionDetached()V
    .locals 1

    .prologue
    .line 588
    const-string v0, "dataNetworkDetached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method protected onDisconnectDone(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnectDone: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 1148
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 1149
    return-void
.end method

.method protected onMasterDataDisabled()V
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllDataCalls:Z

    .line 653
    const-string v0, "masterDataDisabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method protected onMasterDataEnabled()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 660
    const-string v0, "masterDataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method protected onRadioOff()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 619
    return-void
.end method

.method protected onRadioOn()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 611
    const-string v0, "radioOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method protected onRadioTechnologyChanged()V
    .locals 2

    .prologue
    const-string v1, "radioTechnologyChanged"

    .line 596
    const-string v0, "radioTechnologyChanged"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 604
    const-string v0, "radioTechnologyChanged"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method protected onRecordsLoaded()V
    .locals 2

    .prologue
    const-string v1, "iccRecordsLaded"

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->readDataprofilesFromModem()V

    .line 526
    :cond_0
    const-string v0, "iccRecordsLaded"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateOperatorNumericInDpt(Ljava/lang/String;)Z

    .line 527
    const-string v0, "iccRecordsLaded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method protected onRoamingOff()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 625
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 626
    return-void
.end method

.method protected onRoamingOn()V
    .locals 2

    .prologue
    const-string v1, "roamingOn"

    .line 630
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    const-string v0, "roamingOn"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectAllConnections(Ljava/lang/String;)V

    .line 633
    :cond_0
    const-string v0, "roamingOn"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method protected onServiceTypeDisabled(Lcom/android/internal/telephony/DataServiceType;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 665
    const-string v0, "apnTypeDisabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method protected onServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataProfileTracker;->resetServiceState(Lcom/android/internal/telephony/DataServiceType;)V

    .line 672
    const-string v0, "apnTypeEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method onTetheredModeStateChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 780
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 782
    .local v2, ret:[I
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 783
    :cond_0
    const-string v3, "Error: Invalid Tethered mode received"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 810
    :goto_0
    return-void

    .line 787
    :cond_1
    const/4 v3, 0x0

    aget v1, v2, v3

    .line 788
    .local v1, mode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTetheredModeStateChanged: mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 790
    packed-switch v1, :pswitch_data_0

    .line 808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Invalid Tethered mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 795
    :pswitch_0
    const-string v3, "Unsol Indication: RIL_TETHERED_MODE_ON"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 798
    :pswitch_1
    const-string v3, "Unsol Indication: RIL_TETHERED_MODE_OFF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 804
    iget-object v3, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 805
    const-string/jumbo v3, "tetheredModeStateChanged"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected declared-synchronized onUpdateDataConnections(Ljava/lang/String;I)V
    .locals 13
    .parameter "reason"
    .parameter "context"

    .prologue
    .line 1162
    monitor-enter p0

    :try_start_0
    iget v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    if-eq p2, v11, :cond_1

    .line 1164
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onUpdateDataConnections [ignored] : reason="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1336
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1168
    :cond_1
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onUpdateDataConnections: reason="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dumpDataCalls()V

    .line 1170
    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dumpDataServiceTypes()V

    .line 1180
    const/4 v10, 0x0

    .line 1182
    .local v10, wasDcDisconnected:Z
    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    .line 1183
    .local v2, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->isInactive()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1185
    const-string v11, "dc isInactive"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1191
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v8, v0

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v8, :cond_2

    aget-object v3, v0, v5

    .line 1192
    .local v3, ds:Lcom/android/internal/telephony/DataServiceType;
    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v12, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v11, v3, v12}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v11

    if-ne v11, v2, :cond_3

    .line 1193
    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v12, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v11, v3, v12}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeAsInactive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 1194
    sget-object v11, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v3, v11, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 1196
    :cond_3
    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v12, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v11, v3, v12}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v11

    if-ne v11, v2, :cond_4

    .line 1197
    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v12, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v11, v3, v12}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeAsInactive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 1198
    sget-object v11, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v3, v11, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 1191
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1201
    .end local v0           #arr$:[Lcom/android/internal/telephony/DataServiceType;
    .end local v3           #ds:Lcom/android/internal/telephony/DataServiceType;
    .end local v5           #i$:I
    .end local v8           #len$:I
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->isActive()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataCallSetupPending:Z

    if-nez v11, :cond_2

    .line 1207
    const/4 v9, 0x1

    .line 1208
    .local v9, needsTearDown:Z
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .restart local v0       #arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v8, v0

    .restart local v8       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    :goto_3
    if-ge v5, v8, :cond_6

    aget-object v3, v0, v5

    .line 1209
    .restart local v3       #ds:Lcom/android/internal/telephony/DataServiceType;
    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v11, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->getIpVersion()Lcom/android/internal/telephony/Phone$IPVersion;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v11

    if-ne v11, v2, :cond_8

    .line 1211
    const/4 v9, 0x0

    .line 1216
    .end local v3           #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "needsTearDown = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mDisconnectAllDataCalls = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllDataCalls:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1218
    if-nez v9, :cond_7

    iget-boolean v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllDataCalls:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 1219
    :cond_7
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->tryDisconnectDataCall(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v10, v11

    goto/16 :goto_1

    .line 1208
    .restart local v3       #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1224
    .end local v0           #arr$:[Lcom/android/internal/telephony/DataServiceType;
    .end local v2           #dc:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #ds:Lcom/android/internal/telephony/DataServiceType;
    .end local v5           #i$:I
    .end local v8           #len$:I
    .end local v9           #needsTearDown:Z
    :cond_9
    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 1234
    iget-boolean v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllDataCalls:Z

    if-eqz v11, :cond_a

    .line 1240
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDisconnectAllDataCalls:Z

    .line 1242
    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPendingPowerOffCompleteMsg:Landroid/os/Message;

    if-eqz v11, :cond_a

    .line 1243
    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPendingPowerOffCompleteMsg:Landroid/os/Message;

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 1244
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPendingPowerOffCompleteMsg:Landroid/os/Message;

    .line 1249
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->isReadyForData(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDesiredPowerState()Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v11}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    move v7, v11

    .line 1253
    .local v7, isReadyForData:Z
    :goto_4
    if-nez v7, :cond_c

    .line 1254
    const-string v11, "***** NOT Ready for data :"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1255
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "   getDesiredPowerState() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDesiredPowerState()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1256
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "   mCm.getRadioState() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1257
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dumpDataReadinessinfo()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1162
    .end local v7           #isReadyForData:Z
    .end local v10           #wasDcDisconnected:Z
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1249
    .restart local v10       #wasDcDisconnected:Z
    :cond_b
    const/4 v11, 0x0

    move v7, v11

    goto :goto_4

    .line 1261
    .restart local v7       #isReadyForData:Z
    :cond_c
    :try_start_2
    const-string v11, "Ready for data : "

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1262
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "   getDesiredPowerState() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->getDesiredPowerState()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1263
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "   mCm.getRadioState() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1264
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->dumpDataReadinessinfo()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 1271
    iget-boolean v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataCallSetupPending:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    .line 1272
    const-string v11, "Data Call setup pending. Not trying to bring up any new data connections."

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1282
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->getPrioritySortedValues()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .restart local v0       #arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v8, v0

    .restart local v8       #len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    :goto_5
    if-ge v5, v8, :cond_0

    aget-object v3, v0, v5

    .line 1286
    .restart local v3       #ds:Lcom/android/internal/telephony/DataServiceType;
    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5           #i$:I
    .local v4, i$:Ljava/util/Iterator;
    :cond_e
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    .line 1287
    .restart local v2       #dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->isActive()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->getDataProfile()Lcom/android/internal/telephony/DataProfile;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/android/internal/telephony/DataProfile;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1289
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->getIpVersion()Lcom/android/internal/telephony/Phone$IPVersion;

    move-result-object v6

    .line 1290
    .local v6, ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v11, v3, v6}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v11

    if-nez v11, :cond_e

    .line 1291
    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v11, v3, v2, v6}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeAsActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 1296
    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v11, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1297
    invoke-virtual {p0, v3, v6, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    goto :goto_6

    .line 1311
    .end local v2           #dc:Lcom/android/internal/telephony/DataConnection;
    .end local v6           #ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    :cond_f
    sget-boolean v11, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN:Z

    if-eqz v11, :cond_11

    sget-boolean v11, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN:Z

    if-eqz v11, :cond_10

    sget-boolean v11, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_MPDN_SERVICE_ARBITRATION:Z

    if-nez v11, :cond_11

    :cond_10
    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v12, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/DataProfileTracker;->isAnyDataProfileAvailable(Lcom/android/internal/telephony/DataProfile$DataProfileType;)Z

    move-result v11

    if-eqz v11, :cond_14

    :cond_11
    const/4 v11, 0x1

    move v1, v11

    .line 1320
    .local v1, dataCallsInOrderOfPriority:Z
    :goto_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDpt.isServiceTypeEnabled(ds) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v12, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1322
    iget-object v11, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v11, v3}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_13

    .line 1324
    sget-boolean v11, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV4:Z

    if-eqz v11, :cond_12

    .line 1325
    sget-object v11, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, v3, v11, p1, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->checkAndBringUpDs(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1330
    :cond_12
    sget-boolean v11, Lcom/android/internal/telephony/MMDataConnectionTracker;->SUPPORT_IPV6:Z

    if-eqz v11, :cond_13

    .line 1331
    sget-object v11, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, v3, v11, p1, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->checkAndBringUpDs(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    if-nez v11, :cond_0

    .line 1282
    :cond_13
    add-int/lit8 v4, v5, 0x1

    .local v4, i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto/16 :goto_5

    .line 1311
    .end local v1           #dataCallsInOrderOfPriority:Z
    .end local v5           #i$:I
    .local v4, i$:Ljava/util/Iterator;
    :cond_14
    const/4 v11, 0x0

    move v1, v11

    goto :goto_7
.end method

.method protected onVoiceCallEnded()V
    .locals 2

    .prologue
    const-string v1, "2GVoiceCallEnded"

    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllProfilesAsWorking()V

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->resetAllServiceStates()V

    .line 640
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 641
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method protected onVoiceCallStarted()V
    .locals 2

    .prologue
    const-string v1, "2GVoiceCallStarted"

    .line 646
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    .line 647
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->notifyAllDataServiceTypes(Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method public registerForDataServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/DataServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1739
    return-void
.end method

.method public declared-synchronized setDataConnectionAsDesired(ZLandroid/os/Message;)V
    .locals 1
    .parameter "desiredPowerState"
    .parameter "onCompleteMsg"

    .prologue
    .line 1370
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDesiredPowerState:Z

    .line 1371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPendingPowerOffCompleteMsg:Landroid/os/Message;

    .line 1373
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDesiredPowerState:Z

    if-nez v0, :cond_1

    .line 1374
    iput-object p2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPendingPowerOffCompleteMsg:Landroid/os/Message;

    .line 1375
    const-string v0, "radioTurnedOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->disconnectAllConnections(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1379
    :cond_1
    if-eqz p2, :cond_0

    .line 1380
    :try_start_1
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected startNetStatPoll()V
    .locals 2

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataNetStatistics;->isEnablePoll()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataNetStatistics;->resetPollStats()V

    .line 1681
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataNetStatistics;->setEnablePoll(Z)V

    .line 1682
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataNetStatistics;->run()V

    .line 1684
    :cond_0
    return-void
.end method

.method protected stopNetStatPoll()V
    .locals 2

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataNetStatistics;->setEnablePoll(Z)V

    .line 1688
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1689
    return-void
.end method

.method public unregisterForDataServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDsst:Lcom/android/internal/telephony/DataServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataServiceStateTracker;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1743
    return-void
.end method

.method protected updateDataConnections(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 485
    iget v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    .line 486
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/MMDataConnectionTracker;->mUpdateDataConnectionsContext:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 490
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 491
    return-void
.end method
