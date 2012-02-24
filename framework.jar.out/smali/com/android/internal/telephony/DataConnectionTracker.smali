.class public abstract Lcom/android/internal/telephony/DataConnectionTracker;
.super Landroid/os/Handler;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionTracker$2;,
        Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
        Lcom/android/internal/telephony/DataConnectionTracker$State;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field public static final DNS_SERVER_CHECK_DISABLED_KEY:Ljava/lang/String; = "dns_server_check_disabled_key"

.field protected static final EVENT_CDMA_OTA_PROVISION:I = 0x14

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x15

.field protected static final EVENT_CONNECT_DONE:I = 0x5

.field protected static final EVENT_DATA_CALL_LIST_CHANGED:I = 0xa

.field protected static final EVENT_DATA_CONNECTION_ATTACHED:I = 0xb

.field protected static final EVENT_DATA_CONNECTION_DETACHED:I = 0xc

.field protected static final EVENT_DATA_PROFILE_DB_CHANGED:I = 0xf

.field protected static final EVENT_DISCONNECT_DONE:I = 0x4

.field protected static final EVENT_MASTER_DATA_DISABLED:I = 0x11

.field protected static final EVENT_MASTER_DATA_ENABLED:I = 0x10

.field protected static final EVENT_PS_RESTRICT_DISABLED:I = 0x1a

.field protected static final EVENT_PS_RESTRICT_ENABLED:I = 0x19

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_ON:I = 0x8

.field protected static final EVENT_RADIO_TECHNOLOGY_CHANGED:I = 0x12

.field protected static final EVENT_RECORDS_LOADED:I = 0x1e

.field protected static final EVENT_ROAMING_OFF:I = 0xe

.field protected static final EVENT_ROAMING_ON:I = 0xd

.field protected static final EVENT_SERVICE_TYPE_DISABLED:I = 0x2

.field protected static final EVENT_SERVICE_TYPE_ENABLED:I = 0x3

.field protected static final EVENT_TETHERED_MODE_STATE_CHANGED:I = 0x13

.field protected static final EVENT_UPDATE_DATA_CONNECTIONS:I = 0x1

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0x7

.field protected static final EVENT_VOICE_CALL_STARTED:I = 0x6

.field protected static final REASON_CDMA_OTA_PROVISION:Ljava/lang/String; = "cdmaOtaPovisioning"

.field protected static final REASON_CDMA_SUBSCRIPTION_SOURCE_CHANGED:Ljava/lang/String; = "cdmaSubscriptionSourceChanged"

.field protected static final REASON_CDMA_SUBSCRIPTION_SOURCE_NV:Ljava/lang/String; = "cdmaSubscriptionSourceNV"

.field protected static final REASON_DATA_CONN_PROP_CHANGED:Ljava/lang/String; = "dataConnectionPropertyChanged"

.field protected static final REASON_DATA_NETWORK_ATTACH:Ljava/lang/String; = "dataNetworkAttached"

.field protected static final REASON_DATA_NETWORK_DETACH:Ljava/lang/String; = "dataNetworkDetached"

.field protected static final REASON_DATA_PROFILE_LIST_CHANGED:Ljava/lang/String; = "dataProfileDbChanged"

.field protected static final REASON_DEFAULT_DATA_DISABLED:Ljava/lang/String; = "defaultDataDisabled"

.field protected static final REASON_DEFAULT_DATA_ENABLED:Ljava/lang/String; = "defaultDataEnabled"

.field protected static final REASON_ICC_RECORDS_LOADED:Ljava/lang/String; = "iccRecordsLaded"

.field protected static final REASON_MASTER_DATA_DISABLED:Ljava/lang/String; = "masterDataDisabled"

.field protected static final REASON_MASTER_DATA_ENABLED:Ljava/lang/String; = "masterDataEnabled"

.field protected static final REASON_NETWORK_DISCONNECT:Ljava/lang/String; = "networkOrModemDisconnect"

