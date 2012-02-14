.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.super Lcom/android/internal/util/HierarchicalState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterUtilState"
.end annotation


# static fields
.field protected static final TRY_TO_SETUP_MOBILE_CONNECTION:Z = true

.field protected static final WAIT_FOR_NETWORK_TO_SETTLE:Z


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mMcc:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 1
    .parameter

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    .line 1151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->mMcc:Ljava/lang/String;

    .line 1152
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1097
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->getDns()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDns()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 1187
    const/16 v6, 0xa

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "net.rmnet0.dns1"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "net.rmnet0.dns2"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "net.eth0.dns1"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "net.eth0.dns2"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "net.eth0.dns3"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "net.eth0.dns4"

    aput-object v7, v4, v6

    const/4 v6, 0x6

    const-string v7, "net.gprs.dns1"

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const-string v7, "net.gprs.dns2"

    aput-object v7, v4, v6

    const/16 v6, 0x8

    const-string v7, "net.ppp0.dns1"

    aput-object v7, v4, v6

    const/16 v6, 0x9

    const-string v7, "net.ppp0.dns2"

    aput-object v7, v4, v6

    .line 1191
    .local v4, propertyNames:[Ljava/lang/String;
    array-length v6, v4

    new-array v0, v6, [Ljava/lang/String;

    .line 1194
    .local v0, dnsAddresses:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 1195
    aget-object v6, v4, v1

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1196
    .local v5, value:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "0.0.0.0"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1197
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    aput-object v5, v0, v2

    move v2, v3

    .line 1194
    .end local v3           #j:I
    .restart local v2       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1200
    .end local v5           #value:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 1204
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1205
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1206
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1207
    return-void
.end method


# virtual methods
.method protected chooseUpstreamType(Z)V
    .locals 11
    .parameter "tryCell"

    .prologue
    const/4 v10, 0x5

    const/4 v8, 0x0

    const-string v9, "Tethering"

    .line 1323
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->findActiveUpstreamIface()Ljava/lang/String;

    move-result-object v4

    .line 1324
    .local v4, iface:Ljava/lang/String;
    const-string v6, "connectivity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1325
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 1326
    .local v2, cm:Landroid/net/IConnectivityManager;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mConnectionRequested:Z
    invoke-static {v6, v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$2902(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z

    .line 1328
    const-string v6, "ro.config.bc_wifi_apsta"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_apsta_state"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    move v0, v6

    .line 1333
    .local v0, apsta_state:I
    :goto_0
    const-string v6, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chooseUpstreamType("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "),  dunRequired ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDunRequired:Z
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", iface="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    if-eqz v4, :cond_0

    .line 1338
    :try_start_0
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chooseUpstreamType, apsta_state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const/4 v6, 0x2

    if-ne v0, v6, :cond_4

    .line 1340
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "skip turnOnMobileConnection() due to apsta enabled. iface="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1377
    :cond_0
    :goto_1
    if-nez v4, :cond_2

    .line 1378
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    .line 1379
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnMobileConnection()I

    .line 1382
    :cond_1
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v10, v7, v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    .line 1384
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    .line 1385
    return-void

    .end local v0           #apsta_state:I
    :cond_3
    move v0, v8

    .line 1328
    goto :goto_0

    .line 1342
    .restart local v0       #apsta_state:I
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDunRequired:Z
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1344
    const/4 v6, 0x4

    invoke-interface {v2, v6}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1346
    .local v5, info:Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1347
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setting dun ifacename ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnMobileConnection()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1371
    .end local v5           #info:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 1372
    .local v3, e:Landroid/os/RemoteException;
    const-string v6, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException calling ConnectivityManager "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v4, 0x0

    goto :goto_1

    .line 1353
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v5       #info:Landroid/net/NetworkInfo;
    :cond_5
    const/4 v6, 0x0

    :try_start_2
    invoke-interface {v2, v6}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1354
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1355
    const/4 v4, 0x0

    goto :goto_1

    .line 1359
    .end local v5           #info:Landroid/net/NetworkInfo;
    :cond_6
    const-string v6, "Tethering"

    const-string v7, "checking if hipri brought us this connection"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v6, 0x5

    invoke-interface {v2, v6}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1362
    .restart local v5       #info:Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1363
    const-string v6, "Tethering"

    const-string v7, "yes - hipri in use"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnMobileConnection()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method protected findActiveUpstreamIface()Ljava/lang/String;
    .locals 17

    .prologue
    .line 1285
    const-string v14, "network_management"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1286
    .local v3, b:Landroid/os/IBinder;
    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v13

    .line 1288
    .local v13, service:Landroid/os/INetworkManagementService;
    const/4 v14, 0x0

    new-array v8, v14, [Ljava/lang/String;

    .line 1290
    .local v8, ifaces:[Ljava/lang/String;
    :try_start_0
    invoke-interface {v13}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1296
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v10, v1

    .local v10, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v10           #len$:I
    .local v6, i$:I
    :goto_0
    if-ge v6, v10, :cond_2

    aget-object v7, v1, v6

    .line 1297
    .local v7, iface:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs:[Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/connectivity/Tethering;->access$4600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v11, v2

    .local v11, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_1
    if-ge v5, v11, :cond_1

    aget-object v12, v2, v5

    .line 1298
    .local v12, regex:Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1300
    const/4 v9, 0x0

    .line 1302
    .local v9, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_1
    invoke-interface {v13, v7}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v9

    .line 1303
    invoke-virtual {v9}, Landroid/net/InterfaceConfiguration;->isActive()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->isIfaceForDefaultRoute(Ljava/lang/String;)Z
    invoke-static {v14, v7}, Lcom/android/server/connectivity/Tethering;->access$4700(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v7

    .line 1318
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #iface:Ljava/lang/String;
    .end local v9           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v11           #len$:I
    .end local v12           #regex:Ljava/lang/String;
    :goto_2
    return-object v14

    .line 1291
    :catch_0
    move-exception v4

    .line 1292
    .local v4, e:Ljava/lang/Exception;
    const-string v14, "Tethering"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error listing Interfaces :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const/4 v14, 0x0

    goto :goto_2

    .line 1310
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v7       #iface:Ljava/lang/String;
    .restart local v9       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v11       #len$:I
    .restart local v12       #regex:Ljava/lang/String;
    :catch_1
    move-exception v14

    move-object v4, v14

    .line 1311
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v14, "Tethering"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error getting iface config :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    .end local v4           #e:Ljava/lang/Exception;
    .end local v9           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1296
    .end local v12           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_0

    .line 1318
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #iface:Ljava/lang/String;
    .end local v11           #len$:I
    :cond_2
    const/4 v14, 0x0

    goto :goto_2
.end method

.method protected notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V
    .locals 7
    .parameter "ifaceName"

    .prologue
    .line 1387
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifying tethered with iface ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4802(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    .line 1389
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1390
    .local v2, o:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v3, v0

    .line 1391
    .local v3, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const/16 v4, 0xc

    invoke-virtual {v3, v4, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1394
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 1103
    const/4 v0, 0x0

    return v0
.end method

.method protected turnOffMasterTetherSettings()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1261
    const-string v3, "ro.config.tetherUseLocalDns"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "460"

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->mMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1262
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1265
    :cond_1
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1266
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 1269
    .local v2, service:Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1280
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V

    .line 1281
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 1270
    :catch_0
    move-exception v1

    .line 1271
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V

    move v3, v5

    .line 1272
    goto :goto_0

    .line 1276
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1277
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V

    move v3, v5

    .line 1278
    goto :goto_0
.end method

.method protected turnOffMobileConnection()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1130
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mConnectionRequested:Z
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$2900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1131
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1132
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 1135
    .local v2, service:Landroid/net/IConnectivityManager;
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDunRequired:Z
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "enableDUN"

    :goto_0
    invoke-interface {v2, v3, v4}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mConnectionRequested:Z
    invoke-static {v3, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$2902(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z

    .line 1143
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #service:Landroid/net/IConnectivityManager;
    :cond_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 1135
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v2       #service:Landroid/net/IConnectivityManager;
    :cond_1
    :try_start_1
    const-string v4, "enableHIPRI"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1138
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/Exception;
    move v3, v5

    .line 1139
    goto :goto_1
.end method

.method protected turnOnMasterTetherSettings()Z
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, ""

    const-string v10, "Tethering"

    .line 1212
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1213
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 1215
    .local v4, numericData:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_0

    .line 1217
    const/4 v6, 0x3

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->mMcc:Ljava/lang/String;

    .line 1218
    const-string v6, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM Card Mcc is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->mMcc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    .end local v4           #numericData:Ljava/lang/String;
    :cond_0
    const-string v6, "ro.config.tetherUseLocalDns"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "460"

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->mMcc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1222
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->initialize()V

    .line 1223
    const-string v6, "net.dns1"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1224
    .local v1, dns1:Ljava/lang/String;
    const-string v6, "net.dns2"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1226
    .local v2, dns2:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ""

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1227
    :cond_2
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object v11, v7, v8

    aput-object v11, v7, v9

    #setter for: Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/connectivity/Tethering;->access$3202(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1228
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    aput-object v1, v6, v8

    .line 1229
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    aput-object v2, v6, v9

    .line 1230
    const-string v6, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prop dns1 is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const-string v6, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prop dns2 is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    .end local v1           #dns1:Ljava/lang/String;
    .end local v2           #dns2:Ljava/lang/String;
    :cond_3
    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1236
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 1239
    .local v5, service:Landroid/os/INetworkManagementService;
    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    :try_start_1
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$3500(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1251
    :try_start_2
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->setDnsForwarders([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v6, v9

    .line 1256
    :goto_0
    return v6

    .line 1240
    :catch_0
    move-exception v3

    .line 1241
    .local v3, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v7

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v6, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V

    move v6, v8

    .line 1242
    goto :goto_0

    .line 1246
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 1247
    .restart local v3       #e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v7

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v6, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V

    move v6, v8

    .line 1248
    goto :goto_0

    .line 1252
    .end local v3           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    move-object v3, v6

    .line 1253
    .restart local v3       #e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v7

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v6, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V

    move v6, v8

    .line 1254
    goto :goto_0
.end method

.method protected turnOnMobileConnection()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1106
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1107
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 1108
    .local v2, service:Landroid/net/IConnectivityManager;
    const/4 v1, 0x3

    .line 1110
    .local v1, retValue:I
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDunRequired:Z
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "enableDUN"

    :goto_0
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-interface {v2, v3, v4, v5}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1115
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1123
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mConnectionRequested:Z
    invoke-static {v3, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$2902(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z

    .line 1127
    :goto_2
    return v1

    .line 1110
    :cond_0
    :try_start_1
    const-string v4, "enableHIPRI"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1118
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v4, 0x4

    const-wide/32 v5, 0x9c40

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    .line 1119
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mConnectionRequested:Z
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$2902(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z

    goto :goto_2

    .line 1113
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
