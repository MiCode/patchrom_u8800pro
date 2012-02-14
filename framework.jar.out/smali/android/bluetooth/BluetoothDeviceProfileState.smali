.class public final Landroid/bluetooth/BluetoothDeviceProfileState;
.super Lcom/android/internal/util/HierarchicalStateMachine;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;,
        Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;,
        Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;,
        Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;,
        Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;,
        Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;,
        Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;
    }
.end annotation


# static fields
.field private static final AUTO_CONNECT_DELAY:I = 0x1770

.field public static final AUTO_CONNECT_PROFILES:I = 0x65

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final CONNECTION_ACCESS_REQUEST_EXPIRY:I = 0x69

.field private static final CONNECTION_ACCESS_REQUEST_EXPIRY_TIMEOUT:I = 0x1b58

.field private static final CONNECTION_ACCESS_REQUEST_REPLY:I = 0x68

.field private static final CONNECTION_ACCESS_UNDEFINED:I = -0x1

.field public static final CONNECT_A2DP_INCOMING:I = 0x4

.field public static final CONNECT_A2DP_OUTGOING:I = 0x3

.field public static final CONNECT_HFP_INCOMING:I = 0x2

.field public static final CONNECT_HFP_OUTGOING:I = 0x1

.field public static final CONNECT_OTHER_PROFILES:I = 0x67

.field private static final CONNECT_OTHER_PROFILES_DELAY:I = 0xfa0

.field private static final DBG:Z = false

.field public static final DISCONNECT_A2DP_INCOMING:I = 0x8

.field public static final DISCONNECT_A2DP_OUTGOING:I = 0x7

.field private static final DISCONNECT_HFP_INCOMING:I = 0x6

.field public static final DISCONNECT_HFP_OUTGOING:I = 0x5

.field public static final DISCONNECT_PBAP_OUTGOING:I = 0x9

.field private static final INIT_INCOMING_REJECT_TIMER:J = 0x3e8L

.field private static final MAX_INCOMING_REJECT_TIMER:J = 0xdbba00L

.field private static final PREFS_NAME:Ljava/lang/String; = "ConnectionAccess"

.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceProfileState"

.field public static final TRANSITION_TO_STABLE:I = 0x66

.field public static final UNPAIR:I = 0x64


# instance fields
.field private mA2dpService:Landroid/server/BluetoothA2dpService;

.field private mA2dpState:I

.field private mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectionAccessReplyReceived:Z

.field private mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

.field private mHeadsetServiceConnected:Z

.field private mHeadsetState:I

.field private mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

.field private mIncomingConnections:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

.field private mIncomingRejectTimer:J

.field private mOutgoingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

.field private mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

.field private mPbapService:Landroid/bluetooth/BluetoothPbap;