.field protected static final REASON_PS_RESTRICT_DISABLED:Ljava/lang/String; = "psRestrictDisabled"

.field protected static final REASON_PS_RESTRICT_ENABLED:Ljava/lang/String; = "psRestrictEnabled"

.field protected static final REASON_RADIO_OFF:Ljava/lang/String; = "radioOff"

.field protected static final REASON_RADIO_ON:Ljava/lang/String; = "radioOn"

.field protected static final REASON_RADIO_TECHNOLOGY_CHANGED:Ljava/lang/String; = "radioTechnologyChanged"

.field protected static final REASON_ROAMING_OFF:Ljava/lang/String; = "roamingOff"

.field protected static final REASON_ROAMING_ON:Ljava/lang/String; = "roamingOn"

.field protected static final REASON_SERVICE_TYPE_DISABLED:Ljava/lang/String; = "apnTypeDisabled"

.field protected static final REASON_SERVICE_TYPE_ENABLED:Ljava/lang/String; = "apnTypeEnabled"

.field protected static final REASON_TETHERED_MODE_STATE_CHANGED:Ljava/lang/String; = "tetheredModeStateChanged"

.field protected static final REASON_VOICE_CALL_ENDED:Ljava/lang/String; = "2GVoiceCallEnded"

.field protected static final REASON_VOICE_CALL_STARTED:Ljava/lang/String; = "2GVoiceCallStarted"

.field protected static final maxRequestCount:I = 0xa

.field private static ntpTime:Ljava/lang/Object;

.field protected static requestCount:I


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field firstTime:Z

.field mCm:Lcom/android/internal/telephony/CommandsInterface;

.field mContext:Landroid/content/Context;

.field mDnsCheckDisabled:Z

.field mDpt:Lcom/android/internal/telephony/DataProfileTracker;

.field mMasterDataEnabled:Z

.field mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field protected mOosIsDisconnect:Z

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/DataConnectionTracker;->requestCount:I

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->ntpTime:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .parameter "context"
    .parameter "notifier"
    .parameter "ci"

    .prologue
    const/4 v1, 0x1

    .line 180
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 55
    const-string v0, "DATA"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 99
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDnsCheckDisabled:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->firstTime:Z

    .line 105
    const-string v0, "persist.telephony.oosisdc"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOosIsDisconnect:Z

    .line 181
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    .line 182
    iput-object p3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 183
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 185
    new-instance v0, Lcom/android/internal/telephony/DataProfileTracker;

    invoke-direct {v0, p1, p3}, Lcom/android/internal/telephony/DataProfileTracker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    .line 186
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->ntpTime:Ljava/lang/Object;

    return-object v0
.end method

