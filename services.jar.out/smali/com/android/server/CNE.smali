.class public final Lcom/android/server/CNE;
.super Ljava/lang/Object;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CNE$3;,
        Lcom/android/server/CNE$FmcRegInfo;,
        Lcom/android/server/CNE$CNEReceiver;,
        Lcom/android/server/CNE$CNESender;,
        Lcom/android/server/CNE$DefaultConnection;,
        Lcom/android/server/CNE$RegInfo;,
        Lcom/android/server/CNE$CallbackInfo;,
        Lcom/android/server/CNE$RatInfo;,
        Lcom/android/server/CNE$RatTriedStatus;,
        Lcom/android/server/CNE$AddressInfo;
    }
.end annotation


# static fields
.field static final CNE_DEFAULT_CON_REGID:I = 0x0

.field static final CNE_INVALID_PID:I = -0x1

.field static final CNE_IPROUTE2_ADD_HOST_TO_MAIN:I = 0x4

.field static final CNE_IPROUTE2_ADD_ROUTING:I = 0x0

.field static final CNE_IPROUTE2_DELETE_DEFAULT_IN_MAIN:I = 0x2

.field static final CNE_IPROUTE2_DELETE_HOST_DEFAULT_IN_MAIN:I = 0x7

.field static final CNE_IPROUTE2_DELETE_HOST_IN_MAIN:I = 0x8

.field static final CNE_IPROUTE2_DELETE_HOST_ROUTING:I = 0x6

.field static final CNE_IPROUTE2_DELETE_ROUTING:I = 0x1

.field static final CNE_IPROUTE2_REPLACE_DEFAULT_ENTRY_IN_MAIN:I = 0x3

.field static final CNE_IPROUTE2_REPLACE_HOST_DEFAULT_ENTRY_IN_MAIN:I = 0x5

.field static final CNE_LINK_NOT_SATISFIED:I = 0x0

.field static final CNE_LINK_SATISFIED:I = 0x1

.field static final CNE_MASK_ON_BETTER_LINK_AVAIL_SENT:I = 0x2

.field static final CNE_MASK_ON_LINK_AVAIL_SENT:I = 0x1

.field static final CNE_MAX_COMMAND_BYTES:I = 0x2000

.field static final CNE_NET_SUBTYPE_WLAN_B:I = 0x14

.field static final CNE_NET_SUBTYPE_WLAN_G:I = 0x15

.field static final CNE_NOTIFY_DEFAULT_NW_PREF:I = 0xb

.field static final CNE_NOTIFY_FMC_STATUS:I = 0xb

.field static final CNE_NOTIFY_HOST_ROUTING_IP:I = 0xc

.field static final CNE_NOTIFY_INFLIGHT_STATUS:I = 0xa

.field static final CNE_NOTIFY_MORE_PREFERED_RAT_AVAIL:I = 0x7

.field static final CNE_NOTIFY_RAT_CONNECT_STATUS:I = 0xa

.field static final CNE_NOTIFY_RAT_LOST:I = 0x8

.field static final CNE_NOTIFY_SENSOR_EVENT_CMD:I = 0xd

.field static final CNE_NOTIFY_TIMER_EXPIRED_CMD:I = 0xf

.field static final CNE_RAT_ANY:I = 0x2

.field static final CNE_RAT_INVALID:I = 0x4

.field static final CNE_RAT_MAX:I = 0x4

.field static final CNE_RAT_MIN:I = 0x0

.field static final CNE_RAT_NONE:I = 0x3

.field static final CNE_RAT_WLAN:I = 0x1

.field static final CNE_RAT_WWAN:I = 0x0

.field static final CNE_REGID_INVALID:I = -0x1

.field static final CNE_REQUEST_BRING_RAT_DOWN:I = 0x5

.field static final CNE_REQUEST_BRING_RAT_UP:I = 0x6

.field static final CNE_REQUEST_CONFIG_IPROUTE2_CMD:I = 0xe

.field static final CNE_REQUEST_CONF_NW:I = 0x4

.field static final CNE_REQUEST_DEREG_ROLE:I = 0x5

.field static final CNE_REQUEST_GET_COMPATIBLE_NWS:I = 0x3

.field static final CNE_REQUEST_INIT:I = 0x1

.field static final CNE_REQUEST_REG_NOTIFICATIONS:I = 0x6

.field static final CNE_REQUEST_REG_ROLE:I = 0x2

.field static final CNE_REQUEST_START_FMC_CMD:I = 0x10

.field static final CNE_REQUEST_START_SCAN_WLAN:I = 0x9

.field static final CNE_REQUEST_STOP_FMC_CMD:I = 0x11

.field static final CNE_REQUEST_UPDATE_BATTERY_INFO:I = 0x7

.field static final CNE_REQUEST_UPDATE_WLAN_INFO:I = 0x8

.field static final CNE_REQUEST_UPDATE_WLAN_SCAN_RESULTS:I = 0xc

.field static final CNE_REQUEST_UPDATE_WWAN_INFO:I = 0x9

.field static final CNE_RESPONSE_CONFIRM_NW:I = 0x3

.field static final CNE_RESPONSE_DEREG_ROLE:I = 0x4

.field static final CNE_RESPONSE_GET_BEST_NW:I = 0x2

.field static final CNE_RESPONSE_REG_ROLE:I = 0x1

.field static final CNE_ROLE_INVALID:I = -0x1

.field private static final DBG:Z = false

.field static final EVENT_SEND:I = 0x1

.field static final LOCAL_TAG:Ljava/lang/String; = "CNE_DEBUG"

.field static final LOG_TAG:Ljava/lang/String; = "CNE"

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final SOCKET_NAME_CNE:Ljava/lang/String; = "cnd"

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field public static final STATUS_FAILURE:I = 0x0

.field public static final STATUS_INFLIGHT:I = 0x1

.field public static final STATUS_NOT_INFLIGHT:I = 0x0

.field public static final STATUS_SUCCESS:I = 0x1

.field static final UseCne:Ljava/lang/String; = "persist.cne.UseCne"

.field static isCndUp:Z

.field private static mRemoveHostEntry:Z

.field private static mRoleRegId:I


# instance fields
.field private activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/CNE$RegInfo;",
            ">;"
        }
    .end annotation
.end field

.field private activeWlanGatewayAddr:Ljava/lang/String;

.field private activeWlanIfName:Ljava/lang/String;

.field private activeWwanIpAddr:Ljava/lang/String;

.field private activeWwanV4GatewayAddr:Ljava/lang/String;

.field private activeWwanV4IfName:Ljava/lang/String;

.field private activeWwanV6IfName:Ljava/lang/String;

.field private fmcRegInfo:Lcom/android/server/CNE$FmcRegInfo;

.field private hostRoutingIpAddr:Ljava/lang/String;

.field private mBatteryService:Lcom/android/server/BatteryService;

.field private mContext:Landroid/content/Context;

.field private mDefaultConn:Lcom/android/server/CNE$DefaultConnection;

.field private mDefaultNetwork:I

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkPreference:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mReceiver:Lcom/android/server/CNE$CNEReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestMessagesPending:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/CNERequest;",
            ">;"
        }
    .end annotation
.end field

.field mSender:Lcom/android/server/CNE$CNESender;

.field mSenderThread:Landroid/os/HandlerThread;

.field private mService:Lcom/android/server/ConnectivityService;

.field mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field mSocket:Landroid/net/LocalSocket;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 216
    sput-boolean v0, Lcom/android/server/CNE;->isCndUp:Z

    .line 300
    sput v0, Lcom/android/server/CNE;->mRoleRegId:I

    .line 318
    sput-boolean v0, Lcom/android/server/CNE;->mRemoveHostEntry:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V
    .locals 7
    .parameter "context"
    .parameter "conn"

    .prologue
    const/4 v5, 0x0

    const-string v6, "phone"

    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/CNE;->mRequestsList:Ljava/util/ArrayList;

    .line 306
    const/16 v4, 0x9

    iput v4, p0, Lcom/android/server/CNE;->mDefaultNetwork:I

    .line 309
    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v4, p0, Lcom/android/server/CNE;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 311
    iput-object v5, p0, Lcom/android/server/CNE;->activeWlanIfName:Ljava/lang/String;

    .line 312
    iput-object v5, p0, Lcom/android/server/CNE;->activeWwanV4IfName:Ljava/lang/String;

    .line 313
    iput-object v5, p0, Lcom/android/server/CNE;->activeWwanV6IfName:Ljava/lang/String;

    .line 314
    iput-object v5, p0, Lcom/android/server/CNE;->activeWlanGatewayAddr:Ljava/lang/String;

    .line 315
    iput-object v5, p0, Lcom/android/server/CNE;->activeWwanV4GatewayAddr:Ljava/lang/String;

    .line 316
    iput-object v5, p0, Lcom/android/server/CNE;->activeWwanIpAddr:Ljava/lang/String;

    .line 317
    iput-object v5, p0, Lcom/android/server/CNE;->hostRoutingIpAddr:Ljava/lang/String;

    .line 411
    new-instance v4, Lcom/android/server/CNE$1;

    invoke-direct {v4, p0}, Lcom/android/server/CNE$1;-><init>(Lcom/android/server/CNE;)V

    iput-object v4, p0, Lcom/android/server/CNE;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1302
    new-instance v4, Lcom/android/server/CNE$2;

    invoke-direct {v4, p0}, Lcom/android/server/CNE$2;-><init>(Lcom/android/server/CNE;)V

    iput-object v4, p0, Lcom/android/server/CNE;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2378
    iput-object v5, p0, Lcom/android/server/CNE;->fmcRegInfo:Lcom/android/server/CNE$FmcRegInfo;

    .line 1123
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 1124
    .local v3, pm:Landroid/os/PowerManager;
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/CNE;->mRequestMessagesPending:I

    .line 1125
    iput-object p1, p0, Lcom/android/server/CNE;->mContext:Landroid/content/Context;

    .line 1126
    iput-object p2, p0, Lcom/android/server/CNE;->mService:Lcom/android/server/ConnectivityService;

    .line 1127
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "CNESender"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/CNE;->mSenderThread:Landroid/os/HandlerThread;

    .line 1128
    iget-object v4, p0, Lcom/android/server/CNE;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 1130
    iget-object v4, p0, Lcom/android/server/CNE;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1131
    .local v2, looper:Landroid/os/Looper;
    new-instance v4, Lcom/android/server/CNE$CNESender;

    invoke-direct {v4, p0, v2}, Lcom/android/server/CNE$CNESender;-><init>(Lcom/android/server/CNE;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/CNE;->mSender:Lcom/android/server/CNE$CNESender;

    .line 1133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1134
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1135
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1136
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1137
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1138
    const-string v4, "android.net.wifi.NO_MORE_WIFI_LOCKS"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1139
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1140
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1142
    iget-object v4, p0, Lcom/android/server/CNE;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1143
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/CNE;->activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1146
    const/4 v1, 0x0

    .line 1147
    .local v1, linkReqs:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/LinkProvider$LinkRequirement;Ljava/lang/String;>;"
    new-instance v4, Lcom/android/server/CNE$DefaultConnection;

    invoke-direct {v4, p0, v1}, Lcom/android/server/CNE$DefaultConnection;-><init>(Lcom/android/server/CNE;Ljava/util/Map;)V

    iput-object v4, p0, Lcom/android/server/CNE;->mDefaultConn:Lcom/android/server/CNE$DefaultConnection;

    .line 1148
    iget-object v4, p0, Lcom/android/server/CNE;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1149
    iget-object v4, p0, Lcom/android/server/CNE;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/CNE;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/server/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1153
    iget-object v4, p0, Lcom/android/server/CNE;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/server/CNE;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x100

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1156
    new-instance v4, Lcom/android/server/CNE$CNEReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/CNE$CNEReceiver;-><init>(Lcom/android/server/CNE;)V

    iput-object v4, p0, Lcom/android/server/CNE;->mReceiver:Lcom/android/server/CNE$CNEReceiver;

    .line 1157
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/android/server/CNE;->mReceiver:Lcom/android/server/CNE$CNEReceiver;

    const-string v6, "CNEReceiver"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/CNE;->mReceiverThread:Ljava/lang/Thread;

    .line 1158
    iget-object v4, p0, Lcom/android/server/CNE;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1159
    return-void
.end method

.method private NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 1272
    sget-object v0, Lcom/android/server/CNE$3;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1292
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1274
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1277
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1280
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1283
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1286
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1289
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/server/CNE;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/CNE;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/CNE;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/CNE;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->getSignalStrength(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1108()I
    .locals 2

    .prologue
    .line 191
    sget v0, Lcom/android/server/CNE;->mRoleRegId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/CNE;->mRoleRegId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/CNE;I)Lcom/android/server/CNERequest;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->findAndRemoveRequestFromList(I)Lcom/android/server/CNERequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/CNE;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/server/CNE;->sendInitReq()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/CNE;)Lcom/android/server/ConnectivityService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/CNE;->mService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/CNE;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget v0, p0, Lcom/android/server/CNE;->mNetworkPreference:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/CNE;)Lcom/android/server/CNE$DefaultConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/CNE;->mDefaultConn:Lcom/android/server/CNE$DefaultConnection;

    return-object v0