.field private mPbapServiceConnected:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mService:Landroid/server/BluetoothService;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/server/BluetoothService;Landroid/server/BluetoothA2dpService;)V
    .locals 7
    .parameter "context"
    .parameter "address"
    .parameter "service"
    .parameter "a2dpService"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 194
    invoke-direct {p0, p2}, Lcom/android/internal/util/HierarchicalStateMachine;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v3, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    invoke-direct {v3, p0, v4}, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V

    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    .line 96
    new-instance v3, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    invoke-direct {v3, p0, v4}, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V

    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    .line 97
    new-instance v3, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    invoke-direct {v3, p0, v4}, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V

    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    .line 98
    new-instance v3, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    invoke-direct {v3, p0, v4}, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V

    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    .line 99
    new-instance v3, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

    invoke-direct {v3, p0, v4}, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V

    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

    .line 114
    iput-boolean v6, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z

    .line 119
    new-instance v3, Landroid/bluetooth/BluetoothDeviceProfileState$1;

    invoke-direct {v3, p0}, Landroid/bluetooth/BluetoothDeviceProfileState$1;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    .line 196
    new-instance v3, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v3, p2}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 197
    iput-object p3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    .line 198
    iput-object p4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    .line 200
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->addState(Lcom/android/internal/util/HierarchicalState;)V

    .line 201
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->addState(Lcom/android/internal/util/HierarchicalState;)V

    .line 202
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->addState(Lcom/android/internal/util/HierarchicalState;)V

    .line 203
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->addState(Lcom/android/internal/util/HierarchicalState;)V

    .line 204
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->addState(Lcom/android/internal/util/HierarchicalState;)V

    .line 205
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->setInitialState(Lcom/android/internal/util/HierarchicalState;)V

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 209
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v3, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v3, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    new-instance v1, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    .line 218
    .local v1, l:Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;
    new-instance v2, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    .line 222
    .local v2, p:Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p2}, Landroid/server/BluetoothService;->getIncomingState(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    .line 223
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->readTimerValue()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    .line 224
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPowerManager:Landroid/os/PowerManager;

    .line 225
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPowerManager:Landroid/os/PowerManager;

    const v4, 0x30000006

    const-string v5, "BluetoothDeviceProfileState"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 228
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 229
    return-void
.end method

.method static synthetic access$1000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/bluetooth/BluetoothDeviceProfileState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetServiceConnected:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetServiceConnected:Z

    return p1
.end method

.method static synthetic access$1302(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapService:Landroid/bluetooth/BluetoothPbap;

    return-object p1
.end method

.method static synthetic access$1402(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapServiceConnected:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5100(Landroid/bluetooth/BluetoothDeviceProfileState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z

    return v0
.end method

.method static synthetic access$5102(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z

    return p1
.end method

.method static synthetic access$5200(Landroid/bluetooth/BluetoothDeviceProfileState;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendConnectionAccessRemovalIntent()V

    return-void
.end method

.method static synthetic access$5400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5900(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$600(Landroid/bluetooth/BluetoothDeviceProfileState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V

    return-void
.end method

.method static synthetic access$6000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$6500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6900(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$700(Landroid/bluetooth/BluetoothDeviceProfileState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I

    return v0
.end method

.method static synthetic access$7000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Landroid/bluetooth/BluetoothDeviceProfileState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I

    return p1
.end method

.method static synthetic access$7100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$800(Landroid/bluetooth/BluetoothDeviceProfileState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpState:I

    return v0
.end method

.method static synthetic access$802(Landroid/bluetooth/BluetoothDeviceProfileState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpState:I

    return p1
.end method

.method static synthetic access$900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private getStringValue(J)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 828
    .local v0, sbr:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTrust()I
    .locals 2

    .prologue
    .line 820
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, address:Ljava/lang/String;
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 822
    :goto_0
    return v1

    .restart local p0
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private handleConnectionOfOtherProfiles(I)V
    .locals 8
    .parameter "command"

    .prologue
    const-wide/16 v6, 0xfa0

    const/16 v5, 0x3e8

    const/16 v4, 0x67

    const/16 v3, 0x64

    .line 1008
    packed-switch p1, :pswitch_data_0

    .line 1038
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1012
    :pswitch_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/server/BluetoothA2dpService;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/server/BluetoothA2dpService;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 1015
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1016
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1017
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1018
    invoke-virtual {p0, v0, v6, v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 1025
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 1028
    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1029
    .restart local v0       #msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1030
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1031
    invoke-virtual {p0, v0, v6, v7}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 1008
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleIncomingConnection(IZ)Z
    .locals 8
    .parameter "command"
    .parameter "accept"

    .prologue
    const/16 v6, 0x66

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const-string v7, "BluetoothDeviceProfileState"

    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, ret:Z
    const-string v1, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingConnection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    packed-switch p1, :pswitch_data_0

    .line 796
    :pswitch_0
    const-string v1, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for incoming connection but state changed to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_0
    :goto_0
    return v0

    .line 771
    :pswitch_1
    if-nez p2, :cond_1

    .line 772
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 773
    invoke-virtual {p0, v6}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 774
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->updateIncomingAllowedTimer()V

    goto :goto_0

    .line 775
    :cond_1
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I

    if-ne v1, v5, :cond_2

    .line 776
    invoke-direct {p0, v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->writeTimerValue(J)V

    .line 777
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0

    .line 778
    :cond_2
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I

    if-nez v1, :cond_0

    .line 779
    invoke-direct {p0, v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->writeTimerValue(J)V

    .line 780
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->handleConnectionOfOtherProfiles(I)V

    .line 781
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->createIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0

    .line 785
    :pswitch_2
    if-nez p2, :cond_3

    .line 786
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/server/BluetoothA2dpService;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    .line 787
    invoke-virtual {p0, v6}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 788
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->updateIncomingAllowedTimer()V

    goto :goto_0

    .line 790
    :cond_3
    invoke-direct {p0, v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->writeTimerValue(J)V

    .line 791
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v5}, Landroid/server/BluetoothA2dpService;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    .line 792
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->handleConnectionOfOtherProfiles(I)V

    goto :goto_0

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "autoConnectDevice"

    .prologue
    const/4 v7, 0x0

    .line 179
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 180
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 181
    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 182
    .local v2, state:I
    if-eqz v2, :cond_0

    .line 183
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 184
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    const/4 v3, 0x1

    .line 189
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :goto_0
    return v3

    :cond_0
    move v3, v7

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 1048
    return-void
.end method

.method private readIncomingAllowedValue()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 869
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->readTimerValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    move v6, v10

    .line 879
    :goto_0
    return v6

    .line 870
    :cond_0
    iget-object v6, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 871
    .local v5, value:Ljava/lang/String;
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, splits:[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 873
    aget-object v6, v0, v11

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 874
    .local v1, val1:J
    aget-object v6, v0, v10

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 875
    .local v3, val2:J
    add-long v6, v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    move v6, v10

    .line 876
    goto :goto_0

    .end local v1           #val1:J
    .end local v3           #val2:J
    :cond_1
    move v6, v11

    .line 879
    goto :goto_0
.end method

.method private readTimerValue()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 858
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    if-nez v2, :cond_0

    move-wide v2, v4

    .line 865
    :goto_0
    return-wide v2

    .line 860
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 861
    .local v1, value:Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, splits:[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 863
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v4

    .line 865
    goto :goto_0
.end method

.method private sendConnectionAccessIntent()V
    .locals 3

    .prologue
    .line 803
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mConnectionAccessReplyReceived:Z

    .line 805
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 807
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 809
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method private sendConnectionAccessRemovalIntent()V
    .locals 3

    .prologue
    .line 813
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 814
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 815
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 816
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method private setTrust(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 836
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    if-nez v1, :cond_0

    .line 837
    const-wide/16 v1, 0x3e8

    invoke-direct {p0, v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->getStringValue(J)Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, second:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    .line 843
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    invoke-virtual {v1, v2, v3}, Landroid/server/BluetoothService;->writeIncomingConnectionState(Ljava/lang/String;Landroid/util/Pair;)V

    .line 844
    return-void

    .line 839
    .end local v0           #second:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .restart local v0       #second:Ljava/lang/String;
    goto :goto_0
.end method

.method private updateIncomingAllowedTimer()V
    .locals 6

    .prologue
    const-wide/32 v4, 0xdbba00

    .line 757
    iget-wide v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    .line 759
    :cond_0
    iget-wide v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    const-wide/16 v2, 0x5

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    .line 760
    iget-wide v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 761
    iput-wide v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    .line 763
    :cond_1
    iget-wide v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingRejectTimer:J

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->writeTimerValue(J)V

    .line 764
    return-void
.end method

.method private writeTimerValue(J)V
    .locals 4
    .parameter "value"

    .prologue
    .line 848
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    if-nez v1, :cond_0

    .line 849
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 853
    .local v0, first:Ljava/lang/Integer;
    :goto_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothDeviceProfileState;->getStringValue(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    .line 854
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    invoke-virtual {v1, v2, v3}, Landroid/server/BluetoothService;->writeIncomingConnectionState(Ljava/lang/String;Landroid/util/Pair;)V

    .line 855
    return-void

    .line 851
    .end local v0           #first:Ljava/lang/Integer;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingConnections:Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .restart local v0       #first:Ljava/lang/Integer;
    goto :goto_0
.end method


# virtual methods
.method declared-synchronized cancelCommand(I)V
    .locals 1
    .parameter "command"

    .prologue
    .line 737
    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 739
    :try_start_0
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetServiceConnected:Z

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->cancelConnectThread()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    :cond_0
    monitor-exit p0

    return-void

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized deferProfileServiceMessage(I)V
    .locals 2
    .parameter "command"

    .prologue
    .line 748
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 749
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 750
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    monitor-exit p0

    return-void

    .line 748
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method declared-synchronized processCommand(I)Z
    .locals 9
    .parameter "command"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 883
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothDeviceProfileState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing command:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    sparse-switch p1, :sswitch_data_0

    .line 977
    const-string v3, "BluetoothDeviceProfileState"

    const-string v4, "Error: Unknown Command"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    move v3, v7

    .line 979
    :goto_1
    monitor-exit p0

    return v3

    .line 887
    :sswitch_0
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_0

    .line 888
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadset;->connectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    goto :goto_1

    .line 892
    :sswitch_1
    iget-boolean v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetServiceConnected:Z

    if-nez v3, :cond_1

    .line 893
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferProfileServiceMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 883
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 896
    :cond_1
    :try_start_2
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getTrust()I

    move-result v0

    .line 897
    .local v0, access:I
    if-ne v0, v6, :cond_2

    .line 898
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z

    :goto_2
    move v3, v6

    .line 908
    goto :goto_1

    .line 899
    :cond_2
    if-ne v0, v8, :cond_3

    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->readIncomingAllowedValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 901
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z

    goto :goto_2

    .line 903
    :cond_3
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendConnectionAccessIntent()V

    .line 904
    const/16 v3, 0x69

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 905
    .local v2, msg:Landroid/os/Message;
    const-wide/16 v3, 0x1b58

    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_2

    .line 912
    .end local v0           #access:I
    .end local v2           #msg:Landroid/os/Message;
    :sswitch_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    if-eqz v3, :cond_0

    .line 913
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/server/BluetoothA2dpService;->connectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    goto :goto_1

    .line 918
    :sswitch_3
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->getTrust()I

    move-result v0

    .line 919
    .restart local v0       #access:I
    if-ne v0, v6, :cond_4

    .line 920
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z

    :goto_3
    move v3, v6

    .line 930
    goto :goto_1

    .line 921
    :cond_4
    if-ne v0, v8, :cond_5

    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->readIncomingAllowedValue()Z

    move-result v3

    if-nez v3, :cond_5

    .line 923
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->handleIncomingConnection(IZ)Z

    goto :goto_3

    .line 925
    :cond_5
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendConnectionAccessIntent()V

    .line 926
    const/16 v3, 0x69

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 927
    .restart local v2       #msg:Landroid/os/Message;
    const-wide/16 v3, 0x1b58

    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_3

    .line 932
    .end local v0           #access:I
    .end local v2           #msg:Landroid/os/Message;
    :sswitch_4
    iget-boolean v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetServiceConnected:Z

    if-nez v3, :cond_6

    .line 933
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferProfileServiceMessage(I)V

    goto :goto_0

    .line 937
    :cond_6
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 938
    .local v1, m:Landroid/os/Message;
    const/16 v3, 0x9

    iput v3, v1, Landroid/os/Message;->what:I

    .line 939
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V

    .line 942
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_7

    .line 945
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 947
    :cond_7
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadset;->disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    goto/16 :goto_1

    .end local v1           #m:Landroid/os/Message;
    :sswitch_5
    move v3, v6

    .line 952
    goto/16 :goto_1

    :sswitch_6
    move v3, v6

    .line 955
    goto/16 :goto_1

    .line 957
    :sswitch_7
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    if-eqz v3, :cond_0

    .line 958
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/server/BluetoothA2dpService;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_8

    .line 960
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/server/BluetoothA2dpService;->setSinkPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 962
    :cond_8
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/server/BluetoothA2dpService;->disconnectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    goto/16 :goto_1

    .line 966
    :sswitch_8
    iget-boolean v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapServiceConnected:Z

    if-nez v3, :cond_9

    .line 967
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->deferProfileServiceMessage(I)V

    goto/16 :goto_0

    .line 969
    :cond_9
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapService:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPbap;->disconnect()Z

    move-result v3

    goto/16 :goto_1

    .line 973
    :sswitch_9
    const-wide/16 v3, 0x3e8

    invoke-direct {p0, v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->writeTimerValue(J)V

    .line 974
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->setTrust(I)V

    .line 975
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->removeBondInternal(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    goto/16 :goto_1

    .line 885
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_7
        0x8 -> :sswitch_6
        0x9 -> :sswitch_8
        0x64 -> :sswitch_9
    .end sparse-switch
.end method
