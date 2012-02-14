.class Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataStateReceiver"
.end annotation


# instance fields
.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic this$0:Landroid/net/MobileDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/MobileDataStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 192
    monitor-enter p0

    .line 195
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    .line 196
    .local v20, tm:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->setRoamingStatus(Z)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/MobileDataStateTracker;->setSubtype(ILjava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 201
    const-string v3, "apnType"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 202
    .local v15, apnTypeList:Ljava/lang/String;
    const-string v3, "networkUnvailable"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 206
    .local v22, unavailable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v22, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MobileDataStateReceiver -> mEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v5, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mEnabled:Z
    invoke-static {v5}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logi(Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mEnabled:Z
    invoke-static {v3}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 213
    monitor-exit p0

    .line 313
    .end local v15           #apnTypeList:Ljava/lang/String;
    .end local v22           #unavailable:Z
    .end local p1
    :goto_1
    return-void

    .line 206
    .restart local v15       #apnTypeList:Ljava/lang/String;
    .restart local v22       #unavailable:Z
    .restart local p1
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 216
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    #calls: Landroid/net/MobileDataStateTracker;->isApnTypeIncluded(Ljava/lang/String;)Z
    invoke-static {v3, v15}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const-string v4, "MobileDataStateReceiver isApnTypeIncluded(apnTypeList) == false"

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logi(Ljava/lang/String;)V

    .line 218
    monitor-exit p0

    goto :goto_1

    .line 312
    .end local v15           #apnTypeList:Ljava/lang/String;
    .end local v20           #tm:Landroid/telephony/TelephonyManager;
    .end local v22           #unavailable:Z
    .end local p1
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 222
    .restart local v15       #apnTypeList:Ljava/lang/String;
    .restart local v20       #tm:Landroid/telephony/TelephonyManager;
    .restart local v22       #unavailable:Z
    .restart local p1
    :cond_2
    const/16 v16, 0x1

    .line 223
    .local v16, doReset:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z
    invoke-static {v3}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 225
    const-string v3, "default"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v4, v0

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    move/from16 v21, v3

    .line 228
    .local v21, typeToCheck:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v3, v0

    if-nez v3, :cond_3

    .line 229
    const-string v3, "connectivity"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 233
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v3, v0

    if-eqz v3, :cond_4

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v17

    .line 236
    .local v17, info:Landroid/net/NetworkInfo;
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 237
    const/16 v16, 0x0

    .line 244
    .end local v17           #info:Landroid/net/NetworkInfo;
    .end local v21           #typeToCheck:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p2

    #calls: Landroid/net/MobileDataStateTracker;->updateMobileInfoFromIntent(Landroid/content/Intent;)Z
    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)Z

    move-result v18

    .line 245
    .local v18, needDetailedStateUpdate:Z
    if-nez v18, :cond_6

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const-string v4, "MobileDataStateReceiver needDetailedStateUpdate == false"

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logi(Ljava/lang/String;)V

    .line 249
    monitor-exit p0

    goto/16 :goto_1

    .line 225
    .end local v18           #needDetailedStateUpdate:Z
    .restart local p1
    :cond_5
    const/4 v3, 0x0

    move/from16 v21, v3

    goto :goto_2

    .line 252
    .end local p1
    .restart local v18       #needDetailedStateUpdate:Z
    :cond_6
    const-string v3, "reason"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 259
    .local v7, reason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p2

    #calls: Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v19

    .line 260
    .local v19, state:Lcom/android/internal/telephony/Phone$DataState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_b

    .line 262
    :cond_7
    sget-object v19, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 271
    :cond_8
    :goto_3
    const/4 v8, 0x0

    .line 272
    .local v8, extraInfo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_9

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mApnName:Ljava/lang/String;

    move-object v8, v0

    .line 276
    :cond_9
    if-eqz v18, :cond_a

    .line 277
    sget-object v3, Landroid/net/MobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 312
    .end local v7           #reason:Ljava/lang/String;
    .end local v8           #extraInfo:Ljava/lang/String;
    .end local v15           #apnTypeList:Ljava/lang/String;
    .end local v16           #doReset:Z
    .end local v18           #needDetailedStateUpdate:Z
    .end local v19           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v22           #unavailable:Z
    :cond_a
    :goto_4
    monitor-exit p0

    goto/16 :goto_1

    .line 263
    .restart local v7       #reason:Ljava/lang/String;
    .restart local v15       #apnTypeList:Ljava/lang/String;
    .restart local v16       #doReset:Z
    .restart local v18       #needDetailedStateUpdate:Z
    .restart local v19       #state:Lcom/android/internal/telephony/Phone$DataState;
    .restart local v22       #unavailable:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_d

    .line 265
    :cond_c
    sget-object v19, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_3

    .line 266
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v3, v4, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_8

    .line 268
    :cond_e
    sget-object v19, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto/16 :goto_3

    .line 279
    .restart local v8       #extraInfo:Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Landroid/net/MobileDataStateTracker;->mEnabled:Z
    invoke-static {v3, v4}, Landroid/net/MobileDataStateTracker;->access$102(Landroid/net/MobileDataStateTracker;Z)Z

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 284
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 287
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 290
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 293
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v5, v0

    iget-object v5, v5, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v6, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v5, v6, :cond_10

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v6, v0

    iget-object v6, v6, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v9, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v6, v0

    sget-object v9, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v6, v9, :cond_11

    const/4 v6, 0x1

    :goto_6
    invoke-virtual/range {v3 .. v8}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    const/4 v5, 0x0

    goto :goto_5

    :cond_11
    const/4 v6, 0x0

    goto :goto_6

    .line 301
    .end local v7           #reason:Ljava/lang/String;
    .end local v8           #extraInfo:Ljava/lang/String;
    .end local v15           #apnTypeList:Ljava/lang/String;
    .end local v16           #doReset:Z
    .end local v18           #needDetailedStateUpdate:Z
    .end local v19           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v22           #unavailable:Z
    .restart local p1
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Landroid/net/MobileDataStateTracker;->mEnabled:Z
    invoke-static {v3, v4}, Landroid/net/MobileDataStateTracker;->access$102(Landroid/net/MobileDataStateTracker;Z)Z

    .line 304
    const-string v3, "reason"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 305
    .restart local v7       #reason:Ljava/lang/String;
    const-string v3, "apn"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 306
    .local v14, apnName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " broadcast"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    const-string v4, ""

    :goto_7
    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logi(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v9, v0

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_14

    const/4 v3, 0x1

    move v11, v3

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_15

    const/4 v3, 0x1

    move v12, v3

    :goto_9
    move-object v13, v7

    invoke-virtual/range {v9 .. v14}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 306
    .restart local p1
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_7

    .line 308
    .end local p1
    :cond_14
    const/4 v3, 0x0

    move v11, v3

    goto :goto_8

    :cond_15
    const/4 v3, 0x0

    move v12, v3

    goto :goto_9

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
