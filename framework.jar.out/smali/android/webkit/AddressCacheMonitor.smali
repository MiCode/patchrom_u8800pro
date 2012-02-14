.class Landroid/webkit/AddressCacheMonitor;
.super Landroid/content/BroadcastReceiver;
.source "AddressCacheMonitor.java"


# static fields
.field static final ADDRESS_CACHE_LOGTAG:Ljava/lang/String; = "ADDRESS_CACHE_MONITOR"

.field private static mAddressCacheMonitor:Landroid/webkit/AddressCacheMonitor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreviousNetworkName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/AddressCacheMonitor;->mAddressCacheMonitor:Landroid/webkit/AddressCacheMonitor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/webkit/AddressCacheMonitor;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Landroid/webkit/AddressCacheMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    const-string v1, "ADDRESS_CACHE_MONITOR"

    const-string v2, "Address cache monitor created and armed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public static declared-synchronized getAddressCacheMonitor(Landroid/content/Context;)Landroid/webkit/AddressCacheMonitor;
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    const-class v0, Landroid/webkit/AddressCacheMonitor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/AddressCacheMonitor;->mAddressCacheMonitor:Landroid/webkit/AddressCacheMonitor;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Landroid/webkit/AddressCacheMonitor;

    invoke-direct {v1, p0}, Landroid/webkit/AddressCacheMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/webkit/AddressCacheMonitor;->mAddressCacheMonitor:Landroid/webkit/AddressCacheMonitor;

    .line 70
    :cond_0
    sget-object v1, Landroid/webkit/AddressCacheMonitor;->mAddressCacheMonitor:Landroid/webkit/AddressCacheMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v10, "ADDRESS_CACHE_MONITOR"

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 78
    const-string v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 81
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 82
    .local v5, type:I
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 83
    .local v1, isConnected:Z
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, networkName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 89
    .local v0, exceptionCaught:Z
    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    .line 91
    :try_start_0
    iget-object v8, p0, Landroid/webkit/AddressCacheMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 92
    .local v7, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 93
    .local v6, wifiInfo:Landroid/net/wifi/WifiInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 102
    .end local v6           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v7           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    const-string v8, "ADDRESS_CACHE_MONITOR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "network ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v1, :cond_3

    const-string v9, "connected"

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    iget-object v8, p0, Landroid/webkit/AddressCacheMonitor;->mPreviousNetworkName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 109
    :cond_1
    const-string v8, "ADDRESS_CACHE_MONITOR"

    const-string v8, "clearing address cache"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object v3, p0, Landroid/webkit/AddressCacheMonitor;->mPreviousNetworkName:Ljava/lang/String;

    .line 111
    invoke-static {}, Ljava/net/InetAddress;->clearAddressCache()V

    .line 115
    .end local v0           #exceptionCaught:Z
    .end local v1           #isConnected:Z
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #networkName:Ljava/lang/String;
    .end local v5           #type:I
    :cond_2
    return-void

    .line 95
    .restart local v0       #exceptionCaught:Z
    .restart local v1       #isConnected:Z
    .restart local v2       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v3       #networkName:Ljava/lang/String;
    .restart local v5       #type:I
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 96
    .local v4, se:Ljava/lang/SecurityException;
    const-string v8, "ADDRESS_CACHE_MONITOR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No permission to access connection info? - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    .end local v4           #se:Ljava/lang/SecurityException;
    :cond_3
    const-string v9, "disconnected"

    goto :goto_1
.end method
