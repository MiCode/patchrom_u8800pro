.class Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;
.super Ljava/lang/Object;
.source "BluetoothDeviceProfileState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothHeadset$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 2
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1002(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 234
    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x1

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetServiceConnected:Z
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1202(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 238
    monitor-exit v0

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetServiceConnected:Z
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1202(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 243
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
