.class public Landroid/server/BluetoothService;
.super Landroid/bluetooth/IBluetooth$Stub;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothService$Reaper;,
        Landroid/server/BluetoothService$BondState;,
        Landroid/server/BluetoothService$EnableThread;,
        Landroid/server/BluetoothService$RemoteService;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field private static final DOCK_ADDRESS_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_addr"

.field private static final DOCK_PIN_PATH:Ljava/lang/String; = "/sys/class/switch/dock/bt_pin"

.field private static final INCOMING_CONNECTION_FILE:Ljava/lang/String; = "/data/misc/bluetooth/incoming_connection.conf"

.field private static final INIT_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0xbb8L

.field private static INTENT_CANCEL_DISCOVERABLE:Ljava/lang/String; = null

.field private static final MAX_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:J = 0x2ee0L

.field private static final MESSAGE_AUTO_PAIRING_FAILURE_ATTEMPT_DELAY:I = 0x5

.field private static final MESSAGE_FINISH_DISABLE:I = 0x2

.field private static final MESSAGE_REGISTER_SDP_RECORDS:I = 0x1

.field private static final MESSAGE_UUID_INTENT:I = 0x3

.field private static final RFCOMM_UUIDS:[Landroid/os/ParcelUuid; = null

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "bluetooth_service_settings"

.field private static final SHARED_PREFERENCE_DOCK_ADDRESS:Ljava/lang/String; = "dock_bluetooth_address"

.field private static final TAG:Ljava/lang/String; = "BluetoothService"

.field private static final UUID_INTENT_DELAY:I = 0x1770

.field private static mDockAddress:Ljava/lang/String;


# instance fields
.field private final mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mA2dpService:Landroid/server/BluetoothA2dpService;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAdapterProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothState:I

.field private final mBondState:Landroid/server/BluetoothService$BondState;

.field private mCancelDiscoverableIntent:Landroid/app/PendingIntent;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceOobData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<[B[B>;>;"
        }
    .end annotation
.end field

.field private final mDeviceProfileState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDeviceProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDeviceServiceChannelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDockPin:Ljava/lang/String;

.field private mEnableThread:Landroid/server/BluetoothService$EnableThread;

.field private mEventLoop:Landroid/server/BluetoothEventLoop;

.field private final mHandler:Landroid/os/Handler;

.field private final mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private mIncomingConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsAirplaneSensitive:Z

.field private mIsAirplaneToggleable:Z

.field private mIsDiscovering:Z

.field private mNativeData:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestart:Z

.field private final mServiceRecordToPid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuidCallbackTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/server/BluetoothService$RemoteService;",
            "Landroid/bluetooth/IBluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUuidIntentTracker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Landroid/server/BluetoothService;->RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

    .line 165
    const-string v0, "android.server.BluetoothService.CANCEL_DISCOVERABLE"

    sput-object v0, Landroid/server/BluetoothService;->INTENT_CANCEL_DISCOVERABLE:Ljava/lang/String;

    .line 194
    invoke-static {}, Landroid/server/BluetoothService;->classInitNative()V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    invoke-direct {p0}, Landroid/bluetooth/IBluetooth$Stub;-><init>()V

    .line 95
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mRestart:Z

    .line 99
    new-instance v1, Landroid/server/BluetoothService$BondState;

    invoke-direct {v1, p0}, Landroid/server/BluetoothService$BondState;-><init>(Landroid/server/BluetoothService;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/server/BluetoothService;->mCancelDiscoverableIntent:Landroid/app/PendingIntent;

    .line 491
    new-instance v1, Landroid/server/BluetoothService$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothService$1;-><init>(Landroid/server/BluetoothService;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    .line 1981
    new-instance v1, Landroid/server/BluetoothService$2;

    invoke-direct {v1, p0}, Landroid/server/BluetoothService$2;-><init>(Landroid/server/BluetoothService;)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    iput-object p1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    .line 204
    const-string v1, "batteryinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 206
    invoke-direct {p0}, Landroid/server/BluetoothService;->initializeNativeDataNative()V

    .line 208
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledNative()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 209
    const-string v1, "BluetoothService"

    const-string v2, "Bluetooth daemons already running - runtime restart? "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableNative()I

    .line 213
    :cond_0
    const/16 v1, 0xa

    iput v1, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    .line 214
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mIsDiscovering:Z

    .line 215
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    .line 216
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    .line 218
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    .line 219
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    .line 221
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    .line 222
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    .line 223
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    .line 224
    new-instance v1, Landroid/bluetooth/BluetoothProfileState;

    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 225
    new-instance v1, Landroid/bluetooth/BluetoothProfileState;

    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 231
    iget-object v1, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 232
    iget-object v1, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 234
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 235
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 237
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    sget-object v1, Landroid/server/BluetoothService;->INTENT_CANCEL_DISCOVERABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    .line 243
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$BondState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/server/BluetoothService;->initProfileState()V

    return-void
.end method

.method static synthetic access$1200(Landroid/server/BluetoothService;)Lcom/android/internal/app/IBatteryStats;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/server/BluetoothService;Landroid/server/BluetoothService$EnableThread;)Landroid/server/BluetoothService$EnableThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/server/BluetoothService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->setBluetoothState(I)V

    return-void
.end method

.method static synthetic access$1500(Landroid/server/BluetoothService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    return v0
.end method

.method static synthetic access$1600(Landroid/server/BluetoothService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/server/BluetoothService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    return v0
.end method

.method static synthetic access$1800(Landroid/server/BluetoothService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    return v0
.end method

.method static synthetic access$1900(Landroid/server/BluetoothService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDeviceProfileState;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->addProfileState(Ljava/lang/String;)Landroid/bluetooth/BluetoothDeviceProfileState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/server/BluetoothService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->finishDisable(Z)V

    return-void
.end method

.method static synthetic access$2000(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/server/BluetoothService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/server/BluetoothService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V

    return-void
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    sput-object p0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2502(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Landroid/server/BluetoothService;->INTENT_CANCEL_DISCOVERABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/server/BluetoothService;->enableNative()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-static {p0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/server/BluetoothService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableNative()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/server/BluetoothService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/server/BluetoothService;->setupNativeDataNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/server/BluetoothService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->persistBluetoothOnSetting(Z)V

    return-void
.end method

.method static synthetic access$902(Landroid/server/BluetoothService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Landroid/server/BluetoothService;->mIsDiscovering:Z

    return p1
.end method

.method private addProfileState(Ljava/lang/String;)Landroid/bluetooth/BluetoothDeviceProfileState;
    .locals 4
    .parameter "address"

    .prologue
    .line 2279
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2280
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2285
    .end local v0           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    .local v1, state:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 2282
    .end local v1           #state:Ljava/lang/Object;
    .restart local v0       #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :cond_0
    new-instance v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .end local v0           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    invoke-direct {v0, v2, p1, p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/server/BluetoothService;Landroid/server/BluetoothA2dpService;)V

    .line 2283
    .restart local v0       #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2284
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->start()V

    move-object v1, v0

    .line 2285
    .restart local v1       #state:Ljava/lang/Object;
    goto :goto_0
.end method

.method private native addRfcommServiceRecordNative(Ljava/lang/String;JJS)I
.end method

.method static bluezStringToScanMode(ZZ)I
    .locals 1
    .parameter "pairable"
    .parameter "discoverable"

    .prologue
    .line 2173
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2174
    const/16 v0, 0x17

    .line 2178
    :goto_0
    return v0

    .line 2175
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    .line 2176
    const/16 v0, 0x15

    goto :goto_0

    .line 2178
    :cond_1
    const/16 v0, 0x14

    goto :goto_0
.end method

.method private native cancelDeviceCreationNative(Ljava/lang/String;)Z
.end method

.method private native cancelPairingUserInputNative(Ljava/lang/String;I)Z
.end method

.method private declared-synchronized checkAndRemoveRecord(II)V
    .locals 4
    .parameter "handle"
    .parameter "pid"

    .prologue
    .line 1956
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1957
    .local v0, handleInt:Ljava/lang/Integer;
    iget-object v2, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1958
    .local v1, owner:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 1959
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1961
    iget-object v2, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->removeServiceRecordNative(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1964
    :cond_0
    monitor-exit p0

    return-void

    .line 1956
    .end local v0           #handleInt:Ljava/lang/Integer;
    .end local v1           #owner:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native createDeviceNative(Ljava/lang/String;)Z
.end method

.method private createIncomingConnectionStateFile()V
    .locals 4

    .prologue
    .line 2365
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/bluetooth/incoming_connection.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2366
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2368
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2373
    :cond_0
    :goto_0
    return-void

    .line 2369
    :catch_0
    move-exception v0

    .line 2370
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothService"

    const-string v3, "IOException: cannot create file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native createPairedDeviceNative(Ljava/lang/String;I)Z
.end method

.method private native createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z
.end method

.method private native disableNative()I
.end method

.method private native enableNative()I
.end method

.method private declared-synchronized finishDisable(Z)V
    .locals 10
    .parameter "saveSetting"

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    iget v7, p0, Landroid/server/BluetoothService;->mBluetoothState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0xd

    if-eq v7, v8, :cond_1

    .line 422
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 384
    :cond_1
    :try_start_1
    iget-object v7, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v7}, Landroid/server/BluetoothEventLoop;->stop()V

    .line 385
    invoke-direct {p0}, Landroid/server/BluetoothService;->tearDownNativeDataNative()Z

    .line 386
    invoke-direct {p0}, Landroid/server/BluetoothService;->disableNative()I

    .line 389
    iget-object v7, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Landroid/server/BluetoothService$BondState;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v6, :cond_2

    aget-object v0, v1, v2

    .line 390
    .local v0, address:Ljava/lang/String;
    iget-object v7, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v8, 0xa

    const/4 v9, 0x3

    invoke-virtual {v7, v0, v8, v9}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 395
    .end local v0           #address:Ljava/lang/String;
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "android.bluetooth.adapter.extra.SCAN_MODE"

    const/16 v8, 0x14

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    iget-object v7, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 399
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/server/BluetoothService;->mIsDiscovering:Z

    .line 400
    iget-object v7, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 401
    iget-object v7, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 403
    if-eqz p1, :cond_3

    .line 404
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Landroid/server/BluetoothService;->persistBluetoothOnSetting(Z)V

    .line 407
    :cond_3
    const/16 v7, 0xa

    invoke-direct {p0, v7}, Landroid/server/BluetoothService;->setBluetoothState(I)V

    .line 410
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 412
    .local v3, ident:J
    :try_start_2
    iget-object v7, p0, Landroid/server/BluetoothService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOff()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 415
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    :goto_2
    iget-boolean v7, p0, Landroid/server/BluetoothService;->mRestart:Z

    if-eqz v7, :cond_0

    .line 419
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/server/BluetoothService;->mRestart:Z

    .line 420
    invoke-virtual {p0}, Landroid/server/BluetoothService;->enable()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 381
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #ident:J
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #len$:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 415
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #ident:J
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #len$:I
    :catchall_1
    move-exception v7

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 413
    :catch_0
    move-exception v7

    .line 415
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private native getAdapterPathNative()Ljava/lang/String;
.end method

.method private native getAdapterPropertiesNative()[Ljava/lang/Object;
.end method

.method private native getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private native getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .locals 5
    .parameter "address"

    .prologue
    .line 1630
    const-string v4, "UUIDs"

    invoke-virtual {p0, p1, v4}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1631
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_0

    const/4 v4, 0x0

    .line 1641
    :goto_0
    return-object v4

    .line 1633
    :cond_0
    const/4 v1, 0x0

    .line 1635
    .local v1, uuidStrings:[Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1636
    array-length v4, v1

    new-array v2, v4, [Landroid/os/ParcelUuid;

    .line 1638
    .local v2, uuids:[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 1639
    aget-object v4, v1, v0

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1638
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 1641
    goto :goto_0
.end method

.method private initProfileState()V
    .locals 11

    .prologue
    .line 2289
    const/4 v2, 0x0

    .line 2290
    .local v2, bonds:[Ljava/lang/String;
    const-string v9, "Devices"

    invoke-virtual {p0, v9}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2291
    .local v8, val:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 2292
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2294
    :cond_0
    if-nez v2, :cond_2

    .line 2306
    :cond_1
    return-void

    .line 2298
    :cond_2
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    .line 2299
    .local v6, path:Ljava/lang/String;
    invoke-virtual {p0, v6}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2300
    .local v0, address:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->addProfileState(Ljava/lang/String;)Landroid/bluetooth/BluetoothDeviceProfileState;

    move-result-object v7

    .line 2302
    .local v7, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 2303
    .local v5, msg:Landroid/os/Message;
    const/16 v9, 0x65

    iput v9, v5, Landroid/os/Message;->what:I

    .line 2304
    const-wide/16 v9, 0x1f40

    invoke-virtual {v7, v5, v9, v10}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2298
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private native initializeNativeDataNative()V
.end method

.method private final isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2043
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private isBondingFeasible(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 1291
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 1320
    :goto_0
    return v0

    .line 1295
    :cond_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 1296
    goto :goto_0

    .line 1298
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1300
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0}, Landroid/server/BluetoothService$BondState;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1301
    const-string v0, "Ignoring createBond(): another device is bonding"

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    move v0, v3

    .line 1303
    goto :goto_0

    .line 1308
    :cond_2
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    .line 1310
    const-string v0, "Ignoring createBond(): this device is already bonding or bonded"

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    move v0, v3

    .line 1311
    goto :goto_0

    .line 1314
    :cond_3
    sget-object v0, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1315
    invoke-direct {p0}, Landroid/server/BluetoothService;->writeDockPin()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1316
    const-string v0, "Error while writing Pin for the dock"

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    move v0, v3

    .line 1317
    goto :goto_0

    .line 1320
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isEnabledInternal()Z
    .locals 2

    .prologue
    .line 333
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native isEnabledNative()I
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2475
    const-string v0, "BluetoothService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    return-void
.end method

.method private pairingAttempt(Ljava/lang/String;I)V
    .locals 10
    .parameter "address"
    .parameter "result"

    .prologue
    const-wide/16 v8, 0xbb8

    const/16 v7, 0xa

    .line 683
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    .line 684
    .local v0, attempt:I
    int-to-long v3, v0

    mul-long/2addr v3, v8

    const-wide/16 v5, 0x2ee0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 686
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 702
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 692
    .local v1, message:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 693
    iget-object v3, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    int-to-long v4, v0

    mul-long/2addr v4, v8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    .line 695
    .local v2, postResult:Z
    if-nez v2, :cond_1

    .line 696
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0, p1, v7, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    goto :goto_0

    .line 701
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService$BondState;->attempt(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private persistBluetoothOnSetting(Z)V
    .locals 5
    .parameter "bluetoothOn"

    .prologue
    .line 634
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 635
    .local v0, origCallerIdentityToken:J
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_on"

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 637
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 638
    return-void

    .line 635
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private native readAdapterOutOfBandDataNative()[B
.end method

.method public static declared-synchronized readDockBluetoothAddress()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 246
    const-class v5, Landroid/server/BluetoothService;

    monitor-enter v5

    :try_start_0
    sget-object v6, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    if-eqz v6, :cond_1

    sget-object v6, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_0
    :goto_0
    monitor-exit v5

    return-object v6

    .line 248
    :cond_1
    const/4 v3, 0x0

    .line 251
    .local v3, file:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/sys/class/switch/dock/bt_addr"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 252
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .local v4, file:Ljava/io/BufferedInputStream;
    const/16 v6, 0x11

    :try_start_2
    new-array v0, v6, [B

    .line 253
    .local v0, address:[B
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 254
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 255
    .local v1, dockAddress:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 257
    sput-object v1, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;

    .line 258
    sget-object v6, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 267
    if-eqz v4, :cond_0

    .line 269
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v7

    goto :goto_0

    .line 260
    :cond_2
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckBluetoothAddress failed for car dock address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 267
    if-eqz v4, :cond_3

    .line 269
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_3
    :goto_1
    move-object v3, v4

    .line 275
    .end local v0           #address:[B
    .end local v1           #dockAddress:Ljava/lang/String;
    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    :cond_4
    :goto_2
    const/4 v6, 0x0

    :try_start_6
    sput-object v6, Landroid/server/BluetoothService;->mDockAddress:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v6, v8

    .line 276
    goto :goto_0

    .line 262
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 263
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_7
    const-string v6, "FileNotFoundException while trying to read dock address"

    invoke-static {v6}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 267
    if-eqz v3, :cond_4

    .line 269
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 270
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    goto :goto_2

    .line 264
    :catch_3
    move-exception v6

    move-object v2, v6

    .line 265
    .local v2, e:Ljava/io/IOException;
    :goto_4
    :try_start_9
    const-string v6, "IOException while trying to read dock address"

    invoke-static {v6}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 267
    if-eqz v3, :cond_4

    .line 269
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 246
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    .line 267
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v6

    :goto_5
    if-eqz v3, :cond_5

    .line 269
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 267
    :cond_5
    :goto_6
    :try_start_c
    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 270
    :catch_4
    move-exception v7

    goto :goto_6

    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v0       #address:[B
    .restart local v1       #dockAddress:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v6

    goto :goto_1

    .line 267
    .end local v0           #address:[B
    .end local v1           #dockAddress:Ljava/lang/String;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 264
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v6

    move-object v2, v6

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 262
    .end local v3           #file:Ljava/io/BufferedInputStream;
    .restart local v4       #file:Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v6

    move-object v2, v6

    move-object v3, v4

    .end local v4           #file:Ljava/io/BufferedInputStream;
    .restart local v3       #file:Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method private readIncomingConnectionState()V
    .locals 12

    .prologue
    .line 2385
    iget-object v9, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    monitor-enter v9

    .line 2386
    const/4 v2, 0x0

    .line 2388
    .local v2, fstream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v10, "/data/misc/bluetooth/incoming_connection.conf"

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2389
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .local v3, fstream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2390
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2392
    .local v1, file:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 2393
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2394
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 2395
    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2396
    .local v8, value:[Ljava/lang/String;
    if-eqz v8, :cond_0

    array-length v10, v8

    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    .line 2397
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2398
    .local v7, val1:Ljava/lang/Integer;
    new-instance v6, Landroid/util/Pair;

    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-direct {v6, v7, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2399
    .local v6, val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v10, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 2402
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7           #val1:Ljava/lang/Integer;
    .end local v8           #value:[Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v0, v10

    move-object v2, v3

    .line 2403
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileNotFoundException: readIncomingConnectionState"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2407
    if-eqz v2, :cond_1

    .line 2409
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2415
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2416
    return-void

    .line 2407
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 2409
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_3
    move-object v2, v3

    .line 2414
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 2404
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v0, v10

    .line 2405
    .local v0, e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: readIncomingConnectionState"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2407
    if-eqz v2, :cond_1

    .line 2409
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 2410
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v10

    goto :goto_2

    .line 2407
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v2, :cond_4

    .line 2409
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 2407
    :cond_4
    :goto_6
    :try_start_9
    throw v10

    .line 2415
    :catchall_1
    move-exception v10

    :goto_7
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v10

    .line 2410
    :catch_3
    move-exception v11

    goto :goto_6

    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    :catch_4
    move-exception v10

    goto :goto_3

    .line 2415
    :catchall_2
    move-exception v10

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 2407
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v10

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 2404
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v10

    move-object v0, v10

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 2402
    :catch_6
    move-exception v10

    move-object v0, v10

    goto :goto_1
.end method

.method private registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .locals 5
    .parameter "filter"

    .prologue
    const-string v4, "bluetooth"

    .line 2025
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2026
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "airplane_mode_radios"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2028
    .local v0, airplaneModeRadios:Ljava/lang/String;
    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2031
    .local v2, toggleableRadios:Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    .line 2033
    if-nez v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    .line 2036
    iget-boolean v3, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    if-eqz v3, :cond_0

    .line 2037
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2039
    :cond_0
    return-void

    .line 2031
    :cond_1
    const-string v3, "bluetooth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_0

    .line 2033
    :cond_2
    const-string v3, "bluetooth"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_1
.end method

.method private removeCancelDiscoverableIntent()V
    .locals 3

    .prologue
    .line 1125
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1126
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p0, Landroid/server/BluetoothService;->mCancelDiscoverableIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 1127
    iget-object v1, p0, Landroid/server/BluetoothService;->mCancelDiscoverableIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1128
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/server/BluetoothService;->mCancelDiscoverableIntent:Landroid/app/PendingIntent;

    .line 1130
    :cond_0
    return-void
.end method

.method private native removeDeviceNative(Ljava/lang/String;)Z
.end method

.method private native removeServiceRecordNative(I)Z
.end method

.method static scanModeToBluezString(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 2182
    packed-switch p0, :pswitch_data_0

    .line 2190
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2184
    :pswitch_1
    const-string v0, "off"

    goto :goto_0

    .line 2186
    :pswitch_2
    const-string v0, "connectable"

    goto :goto_0

    .line 2188
    :pswitch_3
    const-string v0, "discoverable"

    goto :goto_0

    .line 2182
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private native setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z
.end method

.method private native setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private declared-synchronized setBluetoothState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 468
    monitor-enter p0

    :try_start_0
    iget v2, p0, Landroid/server/BluetoothService;->mBluetoothState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v2, :cond_1

    .line 489
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 472
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 474
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    iget v3, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 479
    iput p1, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    .line 481
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 483
    const/16 v2, 0xc

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bt_discoverable_when_turn_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 485
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getDiscoverableTimeout()I

    move-result v1

    .line 486
    .local v1, timeout:I
    const/16 v2, 0x17

    invoke-virtual {p0, v2, v1}, Landroid/server/BluetoothService;->setScanMode(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 468
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #timeout:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private setCancelDiscoverableIntent(I)V
    .locals 8
    .parameter "timeout"

    .prologue
    const/4 v5, 0x0

    .line 1111
    invoke-direct {p0}, Landroid/server/BluetoothService;->removeCancelDiscoverableIntent()V

    .line 1113
    if-gtz p1, :cond_0

    .line 1122
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1117
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Landroid/server/BluetoothService;->INTENT_CANCEL_DISCOVERABLE:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1118
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Landroid/server/BluetoothService;->mCancelDiscoverableIntent:Landroid/app/PendingIntent;

    .line 1119
    mul-int/lit16 v2, p1, 0x3e8

    .line 1120
    .local v2, milliSeconds:I
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    iget-object v6, p0, Landroid/server/BluetoothService;->mCancelDiscoverableIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private native setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native setLinkTimeoutNative(Ljava/lang/String;I)Z
.end method

.method private native setPairingConfirmationNative(Ljava/lang/String;ZI)Z
.end method

.method private native setPasskeyNative(Ljava/lang/String;II)Z
.end method

.method private native setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private setPropertyBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 1082
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 1084
    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->setAdapterPropertyBooleanNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method private setPropertyInteger(Ljava/lang/String;I)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1076
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1078
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyIntegerNative(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method private setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1070
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1072
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->setAdapterPropertyStringNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private native setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z
.end method

.method private native setupNativeDataNative()Z
.end method

.method private native startDiscoveryNative()Z
.end method

.method private native stopDiscoveryNative()Z
.end method

.method private native tearDownNativeDataNative()Z
.end method

.method private static toBondStateString(I)Ljava/lang/String;
    .locals 1
    .parameter "bondState"

    .prologue
    .line 994
    packed-switch p0, :pswitch_data_0

    .line 1002
    const-string v0, "??????"

    :goto_0
    return-object v0

    .line 996
    :pswitch_0
    const-string v0, "not bonded"

    goto :goto_0

    .line 998
    :pswitch_1
    const-string v0, "bonding"

    goto :goto_0

    .line 1000
    :pswitch_2
    const-string v0, "bonded"

    goto :goto_0

    .line 994
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private truncateIncomingConnectionFile()V
    .locals 5

    .prologue
    .line 2419
    const/4 v1, 0x0

    .line 2421
    .local v1, r:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/data/misc/bluetooth/incoming_connection.conf"

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2422
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .local v2, r:Ljava/io/RandomAccessFile;
    const-wide/16 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 2428
    if-eqz v2, :cond_0

    .line 2430
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v1, v2

    .line 2436
    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return-void

    .line 2423
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2424
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException: truncateIncomingConnectionState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2428
    if-eqz v1, :cond_1

    .line 2430
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2431
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    goto :goto_1

    .line 2425
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 2426
    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: truncateIncomingConnectionState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2428
    if-eqz v1, :cond_1

    .line 2430
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 2428
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v1, :cond_2

    .line 2430
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 2428
    :cond_2
    :goto_5
    throw v3

    .line 2431
    :catch_3
    move-exception v4

    goto :goto_5

    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v3

    goto :goto_0

    .line 2428
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 2425
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 2423
    .end local v1           #r:Ljava/io/RandomAccessFile;
    .restart local v2       #r:Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #r:Ljava/io/RandomAccessFile;
    .restart local v1       #r:Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private declared-synchronized writeDockPin()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 280
    monitor-enter p0

    const/4 v1, 0x0

    .line 282
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sys/class/switch/dock/bt_pin"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 286
    .end local v1           #out:Ljava/io/BufferedWriter;
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40c3880000000000L

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 288
    .local v3, pin:I
    const-string v4, "%04d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    .line 289
    iget-object v4, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 296
    if-eqz v2, :cond_0

    .line 298
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    move v4, v9

    .line 305
    .end local v3           #pin:I
    :goto_1
    monitor-exit p0

    return v4

    .line 291
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 292
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v4, "FileNotFoundException while trying to write dock pairing pin"

    invoke-static {v4}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    if-eqz v1, :cond_1

    .line 298
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 304
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    const/4 v4, 0x0

    :try_start_5
    iput-object v4, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v4, v8

    .line 305
    goto :goto_1

    .line 293
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 294
    .local v0, e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v4, "IOException while while trying to write dock pairing pin"

    invoke-static {v4}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 296
    if-eqz v1, :cond_1

    .line 298
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 299
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    goto :goto_3

    .line 296
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v1, :cond_2

    .line 298
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 296
    :cond_2
    :goto_6
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 280
    :catchall_1
    move-exception v4

    :goto_7
    monitor-exit p0

    throw v4

    .line 299
    :catch_3
    move-exception v5

    goto :goto_6

    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #pin:I
    :catch_4
    move-exception v4

    goto :goto_0

    .line 296
    .end local v3           #pin:I
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 293
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 291
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 280
    .end local v1           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    .restart local v3       #pin:I
    :catchall_3
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #out:Ljava/io/BufferedWriter;
    goto :goto_7
.end method


# virtual methods
.method declared-synchronized addRemoteDeviceProperties(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 1502
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1503
    .local v5, propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_0

    .line 1504
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1507
    .restart local v5       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, p2

    if-ge v0, v7, :cond_6

    .line 1508
    aget-object v3, p2, v0

    .line 1509
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1511
    .local v4, newValue:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1512
    const-string v7, "BluetoothService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Remote Device Property at index"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1515
    :cond_1
    const-string v7, "UUIDs"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "Nodes"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1516
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1517
    .local v6, str:Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    aget-object v7, p2, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1518
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 1519
    add-int/lit8 v0, v0, 0x1

    aget-object v7, p2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1522
    :cond_3
    if-lez v2, :cond_4

    .line 1523
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1529
    .end local v1           #j:I
    .end local v2           #len:I
    .end local v6           #str:Ljava/lang/StringBuilder;
    :cond_4
    :goto_3
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1502
    .end local v0           #i:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/String;
    .end local v5           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1526
    .restart local v0       #i:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #newValue:Ljava/lang/String;
    .restart local v5       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    add-int/lit8 v0, v0, 0x1

    :try_start_1
    aget-object v4, p2, v0

    goto :goto_3

    .line 1531
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1536
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I
    .locals 10
    .parameter "serviceName"
    .parameter "uuid"
    .parameter "channel"
    .parameter "b"

    .prologue
    const/4 v9, -0x1

    .line 1922
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v9

    .line 1946
    :goto_0
    monitor-exit p0

    return v0

    .line 1925
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-lt p3, v0, :cond_1

    const/16 v0, 0x1e

    if-le p3, v0, :cond_2

    :cond_1
    move v0, v9

    .line 1927
    goto :goto_0

    .line 1929
    :cond_2
    :try_start_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->RESERVED_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1930
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to register a reserved UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 1931
    goto :goto_0

    .line 1933
    :cond_3
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    int-to-short v6, p3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/server/BluetoothService;->addRfcommServiceRecordNative(Ljava/lang/String;JJS)I

    move-result v7

    .line 1936
    .local v7, handle:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1937
    if-ne v7, v9, :cond_4

    move v0, v9

    .line 1938
    goto :goto_0

    .line 1941
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1942
    .local v8, pid:I
    iget-object v0, p0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1944
    :try_start_2
    new-instance v0, Landroid/server/BluetoothService$Reaper;

    invoke-direct {v0, p0, v7, v8}, Landroid/server/BluetoothService$Reaper;-><init>(Landroid/server/BluetoothService;II)V

    const/4 v1, 0x0

    invoke-interface {p4, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    move v0, v7

    .line 1946
    goto/16 :goto_0

    .line 1922
    .end local v7           #handle:I
    .end local v8           #pid:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1945
    .restart local v7       #handle:I
    .restart local v8       #pid:I
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method declared-synchronized attemptAutoPair(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 641
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->hasAutoPairingFailed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingBlacklisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->attempt(Ljava/lang/String;)V

    .line 644
    const-string v0, "0000"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    const/4 v0, 0x1

    .line 647
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelBondProcess(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 1382
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 1397
    :goto_0
    monitor-exit p0

    return v0

    .line 1386
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 1387
    goto :goto_0

    .line 1389
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1390
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    move v0, v3

    .line 1391
    goto :goto_0

    .line 1394
    :cond_2
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 1396
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->cancelDeviceCreationNative(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1397
    const/4 v0, 0x1

    goto :goto_0

    .line 1382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelDiscovery()Z
    .locals 3

    .prologue
    .line 1274
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1278
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->stopDiscoveryNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelPairingUserInput(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 1824
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 1841
    :goto_0
    monitor-exit p0

    return v1

    .line 1828
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    .line 1829
    goto :goto_0

    .line 1831
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v2, 0xa

    const/4 v3, 0x3

    invoke-virtual {v1, p1, v2, v3}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V

    .line 1833
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1834
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1835
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 1836
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelUserInputNative("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") called but no native data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "available, ignoring. Maybe the PasskeyAgent Request was already cancelled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "by the remote or by bluez.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 1839
    goto :goto_0

    .line 1841
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothService;->cancelPairingUserInputNative(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1824
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public connectHeadset(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    const/4 v3, 0x1

    .line 2231
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2232
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 2233
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2234
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 2235
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2236
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    move v2, v3

    .line 2239
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public connectSink(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 2255
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2256
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 2257
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2258
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2259
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2260
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2261
    const/4 v2, 0x1

    .line 2263
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized createBond(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 1324
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1333
    :goto_0
    monitor-exit p0

    return v0

    .line 1326
    :cond_0
    const v0, 0xea60

    :try_start_1
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->createPairedDeviceNative(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1327
    goto :goto_0

    .line 1330
    :cond_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    #calls: Landroid/server/BluetoothService$BondState;->setPendingOutgoingBonding(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/server/BluetoothService$BondState;->access$2200(Landroid/server/BluetoothService$BondState;Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1333
    const/4 v0, 0x1

    goto :goto_0

    .line 1324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createBondOutOfBand(Ljava/lang/String;[B[B)Z
    .locals 2
    .parameter "address"
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    const/4 v1, 0x0

    .line 1338
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->isBondingFeasible(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1348
    :goto_0
    monitor-exit p0

    return v0

    .line 1340
    :cond_0
    const v0, 0xea60

    :try_start_1
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->createPairedDeviceOutOfBandNative(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1341
    goto :goto_0

    .line 1344
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/server/BluetoothService;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    .line 1345
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    #calls: Landroid/server/BluetoothService$BondState;->setPendingOutgoingBonding(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/server/BluetoothService$BondState;->access$2200(Landroid/server/BluetoothService$BondState;Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1348
    const/4 v0, 0x1

    goto :goto_0

    .line 1338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disable()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized disable(Z)Z
    .locals 6
    .parameter "saveSetting"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 355
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v3

    .line 376
    :goto_0
    monitor-exit p0

    return v0

    :pswitch_1
    move v0, v5

    .line 359
    goto :goto_0

    .line 365
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    invoke-virtual {v0}, Landroid/server/BluetoothService$EnableThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 366
    goto :goto_0

    .line 368
    :cond_0
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->setBluetoothState(I)V

    .line 369
    iget-object v0, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    iget-object v0, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    move v3, v5

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v5

    .line 376
    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 357
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public disconnectHeadset(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 2243
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2244
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 2245
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2246
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2247
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2248
    iget-object v2, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2249
    const/4 v2, 0x1

    .line 2251
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public disconnectSink(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 2267
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2268
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 2269
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2270
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2271
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2272
    iget-object v2, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2273
    const/4 v2, 0x1

    .line 2275
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method native discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 23
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2081
    move-object/from16 v0, p0

    iget v0, v0, Landroid/server/BluetoothService;->mBluetoothState:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 2095
    :goto_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mIsAirplaneSensitive = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2096
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mIsAirplaneToggleable = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2098
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Local address = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/server/BluetoothService;->getAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2099
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Local name = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/server/BluetoothService;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2100
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "isDiscovering() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/server/BluetoothService;->isDiscovering()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2102
    new-instance v10, Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object v0, v10

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    .line 2104
    .local v10, headset:Landroid/bluetooth/BluetoothHeadset;
    const-string v19, "\n--Known devices--"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2106
    .local v3, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I

    move-result v5

    .line 2107
    .local v5, bondState:I
    const-string v19, "%s %10s (%d) %s\n"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    const/16 v21, 0x1

    invoke-static {v5}, Landroid/server/BluetoothService;->toBondStateString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService$BondState;->getAttempt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    .line 2113
    .local v17, uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-nez v17, :cond_4

    .line 2114
    const-string v19, "\tuuids = null"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2125
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/server/BluetoothService$RemoteService;

    .line 2126
    .local v15, service:Landroid/server/BluetoothService$RemoteService;
    move-object v0, v15

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2127
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\tPENDING CALLBACK: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v15

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2083
    .end local v3           #address:Ljava/lang/String;
    .end local v5           #bondState:I
    .end local v10           #headset:Landroid/bluetooth/BluetoothHeadset;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v15           #service:Landroid/server/BluetoothService$RemoteService;
    .end local v17           #uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :pswitch_0
    const-string v19, "Bluetooth OFF\n"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2170
    :cond_3
    :goto_2
    return-void

    .line 2086
    :pswitch_1
    const-string v19, "Bluetooth TURNING ON\n"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2089
    :pswitch_2
    const-string v19, "Bluetooth TURNING OFF\n"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2092
    :pswitch_3
    const-string v19, "Bluetooth ON\n"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2116
    .restart local v3       #address:Ljava/lang/String;
    .restart local v5       #bondState:I
    .restart local v10       #headset:Landroid/bluetooth/BluetoothHeadset;
    .restart local v17       #uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/ParcelUuid;

    .line 2117
    .local v16, uuid:Landroid/os/ParcelUuid;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2118
    .local v6, channel:Ljava/lang/Integer;
    if-nez v6, :cond_5

    .line 2119
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\t"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2121
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\t"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " RFCOMM channel = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2132
    .end local v3           #address:Ljava/lang/String;
    .end local v5           #bondState:I
    .end local v6           #channel:Ljava/lang/Integer;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #uuid:Landroid/os/ParcelUuid;
    .end local v17           #uuidChannels:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    :cond_6
    const-string v19, "Devices"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2133
    .local v18, value:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2134
    .local v8, devicesObjectPath:[Ljava/lang/String;
    if-eqz v18, :cond_7

    .line 2135
    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2137
    :cond_7
    const-string v19, "\n--ACL connected devices--"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2138
    if-eqz v8, :cond_8

    .line 2139
    move-object v4, v8

    .local v4, arr$:[Ljava/lang/String;
    array-length v13, v4

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_4
    if-ge v11, v13, :cond_8

    aget-object v7, v4, v11

    .line 2140
    .local v7, device:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 2146
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #device:Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    :cond_8
    const-string v19, "\n--Headset Service--"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2147
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v19

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v19

    packed-switch v19, :pswitch_data_1

    .line 2162
    :goto_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\ngetCurrentHeadset() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getBatteryUsageHint() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->getBatteryUsageHint()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2164
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->close()V

    .line 2165
    const-string v19, "\n--Application Service Records--"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 2167
    .local v9, handle:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mServiceRecordToPid:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 2168
    .local v14, pid:Ljava/lang/Integer;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\tpid "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " handle "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2149
    .end local v9           #handle:Ljava/lang/Integer;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #pid:Ljava/lang/Integer;
    :pswitch_4
    const-string v19, "getState() = STATE_DISCONNECTED"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2152
    :pswitch_5
    const-string v19, "getState() = STATE_CONNECTING"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2155
    :pswitch_6
    const-string v19, "getState() = STATE_CONNECTED"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2158
    :pswitch_7
    const-string v19, "getState() = STATE_ERROR"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2081
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 2147
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public enable()Z
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->enable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enable(Z)Z
    .locals 4
    .parameter "saveSetting"

    .prologue
    const/4 v3, 0x0

    .line 437
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mIsAirplaneSensitive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/server/BluetoothService;->mIsAirplaneToggleable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move v0, v3

    .line 453
    :goto_0
    monitor-exit p0

    return v0

    .line 444
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    move v0, v3

    .line 445
    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    invoke-virtual {v0}, Landroid/server/BluetoothService$EnableThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 448
    goto :goto_0

    .line 450
    :cond_2
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->setBluetoothState(I)V

    .line 451
    new-instance v0, Landroid/server/BluetoothService$EnableThread;

    invoke-direct {v0, p0, p1}, Landroid/server/BluetoothService$EnableThread;-><init>(Landroid/server/BluetoothService;Z)V

    iput-object v0, p0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    .line 452
    iget-object v0, p0, Landroid/server/BluetoothService;->mEnableThread:Landroid/server/BluetoothService$EnableThread;

    invoke-virtual {v0}, Landroid/server/BluetoothService$EnableThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    const/4 v0, 0x1

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z
    .locals 8
    .parameter "address"
    .parameter "uuid"
    .parameter "callback"

    .prologue
    const/4 v7, 0x0

    .line 1655
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    const-string v6, "Need BLUETOOTH permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    move v4, v7

    .line 1702
    :goto_0
    monitor-exit p0

    return v4

    .line 1658
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v7

    .line 1659
    goto :goto_0

    .line 1662
    :cond_1
    new-instance v3, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v3, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 1663
    .local v3, service:Landroid/server/BluetoothService$RemoteService;
    if-eqz p2, :cond_2

    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    move v4, v7

    .line 1666
    goto :goto_0

    .line 1669
    :cond_2
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1672
    if-eqz p2, :cond_3

    .line 1673
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    new-instance v5, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v5, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 1683
    :cond_4
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->isRemoteDeviceInCache(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1685
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1686
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_5

    move v4, v7

    goto :goto_0

    .line 1689
    :cond_5
    const-string v4, ""

    invoke-virtual {p0, v1, v4}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1694
    .end local v1           #path:Ljava/lang/String;
    .local v2, ret:Z
    :goto_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    if-eqz p2, :cond_6

    .line 1696
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    new-instance v5, Landroid/server/BluetoothService$RemoteService;

    invoke-direct {v5, p1, p2}, Landroid/server/BluetoothService$RemoteService;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    :cond_6
    iget-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1700
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1701
    iget-object v4, p0, Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1770

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v4, v2

    .line 1702
    goto :goto_0

    .line 1691
    .end local v0           #message:Landroid/os/Message;
    .end local v2           #ret:Z
    :cond_7
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->createDeviceNative(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .restart local v2       #ret:Z
    goto :goto_1

    .line 1655
    .end local v2           #ret:Z
    .end local v3           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 321
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothService;->cleanupNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    .line 325
    return-void

    .line 323
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetooth$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string v0, "Address"

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "objectPath"

    .prologue
    const/4 v4, 0x0

    const-string v6, "getAddressFromObjectPath: AdapterObjectPath:"

    const-string v5, "BluetoothService"

    .line 2194
    const-string v2, "ObjectPath"

    invoke-virtual {p0, v2}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2195
    .local v0, adapterObjectPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 2196
    :cond_0
    const-string v2, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  or deviceObjectPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 2210
    :goto_0
    return-object v2

    .line 2200
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2201
    const-string v2, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAddressFromObjectPath: AdapterObjectPath:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  is not a prefix of deviceObjectPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bluetoothd crashed ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 2204
    goto :goto_0

    .line 2206
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2207
    .local v1, address:Ljava/lang/String;
    if-eqz v1, :cond_3

    const/16 v2, 0x5f

    const/16 v3, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2209
    :cond_3
    const-string v2, "BluetoothService"

    const-string v2, "getAddressFromObjectPath: Address being returned is null"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 2210
    goto :goto_0
.end method

.method declared-synchronized getAllProperties()V
    .locals 13

    .prologue
    const-string v9, "BluetoothService"

    .line 1012
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    const-string v11, "Need BLUETOOTH permission"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v9, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 1015
    invoke-direct {p0}, Landroid/server/BluetoothService;->getAdapterPropertiesNative()[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v0, v9

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 1017
    .local v7, properties:[Ljava/lang/String;
    if-nez v7, :cond_1

    .line 1018
    const-string v9, "BluetoothService"

    const-string v10, "*Error*: GetAdapterProperties returned NULL"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1022
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_1
    array-length v9, v7

    if-ge v2, v9, :cond_7

    .line 1023
    aget-object v5, v7, v2

    .line 1024
    .local v5, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1026
    .local v6, newValue:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 1027
    const-string v9, "BluetoothService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error:Adapter Property at index"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1030
    :cond_2
    const-string v9, "Devices"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "UUIDs"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1031
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1032
    .local v8, str:Ljava/lang/StringBuilder;
    add-int/lit8 v2, v2, 0x1

    aget-object v9, v7, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1033
    .local v4, len:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    if-ge v3, v4, :cond_4

    .line 1034
    add-int/lit8 v2, v2, 0x1

    aget-object v9, v7, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1037
    :cond_4
    if-lez v4, :cond_5

    .line 1038
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1043
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v8           #str:Ljava/lang/StringBuilder;
    :cond_5
    :goto_4
    iget-object v9, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1012
    .end local v2           #i:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #newValue:Ljava/lang/String;
    .end local v7           #properties:[Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1041
    .restart local v2       #i:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #newValue:Ljava/lang/String;
    .restart local v7       #properties:[Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    :try_start_2
    aget-object v6, v7, v2

    goto :goto_4

    .line 1047
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #newValue:Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Landroid/server/BluetoothService;->getAdapterPathNative()Ljava/lang/String;

    move-result-object v1

    .line 1048
    .local v1, adapterPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1049
    iget-object v9, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    const-string v10, "ObjectPath"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/dev_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter "address"

    .prologue
    .line 2350
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getAuthorizationAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2351
    .local v0, data:Ljava/lang/Integer;
    return-object v0
.end method

.method public getBluetoothState()I
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I

    return v0
.end method

.method public declared-synchronized getBondState(Ljava/lang/String;)I
    .locals 3
    .parameter "address"

    .prologue
    .line 1433
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1435
    const/high16 v0, -0x8000

    .line 1437
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDeviceOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Landroid/util/Pair;
    .locals 2
    .parameter "device"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    .line 1369
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method public declared-synchronized getDiscoverableTimeout()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1238
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    const/4 v2, 0x1

    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bt_discoverable_when_turn_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1241
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_discoverability_timeout"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1243
    .local v0, result:I
    if-eq v0, v6, :cond_0

    move v2, v0

    .line 1252
    .end local v0           #result:I
    :goto_0
    monitor-exit p0

    return v2

    .line 1248
    :cond_0
    :try_start_1
    const-string v2, "DiscoverableTimeout"

    invoke-virtual {p0, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1249
    .local v1, timeout:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v6

    .line 1252
    goto :goto_0

    .line 1238
    .end local v1           #timeout:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getDockPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIncomingState(Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .parameter "address"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2377
    iget-object v0, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2378
    invoke-direct {p0}, Landroid/server/BluetoothService;->createIncomingConnectionStateFile()V

    .line 2379
    invoke-direct {p0}, Landroid/server/BluetoothService;->readIncomingConnectionState()V

    .line 2381
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v0, "Name"

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "address"

    .prologue
    .line 2214
    const-string v1, "ObjectPath"

    invoke-virtual {p0, v1}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2215
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2216
    const-string v1, "BluetoothService"

    const-string v2, "Error: Object Path is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    const/4 v1, 0x0

    .line 2220
    :goto_0
    return-object v1

    .line 2219
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    const-string v3, "_"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2220
    goto :goto_0
.end method

.method declared-synchronized getPendingOutgoingBonding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 672
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0}, Landroid/server/BluetoothService$BondState;->getPendingOutgoingBonding()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 1189
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1190
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 1194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1195
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1196
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getAllProperties()V

    .line 1197
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteClass(Ljava/lang/String;)I
    .locals 5
    .parameter "address"

    .prologue
    const/high16 v4, -0x100

    .line 1603
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1604
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    .line 1611
    :goto_0
    monitor-exit p0

    return v1

    .line 1607
    :cond_0
    :try_start_1
    const-string v1, "Class"

    invoke-virtual {p0, p1, v1}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1608
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_1

    move v1, v4

    .line 1609
    goto :goto_0

    .line 1611
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1603
    .end local v0           #val:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 1468
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1471
    .end local p0
    :goto_0
    return-object v1

    .line 1470
    .restart local p0
    :cond_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1471
    .local v0, objectPath:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->getDevicePropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    move-object v1, p0

    goto :goto_0
.end method

.method declared-synchronized getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "address"
    .parameter "property"

    .prologue
    .line 1475
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1476
    .local v0, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1477
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1486
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1482
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1483
    invoke-virtual {p0, p1, p2}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1485
    :cond_1
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemoteDeviceProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "not present:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1486
    const/4 v1, 0x0

    goto :goto_0

    .line 1475
    .end local v0           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getRemoteName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    .line 1222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    const/4 v0, 0x0

    .line 1226
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "Name"

    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    .locals 5
    .parameter "address"
    .parameter "uuid"

    .prologue
    const/4 v4, -0x1

    .line 1716
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 1731
    .end local p0
    :goto_0
    return v1

    .line 1719
    .restart local p0
    :cond_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1720
    const/high16 v1, -0x8000

    goto :goto_0

    .line 1723
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1724
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    .line 1725
    goto :goto_0

    .line 1728
    :cond_2
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1729
    .local v0, value:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1730
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .restart local p0
    :cond_3
    move v1, v4

    .line 1731
    goto :goto_0
.end method

.method public declared-synchronized getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .locals 3
    .parameter "address"

    .prologue
    .line 1622
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1624
    const/4 v0, 0x0

    .line 1626
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScanMode()I
    .locals 5

    .prologue
    const-string/jumbo v2, "true"

    .line 1256
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1258
    const/16 v2, 0x14

    .line 1262
    :goto_0
    monitor-exit p0

    return v2

    .line 1260
    :cond_0
    :try_start_1
    const-string v2, "Pairable"

    invoke-virtual {p0, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1261
    .local v1, pairable:Z
    const-string v2, "Discoverable"

    invoke-virtual {p0, v2}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1262
    .local v0, discoverable:Z
    invoke-static {v1, v0}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 1256
    .end local v0           #discoverable:Z
    .end local v1           #pairable:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getTrustState(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 1579
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1580
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    .line 1588
    :goto_0
    monitor-exit p0

    return v1

    .line 1584
    :cond_0
    :try_start_1
    const-string v1, "Trusted"

    invoke-virtual {p0, p1, v1}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1585
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_1

    move v1, v4

    .line 1586
    goto :goto_0

    .line 1588
    :cond_1
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0

    .line 1579
    .end local v0           #val:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized initAfterRegistration()V
    .locals 3

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 314
    new-instance v0, Landroid/server/BluetoothEventLoop;

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v0, v1, v2, p0}, Landroid/server/BluetoothEventLoop;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/server/BluetoothService;)V

    iput-object v0, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isAdapterPropertiesEmpty()Z
    .locals 1

    .prologue
    .line 1007
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBluetoothDock(Ljava/lang/String;)Z
    .locals 4
    .parameter "address"

    .prologue
    .line 1457
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_service_settings"

    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1460
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dock_bluetooth_address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 1457
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isDiscovering()Z
    .locals 3

    .prologue
    .line 1282
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    iget-boolean v0, p0, Landroid/server/BluetoothService;->mIsDiscovering:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    return v0
.end method

.method isRemoteDeviceInCache(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 1464
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized listBonds()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1424
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService$BondState;->listInState(I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized listInState(I)[Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 1429
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->listInState(I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized makeServiceChannelCallbacks(Ljava/lang/String;)V
    .locals 6
    .parameter "address"

    .prologue
    .line 2061
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2062
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2063
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/server/BluetoothService$RemoteService;

    .line 2064
    .local v3, service:Landroid/server/BluetoothService$RemoteService;
    iget-object v4, v3, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2065
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up failed UUID channel lookup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2067
    iget-object v4, p0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2068
    .local v0, callback:Landroid/bluetooth/IBluetoothCallback;
    if-eqz v0, :cond_1

    .line 2070
    const/4 v4, -0x1

    :try_start_1
    invoke-interface {v0, v4}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2074
    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2061
    .end local v0           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v3           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2071
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothCallback;
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v3       #service:Landroid/server/BluetoothService$RemoteService;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "BluetoothService"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2077
    .end local v0           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public notifyConnectA2dp(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 2309
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2311
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 2312
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2313
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x67

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2314
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2315
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2316
    const/4 v2, 0x1

    .line 2318
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method notifyIncomingA2dpConnection(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 2334
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2336
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 2337
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2338
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2339
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2340
    const/4 v2, 0x1

    .line 2342
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyIncomingConnection(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 2322
    iget-object v2, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 2324
    .local v1, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v1, :cond_0

    .line 2325
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2326
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2327
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2328
    const/4 v2, 0x1

    .line 2330
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method declared-synchronized onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .locals 2
    .parameter "address"
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 651
    monitor-enter p0

    if-nez p2, :cond_1

    .line 652
    const/16 v0, 0xc

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 653
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 656
    :cond_1
    if-ne p2, v1, :cond_2

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->getAttempt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 658
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->addAutoPairingFailure(Ljava/lang/String;)V

    .line 659
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 660
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    :try_start_2
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 662
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothService;->pairingAttempt(Ljava/lang/String;I)V

    goto :goto_0

    .line 664
    :cond_3
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, p2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 665
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService$BondState;->clearPinAttempts(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized readOutOfBandData()[B
    .locals 3

    .prologue
    .line 1374
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1378
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->readAdapterOutOfBandDataNative()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeBond(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 1401
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 1413
    :goto_0
    monitor-exit p0

    return v1

    .line 1405
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    .line 1406
    goto :goto_0

    .line 1408
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProfileState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 1409
    .local v0, state:Landroid/bluetooth/BluetoothDeviceProfileState;
    if-eqz v0, :cond_2

    .line 1410
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1411
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    .line 1413
    goto :goto_0

    .line 1401
    .end local v0           #state:Landroid/bluetooth/BluetoothDeviceProfileState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeBondInternal(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 1419
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->setTrust(Ljava/lang/String;Z)Z

    .line 1420
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothService;->removeDeviceNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeRemoteDeviceProperties(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 1539
    iget-object v0, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    return-void
.end method

.method public removeServiceRecord(I)V
    .locals 3
    .parameter "handle"

    .prologue
    .line 1950
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V

    .line 1953
    return-void
.end method

.method declared-synchronized restart()V
    .locals 2

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/server/BluetoothService;->mBluetoothState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 465
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 461
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/server/BluetoothService;->mRestart:Z

    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/server/BluetoothService;->disable(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothService;->mRestart:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendProfileStateMessage(II)V
    .locals 2
    .parameter "profile"
    .parameter "cmd"

    .prologue
    .line 2355
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2356
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2357
    if-nez p1, :cond_1

    .line 2358
    iget-object v1, p0, Landroid/server/BluetoothService;->mHfpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 2362
    :cond_0
    :goto_0
    return-void

    .line 2359
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2360
    iget-object v1, p0, Landroid/server/BluetoothService;->mA2dpProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method declared-synchronized sendUuidIntent(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 2049
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothService;->getUuidFromCache(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 2050
    .local v1, uuid:[Landroid/os/ParcelUuid;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bleutooth.device.action.UUID"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2051
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2052
    const-string v2, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2053
    iget-object v2, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2055
    iget-object v2, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2056
    iget-object v2, p0, Landroid/server/BluetoothService;->mUuidIntentTracker:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2058
    :cond_0
    monitor-exit p0

    return-void

    .line 2049
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uuid:[Landroid/os/ParcelUuid;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method setA2dpService(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter "a2dpService"

    .prologue
    .line 2346
    iput-object p1, p0, Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;

    .line 2347
    return-void
.end method

.method native setAuthorizationNative(Ljava/lang/String;ZI)Z
.end method

.method declared-synchronized setBondState(Ljava/lang/String;I)Z
    .locals 1
    .parameter "address"
    .parameter "state"

    .prologue
    .line 1441
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setBondState(Ljava/lang/String;II)Z
    .locals 2
    .parameter "address"
    .parameter "state"
    .parameter "reason"

    .prologue
    .line 1451
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothService$BondState;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z
    .locals 4
    .parameter "address"
    .parameter "hash"
    .parameter "randomizer"

    .prologue
    const-string v1, ":"

    .line 1353
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1365
    :goto_0
    monitor-exit p0

    return v1

    .line 1357
    :cond_0
    :try_start_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1360
    .local v0, value:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting out of band data for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1364
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1365
    const/4 v1, 0x1

    goto :goto_0

    .line 1353
    .end local v0           #value:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDiscoverableTimeout(I)Z
    .locals 4
    .parameter "timeout"

    .prologue
    .line 1097
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bt_discoverable_when_turn_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1101
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_discoverability_timeout"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1105
    :cond_0
    const-string v0, "DiscoverableTimeout"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyInteger(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1097
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setIsDiscovering(Z)V
    .locals 0
    .parameter "isDiscovering"

    .prologue
    .line 1287
    iput-boolean p1, p0, Landroid/server/BluetoothService;->mIsDiscovering:Z

    .line 1288
    return-void
.end method

.method setLinkTimeout(Ljava/lang/String;I)V
    .locals 4
    .parameter "address"
    .parameter "num_slots"

    .prologue
    .line 2224
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2225
    .local v0, path:Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Landroid/server/BluetoothService;->setLinkTimeoutNative(Ljava/lang/String;I)Z

    move-result v1

    .line 2227
    .local v1, result:Z
    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Link Timeout to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slots failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 2228
    :cond_0
    return-void
.end method

.method public declared-synchronized setName(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 1057
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    if-nez p1, :cond_0

    .line 1060
    const/4 v0, 0x0

    .line 1062
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "Name"

    invoke-direct {p0, v0, p1}, Landroid/server/BluetoothService;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1057
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPairingConfirmation(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "address"
    .parameter "confirm"

    .prologue
    const/4 v4, 0x0

    .line 1782
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 1794
    :goto_0
    monitor-exit p0

    return v1

    .line 1786
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1787
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1788
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1789
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPasskey("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") called but no native data available, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or by bluez.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 1792
    goto :goto_0

    .line 1794
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPairingConfirmationNative(Ljava/lang/String;ZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1782
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPasskey(Ljava/lang/String;I)Z
    .locals 5
    .parameter "address"
    .parameter "passkey"

    .prologue
    const/4 v4, 0x0

    .line 1763
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 1778
    :goto_0
    monitor-exit p0

    return v1

    .line 1767
    :cond_0
    if-ltz p2, :cond_1

    const v1, 0xf423f

    if-gt p2, v1, :cond_1

    :try_start_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v1, v4

    .line 1768
    goto :goto_0

    .line 1770
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1771
    iget-object v1, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v1}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1772
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_3

    .line 1773
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPasskey("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") called but no native data available, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or by bluez.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 1776
    goto :goto_0

    .line 1778
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/server/BluetoothService;->setPasskeyNative(Ljava/lang/String;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1763
    .end local v0           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPin(Ljava/lang/String;[B)Z
    .locals 7
    .parameter "address"
    .parameter "pin"

    .prologue
    const/4 v6, 0x0

    const-string v3, "BluetoothService"

    .line 1735
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    move v3, v6

    .line 1759
    :goto_0
    monitor-exit p0

    return v3

    .line 1739
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    array-length v3, p2

    if-lez v3, :cond_1

    array-length v3, p2

    const/16 v4, 0x10

    if-gt v3, v4, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v6

    .line 1741
    goto :goto_0

    .line 1743
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1744
    iget-object v3, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v3}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1745
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_3

    .line 1746
    const-string v3, "BluetoothService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPin("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") called but no native data available, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or by bluez.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v6

    .line 1749
    goto :goto_0

    .line 1754
    :cond_3
    :try_start_2
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v1, p2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1759
    .local v1, pinString:Ljava/lang/String;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v1, v3}, Landroid/server/BluetoothService;->setPinNative(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_0

    .line 1755
    .end local v1           #pinString:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1756
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    const-string v3, "BluetoothService"

    const-string v4, "UTF8 not supported?!?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v6

    .line 1757
    goto :goto_0

    .line 1735
    .end local v0           #data:Ljava/lang/Integer;
    .end local v2           #uee:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1053
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mAdapterProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    monitor-exit p0

    return-void

    .line 1053
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "address"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1544
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1545
    .local v0, propVal:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1546
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    iget-object v1, p0, Landroid/server/BluetoothService;->mDeviceProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1551
    :goto_0
    monitor-exit p0

    return-void

    .line 1549
    :cond_0
    :try_start_1
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRemoteDeviceProperty for a device not in cache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1544
    .end local v0           #propVal:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setRemoteOutOfBandData(Ljava/lang/String;)Z
    .locals 8
    .parameter "address"

    .prologue
    const/4 v7, 0x0

    .line 1798
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    move v4, v7

    .line 1820
    :goto_0
    monitor-exit p0

    return v4

    .line 1801
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 1802
    iget-object v4, p0, Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v4}, Landroid/server/BluetoothEventLoop;->getPasskeyAgentRequestData()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1803
    .local v0, data:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 1804
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRemoteOobData("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") called but no native data available, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ignoring. Maybe the PasskeyAgent Request was cancelled by the remote device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or by bluez.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 1807
    goto :goto_0

    .line 1810
    :cond_1
    iget-object v4, p0, Landroid/server/BluetoothService;->mDeviceOobData:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1812
    .local v3, val:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    if-nez v3, :cond_2

    .line 1814
    const/16 v4, 0x10

    new-array v1, v4, [B

    .line 1815
    .local v1, hash:[B
    const/16 v4, 0x10

    new-array v2, v4, [B

    .line 1820
    .local v2, randomizer:[B
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p1, v1, v2, v4}, Landroid/server/BluetoothService;->setRemoteOutOfBandDataNative(Ljava/lang/String;[B[BI)Z

    move-result v4

    goto :goto_0

    .line 1817
    .end local v1           #hash:[B
    .end local v2           #randomizer:[B
    :cond_2
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [B

    .line 1818
    .restart local v1       #hash:[B
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v2       #randomizer:[B
    goto :goto_1

    .line 1798
    .end local v0           #data:Ljava/lang/Integer;
    .end local v1           #hash:[B
    .end local v2           #randomizer:[B
    .end local v3           #val:Landroid/util/Pair;,"Landroid/util/Pair<[B[B>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized setScanMode(II)Z
    .locals 11
    .parameter "mode"
    .parameter "duration"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v4, "BluetoothService"

    .line 1133
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v6, "Need WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const/4 v3, 0x0

    .line 1136
    .local v3, pairable:Z
    const/4 v0, 0x0

    .line 1140
    .local v0, discoverable:Z
    packed-switch p1, :pswitch_data_0

    .line 1179
    :pswitch_0
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested invalid scan mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v7

    .line 1185
    :goto_0
    monitor-exit p0

    return v4

    .line 1142
    :pswitch_1
    const/4 v3, 0x0

    .line 1143
    const/4 v0, 0x0

    .line 1145
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->removeCancelDiscoverableIntent()V

    .line 1182
    :goto_1
    const-string v4, "Pairable"

    invoke-direct {p0, v4, v3}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    .line 1183
    const-string v4, "Discoverable"

    invoke-direct {p0, v4, v0}, Landroid/server/BluetoothService;->setPropertyBoolean(Ljava/lang/String;Z)Z

    move v4, v10

    .line 1185
    goto :goto_0

    .line 1149
    :pswitch_2
    const/4 v3, 0x1

    .line 1150
    const/4 v0, 0x0

    .line 1152
    invoke-direct {p0}, Landroid/server/BluetoothService;->removeCancelDiscoverableIntent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1133
    .end local v0           #discoverable:Z
    .end local v3           #pairable:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1156
    .restart local v0       #discoverable:Z
    .restart local v3       #pairable:Z
    :pswitch_3
    :try_start_2
    invoke-virtual {p0, p2}, Landroid/server/BluetoothService;->setDiscoverableTimeout(I)Z

    .line 1158
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bt_discoverable_when_turn_on"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v10, v4, :cond_1

    .line 1160
    const/4 v4, -0x1

    if-ne v4, p2, :cond_0

    .line 1161
    invoke-virtual {p0}, Landroid/server/BluetoothService;->getDiscoverableTimeout()I

    move-result p2

    .line 1164
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long v1, v4, v6

    .line 1165
    .local v1, endTimestamp:J
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setScanMode,   endTimestamp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v4, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bt_discoverable_endtimestamp"

    invoke-static {v4, v5, v1, v2}, Landroid/provider/Settings$Systemex;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1170
    .end local v1           #endTimestamp:J
    :cond_1
    const/4 v3, 0x1

    .line 1171
    const/4 v0, 0x1

    .line 1174
    invoke-direct {p0, p2}, Landroid/server/BluetoothService;->setCancelDiscoverableIntent(I)V

    .line 1176
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BT Discoverable for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1140
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized setTrust(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "address"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 1559
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1560
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    .line 1567
    :goto_0
    monitor-exit p0

    return v0

    .line 1565
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    .line 1567
    :cond_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trusted"

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v0, v1, v2}, Landroid/server/BluetoothService;->setDevicePropertyBooleanNative(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 1559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDiscovery()Z
    .locals 3

    .prologue
    .line 1266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-direct {p0}, Landroid/server/BluetoothService;->isEnabledInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1270
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/server/BluetoothService;->startDiscoveryNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateDeviceServiceChannelCache(Ljava/lang/String;)V
    .locals 19
    .parameter "address"

    .prologue
    .line 1845
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v8

    .line 1849
    .local v8, deviceUuids:[Landroid/os/ParcelUuid;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "updateDeviceServiceChannelCache("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1854
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1856
    .local v4, applicationUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    monitor-enter p0

    .line 1857
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/server/BluetoothService$RemoteService;

    .line 1858
    .local v13, service:Landroid/server/BluetoothService$RemoteService;
    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1859
    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v16, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1862
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_0
    move-exception v16

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1864
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1867
    .local v15, value:Ljava/util/Map;,"Ljava/util/Map<Landroid/os/ParcelUuid;Ljava/lang/Integer;>;"
    sget-object v5, Landroid/server/BluetoothService;->RFCOMM_UUIDS:[Landroid/os/ParcelUuid;

    .local v5, arr$:[Landroid/os/ParcelUuid;
    array-length v12, v5

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v12, :cond_3

    aget-object v14, v5, v10

    .line 1868
    .local v14, uuid:Landroid/os/ParcelUuid;
    invoke-static {v8, v14}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1869
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v14}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/server/BluetoothService;->getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 1871
    .local v7, channel:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\tuuid(system): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1872
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v15

    move-object v1, v14

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    .end local v7           #channel:I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1876
    .end local v14           #uuid:Landroid/os/ParcelUuid;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/ParcelUuid;

    .line 1877
    .restart local v14       #uuid:Landroid/os/ParcelUuid;
    invoke-static {v8, v14}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1878
    invoke-virtual/range {p0 .. p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v14}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/server/BluetoothService;->getDeviceServiceChannelNative(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 1880
    .restart local v7       #channel:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\tuuid(application): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1881
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v15

    move-object v1, v14

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1885
    .end local v7           #channel:I
    .end local v14           #uuid:Landroid/os/ParcelUuid;
    :cond_5
    monitor-enter p0

    .line 1887
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1888
    .end local v4           #applicationUuids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    .local v11, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1889
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/server/BluetoothService$RemoteService;

    .line 1890
    .restart local v13       #service:Landroid/server/BluetoothService$RemoteService;
    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1891
    const/4 v7, -0x1

    .line 1892
    .restart local v7       #channel:I
    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_7

    .line 1893
    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1895
    :cond_7
    const/16 v16, -0x1

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    .line 1896
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Making callback for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v13

    iget-object v0, v0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " with result "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V

    .line 1898
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mUuidCallbackTracker:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/IBluetoothCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1899
    .local v6, callback:Landroid/bluetooth/IBluetoothCallback;
    if-eqz v6, :cond_8

    .line 1901
    :try_start_3
    invoke-interface {v6, v7}, Landroid/bluetooth/IBluetoothCallback;->onRfcommChannelFound(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1905
    :cond_8
    :goto_4
    :try_start_4
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 1912
    .end local v6           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v7           #channel:I
    .end local v11           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .end local v13           #service:Landroid/server/BluetoothService$RemoteService;
    :catchall_1
    move-exception v16

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v16

    .line 1902
    .restart local v6       #callback:Landroid/bluetooth/IBluetoothCallback;
    .restart local v7       #channel:I
    .restart local v11       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/server/BluetoothService$RemoteService;>;"
    .restart local v13       #service:Landroid/server/BluetoothService$RemoteService;
    :catch_0
    move-exception v9

    .local v9, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v16, "BluetoothService"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1911
    .end local v6           #callback:Landroid/bluetooth/IBluetoothCallback;
    .end local v7           #channel:I
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v13           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService;->mDeviceServiceChannelCache:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1913
    return-void
.end method

.method declared-synchronized updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 1490
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1491
    .local v0, propValues:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1492
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothService;->addRemoteDeviceProperties(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1493
    const/4 v1, 0x1

    .line 1495
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1490
    .end local v0           #propValues:[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public writeIncomingConnectionState(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 11
    .parameter "address"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, data:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v7, ","

    .line 2440
    iget-object v8, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    monitor-enter v8

    .line 2441
    :try_start_0
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2443
    invoke-direct {p0}, Landroid/server/BluetoothService;->truncateIncomingConnectionFile()V

    .line 2444
    const/4 v3, 0x0

    .line 2445
    .local v3, out:Ljava/io/BufferedWriter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2447
    .local v6, value:Ljava/lang/StringBuilder;
    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const-string v9, "/data/misc/bluetooth/incoming_connection.conf"

    const/4 v10, 0x1

    invoke-direct {v7, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2448
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_2
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2449
    .local v0, devAddress:Ljava/lang/String;
    iget-object v7, p0, Landroid/server/BluetoothService;->mIncomingConnections:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 2450
    .local v5, val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2451
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2452
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2453
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2454
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2455
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 2458
    .end local v0           #devAddress:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #val:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    move-object v1, v7

    move-object v3, v4

    .line 2459
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_1
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: writeIncomingConnectionState"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2463
    if-eqz v3, :cond_0

    .line 2465
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2471
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2472
    return-void

    .line 2457
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_1
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2463
    if-eqz v4, :cond_2

    .line 2465
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2
    :goto_3
    move-object v3, v4

    .line 2470
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 2460
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 2461
    .local v1, e:Ljava/io/IOException;
    :goto_4
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: writeIncomingConnectionState"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothService;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2463
    if-eqz v3, :cond_0

    .line 2465
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 2466
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_2

    .line 2463
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_3

    .line 2465
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 2463
    :cond_3
    :goto_6
    :try_start_b
    throw v7

    .line 2471
    .end local v3           #out:Ljava/io/BufferedWriter;
    .end local v6           #value:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v7

    .line 2466
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v6       #value:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v9

    goto :goto_6

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v7

    goto :goto_3

    .line 2463
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 2460
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v7

    move-object v1, v7

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 2458
    :catch_6
    move-exception v7

    move-object v1, v7

    goto :goto_1
.end method