.end method

.method static synthetic access$1800(Ljava/io/InputStream;[B)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p0, p1}, Lcom/android/server/CNE;->readCneMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/CNE;Landroid/os/Parcel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/CNE;Landroid/net/NetworkInfo$State;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/CNE;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/server/CNE;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/CNE;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/CNE;->activeWlanIfName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/CNE;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/server/CNE;->activeWlanIfName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/server/CNE;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/server/CNE;->activeWlanGatewayAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/CNE;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget v0, p0, Lcom/android/server/CNE;->mDefaultNetwork:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/CNE;Lcom/android/internal/telephony/Phone$DataState;)Landroid/net/NetworkInfo$State;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->convertToNetworkState(Lcom/android/internal/telephony/Phone$DataState;)Landroid/net/NetworkInfo$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/CNE;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/CNE;->activeWwanV4IfName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/CNE;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/server/CNE;->activeWwanV4IfName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/CNE;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/CNE;->activeWwanV4GatewayAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/CNE;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/server/CNE;->activeWwanV4GatewayAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/CNE;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static configureSsid(Ljava/lang/String;)Z
    .locals 8
    .parameter "newStr"

    .prologue
    .line 2303
    const/4 v4, 0x0

    .line 2304
    .local v4, strMatched:Z
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/ssidconfig.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2305
    .local v0, file:Ljava/io/File;
    if-nez v0, :cond_0

    .line 2306
    const-string p0, "CNE"

    .end local p0
    const-string v0, "configureSsid: Config File not found"

    .end local v0           #file:Ljava/io/File;
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    const/4 p0, 0x0

    .line 2346
    .end local v4           #strMatched:Z
    :goto_0
    return p0

    .line 2310
    .restart local v0       #file:Ljava/io/File;
    .restart local v4       #strMatched:Z
    .restart local p0
    :cond_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2311
    .local v6, reader:Ljava/io/BufferedReader;
    const-string v0, ""

    .line 2312
    .local v0, line:Ljava/lang/String;
    const-string v3, ""

    .line 2313
    .local v3, oldtext:Ljava/lang/String;
    const-string v2, ""

    .line 2315
    .local v2, oldStr:Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v5, ":"

    invoke-direct {v1, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    .local v1, newst:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, newToken:Ljava/lang/String;
    move v7, v4

    .line 2318
    .end local v4           #strMatched:Z
    .local v7, strMatched:Z
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #oldtext:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2320
    .local v5, oldtext:Ljava/lang/String;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v3, ":"

    invoke-direct {v4, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    .local v4, oldst:Ljava/util/StringTokenizer;
    :goto_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2322
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 2324
    .local v3, oldToken:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .end local v3           #oldToken:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 2327
    move-object v2, v0

    .line 2328
    const/4 v3, 0x1

    .end local v7           #strMatched:Z
    .local v3, strMatched:Z
    :goto_3
    move v7, v3

    .line 2330
    .end local v3           #strMatched:Z
    .restart local v7       #strMatched:Z
    goto :goto_2

    :cond_1
    move-object v3, v5

    .line 2331
    .end local v5           #oldtext:Ljava/lang/String;
    .local v3, oldtext:Ljava/lang/String;
    goto :goto_1

    .line 2332
    .end local v4           #oldst:Ljava/util/StringTokenizer;
    :cond_2
    if-nez v7, :cond_3

    .line 2334
    const/4 p0, 0x0

    goto :goto_0

    .line 2337
    :cond_3
    :try_start_2
    invoke-virtual {v3, v2, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2338
    .local p0, newtext:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 2339
    new-instance v0, Ljava/io/FileWriter;

    .end local v0           #line:Ljava/lang/String;
    const-string v1, "/data/ssidconfig.txt"

    .end local v1           #newToken:Ljava/lang/String;
    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 2340
    .local v0, writer:Ljava/io/FileWriter;
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2341
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2342
    const/4 p0, 0x1

    goto :goto_0

    .line 2343
    .end local v0           #writer:Ljava/io/FileWriter;
    .end local v2           #oldStr:Ljava/lang/String;
    .end local v3           #oldtext:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v7           #strMatched:Z
    .end local p0           #newtext:Ljava/lang/String;
    .local v4, strMatched:Z
    :catch_0
    move-exception p0

    move v0, v4

    .line 2344
    .end local v4           #strMatched:Z
    .local v0, strMatched:Z
    .local p0, ioe:Ljava/io/IOException;
    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 2346
    const/4 p0, 0x1

    goto :goto_0

    .line 2343
    .local v0, line:Ljava/lang/String;
    .restart local v1       #newToken:Ljava/lang/String;
    .restart local v2       #oldStr:Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .restart local v7       #strMatched:Z
    .local p0, newStr:Ljava/lang/String;
    :catch_1
    move-exception p0

    move v0, v7

    .end local v7           #strMatched:Z
    .local v0, strMatched:Z
    goto :goto_4

    .end local v0           #strMatched:Z
    .end local v1           #newToken:Ljava/lang/String;
    .end local p0           #newStr:Ljava/lang/String;
    .restart local v3       #oldtext:Ljava/lang/String;
    .restart local v7       #strMatched:Z
    :catch_2
    move-exception p0

    move v0, v7

    .end local v7           #strMatched:Z
    .restart local v0       #strMatched:Z
    goto :goto_4

    .end local v3           #oldtext:Ljava/lang/String;
    .local v0, line:Ljava/lang/String;
    .restart local v1       #newToken:Ljava/lang/String;
    .local v4, oldst:Ljava/util/StringTokenizer;
    .restart local v5       #oldtext:Ljava/lang/String;
    .restart local v7       #strMatched:Z
    .restart local p0       #newStr:Ljava/lang/String;
    :cond_4
    move v3, v7

    .end local v7           #strMatched:Z
    .local v3, strMatched:Z
    goto :goto_3
.end method

.method private convertToNetworkState(Lcom/android/internal/telephony/Phone$DataState;)Landroid/net/NetworkInfo$State;
    .locals 2
    .parameter "dataState"

    .prologue
    .line 1338
    sget-object v0, Lcom/android/server/CNE$3;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1348
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    :goto_0
    return-object v0

    .line 1340
    :pswitch_0
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    goto :goto_0

    .line 1342
    :pswitch_1
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    goto :goto_0

    .line 1344
    :pswitch_2
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    goto :goto_0

    .line 1346
    :pswitch_3
    sget-object v0, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    goto :goto_0

    .line 1338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/server/CNERequest;
    .locals 5
    .parameter "serial"

    .prologue
    .line 1178
    iget-object v3, p0, Lcom/android/server/CNE;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1179
    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/CNE;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1180
    iget-object v4, p0, Lcom/android/server/CNE;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/CNERequest;

    .line 1181
    .local v1, rr:Lcom/android/server/CNERequest;
    iget v4, v1, Lcom/android/server/CNERequest;->mSerial:I

    if-ne v4, p1, :cond_0

    .line 1182
    iget-object v4, p0, Lcom/android/server/CNE;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1183
    monitor-exit v3

    move-object v3, v1

    .line 1187
    .end local v1           #rr:Lcom/android/server/CNERequest;
    :goto_1
    return-object v3

    .line 1179
    .restart local v1       #rr:Lcom/android/server/CNERequest;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1186
    .end local v1           #rr:Lcom/android/server/CNERequest;
    :cond_1
    monitor-exit v3

    .line 1187
    const/4 v3, 0x0

    goto :goto_1

    .line 1186
    .end local v2           #s:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getFmcObj()Lcom/android/server/CNE$FmcRegInfo;
    .locals 1

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/android/server/CNE;->fmcRegInfo:Lcom/android/server/CNE$FmcRegInfo;

    return-object v0
.end method

.method private getNextRatToTry(Ljava/util/ArrayList;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/CNE$RatInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2097
    .local p1, ratList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/CNE$RatInfo;>;"
    const/4 v0, 0x4

    .line 2099
    .local v0, candidateRat:I
    const/4 v1, 0x1

    .local v1, index:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2100
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/CNE$RatInfo;

    .line 2101
    .local v2, ratInfo:Lcom/android/server/CNE$RatInfo;
    iget-object v3, v2, Lcom/android/server/CNE$RatInfo;->status:Lcom/android/server/CNE$RatTriedStatus;

    sget-object v4, Lcom/android/server/CNE$RatTriedStatus;->RAT_STATUS_NOT_TRIED:Lcom/android/server/CNE$RatTriedStatus;

    if-ne v3, v4, :cond_1

    .line 2102
    iget v0, v2, Lcom/android/server/CNE$RatInfo;->rat:I

    .line 2103
    sget-object v3, Lcom/android/server/CNE$RatTriedStatus;->RAT_STATUS_TRIED:Lcom/android/server/CNE$RatTriedStatus;

    iput-object v3, v2, Lcom/android/server/CNE$RatInfo;->status:Lcom/android/server/CNE$RatTriedStatus;

    .line 2108
    .end local v2           #ratInfo:Lcom/android/server/CNE$RatInfo;
    :cond_0
    return v0

    .line 2099
    .restart local v2       #ratInfo:Lcom/android/server/CNE$RatInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getRegId(II)I
    .locals 4
    .parameter "pid"
    .parameter "role"

    .prologue
    .line 1685
    const/4 v1, -0x1

    .line 1686
    .local v1, regId:I
    iget-object v3, p0, Lcom/android/server/CNE;->activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1687
    .end local p0
    .local v0, activeRegsIter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1688
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/CNE$RegInfo;

    .line 1689
    .local v2, regInfo:Lcom/android/server/CNE$RegInfo;
    #getter for: Lcom/android/server/CNE$RegInfo;->role:I
    invoke-static {v2}, Lcom/android/server/CNE$RegInfo;->access$2100(Lcom/android/server/CNE$RegInfo;)I

    move-result v3

    if-ne v3, p2, :cond_0

    #getter for: Lcom/android/server/CNE$RegInfo;->pid:I
    invoke-static {v2}, Lcom/android/server/CNE$RegInfo;->access$2200(Lcom/android/server/CNE$RegInfo;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1690
    #getter for: Lcom/android/server/CNE$RegInfo;->regId:I
    invoke-static {v2}, Lcom/android/server/CNE$RegInfo;->access$2300(Lcom/android/server/CNE$RegInfo;)I

    move-result v1

    .line 1694
    .end local v2           #regInfo:Lcom/android/server/CNE$RegInfo;
    :cond_1
    return v1
.end method

.method private getSignalStrength(I)I
    .locals 3
    .parameter "networkType"

    .prologue
    const/4 v2, -0x1

    .line 1353
    iget-object v0, p0, Lcom/android/server/CNE;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_0

    .line 1354
    const-string v0, "CNE"

    const-string v1, "getSignalStrength mSignalStrength in null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1376
    :goto_0
    return v0

    .line 1358
    :cond_0
    packed-switch p1, :pswitch_data_0

    move v0, v2

    .line 1376
    goto :goto_0

    .line 1366
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/CNE;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x71

    goto :goto_0

    .line 1369
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/CNE;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    goto :goto_0

    .line 1373
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/CNE;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    goto :goto_0

    .line 1358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleConfNwRsp(Landroid/os/Parcel;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 1817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1818
    .local v1, numInts:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1819
    .local v2, roleRegId:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1824
    .local v0, evtStatus:I
    return-void
.end method

.method private handleDeRegRoleRsp(Landroid/os/Parcel;)V
    .locals 6
    .parameter "p"

    .prologue
    .line 1827
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1828
    .local v1, numInts:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1829
    .local v3, roleRegId:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1836
    .local v0, evtStatus:I
    iget-object v4, p0, Lcom/android/server/CNE;->activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/CNE$RegInfo;

    .line 1837
    .local v2, regInfo:Lcom/android/server/CNE$RegInfo;
    if-eqz v2, :cond_0

    .line 1838
    iget-object v4, v2, Lcom/android/server/CNE$RegInfo;->compatibleRatsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1839
    iget-object v4, p0, Lcom/android/server/CNE;->activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    :goto_0
    return-void

    .line 1841
    :cond_0
    const-string v4, "CNE"

    const-string v5, "handleDeRegRoleRsp role does not exists"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleFmcStatusMsg(Landroid/os/Parcel;)V
    .locals 11
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2020
    invoke-direct {p0}, Lcom/android/server/CNE;->getFmcObj()Lcom/android/server/CNE$FmcRegInfo;

    move-result-object v1

    .line 2021
    .local v1, rInfo:Lcom/android/server/CNE$FmcRegInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2022
    .local v0, numInts:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2023
    .local v2, status:I
    if-eqz v1, :cond_1

    .line 2028
    if-nez v2, :cond_2

    .line 2029
    const-string v4, "default"

    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v4, v5}, Lcom/android/server/CNE;->getWwanAddrInfo(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/server/CNE$AddressInfo;

    move-result-object v3

    .line 2031
    .local v3, wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/android/server/CNE;->activeWlanIfName:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v8, v8}, Lcom/android/server/CNE;->configureIproute2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2032
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/android/server/CNE;->activeWwanV4IfName:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v8, v8}, Lcom/android/server/CNE;->configureIproute2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2034
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/server/CNE;->activeWlanIfName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/CNE;->hostRoutingIpAddr:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/CNE;->activeWlanGatewayAddr:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/server/CNE;->configureIproute2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2036
    iget-object v4, v3, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/CNE$AddressInfo;->gatewayAddr:Ljava/lang/String;

    invoke-virtual {p0, v10, v4, v5, v6}, Lcom/android/server/CNE;->configureIproute2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2038
    iput-boolean v9, v1, Lcom/android/server/CNE$FmcRegInfo;->enabled:Z

    .line 2047
    .end local v3           #wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    :cond_0
    :goto_0
    if-ne v2, v9, :cond_5

    .line 2048
    iget-boolean v4, v1, Lcom/android/server/CNE$FmcRegInfo;->actionStop:Z

    if-eqz v4, :cond_4

    .line 2049
    invoke-direct {p0, v2}, Lcom/android/server/CNE;->onFmcStatus(I)V

    .line 2050
    invoke-direct {p0, v8}, Lcom/android/server/CNE;->setFmcObj(Lcom/android/server/CNE$FmcRegInfo;)V

    .line 2058
    :cond_1
    :goto_1
    return-void

    .line 2040
    :cond_2
    if-eq v2, v9, :cond_3

    if-eq v2, v10, :cond_3

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    .line 2043
    :cond_3
    iput-boolean v5, v1, Lcom/android/server/CNE$FmcRegInfo;->enabled:Z

    .line 2044
    iput-boolean v5, v1, Lcom/android/server/CNE$FmcRegInfo;->dsAvail:Z

    goto :goto_0

    .line 2052
    :cond_4
    invoke-direct {p0, v10}, Lcom/android/server/CNE;->onFmcStatus(I)V

    goto :goto_1

    .line 2055
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/server/CNE;->onFmcStatus(I)V

    goto :goto_1
.end method

.method private handleGetCompatibleNwsRsp(Landroid/os/Parcel;)V
    .locals 23
    .parameter "p"

    .prologue
    .line 1732
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1733
    .local v20, roleRegId:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1739
    .local v6, evtStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE;->activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/CNE$RegInfo;

    .line 1740
    .local v18, regInfo:Lcom/android/server/CNE$RegInfo;
    if-eqz v18, :cond_4

    .line 1741
    const/16 v21, 0x1

    move v0, v6

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 1743
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/CNE$RegInfo;->activeRat:I

    .line 1745
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/CNE$RegInfo;->compatibleRatsList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 1746
    .local v16, prevCompatibleRatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/CNE$RatInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1747
    .local v13, newCompatibleRatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/CNE$RatInfo;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/16 v21, 0x4

    move v0, v8

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 1748
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1749
    .local v14, nextRat:I
    const/16 v21, 0x4

    move v0, v14

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x3

    move v0, v14

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 1750
    new-instance v17, Lcom/android/server/CNE$RatInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/CNE$RatInfo;-><init>(Lcom/android/server/CNE;)V

    .line 1751
    .local v17, ratInfo:Lcom/android/server/CNE$RatInfo;
    move v0, v14

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/CNE$RatInfo;->rat:I

    .line 1752
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/CNE$RegInfo;->activeRat:I

    move/from16 v21, v0

    move v0, v14

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1753
    sget-object v21, Lcom/android/server/CNE$RatTriedStatus;->RAT_STATUS_TRIED:Lcom/android/server/CNE$RatTriedStatus;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/CNE$RatInfo;->status:Lcom/android/server/CNE$RatTriedStatus;

    .line 1764
    :goto_1
    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1747
    .end local v17           #ratInfo:Lcom/android/server/CNE$RatInfo;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1756
    .restart local v17       #ratInfo:Lcom/android/server/CNE$RatInfo;
    :cond_1
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 1757
    .local v9, index:I
    const/16 v21, -0x1

    move v0, v9

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 1758
    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/CNE$RatInfo;

    .line 1759
    .local v15, oldRatInfo:Lcom/android/server/CNE$RatInfo;
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/CNE$RatInfo;->status:Lcom/android/server/CNE$RatTriedStatus;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/CNE$RatInfo;->status:Lcom/android/server/CNE$RatTriedStatus;

    goto :goto_1

    .line 1761
    .end local v15           #oldRatInfo:Lcom/android/server/CNE$RatInfo;
    :cond_2
    sget-object v21, Lcom/android/server/CNE$RatTriedStatus;->RAT_STATUS_NOT_TRIED:Lcom/android/server/CNE$RatTriedStatus;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/CNE$RatInfo;->status:Lcom/android/server/CNE$RatTriedStatus;

    goto :goto_1

    .line 1767
    .end local v9           #index:I
    .end local v14           #nextRat:I
    .end local v17           #ratInfo:Lcom/android/server/CNE$RatInfo;
    :cond_3
    new-instance v10, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1768
    .local v10, ipAddr:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1769
    .local v7, flBwEst:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1774
    .local v19, rlBwEst:I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 1775
    move-object v0, v13

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/CNE$RegInfo;->compatibleRatsList:Ljava/util/ArrayList;

    .line 1776
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/CNE$RegInfo;->dump()V

    .line 1786
    #getter for: Lcom/android/server/CNE$RegInfo;->cbInfo:Lcom/android/server/CNE$CallbackInfo;
    invoke-static/range {v18 .. v18}, Lcom/android/server/CNE$RegInfo;->access$2400(Lcom/android/server/CNE$RegInfo;)Lcom/android/server/CNE$CallbackInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/CNE$CallbackInfo;->listener:Landroid/net/IConSvcEventListener;

    move-object v12, v0

    .line 1787
    .local v12, listener:Landroid/net/IConSvcEventListener;
    if-eqz v12, :cond_4

    .line 1789
    :try_start_0
    new-instance v11, Landroid/net/LinkInfo;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/CNE$RegInfo;->activeRat:I

    move/from16 v21, v0

    move-object v0, v11

    move-object v1, v10

    move v2, v7

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/LinkInfo;-><init>(Ljava/lang/String;III)V

    .line 1791
    .local v11, linkInfo:Landroid/net/LinkInfo;
    #getter for: Lcom/android/server/CNE$RegInfo;->notificationsSent:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/CNE$RegInfo;->access$2500(Lcom/android/server/CNE$RegInfo;)I

    move-result v21

    or-int/lit8 v21, v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    #setter for: Lcom/android/server/CNE$RegInfo;->notificationsSent:I
    invoke-static {v0, v1}, Lcom/android/server/CNE$RegInfo;->access$2502(Lcom/android/server/CNE$RegInfo;I)I

    .line 1793
    invoke-interface {v12, v11}, Landroid/net/IConSvcEventListener;->onLinkAvail(Landroid/net/LinkInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1814
    .end local v7           #flBwEst:I
    .end local v8           #i:I
    .end local v10           #ipAddr:Ljava/lang/String;
    .end local v11           #linkInfo:Landroid/net/LinkInfo;
    .end local v12           #listener:Landroid/net/IConSvcEventListener;
    .end local v13           #newCompatibleRatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/CNE$RatInfo;>;"
    .end local v16           #prevCompatibleRatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/CNE$RatInfo;>;"
    .end local v19           #rlBwEst:I
    :cond_4
    :goto_2
    return-void

    .line 1794
    .restart local v7       #flBwEst:I
    .restart local v8       #i:I
    .restart local v10       #ipAddr:Ljava/lang/String;
    .restart local v12       #listener:Landroid/net/IConSvcEventListener;
    .restart local v13       #newCompatibleRatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/CNE$RatInfo;>;"
    .restart local v16       #prevCompatibleRatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/CNE$RatInfo;>;"
    .restart local v19       #rlBwEst:I
    :catch_0
    move-exception v21

    move-object/from16 v5, v21

    .line 1795
    .local v5, e:Landroid/os/RemoteException;
    const-string v21, "CNE"

    const-string v22, "handleGetCompNwsRsp listener is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1800
    .end local v5           #e:Landroid/os/RemoteException;
    .end local v7           #flBwEst:I
    .end local v8           #i:I
    .end local v10           #ipAddr:Ljava/lang/String;
    .end local v12           #listener:Landroid/net/IConSvcEventListener;
    .end local v13           #newCompatibleRatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/CNE$RatInfo;>;"
    .end local v16           #prevCompatibleRatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/CNE$RatInfo;>;"
    .end local v19           #rlBwEst:I
    :cond_5
    #getter for: Lcom/android/server/CNE$RegInfo;->cbInfo:Lcom/android/server/CNE$CallbackInfo;
    invoke-static/range {v18 .. v18}, Lcom/android/server/CNE$RegInfo;->access$2400(Lcom/android/server/CNE$RegInfo;)Lcom/android/server/CNE$CallbackInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/CNE$CallbackInfo;->listener:Landroid/net/IConSvcEventListener;

    move-object v12, v0

    .line 1801
    .restart local v12       #listener:Landroid/net/IConSvcEventListener;
    if-eqz v12, :cond_4

    .line 1803
    const/16 v21, -0x2

    :try_start_1
    move-object v0, v12

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/net/IConSvcEventListener;->onGetLinkFailure(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1804
    :catch_1
    move-exception v5

    .line 1805
    .restart local v5       #e:Landroid/os/RemoteException;
    const-string v21, "CNE"

    const-string v22, "handleGetCompNwsRsp listener is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleHostRoutingIpMsg(Landroid/os/Parcel;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 2061
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2063
    .local v0, ipAddr:Ljava/lang/String;
    iput-object v0, p0, Lcom/android/server/CNE;->hostRoutingIpAddr:Ljava/lang/String;

    .line 2064
    invoke-direct {p0}, Lcom/android/server/CNE;->getFmcObj()Lcom/android/server/CNE$FmcRegInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2065
    invoke-direct {p0}, Lcom/android/server/CNE;->getFmcObj()Lcom/android/server/CNE$FmcRegInfo;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/CNE$FmcRegInfo;->dsAvail:Z

    .line 2067
    :cond_0
    return-void
.end method

.method private handleMorePrefNwAvailEvent(Landroid/os/Parcel;)V
    .locals 12
    .parameter "p"

    .prologue
    const-string v11, "CNE"

    .line 1847
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1848
    .local v8, roleRegId:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1849
    .local v0, betterRat:I
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1850
    .local v3, ipAddr:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1851
    .local v2, flBwEst:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1860
    .local v7, rlBwEst:I
    iget-object v9, p0, Lcom/android/server/CNE;->activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CNE$RegInfo;

    .line 1861
    .local v6, regInfo:Lcom/android/server/CNE$RegInfo;
    if-eqz v6, :cond_1

    .line 1863
    iput v0, v6, Lcom/android/server/CNE$RegInfo;->betterRat:I

    .line 1865
    #getter for: Lcom/android/server/CNE$RegInfo;->cbInfo:Lcom/android/server/CNE$CallbackInfo;
    invoke-static {v6}, Lcom/android/server/CNE$RegInfo;->access$2400(Lcom/android/server/CNE$RegInfo;)Lcom/android/server/CNE$CallbackInfo;

    move-result-object v9

    iget-object v5, v9, Lcom/android/server/CNE$CallbackInfo;->listener:Landroid/net/IConSvcEventListener;

    .line 1866
    .local v5, listener:Landroid/net/IConSvcEventListener;
    if-eqz v5, :cond_0

    .line 1868
    :try_start_0
    new-instance v4, Landroid/net/LinkInfo;

    invoke-direct {v4, v3, v2, v7, v0}, Landroid/net/LinkInfo;-><init>(Ljava/lang/String;III)V

    .line 1869
    .local v4, linkInfo:Landroid/net/LinkInfo;
    #getter for: Lcom/android/server/CNE$RegInfo;->notificationsSent:I
    invoke-static {v6}, Lcom/android/server/CNE$RegInfo;->access$2500(Lcom/android/server/CNE$RegInfo;)I

    move-result v9

    or-int/lit8 v9, v9, 0x2

    #setter for: Lcom/android/server/CNE$RegInfo;->notificationsSent:I
    invoke-static {v6, v9}, Lcom/android/server/CNE$RegInfo;->access$2502(Lcom/android/server/CNE$RegInfo;I)I

    .line 1871
    invoke-interface {v5, v4}, Landroid/net/IConSvcEventListener;->onBetterLinkAvail(Landroid/net/LinkInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    .end local v4           #linkInfo:Landroid/net/LinkInfo;
    .end local v5           #listener:Landroid/net/IConSvcEventListener;
    :cond_0
    :goto_0
    return-void

    .line 1872
    .restart local v5       #listener:Landroid/net/IConSvcEventListener;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 1873
    .local v1, e:Landroid/os/RemoteException;
    const-string v9, "CNE"

    const-string v9, "handleMorePrefNwAvailEvt listener is null"

    invoke-static {v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1877
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v5           #listener:Landroid/net/IConSvcEventListener;
    :cond_1
    const-string v9, "CNE"

    const-string v9, "handleMorePrefNwAvailEvent role does not exists"

    invoke-static {v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleNotifyInFlightStatusMsg(Landroid/os/Parcel;)V
    .locals 7
    .parameter "p"

    .prologue
    const/4 v6, 0x1

    .line 2004
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2005
    .local v1, numInts:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2006
    .local v3, status:I
    if-ne v3, v6, :cond_0

    .line 2007
    const/4 v2, 0x1

    .line 2011
    .local v2, on:Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/CNE;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2013
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2014
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "state"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2015
    iget-object v4, p0, Lcom/android/server/CNE;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2017
    return-void

    .line 2009
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #on:Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #on:Z
    goto :goto_0

    .line 2011
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private handleRatDownMsg(Landroid/os/Parcel;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 1915
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1917
    .local v0, ratType:I
    iget-object v1, p0, Lcom/android/server/CNE;->mService:Lcom/android/server/ConnectivityService;

    if-eqz v1, :cond_0

    .line 1918
    iget-object v1, p0, Lcom/android/server/CNE;->mService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1, v0}, Lcom/android/server/ConnectivityService;->bringDownRat(I)Z

    .line 1920
    :cond_0
    return-void
.end method

.method private handleRatLostEvent(Landroid/os/Parcel;)V
    .locals 10
    .parameter "p"

    .prologue
    .line 1883
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1884
    .local v3, numInts:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1885
    .local v6, roleRegId:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1891
    .local v4, rat:I
    iget-object v7, p0, Lcom/android/server/CNE;->activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/CNE$RegInfo;

    .line 1892
    .local v5, regInfo:Lcom/android/server/CNE$RegInfo;
    if-eqz v5, :cond_0

    .line 1893
    iget v7, v5, Lcom/android/server/CNE$RegInfo;->activeRat:I

    if-ne v7, v4, :cond_0

    .line 1894
    #getter for: Lcom/android/server/CNE$RegInfo;->cbInfo:Lcom/android/server/CNE$CallbackInfo;
    invoke-static {v5}, Lcom/android/server/CNE$RegInfo;->access$2400(Lcom/android/server/CNE$RegInfo;)Lcom/android/server/CNE$CallbackInfo;

    move-result-object v7

    iget-object v2, v7, Lcom/android/server/CNE$CallbackInfo;->listener:Landroid/net/IConSvcEventListener;

    .line 1895
    .local v2, listener:Landroid/net/IConSvcEventListener;
    if-eqz v2, :cond_0

    .line 1897
    :try_start_0
    new-instance v1, Landroid/net/LinkInfo;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v1, v7, v8, v9, v4}, Landroid/net/LinkInfo;-><init>(Ljava/lang/String;III)V

    .line 1899
    .local v1, linkInfo:Landroid/net/LinkInfo;
    invoke-interface {v2, v1}, Landroid/net/IConSvcEventListener;->onLinkLost(Landroid/net/LinkInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1912
    .end local v1           #linkInfo:Landroid/net/LinkInfo;
    .end local v2           #listener:Landroid/net/IConSvcEventListener;
    :cond_0
    :goto_0
    return-void

    .line 1900
    .restart local v2       #listener:Landroid/net/IConSvcEventListener;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 1901
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "CNE"

    const-string v8, "handleRatLostEvent listener is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleRatUpMsg(Landroid/os/Parcel;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 1924
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1926
    .local v0, ratType:I
    packed-switch v0, :pswitch_data_0

    .line 1936
    :goto_0
    return-void

    .line 1928
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/CNE;->handleWlanBringUp()V

    goto :goto_0

    .line 1931
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/CNE;->handleWwanBringUp()V

    goto :goto_0

    .line 1926
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRegRoleRsp(Landroid/os/Parcel;)V
    .locals 8
    .parameter "p"

    .prologue
    .line 1698
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1699
    .local v3, numInts:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1700
    .local v5, roleRegId:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1706
    .local v1, evtStatus:I
    iget-object v6, p0, Lcom/android/server/CNE;->activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/CNE$RegInfo;

    .line 1707
    .local v4, regInfo:Lcom/android/server/CNE$RegInfo;
    if-eqz v4, :cond_0

    .line 1708
    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    .line 1713
    invoke-direct {p0, v5}, Lcom/android/server/CNE;->sendGetCompatibleNwsReq(I)Z

    .line 1729
    :cond_0
    :goto_0
    return-void

    .line 1716
    :cond_1
    #getter for: Lcom/android/server/CNE$RegInfo;->cbInfo:Lcom/android/server/CNE$CallbackInfo;
    invoke-static {v4}, Lcom/android/server/CNE$RegInfo;->access$2400(Lcom/android/server/CNE$RegInfo;)Lcom/android/server/CNE$CallbackInfo;

    move-result-object v6

    iget-object v2, v6, Lcom/android/server/CNE$CallbackInfo;->listener:Landroid/net/IConSvcEventListener;

    .line 1717
    .local v2, listener:Landroid/net/IConSvcEventListener;
    if-eqz v2, :cond_0

    .line 1719
    const/4 v6, -0x1

    :try_start_0
    invoke-interface {v2, v6}, Landroid/net/IConSvcEventListener;->onGetLinkFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1720
    :catch_0
    move-exception v0

    .line 1721
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "CNE"

    const-string v7, "handleRegRoleRsp listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleStartScanWlanMsg(Landroid/os/Parcel;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1999
    :goto_0
    return-void

    .line 1998
    :cond_0
    iget-object v0, p0, Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    goto :goto_0
.end method

.method private handleWlanBringUp()V
    .locals 8

    .prologue
    .line 1941
    :try_start_0
    iget-object v5, p0, Lcom/android/server/CNE;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1943
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1944
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 1945
    .local v3, networkState:Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_0

    .line 1946
    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v5}, Lcom/android/server/CNE;->getWlanAddrInfo(Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/server/CNE$AddressInfo;

    move-result-object v4

    .line 1947
    .local v4, wlanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    const/4 v5, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I

    move-result v6

    iget-object v7, v4, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/CNE;->notifyRatConnectStatus(IILjava/lang/String;)Z

    .line 1957
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #networkState:Landroid/net/NetworkInfo$State;
    .end local v4           #wlanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    :goto_0
    return-void

    .line 1951
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v2       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v3       #networkState:Landroid/net/NetworkInfo$State;
    :cond_0
    iget-object v5, p0, Lcom/android/server/CNE;->mService:Lcom/android/server/ConnectivityService;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/ConnectivityService;->bringUpRat(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1953
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #networkState:Landroid/net/NetworkInfo$State;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1954
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "CNE"

    const-string v6, "handleWlanBringUp"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1955
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleWwanBringUp()V
    .locals 10

    .prologue
    const-string v9, "CNE"

    .line 1961
    :try_start_0
    iget-object v6, p0, Lcom/android/server/CNE;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1963
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1964
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 1965
    .local v3, networkState:Landroid/net/NetworkInfo$State;
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v6, :cond_0

    .line 1966
    const-string v6, "default"

    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/CNE;->getWwanAddrInfo(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/server/CNE$AddressInfo;

    move-result-object v5

    .line 1968
    .local v5, wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    const/4 v6, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I

    move-result v7

    iget-object v8, v5, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/CNE;->notifyRatConnectStatus(IILjava/lang/String;)Z

    .line 1993
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #networkState:Landroid/net/NetworkInfo$State;
    .end local v5           #wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    :goto_0
    return-void

    .line 1973
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v2       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v3       #networkState:Landroid/net/NetworkInfo$State;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/CNE;->getFmcObj()Lcom/android/server/CNE$FmcRegInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1974
    invoke-direct {p0}, Lcom/android/server/CNE;->getFmcObj()Lcom/android/server/CNE$FmcRegInfo;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/server/CNE$FmcRegInfo;->dsAvail:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1975
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 1983
    .local v4, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v6, "CNE"

    const-string v7, "remoteException while calling setDataReadinessChecks"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    .end local v4           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    iget-object v6, p0, Lcom/android/server/CNE;->mService:Lcom/android/server/ConnectivityService;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/ConnectivityService;->bringUpRat(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1989
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #networkState:Landroid/net/NetworkInfo$State;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1990
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v6, "CNE"

    const-string v6, "handleWwanBringUp"

    invoke-static {v9, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1991
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private isEvdo()Z
    .locals 2

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/server/CNE;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/CNE;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/CNE;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFmcStatus(I)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    const-string v5, "CNE"

    .line 2423
    invoke-direct {p0}, Lcom/android/server/CNE;->getFmcObj()Lcom/android/server/CNE$FmcRegInfo;

    move-result-object v1

    .line 2424
    .local v1, rInfo:Lcom/android/server/CNE$FmcRegInfo;
    if-eqz v1, :cond_3

    .line 2425
    iput p1, v1, Lcom/android/server/CNE$FmcRegInfo;->lastSendStatus:I

    .line 2426
    iget v2, v1, Lcom/android/server/CNE$FmcRegInfo;->lastSendStatus:I

    if-eq v2, v4, :cond_0

    iget v2, v1, Lcom/android/server/CNE$FmcRegInfo;->lastSendStatus:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/android/server/CNE$FmcRegInfo;->lastSendStatus:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 2429
    :cond_0
    sput-boolean v4, Lcom/android/server/CNE;->mRemoveHostEntry:Z

    .line 2430
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    .line 2441
    :cond_1
    iget-object v2, v1, Lcom/android/server/CNE$FmcRegInfo;->mListener:Landroid/net/IFmcEventListener;

    if-eqz v2, :cond_2

    .line 2448
    :try_start_0
    iget-object v2, v1, Lcom/android/server/CNE$FmcRegInfo;->mListener:Landroid/net/IFmcEventListener;

    invoke-interface {v2, p1}, Landroid/net/IFmcEventListener;->onFmcStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2456
    :cond_2
    :goto_0
    return-void

    .line 2449
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2450
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CNE"

    const-string v2, "onFmcStatus: exception onFmcStatus"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2454
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v2, "CNE"

    const-string v2, "onFmcStatus: regInfo = null"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseBwString(Ljava/lang/String;)I
    .locals 6
    .parameter "bw"

    .prologue
    .line 2112
    const/4 v3, 0x0

    .line 2113
    .local v3, result:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 2114
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2115
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2116
    mul-int/lit8 v4, v3, 0xa

    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int v3, v4, v5

    .line 2113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2118
    :cond_0
    if-nez v1, :cond_2

    .line 2119
    const/4 v3, -0x1

    .line 2133
    .end local v0           #c:C
    :cond_1
    :goto_1
    return v3

    .line 2122
    .restart local v0       #c:C
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2123
    .local v2, remainder:Ljava/lang/String;
    const-string v4, "kbps"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2124
    mul-int/lit16 v3, v3, 0x3e8

    goto :goto_1

    .line 2125
    :cond_3
    const-string v4, "Mbps"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2126
    const v4, 0xf4240

    mul-int/2addr v3, v4

    goto :goto_1

    .line 2128
    :cond_4
    const/4 v3, -0x1

    .line 2130
    goto :goto_1
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 1169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1170
    .local v0, type:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1171
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->processUnsolicited(Landroid/os/Parcel;)V

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    if-nez v0, :cond_0

    .line 1173
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->processSolicited(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private processSolicited(Landroid/os/Parcel;)V
    .locals 7
    .parameter "p"

    .prologue
    .line 1192
    const/4 v1, 0x0

    .line 1193
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1194
    .local v3, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1196
    .local v0, error:I
    invoke-direct {p0, v3}, Lcom/android/server/CNE;->findAndRemoveRequestFromList(I)Lcom/android/server/CNERequest;

    move-result-object v2

    .line 1197
    .local v2, rr:Lcom/android/server/CNERequest;
    if-nez v2, :cond_0

    .line 1198
    const-string v4, "CNE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected solicited response! sn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :goto_0
    return-void

    .line 1201
    :cond_0
    if-eqz v0, :cond_1

    .line 1202
    invoke-virtual {v2, v0}, Lcom/android/server/CNERequest;->onError(I)V

    .line 1203
    invoke-virtual {v2}, Lcom/android/server/CNERequest;->release()V

    goto :goto_0

    .line 1206
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/CNERequest;->release()V

    goto :goto_0
.end method

.method private processUnsolicited(Landroid/os/Parcel;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 1214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1215
    .local v0, response:I
    packed-switch v0, :pswitch_data_0

    .line 1265
    const-string v1, "CNE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKOWN Unsolicited Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :goto_0
    return-void

    .line 1217
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->handleRegRoleRsp(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1221
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->handleGetCompatibleNwsRsp(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1225
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->handleConfNwRsp(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1229
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->handleDeRegRoleRsp(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1233
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->handleRatDownMsg(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1237
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->handleRatUpMsg(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1241
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->handleMorePrefNwAvailEvent(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1245
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->handleRatLostEvent(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1249
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->handleStartScanWlanMsg(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1253
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->handleNotifyInFlightStatusMsg(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1257
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->handleFmcStatusMsg(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1261
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/CNE;->handleHostRoutingIpMsg(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private static readCneMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .parameter "is"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const-string v7, "CNE"

    .line 948
    const/4 v2, 0x0

    .line 949
    .local v2, offset:I
    const/4 v3, 0x4

    .line 951
    .local v3, remaining:I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 953
    .local v0, countRead:I
    if-gez v0, :cond_1

    .line 954
    const-string v4, "CNE"

    const-string v4, "Hit EOS reading message length"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 982
    :goto_0
    return v4

    .line 958
    :cond_1
    add-int/2addr v2, v0

    .line 959
    sub-int/2addr v3, v0

    .line 960
    if-gtz v3, :cond_0

    .line 962
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 967
    .local v1, messageLength:I
    const/4 v2, 0x0

    .line 968
    move v3, v1

    .line 970
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 972
    if-gez v0, :cond_3

    .line 973
    const-string v4, "CNE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hit EOS reading message.  messageLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " remaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 975
    goto :goto_0

    .line 978
    :cond_3
    add-int/2addr v2, v0

    .line 979
    sub-int/2addr v3, v0

    .line 980
    if-gtz v3, :cond_2

    move v4, v1

    .line 982
    goto :goto_0
.end method

.method private reestablishBinder(Lcom/android/server/CNE$FmcRegInfo;Landroid/os/IBinder;)Lcom/android/server/CNE$FmcRegInfo;
    .locals 2
    .parameter "rSrc"
    .parameter "binder"

    .prologue
    .line 2470
    const/4 v0, 0x0

    .line 2471
    .local v0, r:Lcom/android/server/CNE$FmcRegInfo;
    #getter for: Lcom/android/server/CNE$FmcRegInfo;->mBinder:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/CNE$FmcRegInfo;->access$2700(Lcom/android/server/CNE$FmcRegInfo;)Landroid/os/IBinder;

    move-result-object v1

    if-eq p2, v1, :cond_0

    .line 2473
    new-instance v0, Lcom/android/server/CNE$FmcRegInfo;

    .end local v0           #r:Lcom/android/server/CNE$FmcRegInfo;
    invoke-direct {v0, p0, p2}, Lcom/android/server/CNE$FmcRegInfo;-><init>(Lcom/android/server/CNE;Landroid/os/IBinder;)V

    .line 2474
    .restart local v0       #r:Lcom/android/server/CNE$FmcRegInfo;
    iget-object v1, p1, Lcom/android/server/CNE$FmcRegInfo;->ssid:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/CNE$FmcRegInfo;->ssid:Ljava/lang/String;

    .line 2475
    iget-boolean v1, p1, Lcom/android/server/CNE$FmcRegInfo;->enabled:Z

    iput-boolean v1, v0, Lcom/android/server/CNE$FmcRegInfo;->enabled:Z

    .line 2476
    iget-boolean v1, p1, Lcom/android/server/CNE$FmcRegInfo;->dsAvail:Z

    iput-boolean v1, v0, Lcom/android/server/CNE$FmcRegInfo;->dsAvail:Z

    .line 2477
    iget v1, p1, Lcom/android/server/CNE$FmcRegInfo;->lastSendStatus:I

    iput v1, v0, Lcom/android/server/CNE$FmcRegInfo;->lastSendStatus:I

    .line 2478
    invoke-direct {p0, v0}, Lcom/android/server/CNE;->setFmcObj(Lcom/android/server/CNE$FmcRegInfo;)V

    .line 2483
    :goto_0
    return-object v0

    .line 2481
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    .line 1382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1383
    .local v1, numInts:I
    new-array v2, v1, [I

    .line 1384
    .local v2, response:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 1384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1387
    :cond_0
    return-object v2
.end method

.method private responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 1420
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1421
    .local v0, response:[B
    return-object v0
.end method

.method private responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 1396
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1397
    .local v0, response:Ljava/lang/String;
    return-object v0
.end method

.method private responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 1404
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1414
    .local v0, response:[Ljava/lang/String;
    return-object v0
.end method

.method private responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "p"

    .prologue
    .line 1391
    const/4 v0, 0x0

    return-object v0
.end method

.method private send(Lcom/android/server/CNERequest;)V
    .locals 3
    .parameter "rr"

    .prologue
    .line 1162
    iget-object v1, p0, Lcom/android/server/CNE;->mSender:Lcom/android/server/CNE$CNESender;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/CNE$CNESender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1164
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1165
    return-void
.end method

.method private sendConfirmNwReq(IIIII)Z
    .locals 3
    .parameter "roleRegId"
    .parameter "ifaceId"
    .parameter "confirmation"
    .parameter "notifyIfBetterNwAvail"
    .parameter "newIfaceId"

    .prologue
    .line 1652
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/server/CNERequest;->obtain(I)Lcom/android/server/CNERequest;

    move-result-object v0

    .line 1653
    .local v0, rr:Lcom/android/server/CNERequest;
    if-nez v0, :cond_0

    .line 1654
    const-string v1, "CNE"

    const-string v2, "sendConfirmNwReq: rr=NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    const/4 v1, 0x0

    .line 1665
    :goto_0
    return v1

    .line 1657
    :cond_0
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1658
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1660
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1661
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1664
    invoke-direct {p0, v0}, Lcom/android/server/CNE;->send(Lcom/android/server/CNERequest;)V

    .line 1665
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private sendDeregRoleReq(I)Z
    .locals 3
    .parameter "roleRegId"

    .prologue
    const/4 v2, 0x1

    .line 1671
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/server/CNERequest;->obtain(I)Lcom/android/server/CNERequest;

    move-result-object v0

    .line 1672
    .local v0, rr:Lcom/android/server/CNERequest;
    if-nez v0, :cond_0

    .line 1673
    const-string v1, "CNE"

    const-string v2, "sendDeregRoleReq: rr=NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const/4 v1, 0x0

    .line 1681
    :goto_0
    return v1

    .line 1676
    :cond_0
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1677
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1680
    invoke-direct {p0, v0}, Lcom/android/server/CNE;->send(Lcom/android/server/CNERequest;)V

    move v1, v2

    .line 1681
    goto :goto_0
.end method

.method private sendGetCompatibleNwsReq(I)Z
    .locals 3
    .parameter "roleRegId"

    .prologue
    const/4 v2, 0x1

    .line 1637
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/server/CNERequest;->obtain(I)Lcom/android/server/CNERequest;

    move-result-object v0

    .line 1638
    .local v0, rr:Lcom/android/server/CNERequest;
    if-nez v0, :cond_0

    .line 1639
    const-string v1, "CNE"

    const-string v2, "sendGetCompatibleNwsReq: rr=NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    const/4 v1, 0x0

    .line 1646
    :goto_0
    return v1

    .line 1642
    :cond_0
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1643
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1645
    invoke-direct {p0, v0}, Lcom/android/server/CNE;->send(Lcom/android/server/CNERequest;)V

    move v1, v2

    .line 1646
    goto :goto_0
.end method

.method private sendInitReq()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1627
    invoke-static {v1}, Lcom/android/server/CNERequest;->obtain(I)Lcom/android/server/CNERequest;

    move-result-object v0

    .line 1628
    .local v0, rr:Lcom/android/server/CNERequest;
    if-nez v0, :cond_0

    .line 1629
    const-string v1, "CNE"

    const-string v2, "sendinitReq: rr=NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const/4 v1, 0x0

    .line 1633
    :goto_0
    return v1

    .line 1632
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/CNE;->send(Lcom/android/server/CNERequest;)V

    goto :goto_0
.end method

.method private sendRegRoleReq(IIII)Z
    .locals 3
    .parameter "role"
    .parameter "roleRegId"
    .parameter "fwLinkBw"
    .parameter "revLinkBw"

    .prologue
    .line 1609
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/server/CNERequest;->obtain(I)Lcom/android/server/CNERequest;

    move-result-object v0

    .line 1610
    .local v0, rr:Lcom/android/server/CNERequest;
    if-nez v0, :cond_0

    .line 1611
    const-string v1, "CNE"

    const-string v2, "sendRegRoleReq: rr=NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const/4 v1, 0x0

    .line 1623
    :goto_0
    return v1

    .line 1615
    :cond_0
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1616
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1617
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1618
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1619
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1621
    invoke-direct {p0, v0}, Lcom/android/server/CNE;->send(Lcom/android/server/CNERequest;)V

    .line 1623
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setFmcObj(Lcom/android/server/CNE$FmcRegInfo;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 2465
    iput-object p1, p0, Lcom/android/server/CNE;->fmcRegInfo:Lcom/android/server/CNE$FmcRegInfo;

    .line 2466
    return-void
.end method


# virtual methods
.method public configureIproute2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "command"
    .parameter "ifName"
    .parameter "ipAddr"
    .parameter "gatewayAddr"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "CNE"

    .line 1554
    const/4 v0, 0x0

    .line 1561
    .local v0, rr:Lcom/android/server/CNERequest;
    invoke-direct {p0}, Lcom/android/server/CNE;->getFmcObj()Lcom/android/server/CNE$FmcRegInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1562
    invoke-direct {p0}, Lcom/android/server/CNE;->getFmcObj()Lcom/android/server/CNE$FmcRegInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/CNE$FmcRegInfo;->dsAvail:Z

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1567
    :cond_0
    const-string v1, "CNE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureIproute2: cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " invalid in FMC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1583
    :goto_0
    return v1

    .line 1572
    :cond_1
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/android/server/CNERequest;->obtain(I)Lcom/android/server/CNERequest;

    move-result-object v0

    .line 1573
    if-nez v0, :cond_2

    .line 1574
    const-string v1, "CNE"

    const-string v1, "configureIproute2: rr=NULL"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1575
    goto :goto_0

    .line 1578
    :cond_2
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1579
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1580
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1581
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1582
    invoke-direct {p0, v0}, Lcom/android/server/CNE;->send(Lcom/android/server/CNERequest;)V

    move v1, v2

    .line 1583
    goto :goto_0
.end method

.method public getFmcStatus(Landroid/os/IBinder;)Z
    .locals 4
    .parameter "binder"

    .prologue
    .line 2544
    const/4 v0, 0x0

    .line 2545
    .local v0, ok:Z
    invoke-direct {p0}, Lcom/android/server/CNE;->getFmcObj()Lcom/android/server/CNE$FmcRegInfo;

    move-result-object v1

    .line 2547
    .local v1, rInfo:Lcom/android/server/CNE$FmcRegInfo;
    if-eqz v1, :cond_0

    .line 2548
    invoke-direct {p0, v1, p1}, Lcom/android/server/CNE;->reestablishBinder(Lcom/android/server/CNE$FmcRegInfo;Landroid/os/IBinder;)Lcom/android/server/CNE$FmcRegInfo;

    move-result-object v1

    .line 2549
    iget v2, v1, Lcom/android/server/CNE$FmcRegInfo;->lastSendStatus:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2550
    iget v2, v1, Lcom/android/server/CNE$FmcRegInfo;->lastSendStatus:I

    invoke-direct {p0, v2}, Lcom/android/server/CNE;->onFmcStatus(I)V

    .line 2551
    const/4 v0, 0x1

    .line 2554
    :cond_0
    return v0
.end method

.method public getLink(ILjava/util/Map;ILandroid/os/IBinder;)Z
    .locals 11
    .parameter "role"
    .parameter
    .parameter "pid"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Landroid/net/LinkProvider$LinkRequirement;",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/IBinder;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2141
    .local p2, linkReqs:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/LinkProvider$LinkRequirement;Ljava/lang/String;>;"
    invoke-direct {p0, p3, p1}, Lcom/android/server/CNE;->getRegId(II)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 2142
    const-string v8, "CNE"

    const-string v9, "Multpl same role reg\'s not allowed by single app"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    const/4 v8, 0x0

    .line 2183
    :goto_0
    return v8

    .line 2146
    :cond_0
    new-instance v5, Lcom/android/server/CNE$RegInfo;

    invoke-direct {v5, p0, p4}, Lcom/android/server/CNE$RegInfo;-><init>(Lcom/android/server/CNE;Landroid/os/IBinder;)V

    .line 2147
    .local v5, regInfo:Lcom/android/server/CNE$RegInfo;
    #setter for: Lcom/android/server/CNE$RegInfo;->role:I
    invoke-static {v5, p1}, Lcom/android/server/CNE$RegInfo;->access$2102(Lcom/android/server/CNE$RegInfo;I)I

    .line 2148
    #setter for: Lcom/android/server/CNE$RegInfo;->pid:I
    invoke-static {v5, p3}, Lcom/android/server/CNE$RegInfo;->access$2202(Lcom/android/server/CNE$RegInfo;I)I

    .line 2149
    invoke-static {p4}, Landroid/net/IConSvcEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConSvcEventListener;

    move-result-object v1

    .line 2151
    .local v1, evtListener:Landroid/net/IConSvcEventListener;
    #getter for: Lcom/android/server/CNE$RegInfo;->cbInfo:Lcom/android/server/CNE$CallbackInfo;
    invoke-static {v5}, Lcom/android/server/CNE$RegInfo;->access$2400(Lcom/android/server/CNE$RegInfo;)Lcom/android/server/CNE$CallbackInfo;

    move-result-object v8

    iput-object v1, v8, Lcom/android/server/CNE$CallbackInfo;->listener:Landroid/net/IConSvcEventListener;

    .line 2152
    #getter for: Lcom/android/server/CNE$RegInfo;->cbInfo:Lcom/android/server/CNE$CallbackInfo;
    invoke-static {v5}, Lcom/android/server/CNE$RegInfo;->access$2400(Lcom/android/server/CNE$RegInfo;)Lcom/android/server/CNE$CallbackInfo;

    move-result-object v8

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/CNE$CallbackInfo;->isNotifBetterRat:Z

    .line 2154
    iget-object v8, p0, Lcom/android/server/CNE;->activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;

    #getter for: Lcom/android/server/CNE$RegInfo;->regId:I
    invoke-static {v5}, Lcom/android/server/CNE$RegInfo;->access$2300(Lcom/android/server/CNE$RegInfo;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    const/4 v2, 0x0

    .line 2158
    .local v2, fwLinkBwReq:I
    const/4 v6, 0x0

    .line 2159
    .local v6, revLinkBwReq:I
    if-eqz p2, :cond_2

    .line 2160
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2161
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/LinkProvider$LinkRequirement;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkProvider$LinkRequirement;

    .line 2162
    .local v4, key:Landroid/net/LinkProvider$LinkRequirement;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2164
    .local v7, value:Ljava/lang/String;
    sget-object v8, Lcom/android/server/CNE$3;->$SwitchMap$android$net$LinkProvider$LinkRequirement:[I

    invoke-virtual {v4}, Landroid/net/LinkProvider$LinkRequirement;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 2166
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/android/server/CNE;->parseBwString(Ljava/lang/String;)I

    move-result v2

    .line 2167
    const/4 v8, -0x1

    if-ne v2, v8, :cond_1

    .line 2168
    const-string v8, "CNE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid bandwidth req. value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    const/4 v8, 0x0

    goto :goto_0

    .line 2173
    :pswitch_1
    invoke-direct {p0, v7}, Lcom/android/server/CNE;->parseBwString(Ljava/lang/String;)I

    move-result v6

    .line 2174
    const/4 v8, -0x1

    if-ne v6, v8, :cond_1

    .line 2175
    const-string v8, "CNE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid bandwidth req. value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2182
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/LinkProvider$LinkRequirement;Ljava/lang/String;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Landroid/net/LinkProvider$LinkRequirement;
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    #getter for: Lcom/android/server/CNE$RegInfo;->regId:I
    invoke-static {v5}, Lcom/android/server/CNE$RegInfo;->access$2300(Lcom/android/server/CNE$RegInfo;)I

    move-result v8

    invoke-direct {p0, p1, v8, v2, v6}, Lcom/android/server/CNE;->sendRegRoleReq(IIII)Z

    .line 2183
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getWlanAddrInfo(Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/server/CNE$AddressInfo;
    .locals 19
    .parameter "version"

    .prologue
    .line 333
    new-instance v15, Lcom/android/server/CNE$AddressInfo;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/CNE$AddressInfo;-><init>(Lcom/android/server/CNE;)V

    .line 334
    .local v15, wlanAddrInfo:Lcom/android/server/CNE$AddressInfo;
    const/4 v8, 0x0

    .line 335
    .local v8, ipAddr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 336
    .local v4, gatewayAddr:Ljava/lang/String;
    sget-object v16, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 338
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    .line 339
    .local v2, dhcpInfo:Landroid/net/DhcpInfo;
    iget v9, v2, Landroid/net/DhcpInfo;->ipAddress:I

    .line 340
    .local v9, ipAddressInt:I
    iget v5, v2, Landroid/net/DhcpInfo;->gateway:I

    .line 341
    .local v5, gatewayInt:I
    if-eqz v9, :cond_0

    .line 342
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v9

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    shr-int/lit8 v17, v9, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    shr-int/lit8 v17, v9, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    shr-int/lit8 v17, v9, 0x18

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 347
    :cond_0
    if-eqz v5, :cond_1

    .line 348
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    shr-int/lit8 v17, v5, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    shr-int/lit8 v17, v5, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    shr-int/lit8 v17, v5, 0x18

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 353
    :cond_1
    iput-object v8, v15, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    .line 354
    iput-object v4, v15, Lcom/android/server/CNE$AddressInfo;->gatewayAddr:Ljava/lang/String;

    .line 355
    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 356
    .local v7, inetAddr:Ljava/net/InetAddress;
    invoke-static {v7}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v10

    .line 357
    .local v10, netIface:Ljava/net/NetworkInterface;
    invoke-virtual {v10}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2

    .line 396
    .end local v2           #dhcpInfo:Landroid/net/DhcpInfo;
    .end local v5           #gatewayInt:I
    .end local v7           #inetAddr:Ljava/net/InetAddress;
    .end local v9           #ipAddressInt:I
    .end local v10           #netIface:Ljava/net/NetworkInterface;
    :cond_2
    :goto_0
    return-object v15

    .line 358
    :catch_0
    move-exception v16

    move-object/from16 v12, v16

    .line 359
    .local v12, sexp:Ljava/net/SocketException;
    const-string v16, "CNE"

    const-string v17, "Could not get the netIface obj"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    .end local v12           #sexp:Ljava/net/SocketException;
    :catch_1
    move-exception v16

    move-object/from16 v11, v16

    .line 362
    .local v11, nexp:Ljava/lang/NullPointerException;
    const-string v16, "CNE"

    const-string v17, "DhcpInfo obj is NULL. V4 address is not yet available."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    .end local v11           #nexp:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v16

    move-object/from16 v13, v16

    .line 364
    .local v13, uexp:Ljava/net/UnknownHostException;
    const-string v16, "CNE"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid host name"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    .end local v13           #uexp:Ljava/net/UnknownHostException;
    :cond_3
    sget-object v16, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 373
    sget-object v16, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/CNE;->getWlanAddrInfo(Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/server/CNE$AddressInfo;

    move-result-object v14

    .line 375
    .local v14, v4Addr:Lcom/android/server/CNE$AddressInfo;
    :try_start_1
    move-object v0, v14

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 376
    .local v6, inet4Addr:Ljava/net/InetAddress;
    invoke-static {v6}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v10

    .line 377
    .restart local v10       #netIface:Ljava/net/NetworkInterface;
    invoke-virtual {v10}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;

    .line 378
    invoke-virtual {v10}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 379
    .local v3, e:Ljava/util/Enumeration;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 380
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 381
    .restart local v7       #inetAddr:Ljava/net/InetAddress;
    invoke-virtual {v7, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 382
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    .line 386
    .end local v3           #e:Ljava/util/Enumeration;
    .end local v6           #inet4Addr:Ljava/net/InetAddress;
    .end local v7           #inetAddr:Ljava/net/InetAddress;
    .end local v10           #netIface:Ljava/net/NetworkInterface;
    :catch_3
    move-exception v16

    move-object/from16 v12, v16

    .line 387
    .restart local v12       #sexp:Ljava/net/SocketException;
    const-string v16, "CNE"

    const-string v17, "Could not get the netIface obj"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 388
    .end local v12           #sexp:Ljava/net/SocketException;
    :catch_4
    move-exception v16

    move-object/from16 v11, v16

    .line 389
    .restart local v11       #nexp:Ljava/lang/NullPointerException;
    const-string v16, "CNE"

    const-string v17, "V4Adrr is not yet available"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 390
    .end local v11           #nexp:Ljava/lang/NullPointerException;
    :catch_5
    move-exception v16

    move-object/from16 v13, v16

    .line 391
    .restart local v13       #uexp:Ljava/net/UnknownHostException;
    const-string v16, "CNE"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Can\'t get V6Addr without valid V4Addr= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 394
    .end local v13           #uexp:Ljava/net/UnknownHostException;
    .end local v14           #v4Addr:Lcom/android/server/CNE$AddressInfo;
    :cond_5
    const-string v16, "CNE"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unsupported ipversion."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method getWwanAddrInfo(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/server/CNE$AddressInfo;
    .locals 4
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    .line 400
    new-instance v1, Lcom/android/server/CNE$AddressInfo;

    invoke-direct {v1, p0}, Lcom/android/server/CNE$AddressInfo;-><init>(Lcom/android/server/CNE;)V

    .line 402
    .local v1, wwanAddrInfo:Lcom/android/server/CNE$AddressInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1, p2}, Landroid/telephony/TelephonyManager;->getActiveInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;

    .line 403
    iget-object v2, p0, Lcom/android/server/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1, p2}, Landroid/telephony/TelephonyManager;->getActiveIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    .line 404
    iget-object v2, p0, Lcom/android/server/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1, p2}, Landroid/telephony/TelephonyManager;->getActiveGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/CNE$AddressInfo;->gatewayAddr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return-object v1

    .line 405
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 406
    .local v0, nexp:Ljava/lang/NullPointerException;
    const-string v2, "CNE"

    const-string v3, "mTelephonyManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyDefaultNwChange(I)V
    .locals 4
    .parameter "nwId"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 2357
    iput p1, p0, Lcom/android/server/CNE;->mDefaultNetwork:I

    .line 2359
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/CNE;->activeWlanIfName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2360
    iget-object v0, p0, Lcom/android/server/CNE;->activeWlanIfName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/CNE;->activeWlanGatewayAddr:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/android/server/CNE;->configureIproute2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2363
    sget-boolean v0, Lcom/android/server/CNE;->mRemoveHostEntry:Z

    if-eqz v0, :cond_0

    .line 2364
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/CNE;->mRemoveHostEntry:Z

    .line 2368
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/server/CNE;->activeWlanIfName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/server/CNE;->configureIproute2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2374
    :cond_0
    :goto_0
    return-void

    .line 2370
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/CNE;->activeWwanV4IfName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2371
    iget-object v0, p0, Lcom/android/server/CNE;->activeWwanV4IfName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/CNE;->activeWwanV4GatewayAddr:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/android/server/CNE;->configureIproute2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public notifyRatConnectStatus(IILjava/lang/String;)Z
    .locals 3
    .parameter "type"
    .parameter "status"
    .parameter "ipV4Addr"

    .prologue
    .line 1532
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/android/server/CNERequest;->obtain(I)Lcom/android/server/CNERequest;

    move-result-object v0

    .line 1534
    .local v0, rr:Lcom/android/server/CNERequest;
    if-nez v0, :cond_0

    .line 1535
    const-string v1, "CNE"

    const-string v2, "notifyRatConnectStatus: rr=NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    const/4 v1, 0x0

    .line 1547
    :goto_0
    return v1

    .line 1543
    :cond_0
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1544
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1545
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1546
    invoke-direct {p0, v0}, Lcom/android/server/CNE;->send(Lcom/android/server/CNERequest;)V

    .line 1547
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public rejectSwitch(IILandroid/net/LinkInfo;Z)Z
    .locals 9
    .parameter "role"
    .parameter "pid"
    .parameter "info"
    .parameter "isNotifyBetterLink"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const-string v2, "CNE"

    .line 2282
    invoke-direct {p0, p2, p1}, Lcom/android/server/CNE;->getRegId(II)I

    move-result v6

    .line 2283
    .local v6, regId:I
    iget-object v0, p0, Lcom/android/server/CNE;->activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/CNE$RegInfo;

    .line 2284
    .local v7, regInfo:Lcom/android/server/CNE$RegInfo;
    if-eqz v7, :cond_3

    .line 2285
    #getter for: Lcom/android/server/CNE$RegInfo;->notificationsSent:I
    invoke-static {v7}, Lcom/android/server/CNE$RegInfo;->access$2500(Lcom/android/server/CNE$RegInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2287
    #getter for: Lcom/android/server/CNE$RegInfo;->regId:I
    invoke-static {v7}, Lcom/android/server/CNE$RegInfo;->access$2300(Lcom/android/server/CNE$RegInfo;)I

    move-result v1

    if-nez p3, :cond_0

    iget v0, v7, Lcom/android/server/CNE$RegInfo;->betterRat:I

    move v2, v0

    :goto_0
    if-eqz p4, :cond_1

    move v4, v8

    :goto_1
    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/CNE;->sendConfirmNwReq(IIIII)Z

    move v0, v8

    .line 2296
    :goto_2
    return v0

    .line 2287
    :cond_0
    invoke-virtual {p3}, Landroid/net/LinkInfo;->getNwId()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    .line 2291
    :cond_2
    const-string v0, "CNE"

    const-string v0, "OnBetterLinkAvail notification was not sent yet."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 2292
    goto :goto_2

    .line 2295
    :cond_3
    const-string v0, "CNE"

    const-string v0, "App did not register for this role"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 2296
    goto :goto_2
.end method

.method public releaseLink(II)Z
    .locals 7
    .parameter "role"
    .parameter "pid"

    .prologue
    const/4 v5, 0x0

    const-string v6, "CNE"

    .line 2238
    invoke-direct {p0, p2, p1}, Lcom/android/server/CNE;->getRegId(II)I

    move-result v1

    .line 2239
    .local v1, regId:I
    iget-object v3, p0, Lcom/android/server/CNE;->activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/CNE$RegInfo;

    .line 2240
    .local v2, regInfo:Lcom/android/server/CNE$RegInfo;
    if-eqz v2, :cond_0

    .line 2241
    #getter for: Lcom/android/server/CNE$RegInfo;->regId:I
    invoke-static {v2}, Lcom/android/server/CNE$RegInfo;->access$2300(Lcom/android/server/CNE$RegInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/CNE;->sendDeregRoleReq(I)Z

    .line 2244
    :try_start_0
    #getter for: Lcom/android/server/CNE$RegInfo;->mBinder:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/CNE$RegInfo;->access$2600(Lcom/android/server/CNE$RegInfo;)Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2248
    :goto_0
    iget-object v3, v2, Lcom/android/server/CNE$RegInfo;->compatibleRatsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2249
    iget-object v3, p0, Lcom/android/server/CNE;->activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2250
    const/4 v3, 0x1

    .line 2253
    :goto_1
    return v3

    .line 2245
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2246
    .local v0, exp:Ljava/util/NoSuchElementException;
    const-string v3, "CNE"

    const-string v3, "bindrLinkToDeatch was not registered"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2252
    .end local v0           #exp:Ljava/util/NoSuchElementException;
    :cond_0
    const-string v3, "CNE"

    const-string v3, "App did not register for this role"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 2253
    goto :goto_1
.end method

.method public reportLinkSatisfaction(IILandroid/net/LinkInfo;ZZ)Z
    .locals 10
    .parameter "role"
    .parameter "pid"
    .parameter "info"
    .parameter "isSatisfied"
    .parameter "isNotifyBetterLink"

    .prologue
    .line 2194
    invoke-direct {p0, p2, p1}, Lcom/android/server/CNE;->getRegId(II)I

    move-result v8

    .line 2195
    .local v8, regId:I
    iget-object v0, p0, Lcom/android/server/CNE;->activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/CNE$RegInfo;

    .line 2196
    .local v9, regInfo:Lcom/android/server/CNE$RegInfo;
    if-eqz v9, :cond_7

    .line 2197
    #getter for: Lcom/android/server/CNE$RegInfo;->notificationsSent:I
    invoke-static {v9}, Lcom/android/server/CNE$RegInfo;->access$2500(Lcom/android/server/CNE$RegInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 2199
    #getter for: Lcom/android/server/CNE$RegInfo;->cbInfo:Lcom/android/server/CNE$CallbackInfo;
    invoke-static {v9}, Lcom/android/server/CNE$RegInfo;->access$2400(Lcom/android/server/CNE$RegInfo;)Lcom/android/server/CNE$CallbackInfo;

    move-result-object v0

    iput-boolean p5, v0, Lcom/android/server/CNE$CallbackInfo;->isNotifBetterRat:Z

    .line 2200
    const/4 v5, 0x3

    .line 2201
    .local v5, ratToTry:I
    if-nez p4, :cond_0

    .line 2202
    iget-object v0, v9, Lcom/android/server/CNE$RegInfo;->compatibleRatsList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/CNE;->getNextRatToTry(Ljava/util/ArrayList;)I

    move-result v5

    .line 2204
    :cond_0
    #getter for: Lcom/android/server/CNE$RegInfo;->regId:I
    invoke-static {v9}, Lcom/android/server/CNE$RegInfo;->access$2300(Lcom/android/server/CNE$RegInfo;)I

    move-result v1

    if-nez p3, :cond_2

    iget v0, v9, Lcom/android/server/CNE$RegInfo;->activeRat:I

    move v2, v0

    :goto_0
    if-eqz p4, :cond_3

    const/4 v0, 0x1

    move v3, v0

    :goto_1
    if-eqz p5, :cond_4

    const/4 v0, 0x1

    move v4, v0

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/CNE;->sendConfirmNwReq(IIIII)Z

    .line 2211
    if-nez p4, :cond_5

    const/4 v0, 0x4

    if-ne v5, v0, :cond_5

    .line 2214
    :try_start_0
    #getter for: Lcom/android/server/CNE$RegInfo;->cbInfo:Lcom/android/server/CNE$CallbackInfo;
    invoke-static {v9}, Lcom/android/server/CNE$RegInfo;->access$2400(Lcom/android/server/CNE$RegInfo;)Lcom/android/server/CNE$CallbackInfo;

    move-result-object v0

    iget-object v7, v0, Lcom/android/server/CNE$CallbackInfo;->listener:Landroid/net/IConSvcEventListener;

    .line 2215
    .local v7, evtListener:Landroid/net/IConSvcEventListener;
    if-eqz v7, :cond_1

    .line 2216
    const/4 v0, -0x2

    invoke-interface {v7, v0}, Landroid/net/IConSvcEventListener;->onGetLinkFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2218
    :cond_1
    const/4 v0, 0x1

    .line 2231
    .end local v5           #ratToTry:I
    .end local v7           #evtListener:Landroid/net/IConSvcEventListener;
    :goto_3
    return v0

    .line 2204
    .restart local v5       #ratToTry:I
    :cond_2
    invoke-virtual {p3}, Landroid/net/LinkInfo;->getNwId()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    move v4, v0

    goto :goto_2

    .line 2219
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 2220
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "CNE"

    const-string v1, "remoteException while calling onConnectionComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    const/4 v0, 0x0

    goto :goto_3

    .line 2224
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    .line 2226
    .end local v5           #ratToTry:I
    :cond_6
    const-string v0, "CNE"

    const-string v1, "OnLinkAvail notification was not sent yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    const/4 v0, 0x0

    goto :goto_3

    .line 2230
    :cond_7
    const-string v0, "CNE"

    const-string v1, "App did not register for this role"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public sendDefaultNwPref(I)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 1593
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/android/server/CNERequest;->obtain(I)Lcom/android/server/CNERequest;

    move-result-object v1

    .line 1594
    .local v1, rr:Lcom/android/server/CNERequest;
    if-eqz v1, :cond_1

    .line 1595
    iget-object v2, v1, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1596
    const/4 v0, 0x1

    .line 1597
    .local v0, rat:I
    if-nez p1, :cond_0

    .line 1598
    const/4 v0, 0x0

    .line 1600
    :cond_0
    iget-object v2, v1, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1601
    invoke-direct {p0, v1}, Lcom/android/server/CNE;->send(Lcom/android/server/CNERequest;)V

    .line 1605
    .end local v0           #rat:I
    :goto_0
    return-void

    .line 1603
    :cond_1
    const-string v2, "CNE"

    const-string v3, "sendDefaultNwPref2Cne: rr=NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDefaultNwPref2Cne(I)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 1588
    iput p1, p0, Lcom/android/server/CNE;->mNetworkPreference:I

    .line 1589
    return-void
.end method

.method public setDefaultConnectionNwPref(I)V
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 2074
    iget-object v0, p0, Lcom/android/server/CNE;->activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CNE$RegInfo;

    .line 2075
    .local v6, regInfo:Lcom/android/server/CNE$RegInfo;
    if-eqz v6, :cond_2

    .line 2081
    iget v0, v6, Lcom/android/server/CNE$RegInfo;->activeRat:I

    if-eq p1, v0, :cond_0

    .line 2082
    #getter for: Lcom/android/server/CNE$RegInfo;->regId:I
    invoke-static {v6}, Lcom/android/server/CNE$RegInfo;->access$2300(Lcom/android/server/CNE$RegInfo;)I

    move-result v1

    iget v2, v6, Lcom/android/server/CNE$RegInfo;->activeRat:I

    #getter for: Lcom/android/server/CNE$RegInfo;->cbInfo:Lcom/android/server/CNE$CallbackInfo;
    invoke-static {v6}, Lcom/android/server/CNE$RegInfo;->access$2400(Lcom/android/server/CNE$RegInfo;)Lcom/android/server/CNE$CallbackInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/CNE$CallbackInfo;->isNotifBetterRat:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v4, v0

    :goto_0
    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/CNE;->sendConfirmNwReq(IIIII)Z

    .line 2088
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v4, v3

    .line 2082
    goto :goto_0

    .line 2086
    :cond_2
    const-string v0, "CNE"

    const-string v1, "Default Registration does not exists"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startFmc(Landroid/os/IBinder;)Z
    .locals 8
    .parameter "binder"

    .prologue
    .line 2488
    const/4 v0, 0x1

    .line 2489
    .local v0, ok:Z
    const/4 v2, 0x1

    .line 2490
    .local v2, reqToStart:Z
    invoke-direct {p0}, Lcom/android/server/CNE;->getFmcObj()Lcom/android/server/CNE$FmcRegInfo;

    move-result-object v1

    .line 2492
    .local v1, rInfo:Lcom/android/server/CNE$FmcRegInfo;
    if-eqz v1, :cond_2

    .line 2493
    invoke-direct {p0, v1, p1}, Lcom/android/server/CNE;->reestablishBinder(Lcom/android/server/CNE$FmcRegInfo;Landroid/os/IBinder;)Lcom/android/server/CNE$FmcRegInfo;

    move-result-object v1

    .line 2494
    iget-boolean v6, v1, Lcom/android/server/CNE$FmcRegInfo;->enabled:Z

    if-eqz v6, :cond_0

    .line 2495
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/CNE;->onFmcStatus(I)V

    .line 2496
    const/4 v2, 0x0

    .line 2501
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 2502
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/server/CNE;->onFmcStatus(I)V

    .line 2504
    const/16 v6, 0x10

    invoke-static {v6}, Lcom/android/server/CNERequest;->obtain(I)Lcom/android/server/CNERequest;

    move-result-object v3

    .line 2505
    .local v3, rr:Lcom/android/server/CNERequest;
    if-nez v3, :cond_3

    .line 2506
    const/4 v0, 0x0

    .line 2507
    const-string v6, "CNE"

    const-string v7, "startFmc: rr=NULL."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    const/4 v6, 0x5

    invoke-direct {p0, v6}, Lcom/android/server/CNE;->onFmcStatus(I)V

    .line 2517
    .end local v3           #rr:Lcom/android/server/CNERequest;
    :cond_1
    :goto_1
    return v0

    .line 2499
    :cond_2
    new-instance v6, Lcom/android/server/CNE$FmcRegInfo;

    invoke-direct {v6, p0, p1}, Lcom/android/server/CNE$FmcRegInfo;-><init>(Lcom/android/server/CNE;Landroid/os/IBinder;)V

    invoke-direct {p0, v6}, Lcom/android/server/CNE;->setFmcObj(Lcom/android/server/CNE$FmcRegInfo;)V

    goto :goto_0

    .line 2510
    .restart local v3       #rr:Lcom/android/server/CNERequest;
    :cond_3
    iget-object v6, p0, Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 2511
    .local v5, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    .line 2513
    .local v4, ssid:Ljava/lang/String;
    iget-object v6, v3, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2514
    invoke-direct {p0, v3}, Lcom/android/server/CNE;->send(Lcom/android/server/CNERequest;)V

    goto :goto_1
.end method

.method public stopFmc(Landroid/os/IBinder;)Z
    .locals 5
    .parameter "binder"

    .prologue
    .line 2522
    const/4 v0, 0x1

    .line 2523
    .local v0, ok:Z
    invoke-direct {p0}, Lcom/android/server/CNE;->getFmcObj()Lcom/android/server/CNE$FmcRegInfo;

    move-result-object v1

    .line 2525
    .local v1, rInfo:Lcom/android/server/CNE$FmcRegInfo;
    if-eqz v1, :cond_1

    .line 2526
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/CNE$FmcRegInfo;->actionStop:Z

    .line 2527
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/CNE;->onFmcStatus(I)V

    .line 2529
    const/16 v3, 0x11

    invoke-static {v3}, Lcom/android/server/CNERequest;->obtain(I)Lcom/android/server/CNERequest;

    move-result-object v2

    .line 2530
    .local v2, rr:Lcom/android/server/CNERequest;
    if-nez v2, :cond_0

    .line 2531
    const-string v3, "CNE"

    const-string v4, "stopFmc: rr=NULL."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    const/4 v0, 0x0

    .line 2539
    .end local v2           #rr:Lcom/android/server/CNERequest;
    :goto_0
    return v0

    .line 2534
    .restart local v2       #rr:Lcom/android/server/CNERequest;
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/CNE;->send(Lcom/android/server/CNERequest;)V

    goto :goto_0

    .line 2537
    .end local v2           #rr:Lcom/android/server/CNERequest;
    :cond_1
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/server/CNE;->onFmcStatus(I)V

    goto :goto_0
.end method

.method public switchLink(IILandroid/net/LinkInfo;Z)Z
    .locals 8
    .parameter "role"
    .parameter "pid"
    .parameter "info"
    .parameter "isNotifyBetterLink"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "CNE"

    .line 2260
    invoke-direct {p0, p2, p1}, Lcom/android/server/CNE;->getRegId(II)I

    move-result v6

    .line 2261
    .local v6, regId:I
    iget-object v0, p0, Lcom/android/server/CNE;->activeRegsList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/CNE$RegInfo;

    .line 2262
    .local v7, regInfo:Lcom/android/server/CNE$RegInfo;
    if-eqz v7, :cond_3

    .line 2263
    #getter for: Lcom/android/server/CNE$RegInfo;->notificationsSent:I
    invoke-static {v7}, Lcom/android/server/CNE$RegInfo;->access$2500(Lcom/android/server/CNE$RegInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2265
    if-nez p3, :cond_1

    iget v0, v7, Lcom/android/server/CNE$RegInfo;->betterRat:I

    :goto_0
    iput v0, v7, Lcom/android/server/CNE$RegInfo;->activeRat:I

    .line 2266
    #getter for: Lcom/android/server/CNE$RegInfo;->regId:I
    invoke-static {v7}, Lcom/android/server/CNE$RegInfo;->access$2300(Lcom/android/server/CNE$RegInfo;)I

    move-result v1

    iget v2, v7, Lcom/android/server/CNE$RegInfo;->activeRat:I

    if-eqz p4, :cond_0

    move v4, v3

    :cond_0
    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/CNE;->sendConfirmNwReq(IIIII)Z

    move v0, v3

    .line 2275
    :goto_1
    return v0

    .line 2265
    :cond_1
    invoke-virtual {p3}, Landroid/net/LinkInfo;->getNwId()I

    move-result v0

    goto :goto_0

    .line 2270
    :cond_2
    const-string v0, "CNE"

    const-string v0, "OnBetterLinkAvail notification was not sent yet."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 2271
    goto :goto_1

    .line 2274
    :cond_3
    const-string v0, "CNE"

    const-string v0, "App did not register for this role"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 2275
    goto :goto_1
.end method

.method public updateBatteryStatus(III)Z
    .locals 3
    .parameter "status"
    .parameter "pluginType"
    .parameter "level"

    .prologue
    .line 1427
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/server/CNERequest;->obtain(I)Lcom/android/server/CNERequest;

    move-result-object v0

    .line 1428
    .local v0, rr:Lcom/android/server/CNERequest;
    if-nez v0, :cond_0

    .line 1429
    const-string v1, "CNE"

    const-string v2, "updateBatteryStatus: rr=NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const/4 v1, 0x0

    .line 1441
    :goto_0
    return v1

    .line 1436
    :cond_0
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1438
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1439
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1440
    invoke-direct {p0, v0}, Lcom/android/server/CNE;->send(Lcom/android/server/CNERequest;)V

    .line 1441
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateWlanScanResults(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v5, 0x1

    .line 1474
    const/16 v3, 0xc

    invoke-static {v3}, Lcom/android/server/CNERequest;->obtain(I)Lcom/android/server/CNERequest;

    move-result-object v1

    .line 1475
    .local v1, rr:Lcom/android/server/CNERequest;
    if-nez v1, :cond_0

    .line 1476
    const-string v3, "CNE"

    const-string v4, "updateWlanScanResults: rr=NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const/4 v3, 0x0

    .line 1499
    :goto_0
    return v3

    .line 1480
    :cond_0
    if-eqz p1, :cond_1

    .line 1485
    iget-object v3, v1, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1486
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v0, v3, v5

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 1487
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1488
    .local v2, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v3, v1, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    iget v4, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1489
    iget-object v3, v1, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    iget v4, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1490
    iget-object v3, v1, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1491
    iget-object v3, v1, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1492
    iget-object v3, v1, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1486
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1498
    .end local v0           #i:I
    .end local v2           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/CNE;->send(Lcom/android/server/CNERequest;)V

    move v3, v5

    .line 1499
    goto :goto_0
.end method

.method public updateWlanStatus(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "type"
    .parameter "state"
    .parameter "rssi"
    .parameter "ssid"
    .parameter "ipAddr"
    .parameter "timeStamp"

    .prologue
    .line 1447
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/server/CNERequest;->obtain(I)Lcom/android/server/CNERequest;

    move-result-object v0

    .line 1448
    .local v0, rr:Lcom/android/server/CNERequest;
    if-nez v0, :cond_0

    .line 1449
    const-string v1, "CNE"

    const-string v2, "updateWlanStatus: rr=NULL - no updated"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const/4 v1, 0x0

    .line 1469
    :goto_0
    return v1

    .line 1462
    :cond_0
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1463
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1464
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1465
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1466
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1467
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1468
    invoke-direct {p0, v0}, Lcom/android/server/CNE;->send(Lcom/android/server/CNERequest;)V

    .line 1469
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateWwanStatus(IIIILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "type"
    .parameter "state"
    .parameter "rssi"
    .parameter "roaming"
    .parameter "ipV4Addr"
    .parameter "timeStamp"

    .prologue
    .line 1506
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/android/server/CNERequest;->obtain(I)Lcom/android/server/CNERequest;

    move-result-object v0

    .line 1507
    .local v0, rr:Lcom/android/server/CNERequest;
    if-nez v0, :cond_0

    .line 1508
    const-string v1, "CNE"

    const-string v2, "updateWwanStatus: rr=NULL - no updated"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    const/4 v1, 0x0

    .line 1526
    :goto_0
    return v1

    .line 1519
    :cond_0
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1520
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1521
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1522
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1523
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1524
    iget-object v1, v0, Lcom/android/server/CNERequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1525
    invoke-direct {p0, v0}, Lcom/android/server/CNE;->send(Lcom/android/server/CNERequest;)V

    .line 1526
    const/4 v1, 0x1

    goto :goto_0
.end method
