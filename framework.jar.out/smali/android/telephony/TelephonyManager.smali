.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String; = null

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String; = null

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String; = null

.field public static final ICC_STATE_RUIM_CORPORATE_LOCKED:I = 0xe

.field public static final ICC_STATE_RUIM_HRPD_LOCKED:I = 0xd

.field public static final ICC_STATE_RUIM_NETWORK1_LOCKED:I = 0xb

.field public static final ICC_STATE_RUIM_NETWORK2_LOCKED:I = 0xc

.field public static final ICC_STATE_RUIM_RUIM_LOCKED:I = 0x10

.field public static final ICC_STATE_RUIM_SERVICE_PROVIDER_LOCKED:I = 0xf

.field public static final ICC_STATE_SIM_CORPORATE_LOCKED:I = 0x8

.field public static final ICC_STATE_SIM_NETWORK_SUBSET_LOCKED:I = 0x7

.field public static final ICC_STATE_SIM_SERVICE_PROVIDER_LOCKED:I = 0x9

.field public static final ICC_STATE_SIM_SIM_LOCKED:I = 0xa

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x6

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static sInstance:Landroid/telephony/TelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 136
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 68
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 70
    return-void
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1034
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 347
    const-string v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 348
    .local v0, mode:I
    if-ne v0, v2, :cond_0

    .line 349
    const/4 v1, 0x0

    .line 350
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    .line 337
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 340
    .local v0, type:I
    return v0
.end method

