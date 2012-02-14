.class Lcom/android/internal/telephony/MMDataConnectionTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "MMDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MMDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MMDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 214
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, action:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent received :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->logv(Ljava/lang/String;)V

    .line 216
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 217
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;
    invoke-static {v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$000(Lcom/android/internal/telephony/MMDataConnectionTracker;)Lcom/android/internal/telephony/DataNetStatistics;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataNetStatistics;->notifyScreenState(Z)V

    .line 218
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->stopNetStatPoll()V

    .line 219
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->startNetStatPoll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 221
    :cond_1
    :try_start_1
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 222
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->mPollNetStat:Lcom/android/internal/telephony/DataNetStatistics;
    invoke-static {v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$000(Lcom/android/internal/telephony/MMDataConnectionTracker;)Lcom/android/internal/telephony/DataNetStatistics;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataNetStatistics;->notifyScreenState(Z)V

    .line 223
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->stopNetStatPoll()V

    .line 224
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/MMDataConnectionTracker;->startNetStatPoll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    .end local v0           #action:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 226
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v6, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 227
    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, reason:Ljava/lang/String;
    const-string v6, "ds"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/DataServiceType;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .line 229
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    const-string v6, "ipv"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/Phone$IPVersion;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$IPVersion;

    move-result-object v3

    .line 231
    .local v3, ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    invoke-virtual {v6, v1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->WAITING_ALARM:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v6, v7, :cond_3

    .line 232
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/MMDataConnectionTracker;->mDpt:Lcom/android/internal/telephony/DataProfileTracker;

    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v6, v7, v1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 233
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/MMDataConnectionTracker;->updateDataConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    .end local v1           #ds:Lcom/android/internal/telephony/DataServiceType;
    .end local v3           #ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    .end local v5           #reason:Ljava/lang/String;
    :cond_4
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 235
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 237
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v10

    :goto_1
    #setter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsWifiConnected:Z
    invoke-static {v6, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$102(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z

    goto :goto_0

    :cond_5
    move v7, v9

    goto :goto_1

    .line 239
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :cond_6
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 240
    const-string/jumbo v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    move v2, v10

    .line 242
    .local v2, enabled:Z
    :goto_2
    if-nez v2, :cond_0

    .line 245
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/4 v7, 0x0

    #setter for: Lcom/android/internal/telephony/MMDataConnectionTracker;->mIsWifiConnected:Z
    invoke-static {v6, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->access$102(Lcom/android/internal/telephony/MMDataConnectionTracker;Z)Z

    goto/16 :goto_0

    .end local v2           #enabled:Z
    :cond_7
    move v2, v9

    .line 240
    goto :goto_2

    .line 248
    :cond_8
    const-string v6, "android.intent.action.VOICE_CALL_STARTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 249
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 251
    :cond_9
    const-string v6, "android.intent.action.VOICE_CALL_ENDED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    iget-object v6, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    iget-object v7, p0, Lcom/android/internal/telephony/MMDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/MMDataConnectionTracker;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/MMDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/MMDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