.method private getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 4
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 422
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 424
    .local v1, ret:Lcom/android/internal/telephony/Phone$DataState;
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    .line 426
    .local v0, dsState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOosIsDisconnect:Z

    if-eqz v2, :cond_0

    .line 429
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 456
    :goto_0
    return-object v1

    .line 431
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 434
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 435
    goto :goto_0

    .line 439
    :pswitch_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->isConcurrentVoiceAndData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 441
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 443
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 445
    goto :goto_0

    .line 451
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x3

    const-string v1, "apnTypeDisabled"

    .line 294
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 295
    .local v0, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-nez v0, :cond_0

    move v1, v3

    .line 317
    :goto_0
    monitor-exit p0

    return v1

    .line 301
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 303
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 309
    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    const-string v2, "apnTypeDisabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 310
    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    const-string v2, "apnTypeDisabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    move v1, v3

    .line 312
    goto :goto_0

    .line 315
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    const/4 v1, 0x1

    goto :goto_0

    .line 294
    .end local v0           #serviceType:Lcom/android/internal/telephony/DataServiceType;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 366
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 627
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDnsCheckDisabled:Z

    .line 628
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 629
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 630
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dns_server_check_disabled_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 631
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 632
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfileTracker;->dispose()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    .line 194
    return-void
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const-string v2, "apnTypeEnabled"

    .line 329
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 330
    .local v0, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-nez v0, :cond_0

    .line 356
    :goto_0
    monitor-exit p0

    return v1

    .line 336
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/DataProfileTracker;->setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V

    .line 338
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 342
    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    const-string v2, "apnTypeEnabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 343
    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    const-string v2, "apnTypeEnabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 349
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 351
    const/4 v1, 0x0

    goto :goto_0

    .line 354
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v3

    .line 356
    goto :goto_0

    .line 329
    .end local v0           #serviceType:Lcom/android/internal/telephony/DataServiceType;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public enableDataConnectivity()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 371
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 374
    .local v0, inEcm:Z
    if-eqz v0, :cond_0

    move v1, v2

    .line 379
    :goto_0
    return v1

    .line 377
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 378
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    move v1, v3

    .line 379
    goto :goto_0
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 460
    const-string v0, "default"

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 6
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v5, 0x0

    .line 464
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v2

    .line 465
    .local v2, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v3, v5

    .line 477
    :goto_0
    return-object v3

    .line 468
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v3, v2, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 469
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-nez v0, :cond_2

    move-object v3, v5

    .line 470
    goto :goto_0

    .line 472
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getDataProfile()Lcom/android/internal/telephony/DataProfile;

    move-result-object v1

    .line 473
    .local v1, dp:Lcom/android/internal/telephony/DataProfile;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v3, v4, :cond_3

    .line 474
    check-cast v1, Lcom/android/internal/telephony/ApnSetting;

    .end local v1           #dp:Lcom/android/internal/telephony/DataProfile;
    iget-object v3, v1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .restart local v1       #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_3
    move-object v3, v5

    .line 477
    goto :goto_0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 481
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
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

    .line 483
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 484
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataServiceType;->toApnTypeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
    .end local v1           #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 487
    .local v5, ret:[Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public abstract getCurrentDataConnectionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 616
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 7

    .prologue
    .line 391
    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 392
    .local v4, ret:Lcom/android/internal/telephony/Phone$DataState;
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mOosIsDisconnect:Z

    if-eqz v5, :cond_1

    .line 395
    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 409
    :cond_0
    :goto_0
    return-object v4

    .line 397
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 398
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v5, v6, :cond_2

    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v5, v6, :cond_3

    .line 400
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 401
    goto :goto_0

    .line 402
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v5, v6, :cond_4

    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v5, v6, :cond_5

    .line 404
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    .line 397
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 414
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .line 415
    .local v0, ds:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 416
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 418
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v1

    goto :goto_0
.end method

.method public getDataRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 509
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 506
    goto :goto_0

    .line 508
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 509
    goto :goto_0
.end method

.method public abstract getDataServiceState()Landroid/telephony/ServiceState;
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 514
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)[Ljava/lang/String;
    .locals 4
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v3, 0x0

    .line 518
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .line 519
    .local v1, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, v3

    .line 527
    .end local p0
    :goto_0
    return-object v2

    .line 522
    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, v1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 523
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_2

    .line 524
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v2, p0

    goto :goto_0

    .restart local p0
    :cond_2
    move-object v2, v3

    .line 527
    goto :goto_0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 531
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 4
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v3, 0x0

    .line 535
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .line 536
    .local v1, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, v3

    .line 544
    :goto_0
    return-object v2

    .line 539
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, v1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 540
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_2

    .line 541
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 544
    goto :goto_0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 548
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 4
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v3, 0x0

    .line 552
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .line 553
    .local v1, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, v3

    .line 561
    :goto_0
    return-object v2

    .line 556
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, v1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 557
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_2

    .line 558
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getInterface()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 561
    goto :goto_0
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 565
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 4
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v3, 0x0

    .line 569
    invoke-static {p1}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .line 570
    .local v1, serviceType:Lcom/android/internal/telephony/DataServiceType;
    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, v3

    .line 578
    :goto_0
    return-object v2

    .line 573
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v2, v1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 574
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_2

    .line 575
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 578
    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const-string v3, "DATA"

    .line 198
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 269
    :pswitch_0
    const-string v1, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DCT] Unhandle event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 200
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioOn()V

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioOff()V

    goto :goto_0

    .line 208
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onServiceTypeDisabled(Lcom/android/internal/telephony/DataServiceType;)V

    goto :goto_0

    .line 212
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)V

    goto :goto_0

    .line 216
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onConnectDone(Landroid/os/AsyncResult;)V

    .line 219
    sget v1, Lcom/android/internal/telephony/DataConnectionTracker;->requestCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    const-string v1, "ro.config.hwdrm"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->setNTPTime()V

    goto :goto_0

    .line 228
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onDisconnectDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 235
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onMasterDataDisabled()V

    goto :goto_0

    .line 239
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onMasterDataEnabled()V

    goto :goto_0

    .line 243
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOff()V

    goto :goto_0

    .line 247
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOn()V

    .line 249
    const-string v1, "DATA"

    const-string v1, "EVENT_ROAMING_ON"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->firstTime:Z

    if-eqz v1, :cond_0

    const-string v1, "ro.cfg.showDsRoamNotif"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const-string v1, "DATA"

    const-string v1, "send FIRST_ROAMING_SHOW_NOTIFICATION Broadcast"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->firstTime:Z

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "FIRST_ROAMING_SHOW_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "roaming_first"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 261
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallStarted()V

    goto/16 :goto_0

    .line 265
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallEnded()V

    goto/16 :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected abstract isConcurrentVoiceAndData()Z