.method public static getSmsCodingNational()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "0"

    .line 1146
    const-string v1, "ro.config.smsCoding_National"

    const-string v2, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, smsCodingNational:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    const-string v1, "gsm.sms.coding.national"

    const-string v2, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1150
    :cond_0
    return-object v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 936
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public static isDsdsEnabled()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public static isSms7BitEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1134
    const-string v0, "gsm.sms.7bit.enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 277
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    goto :goto_0

    .line 278
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 260
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    goto :goto_0

    .line 261
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getActiveGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 7
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v5, 0x0

    const-string v6, "TelephonyManager"

    .line 648
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 649
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 650
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone$IPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getActiveGateway(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, gatewayAddr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    const-string v3, "TelephonyManager"

    const-string v4, "gatewayAddr is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v5

    .line 667
    .end local v1           #gatewayAddr:Ljava/lang/String;
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-object v3

    .restart local v1       #gatewayAddr:Ljava/lang/String;
    .restart local v2       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    move-object v3, v1

    .line 655
    goto :goto_0

    .end local v1           #gatewayAddr:Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 659
    goto :goto_0

    .line 661
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, ex:Landroid/os/RemoteException;
    move-object v3, v5

    .line 663
    goto :goto_0

    .line 664
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 666
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "TelephonyManager"

    const-string v3, "null pointer access"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 667
    goto :goto_0
.end method

.method public getActiveInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 7
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v5, 0x0

    const-string v6, "TelephonyManager"

    .line 595
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 596
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 597
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone$IPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getActiveInterfaceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, ifName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    const-string v3, "TelephonyManager"

    const-string v4, "interface name is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v5

    .line 614
    .end local v1           #ifName:Ljava/lang/String;
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-object v3

    .restart local v1       #ifName:Ljava/lang/String;
    .restart local v2       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    move-object v3, v1

    .line 602
    goto :goto_0

    .end local v1           #ifName:Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 606
    goto :goto_0

    .line 608
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, ex:Landroid/os/RemoteException;
    move-object v3, v5

    .line 610
    goto :goto_0

    .line 611
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 613
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "TelephonyManager"

    const-string v3, "null pointer access"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 614
    goto :goto_0
.end method

.method public getActiveIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 7
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v5, 0x0

    const-string v6, "TelephonyManager"

    .line 622
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 623
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 624
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone$IPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getActiveIpAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, ipAddr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 626
    const-string v3, "TelephonyManager"

    const-string v4, "ipAddr is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v5

    .line 641
    .end local v1           #ipAddr:Ljava/lang/String;
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-object v3

    .restart local v1       #ipAddr:Ljava/lang/String;
    .restart local v2       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    move-object v3, v1

    .line 629
    goto :goto_0

    .end local v1           #ipAddr:Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 633
    goto :goto_0

    .line 635
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, ex:Landroid/os/RemoteException;
    move-object v3, v5

    .line 637
    goto :goto_0

    .line 638
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 640
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "TelephonyManager"

    const-string v3, "null pointer access"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 641
    goto :goto_0
.end method

.method public getCallState()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 956
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 962
    :goto_0
    return v1

    .line 957
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 959
    goto :goto_0

    .line 960
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 962
    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1085
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1090
    :goto_0
    return v1

    .line 1086
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 1088
    goto :goto_0

    .line 1089
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 1090
    goto :goto_0
.end method

.method public getCdmaEriIconMode()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1103
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1108
    :goto_0
    return v1

    .line 1104
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 1106
    goto :goto_0

    .line 1107
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 1108
    goto :goto_0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1119
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1124
    :goto_0
    return-object v1

    .line 1120
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 1122
    goto :goto_0

    .line 1123
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 1124
    goto :goto_0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 237
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 238
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 239
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v4

    .line 245
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :goto_0
    return-object v3

    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #cl:Landroid/telephony/CellLocation;
    :cond_0
    move-object v3, v1

    .line 241
    goto :goto_0

    .line 242
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, ex:Landroid/os/RemoteException;
    move-object v3, v4

    .line 243
    goto :goto_0

    .line 244
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v3, v4

    .line 245
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 889
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 894
    :goto_0
    return-object v1

    .line 890
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 891
    goto :goto_0

    .line 892
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 894
    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 992
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 998
    :goto_0
    return v1

    .line 993
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 995
    goto :goto_0

    .line 996
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 998
    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1024
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1029
    :goto_0
    return v1

    .line 1025
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 1027
    goto :goto_0

    .line 1028
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 1029
    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    .line 196
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 197
    goto :goto_0

    .line 198
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 199
    goto :goto_0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 182
    :goto_0
    return-object v1

    .line 179
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 180
    goto :goto_0

    .line 181
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 182
    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getEsn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 210
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 208
    goto :goto_0

    .line 209
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 210
    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 853
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 858
    :goto_0
    return-object v1

    .line 854
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 855
    goto :goto_0

    .line 856
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 858
    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 833
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 838
    :goto_0
    return-object v1

    .line 834
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 835
    goto :goto_0

    .line 836
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 838
    goto :goto_0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 293
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 297
    :goto_0
    return-object v1

    .line 294
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 295
    goto :goto_0

    .line 296
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 297
    goto :goto_0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 455
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 456
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 457
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 467
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    move v2, v3

    .line 460
    goto :goto_0

    .line 462
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    move v2, v3

    .line 464
    goto :goto_0

    .line 465
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    move v2, v3

    .line 467
    goto :goto_0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 507
    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 481
    :pswitch_1
    const-string v0, "GPRS"

    goto :goto_0

    .line 483
    :pswitch_2
    const-string v0, "EDGE"

    goto :goto_0

    .line 485
    :pswitch_3
    const-string v0, "UMTS"

    goto :goto_0

    .line 487
    :pswitch_4
    const-string v0, "HSDPA"

    goto :goto_0

    .line 489
    :pswitch_5
    const-string v0, "HSUPA"

    goto :goto_0

    .line 491
    :pswitch_6
    const-string v0, "HSPA"

    goto :goto_0

    .line 493
    :pswitch_7
    const-string v0, "CDMA"

    goto :goto_0

    .line 495
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 497
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 499
    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 501
    :pswitch_b
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 503
    :pswitch_c
    const-string v0, "CDMA - EHRPD"

    goto :goto_0

    .line 505
    :pswitch_d
    const-string v0, "LTE"

    goto :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public getPesn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getPesn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 222
    :goto_0
    return-object v1

    .line 219
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 220
    goto :goto_0

    .line 221
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 222
    goto :goto_0
.end method

.method public getPhoneType()I
    .locals 3

    .prologue
    .line 317
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 318
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 319
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 331
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 322
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 324
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 327
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 328
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 331
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 779
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 761
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 791
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 796
    :goto_0
    return-object v1

    .line 792
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 793
    goto :goto_0

    .line 794
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 796
    goto :goto_0
.end method

.method public getSimState()I
    .locals 4

    .prologue
    .line 696
    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, prop:Ljava/lang/String;
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimState prop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    const/4 v1, 0x1

    .line 747
    :goto_0
    return v1

    .line 701
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 702
    const/4 v1, 0x2

    goto :goto_0

    .line 704
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 705
    const/4 v1, 0x3

    goto :goto_0

    .line 707
    :cond_2
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 708
    const/4 v1, 0x4

    goto :goto_0

    .line 710
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 711
    const/4 v1, 0x5

    goto :goto_0

    .line 713
    :cond_4
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 714
    const/4 v1, 0x6

    goto :goto_0

    .line 716
    :cond_5
    const-string v1, "SIM_NETWORK_SUBSET_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 717
    const/4 v1, 0x7

    goto :goto_0

    .line 719
    :cond_6
    const-string v1, "SIM_CORPORATE_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 720
    const/16 v1, 0x8

    goto :goto_0

    .line 722
    :cond_7
    const-string v1, "SIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 723
    const/16 v1, 0x9

    goto :goto_0

    .line 725
    :cond_8
    const-string v1, "SIM_SIM_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 726
    const/16 v1, 0xa

    goto :goto_0

    .line 728
    :cond_9
    const-string v1, "RUIM_NETWORK1_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 729
    const/16 v1, 0xb

    goto :goto_0

    .line 731
    :cond_a
    const-string v1, "RUIM_NETWORK2_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 732
    const/16 v1, 0xc

    goto :goto_0

    .line 734
    :cond_b
    const-string v1, "RUIM_HRPD_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 735
    const/16 v1, 0xd

    goto :goto_0

    .line 737
    :cond_c
    const-string v1, "RUIM_CORPORATE_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 738
    const/16 v1, 0xe

    goto/16 :goto_0

    .line 740
    :cond_d
    const-string v1, "RUIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 741
    const/16 v1, 0xf

    goto/16 :goto_0

    .line 743
    :cond_e
    const-string v1, "RUIM_RUIM_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 744
    const/16 v1, 0x10

    goto/16 :goto_0

    .line 747
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 815
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 820
    :goto_0
    return-object v1

    .line 816
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 817
    goto :goto_0

    .line 818
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 820
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 925
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 930
    :goto_0
    return-object v1

    .line 926
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 927
    goto :goto_0

    .line 928
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 930
    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 870
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 875
    :goto_0
    return-object v1

    .line 871
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 872
    goto :goto_0

    .line 873
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 875
    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 907
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 912
    :goto_0
    return v1

    .line 908
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 909
    goto :goto_0

    .line 910
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 912
    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 582
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 588
    :goto_0
    return v1

    .line 583
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 585
    goto :goto_0

    .line 586
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 588
    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 2

    .prologue
    .line 387
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 5
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 1067
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1069
    .local v1, pkgForDebug:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1070
    .local v0, notifyNow:Ljava/lang/Boolean;
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    .end local v0           #notifyNow:Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 1067
    .end local v1           #pkgForDebug:Ljava/lang/String;
    :cond_0
    const-string v2, "<unknown>"

    move-object v1, v2

    goto :goto_0

    .line 1069
    .restart local v1       #pkgForDebug:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1073
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1071
    :catch_1
    move-exception v2

    goto :goto_2
.end method
