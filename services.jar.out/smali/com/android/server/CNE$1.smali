.class Lcom/android/server/CNE$1;
.super Landroid/content/BroadcastReceiver;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CNE;


# direct methods
.method constructor <init>(Lcom/android/server/CNE;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 36
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    .line 415
    .local v18, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 417
    const-string v4, "level"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 418
    .local v24, level:I
    const-string v4, "plugged"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 419
    .local v28, pluginType:I
    const-string v4, "status"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 420
    .local v29, status:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v24

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/CNE;->updateBatteryStatus(III)Z

    .line 645
    .end local v24           #level:I
    .end local v28           #pluginType:I
    .end local v29           #status:I
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 422
    .restart local p1
    :cond_1
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/CNE;->access$000(Lcom/android/server/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 425
    const/4 v9, 0x0

    .line 426
    .local v9, ipV4Addr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/CNE;->access$100(Lcom/android/server/CNE;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/ConnectivityManager;

    .line 428
    .local v20, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v26

    .line 429
    .local v26, networkInfo:Landroid/net/NetworkInfo;
    if-nez v26, :cond_3

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    move-object/from16 v27, v4

    .line 431
    .local v27, networkState:Landroid/net/NetworkInfo$State;
    :goto_1
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v27

    move-object v1, v4

    if-ne v0, v1, :cond_2

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v4, v5}, Lcom/android/server/CNE;->getWlanAddrInfo(Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/server/CNE$AddressInfo;

    move-result-object v4

    iget-object v9, v4, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    .line 434
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/CNE;->access$000(Lcom/android/server/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v32

    .line 435
    .local v32, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    .line 436
    .local v8, ssid:Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    .line 437
    .local v7, rssi:I
    new-instance v31, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v31

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 438
    .local v31, ts:Ljava/sql/Timestamp;
    invoke-virtual/range {v31 .. v31}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v10

    .line 449
    .local v10, tsStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const/16 v5, 0x15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v27

    #calls: Lcom/android/server/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$200(Lcom/android/server/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v6

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/CNE;->updateWlanStatus(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 429
    .end local v7           #rssi:I
    .end local v8           #ssid:Ljava/lang/String;
    .end local v10           #tsStr:Ljava/lang/String;
    .end local v27           #networkState:Landroid/net/NetworkInfo$State;
    .end local v31           #ts:Ljava/sql/Timestamp;
    .end local v32           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_3
    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    move-object/from16 v27, v4

    goto :goto_1

    .line 452
    .end local v9           #ipV4Addr:Ljava/lang/String;
    .end local v20           #cm:Landroid/net/ConnectivityManager;
    .end local v26           #networkInfo:Landroid/net/NetworkInfo;
    :cond_4
    const-string v4, "CNE"

    const-string v5, "CNE received action RSSI Changed events, null WifiManager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 455
    :cond_5
    const-string v4, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "android.net.wifi.NO_MORE_WIFI_LOCKS"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 463
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/CNE;->access$000(Lcom/android/server/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v4, v5}, Lcom/android/server/CNE;->getWlanAddrInfo(Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/server/CNE$AddressInfo;

    move-result-object v33

    .line 465
    .local v33, wlanV4Addr:Lcom/android/server/CNE$AddressInfo;
    sget-object v27, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 466
    .restart local v27       #networkState:Landroid/net/NetworkInfo$State;
    const-string v4, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.net.wifi.NO_MORE_WIFI_LOCKS"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 468
    :cond_7
    const-string v4, "networkInfo"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v26

    check-cast v26, Landroid/net/NetworkInfo;

    .line 470
    .restart local v26       #networkInfo:Landroid/net/NetworkInfo;
    if-nez v26, :cond_b

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    move-object/from16 v27, v4

    .line 473
    .end local v26           #networkInfo:Landroid/net/NetworkInfo;
    :cond_8
    :goto_2
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 474
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c

    const/4 v4, 0x1

    move/from16 v22, v4

    .line 476
    .local v22, enabled:Z
    :goto_3
    if-nez v22, :cond_d

    .line 477
    sget-object v27, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 486
    .end local v22           #enabled:Z
    :cond_9
    :goto_4
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v27

    move-object v1, v4

    if-ne v0, v1, :cond_e

    .line 488
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;

    move-object v5, v0

    #setter for: Lcom/android/server/CNE;->activeWlanIfName:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/CNE;->access$302(Lcom/android/server/CNE;Ljava/lang/String;)Ljava/lang/String;

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->gatewayAddr:Ljava/lang/String;

    move-object v5, v0

    #setter for: Lcom/android/server/CNE;->activeWlanGatewayAddr:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/CNE;->access$402(Lcom/android/server/CNE;Ljava/lang/String;)Ljava/lang/String;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->gatewayAddr:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/CNE;->configureIproute2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mDefaultNetwork:I
    invoke-static {v4}, Lcom/android/server/CNE;->access$500(Lcom/android/server/CNE;)I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mDefaultNetwork:I
    invoke-static {v4}, Lcom/android/server/CNE;->access$500(Lcom/android/server/CNE;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->activeWlanIfName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/CNE;->access$300(Lcom/android/server/CNE;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v6, v0

    #getter for: Lcom/android/server/CNE;->activeWlanIfName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/CNE;->access$300(Lcom/android/server/CNE;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/CNE;->configureIproute2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/CNE;->access$000(Lcom/android/server/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v32

    .line 521
    .restart local v32       #wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    .line 522
    .restart local v8       #ssid:Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    .line 523
    .restart local v7       #rssi:I
    new-instance v31, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v31

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 524
    .restart local v31       #ts:Ljava/sql/Timestamp;
    invoke-virtual/range {v31 .. v31}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v10

    .line 536
    .restart local v10       #tsStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v11, v0

    const/16 v12, 0x15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v27

    #calls: Lcom/android/server/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$200(Lcom/android/server/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v13

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    move-object/from16 v16, v0

    move v14, v7

    move-object v15, v8

    move-object/from16 v17, v10

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/CNE;->updateWlanStatus(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v27

    #calls: Lcom/android/server/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$200(Lcom/android/server/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v6

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    move-object v7, v0

    .end local v7           #rssi:I
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/CNE;->notifyRatConnectStatus(IILjava/lang/String;)Z

    goto/16 :goto_0

    .line 470
    .end local v8           #ssid:Ljava/lang/String;
    .end local v10           #tsStr:Ljava/lang/String;
    .end local v31           #ts:Ljava/sql/Timestamp;
    .end local v32           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .restart local v26       #networkInfo:Landroid/net/NetworkInfo;
    :cond_b
    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    move-object/from16 v27, v4

    goto/16 :goto_2

    .line 474
    .end local v26           #networkInfo:Landroid/net/NetworkInfo;
    :cond_c
    const/4 v4, 0x0

    move/from16 v22, v4

    goto/16 :goto_3

    .line 479
    .restart local v22       #enabled:Z
    :cond_d
    sget-object v27, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    goto/16 :goto_4

    .line 512
    .end local v22           #enabled:Z
    :catch_0
    move-exception v4

    move-object/from16 v21, v4

    .line 513
    .local v21, e:Ljava/lang/Exception;
    const-string v4, "CNE"

    const-string v5, "CNE receiver exception"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 515
    .end local v21           #e:Ljava/lang/Exception;
    :cond_e
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v27

    move-object v1, v4

    if-ne v0, v1, :cond_a

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v6, v0

    #getter for: Lcom/android/server/CNE;->activeWlanIfName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/CNE;->access$300(Lcom/android/server/CNE;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/CNE;->configureIproute2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5

    .line 541
    .end local v27           #networkState:Landroid/net/NetworkInfo$State;
    .end local v33           #wlanV4Addr:Lcom/android/server/CNE$AddressInfo;
    :cond_f
    const-string v4, "CNE"

    const-string v5, "CNE received action Network State Changed, null WifiManager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 543
    :cond_10
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/CNE;->access$000(Lcom/android/server/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/server/CNE;->access$000(Lcom/android/server/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    goto/16 :goto_0

    .line 549
    :cond_11
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 550
    const-string v4, "apnType"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 552
    .local v19, apnType:Ljava/lang/String;
    const-string v4, "default"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "dun"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 553
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object v0, v4

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/CNE;->getWwanAddrInfo(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/server/CNE$AddressInfo;

    move-result-object v35

    .line 555
    .local v35, wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    sget-object v23, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    .line 556
    .local v23, ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    const-string v4, "ipVersion"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 557
    .local v30, str:Ljava/lang/String;
    if-eqz v30, :cond_13

    .line 558
    const-class v4, Lcom/android/internal/telephony/Phone$IPVersion;

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v23

    .end local v23           #ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    check-cast v23, Lcom/android/internal/telephony/Phone$IPVersion;

    .line 561
    .restart local v23       #ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    :cond_13
    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_18

    .line 562
    move-object/from16 v34, v35

    .line 567
    .local v34, wwanAddrInfo:Lcom/android/server/CNE$AddressInfo;
    const-string v4, "apnTypeState"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 568
    sget-object v25, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 569
    .local v25, netState:Landroid/net/NetworkInfo$State;
    if-eqz v30, :cond_14

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const-class v5, Lcom/android/internal/telephony/Phone$DataState;

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/Phone$DataState;

    move-object v0, v4

    move-object/from16 v1, p1

    #calls: Lcom/android/server/CNE;->convertToNetworkState(Lcom/android/internal/telephony/Phone$DataState;)Landroid/net/NetworkInfo$State;
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$600(Lcom/android/server/CNE;Lcom/android/internal/telephony/Phone$DataState;)Landroid/net/NetworkInfo$State;

    move-result-object v25

    .line 573
    :cond_14
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v25

    move-object v1, v4

    if-ne v0, v1, :cond_19

    .line 574
    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_15

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;

    move-object v5, v0

    #setter for: Lcom/android/server/CNE;->activeWwanV4IfName:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/CNE;->access$702(Lcom/android/server/CNE;Ljava/lang/String;)Ljava/lang/String;

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->gatewayAddr:Ljava/lang/String;

    move-object v5, v0

    #setter for: Lcom/android/server/CNE;->activeWwanV4GatewayAddr:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/CNE;->access$802(Lcom/android/server/CNE;Ljava/lang/String;)Ljava/lang/String;

    .line 582
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->gatewayAddr:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/CNE;->configureIproute2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mDefaultNetwork:I
    invoke-static {v4}, Lcom/android/server/CNE;->access$500(Lcom/android/server/CNE;)I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mDefaultNetwork:I
    invoke-static {v4}, Lcom/android/server/CNE;->access$500(Lcom/android/server/CNE;)I

    move-result v4

    if-eqz v4, :cond_16

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const/4 v5, 0x2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ifName:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/CNE;->configureIproute2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 596
    :cond_16
    const-string v4, "dun"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v6, v0

    #getter for: Lcom/android/server/CNE;->activeWwanV4IfName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/CNE;->access$700(Lcom/android/server/CNE;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v8, v0

    #getter for: Lcom/android/server/CNE;->activeWwanV4GatewayAddr:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/CNE;->access$800(Lcom/android/server/CNE;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/CNE;->configureIproute2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 612
    :cond_17
    :goto_6
    const-string v4, "dun"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/CNE;->access$900(Lcom/android/server/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    move v15, v4

    .line 619
    .local v15, roaming:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #getter for: Lcom/android/server/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/CNE;->access$900(Lcom/android/server/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v12

    .line 620
    .local v12, networkType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    #calls: Lcom/android/server/CNE;->getSignalStrength(I)I
    invoke-static {v4, v12}, Lcom/android/server/CNE;->access$1000(Lcom/android/server/CNE;I)I

    move-result v14

    .line 621
    .local v14, signalStrength:I
    new-instance v31, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v31

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 622
    .restart local v31       #ts:Ljava/sql/Timestamp;
    invoke-virtual/range {v31 .. v31}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v10

    .line 635
    .restart local v10       #tsStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    #calls: Lcom/android/server/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$200(Lcom/android/server/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v13

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v17, v10

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/CNE;->updateWwanStatus(IIIILjava/lang/String;Ljava/lang/String;)Z

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v25

    #calls: Lcom/android/server/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$200(Lcom/android/server/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v6

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/CNE;->notifyRatConnectStatus(IILjava/lang/String;)Z

    goto/16 :goto_0

    .line 564
    .end local v10           #tsStr:Ljava/lang/String;
    .end local v12           #networkType:I
    .end local v14           #signalStrength:I
    .end local v15           #roaming:I
    .end local v25           #netState:Landroid/net/NetworkInfo$State;
    .end local v31           #ts:Ljava/sql/Timestamp;
    .end local v34           #wwanAddrInfo:Lcom/android/server/CNE$AddressInfo;
    .restart local p1
    :cond_18
    const-string v4, "CNE"

    const-string v5, "IPV6 is not supported by CNE"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 601
    .end local p1
    .restart local v25       #netState:Landroid/net/NetworkInfo$State;
    .restart local v34       #wwanAddrInfo:Lcom/android/server/CNE$AddressInfo;
    :cond_19
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v25

    move-object v1, v4

    if-ne v0, v1, :cond_17

    .line 602
    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_17

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CNE$1;->this$0:Lcom/android/server/CNE;

    move-object v6, v0

    #getter for: Lcom/android/server/CNE;->activeWwanV4IfName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/CNE;->access$700(Lcom/android/server/CNE;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/CNE;->configureIproute2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_6

    .line 618
    :cond_1a
    const/4 v4, 0x0

    move v15, v4

    goto/16 :goto_7

    .line 640
    .end local v23           #ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    .end local v25           #netState:Landroid/net/NetworkInfo$State;
    .end local v30           #str:Ljava/lang/String;
    .end local v34           #wwanAddrInfo:Lcom/android/server/CNE$AddressInfo;
    .end local v35           #wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    .restart local p1
    :cond_1b
    const-string v4, "CNE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CNE currently does not support this apnType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 643
    .end local v19           #apnType:Ljava/lang/String;
    :cond_1c
    const-string v4, "CNE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CNE received unexpected action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