.end method

.method public isDataConnectivityEnabled()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    return v0
.end method

.method public abstract isDataConnectivityPossible()Z
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDnsCheckDisabled:Z

    return v0
.end method

.method protected notifyAllDataServiceTypes(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 590
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 591
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v1, v4, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 592
    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v1, v4, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 590
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    .end local v1           #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_0
    return-void
.end method

.method public notifyDataActivity()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataActivity(Lcom/android/internal/telephony/Phone;)V

    .line 587
    return-void
.end method

.method notifyDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V
    .locals 3
    .parameter "ds"
    .parameter "ipv"
    .parameter "reason"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->toApnTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method notifyDataConnectionFail(Ljava/lang/String;)V
    .locals 7
    .parameter "reason"

    .prologue
    .line 603
    const/4 v3, 0x0

    .line 604
    .local v3, isAnyServiceActive:Z
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 605
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/DataProfileTracker;->isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 606
    const/4 v3, 0x1

    .line 604
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    .end local v1           #ds:Lcom/android/internal/telephony/DataServiceType;
    :cond_1
    if-nez v3, :cond_2

    .line 610
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v6, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 612
    :cond_2
    return-void
.end method

.method protected abstract onConnectDone(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onDisconnectDone(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onMasterDataDisabled()V
.end method

.method protected abstract onMasterDataEnabled()V
.end method

.method protected abstract onRadioOff()V
.end method

.method protected abstract onRadioOn()V
.end method

.method protected abstract onRoamingOff()V
.end method

.method protected abstract onRoamingOn()V
.end method

.method protected abstract onServiceTypeDisabled(Lcom/android/internal/telephony/DataServiceType;)V
.end method

.method protected abstract onServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)V
.end method

.method protected abstract onVoiceCallEnded()V
.end method

.method protected abstract onVoiceCallStarted()V
.end method

.method protected abstract setDataConnectionAsDesired(ZLandroid/os/Message;)V
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataRoamingEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 497
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 501
    :cond_0
    return-void

    .line 495
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected setNTPTime()V
    .locals 1

    .prologue
    .line 642
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 702
    .local v0, NTPSetthread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 703
    return-void
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 190
    return-void
.end method
