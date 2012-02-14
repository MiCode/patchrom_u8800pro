.class Landroid/server/BluetoothEventLoop;
.super Ljava/lang/Object;
.source "BluetoothEventLoop.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CREATE_DEVICE_ALREADY_EXISTS:I = 0x1

.field private static final CREATE_DEVICE_FAILED:I = -0x1

.field private static final CREATE_DEVICE_SUCCESS:I = 0x0

.field private static final DBG:Z = false

.field private static final EVENT_AGENT_CANCEL:I = 0x3

.field private static final EVENT_PAIRING_CONSENT_DELAYED_ACCEPT:I = 0x2

.field private static final EVENT_RESTART_BLUETOOTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothEventLoop"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAuthorizationAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInterrupted:Z

.field private mNativeData:I

.field private final mPasskeyAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 101
    invoke-static {}, Landroid/server/BluetoothEventLoop;->classInitNative()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/server/BluetoothService;)V
    .locals 1
    .parameter "context"
    .parameter "adapter"
    .parameter "bluetoothService"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/server/BluetoothEventLoop$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothEventLoop$1;-><init>(Landroid/server/BluetoothEventLoop;)V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    .line 106
    iput-object p3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    .line 107
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    .line 110
    iput-object p2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 111
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->initializeNativeDataNative()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method private addDevice(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 150
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1, p2}, Landroid/server/BluetoothService;->addRemoteDeviceProperties(Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v6, "RSSI"

    invoke-virtual {v5, p1, v6}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, rssi:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v6, "Class"

    invoke-virtual {v5, p1, v6}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, classValue:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v6, "Name"

    invoke-virtual {v5, p1, v6}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, name:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 158
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-short v4, v5

    .line 162
    .local v4, rssiValue:S
    :goto_0
    if-eqz v0, :cond_1

    .line 163
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.bluetooth.device.action.FOUND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    const-string v5, "android.bluetooth.device.extra.CLASS"

    new-instance v6, Landroid/bluetooth/BluetoothClass;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    const-string v5, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 168
    const-string v5, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 174
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 160
    .end local v4           #rssiValue:S
    :cond_0
    const/16 v4, -0x8000

    .restart local v4       #rssiValue:S
    goto :goto_0

    .line 172
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for remote device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    const/4 v3, 0x0

    .line 371
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 373
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Unable to get device address in checkPairingRequestAndGetAddress, returning null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 392
    :goto_0
    return-object v1

    .line 377
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 378
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 382
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->cancelPairingUserInput(Ljava/lang/String;)Z

    move-object v1, v3

    .line 383
    goto :goto_0

    .line 390
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    .line 391
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    :cond_2
    move-object v1, v0

    .line 392
    goto :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native initializeNativeDataNative()V
.end method

.method private native isEventLoopRunningNative()Z
.end method

.method private isOtherSinkInNonDisconnectingState(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v5, 0x0

    .line 562
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 563
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getNonDisconnectedSinks()Ljava/util/Set;

    move-result-object v2

    .line 564
    .local v2, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 568
    :goto_0
    return v4

    .line 565
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 566
    .local v1, dev:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .end local v1           #dev:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    move v4, v5

    .line 568
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 621
    const-string v0, "BluetoothEventLoop"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-void
.end method

.method private onAgentAuthorize(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "objectPath"
    .parameter "deviceUuid"
    .parameter "nativeData"

    .prologue
    const-string v7, "BluetoothEventLoop"

    .line 505
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, address:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 507
    const-string v5, "BluetoothEventLoop"

    const-string v5, "Unable to get device address in onAuthAgentAuthorize"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    const/4 v2, 0x0

    .line 512
    .local v2, authorized:Z
    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    .line 513
    .local v4, uuid:Landroid/os/ParcelUuid;
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 515
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 516
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isAudioSource(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isAdvAudioDist(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_2
    invoke-direct {p0, v1}, Landroid/server/BluetoothEventLoop;->isOtherSinkInNonDisconnectingState(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 524
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothA2dp;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    move v2, v5

    .line 525
    :goto_1
    if-eqz v2, :cond_5

    .line 526
    const-string v5, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First check pass for incoming A2DP / AVRCP connection from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 533
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v1}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;)Z

    .line 543
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAgentAuthorize("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 544
    if-nez v2, :cond_0

    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothA2dp;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_0

    .line 524
    :cond_3
    const/4 v5, 0x0

    move v2, v5

    goto :goto_1

    .line 535
    :cond_4
    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothA2dp;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_2

    .line 538
    :cond_5
    const-string v5, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rejecting incoming A2DP / AVRCP connection from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 541
    :cond_6
    const-string v5, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rejecting incoming "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " connection from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private onAgentCancel()V
    .locals 5

    .prologue
    .line 572
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 573
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 578
    return-void
.end method

.method private onAgentOutOfBandDataAvailable(Ljava/lang/String;)Z
    .locals 4
    .parameter "objectPath"

    .prologue
    const/4 v3, 0x0

    .line 548
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 557
    :goto_0
    return v1

    .line 550
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    move v1, v3

    goto :goto_0

    .line 553
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getDeviceOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 555
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    .line 557
    goto :goto_0
.end method

.method private onCreateDeviceResult(Ljava/lang/String;I)V
    .locals 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 594
    packed-switch p2, :pswitch_data_0

    .line 610
    :goto_0
    :pswitch_0
    return-void

    .line 596
    :pswitch_1
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 598
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 601
    :cond_0
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Device exists, but we dont have the bluez path, failing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    .end local v0           #path:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .locals 1
    .parameter "address"
    .parameter "result"

    .prologue
    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 203
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothService;->onCreatePairedDeviceResult(Ljava/lang/String;I)V

    .line 204
    return-void
.end method

.method private onDeviceCreated(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceObjectPath"

    .prologue
    .line 207
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, address:Ljava/lang/String;
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->isRemoteDeviceInCache(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, properties:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 212
    invoke-direct {p0, v0, v1}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    .line 215
    .end local v1           #properties:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private onDeviceDisappeared(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.DISAPPEARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private onDeviceDisconnectRequested(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceObjectPath"

    .prologue
    .line 191
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 193
    const-string v2, "BluetoothEventLoop"

    const-string v3, "onDeviceDisconnectRequested: Address of the remote device in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 198
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDeviceFound(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 177
    if-nez p2, :cond_0

    .line 178
    const-string v0, "BluetoothEventLoop"

    const-string v1, "ERROR: Remote device properties are null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    .line 293
    const/4 v8, 0x0

    aget-object v5, p2, v8

    .line 294
    .local v5, name:Ljava/lang/String;
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 296
    const-string v8, "BluetoothEventLoop"

    const-string v9, "onDevicePropertyChanged: Address of the remote device in null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 303
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v8, "Name"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 304
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v9, 0x1

    aget-object v9, p2, v9

    invoke-virtual {v8, v0, v5, v9}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 307
    const-string v8, "android.bluetooth.device.extra.NAME"

    const/4 v9, 0x1

    aget-object v9, p2, v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    const-string v8, "Class"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 310
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v9, 0x1

    aget-object v9, p2, v9

    invoke-virtual {v8, v0, v5, v9}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 313
    const-string v8, "android.bluetooth.device.extra.CLASS"

    new-instance v9, Landroid/bluetooth/BluetoothClass;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 315
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    const-string v8, "Connected"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 317
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v9, 0x1

    aget-object v9, p2, v9

    invoke-virtual {v8, v0, v5, v9}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v3, 0x0

    .line 319
    .restart local v3       #intent:Landroid/content/Intent;
    const/4 v8, 0x1

    aget-object v8, p2, v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 320
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v8, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 324
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v9, 0x1f40

    invoke-virtual {v8, v0, v9}, Landroid/server/BluetoothService;->setLinkTimeout(Ljava/lang/String;I)V

    .line 332
    :cond_4
    :goto_1
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 333
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    :cond_5
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v8, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 334
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    const-string v8, "UUIDs"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 335
    const/4 v7, 0x0

    .line 336
    .local v7, uuid:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 337
    .local v4, len:I
    if-lez v4, :cond_8

    .line 338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v6, str:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    .local v2, i:I
    :goto_2
    array-length v8, p2

    if-ge v2, v8, :cond_7

    .line 340
    aget-object v8, p2, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 343
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 345
    .end local v2           #i:I
    .end local v6           #str:Ljava/lang/StringBuilder;
    :cond_8
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8, v0, v5, v7}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8, v0}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V

    .line 350
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    .end local v4           #len:I
    .end local v7           #uuid:Ljava/lang/String;
    :cond_9
    const-string v8, "Paired"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 352
    const/4 v8, 0x1

    aget-object v8, p2, v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 356
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v8}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 357
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v9, 0xc

    invoke-virtual {v8, v0, v9}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 360
    :cond_a
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v9, 0xa

    invoke-virtual {v8, v0, v9}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 361
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v9, "Trusted"

    const-string v10, "false"

    invoke-virtual {v8, v0, v9, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    :cond_b
    const-string v8, "Trusted"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 366
    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v9, 0x1

    aget-object v9, p2, v9

    invoke-virtual {v8, v0, v5, v9}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onDeviceRemoved(Ljava/lang/String;)V
    .locals 5
    .parameter "deviceObjectPath"

    .prologue
    .line 219
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 221
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 223
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, "UUIDs"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    return-void
.end method

.method private onDiscoverServicesResult(Ljava/lang/String;Z)V
    .locals 2
    .parameter "deviceObjectPath"
    .parameter "result"

    .prologue
    .line 582
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, address:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 585
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z

    .line 587
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method private onDisplayPasskey(Ljava/lang/String;II)V
    .locals 4
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    .line 482
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 491
    :goto_0
    return-void

    .line 485
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 487
    const-string v2, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRequestOobData(Ljava/lang/String;I)V
    .locals 4
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 494
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 497
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 499
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRequestPairingConsent(Ljava/lang/String;I)V
    .locals 6
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 396
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 406
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 407
    .local v2, message:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 408
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 412
    .end local v2           #message:Landroid/os/Message;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 414
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRequestPasskey(Ljava/lang/String;I)V
    .locals 4
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 434
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 437
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 439
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRequestPasskeyConfirmation(Ljava/lang/String;II)V
    .locals 4
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    .line 421
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 424
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 426
    const-string v2, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRequestPinCode(Ljava/lang/String;I)V
    .locals 7
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 446
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, pendingOutgoingAddress:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 455
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 456
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->getDockPin()Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, pin:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z

    goto :goto_0

    .line 461
    .end local v4           #pin:Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/bluetooth/BluetoothClass;

    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->getRemoteClass(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 464
    .local v1, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 474
    .end local v1           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 476
    const-string v5, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #btClass:Landroid/bluetooth/BluetoothClass;
    :sswitch_0
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->attemptAutoPair(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 464
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x418 -> :sswitch_0
        0x41c -> :sswitch_0
        0x420 -> :sswitch_0
        0x428 -> :sswitch_0
    .end sparse-switch
.end method

.method private onRestartRequired()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const-string v0, "BluetoothEventLoop"

    const-string v1, "*** A serious error occurred (did bluetoothd crash?) - restarting Bluetooth ***"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 618
    :cond_0
    return-void
.end method

.method private native startEventLoopNative()V
.end method

.method private native stopEventLoopNative()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->cleanupNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 120
    return-void

    .line 118
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getAuthorizationAgentRequestData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method getPasskeyAgentRequestData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method public isEventLoopRunning()Z
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    return v0
.end method

.method onPropertyChanged([Ljava/lang/String;)V
    .locals 11
    .parameter "propValues"

    .prologue
    .line 228
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->isAdapterPropertiesEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 231
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getAllProperties()V

    .line 233
    :cond_0
    const/4 v9, 0x0

    aget-object v5, p1, v9

    .line 234
    .local v5, name:Ljava/lang/String;
    const-string v9, "Name"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 235
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v9, v5, v10}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.adapter.extra.LOCAL_NAME"

    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 290
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 239
    :cond_2
    const-string v9, "Pairable"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "Discoverable"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 240
    :cond_3
    const-string v9, "Pairable"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    aget-object v9, p1, v9

    move-object v6, v9

    .line 242
    .local v6, pairable:Ljava/lang/String;
    :goto_1
    const-string v9, "Discoverable"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    aget-object v9, p1, v9

    move-object v0, v9

    .line 246
    .local v0, discoverable:Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 249
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v9, v5, v10}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string/jumbo v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string/jumbo v10, "true"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v9, v10}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I

    move-result v4

    .line 253
    .local v4, mode:I
    if-ltz v4, :cond_1

    .line 254
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {v2, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const/high16 v9, 0x1000

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v0           #discoverable:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #mode:I
    .end local v6           #pairable:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Pairable"

    invoke-virtual {v9, v10}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    goto :goto_1

    .line 242
    .restart local v6       #pairable:Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Discoverable"

    invoke-virtual {v9, v10}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    goto :goto_2

    .line 259
    .end local v6           #pairable:Ljava/lang/String;
    :cond_6
    const-string v9, "Discovering"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 261
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-virtual {v9, v5, v10}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v9, 0x1

    aget-object v9, p1, v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 263
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/server/BluetoothService;->setIsDiscovering(Z)V

    .line 264
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .restart local v2       #intent:Landroid/content/Intent;
    :goto_3
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v2, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->cancelDiscovery()Z

    .line 268
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/server/BluetoothService;->setIsDiscovering(Z)V

    .line 269
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_3

    .line 272
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8
    const-string v9, "Devices"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 273
    const/4 v8, 0x0

    .line 274
    .local v8, value:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, p1, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 275
    .local v3, len:I
    if-lez v3, :cond_a

    .line 276
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v7, str:Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    .local v1, i:I
    :goto_4
    array-length v9, p1

    if-ge v1, v9, :cond_9

    .line 278
    aget-object v9, p1, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 281
    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 283
    .end local v1           #i:I
    .end local v7           #str:Ljava/lang/StringBuilder;
    :cond_a
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v5, v8}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    .end local v3           #len:I
    .end local v8           #value:Ljava/lang/String;
    :cond_b
    const-string v9, "Powered"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 287
    const/4 v9, 0x1

    aget-object v9, p1, v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 288
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->onRestartRequired()V

    goto/16 :goto_0
.end method

.method start()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->startEventLoopNative()V

    .line 136
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->stopEventLoopNative()V

    .line 143
    :cond_0
    return-void
.end method
