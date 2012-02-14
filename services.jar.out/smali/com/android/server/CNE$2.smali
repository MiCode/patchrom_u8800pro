.class Lcom/android/server/CNE$2;
.super Landroid/telephony/PhoneStateListener;
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
    .line 1302
    iput-object p1, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 14
    .parameter "signalStrength"

    .prologue
    const/4 v12, 0x0

    .line 1305
    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    #setter for: Lcom/android/server/CNE;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v0, p1}, Lcom/android/server/CNE;->access$2002(Lcom/android/server/CNE;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 1306
    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    #getter for: Lcom/android/server/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/server/CNE;->access$900(Lcom/android/server/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1307
    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    #getter for: Lcom/android/server/CNE;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/CNE;->access$100(Lcom/android/server/CNE;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 1309
    .local v7, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v7, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 1310
    .local v8, networkInfo:Landroid/net/NetworkInfo;
    if-nez v8, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    move-object v9, v0

    .line 1312
    .local v9, networkState:Landroid/net/NetworkInfo$State;
    :goto_0
    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    const-string v2, "default"

    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v2, v5}, Lcom/android/server/CNE;->getWwanAddrInfo(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/server/CNE$AddressInfo;

    move-result-object v11

    .line 1314
    .local v11, wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    #getter for: Lcom/android/server/CNE;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/server/CNE;->access$900(Lcom/android/server/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v4, v0

    .line 1315
    .local v4, roaming:I
    :goto_1
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 1316
    .local v1, type:I
    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    #calls: Lcom/android/server/CNE;->getSignalStrength(I)I
    invoke-static {v0, v1}, Lcom/android/server/CNE;->access$1000(Lcom/android/server/CNE;I)I

    move-result v3

    .line 1317
    .local v3, rssi:I
    new-instance v10, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Ljava/sql/Timestamp;-><init>(J)V

    .line 1318
    .local v10, ts:Ljava/sql/Timestamp;
    invoke-virtual {v10}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1329
    .local v6, tsStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    iget-object v2, p0, Lcom/android/server/CNE$2;->this$0:Lcom/android/server/CNE;

    #calls: Lcom/android/server/CNE;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    invoke-static {v2, v9}, Lcom/android/server/CNE;->access$200(Lcom/android/server/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v2

    iget-object v5, v11, Lcom/android/server/CNE$AddressInfo;->ipAddr:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/CNE;->updateWwanStatus(IIIILjava/lang/String;Ljava/lang/String;)Z

    .line 1334
    .end local v1           #type:I
    .end local v3           #rssi:I
    .end local v4           #roaming:I
    .end local v6           #tsStr:Ljava/lang/String;
    .end local v7           #cm:Landroid/net/ConnectivityManager;
    .end local v8           #networkInfo:Landroid/net/NetworkInfo;
    .end local v9           #networkState:Landroid/net/NetworkInfo$State;
    .end local v10           #ts:Ljava/sql/Timestamp;
    .end local v11           #wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    :goto_2
    return-void

    .line 1310
    .restart local v7       #cm:Landroid/net/ConnectivityManager;
    .restart local v8       #networkInfo:Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .restart local v9       #networkState:Landroid/net/NetworkInfo$State;
    .restart local v11       #wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    :cond_1
    move v4, v12

    .line 1314
    goto :goto_1

    .line 1332
    .end local v7           #cm:Landroid/net/ConnectivityManager;
    .end local v8           #networkInfo:Landroid/net/NetworkInfo;
    .end local v9           #networkState:Landroid/net/NetworkInfo$State;
    .end local v11           #wwanV4AddrInfo:Lcom/android/server/CNE$AddressInfo;
    :cond_2
    const-string v0, "CNE"

    const-string v2, "onSignalStrengthsChanged null TelephonyManager"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
