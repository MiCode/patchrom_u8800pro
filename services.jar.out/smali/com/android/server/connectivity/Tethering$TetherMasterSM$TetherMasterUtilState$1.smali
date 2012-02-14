.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;)V
    .locals 0
    .parameter

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1155
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, action:Ljava/lang/String;
    const-string v12, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1157
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->getDns()[Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->access$3000(Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;)[Ljava/lang/String;

    move-result-object v6

    .line 1158
    .local v6, dnsList:[Ljava/lang/String;
    array-length v12, v6

    new-array v7, v12, [Ljava/lang/String;

    .line 1159
    .local v7, dnss:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1160
    .local v4, dnsCount:I
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/String;
    array-length v10, v1

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v5, v4

    .end local v4           #dnsCount:I
    .local v5, dnsCount:I
    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v3, v1, v9

    .line 1162
    .local v3, dns:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v12, "0.0.0.0"

    invoke-static {v3, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v12, 0x2

    if-ge v5, v12, :cond_3

    .line 1163
    add-int/lit8 v4, v5, 0x1

    .end local v5           #dnsCount:I
    .restart local v4       #dnsCount:I
    aput-object v3, v7, v5

    .line 1164
    const-string v12, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BroadcastReceiver dns is"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :goto_1
    add-int/lit8 v9, v9, 0x1

    move v5, v4

    .end local v4           #dnsCount:I
    .restart local v5       #dnsCount:I
    goto :goto_0

    .line 1167
    .end local v3           #dns:Ljava/lang/String;
    :cond_0
    const-string v12, "network_management"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1168
    .local v2, b:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v11

    .line 1171
    .local v11, service:Landroid/os/INetworkManagementService;
    if-lez v5, :cond_2

    .line 1172
    :try_start_0
    invoke-interface {v11, v7}, Landroid/os/INetworkManagementService;->setDnsForwarders([Ljava/lang/String;)V

    .line 1182
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #b:Landroid/os/IBinder;
    .end local v5           #dnsCount:I
    .end local v6           #dnsList:[Ljava/lang/String;
    .end local v7           #dnss:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #service:Landroid/os/INetworkManagementService;
    :cond_1
    :goto_2
    return-void

    .line 1174
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v5       #dnsCount:I
    .restart local v6       #dnsList:[Ljava/lang/String;
    .restart local v7       #dnss:[Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v11       #service:Landroid/os/INetworkManagementService;
    :cond_2
    const-string v12, "Tethering"

    const-string v13, "dns is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1176
    :catch_0
    move-exception v12

    move-object v8, v12

    .line 1177
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1178
    const-string v12, "Tethering"

    const-string v13, "Set Dns Exception !!!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v2           #b:Landroid/os/IBinder;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v11           #service:Landroid/os/INetworkManagementService;
    .restart local v3       #dns:Ljava/lang/String;
    :cond_3
    move v4, v5

    .end local v5           #dnsCount:I
    .restart local v4       #dnsCount:I
    goto :goto_1
.end method
