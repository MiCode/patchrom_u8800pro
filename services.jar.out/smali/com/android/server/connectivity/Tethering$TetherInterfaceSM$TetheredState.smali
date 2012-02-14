.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;
.super Lcom/android/internal/util/HierarchicalState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V
    .locals 0
    .parameter

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 846
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 847
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 850
    .local v2, service:Landroid/os/INetworkManagementService;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->enableUsbRndis(Z)Z
    invoke-static {v3, v6}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 858
    :cond_0
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tethered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v4, 0x0

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setAvailable(Z)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$700(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 860
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setTethered(Z)V
    invoke-static {v3, v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 861
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)V

    .line 862
    :goto_0
    return-void

    .line 851
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 852
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v4, 0x6

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1000(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 854
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1500(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$2100(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 871
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .parameter "message"

    .prologue
    const/4 v12, 0x0

    const/16 v9, 0x9

    const-string v11, "network_management"

    const-string v10, "Tethering"

    .line 874
    const-string v7, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TetheredState.processMessage what="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/4 v5, 0x1

    .line 876
    .local v5, retValue:Z
    const/4 v3, 0x0

    .line 877
    .local v3, error:Z
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1000
    :pswitch_0
    const/4 v5, 0x0

    :goto_0
    move v7, v5

    .line 1003
    :goto_1
    return v7

    .line 880
    :pswitch_1
    const-string v7, "network_management"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 881
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    .line 883
    .local v6, service:Landroid/os/INetworkManagementService;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 885
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 904
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/HierarchicalStateMachine;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/HierarchicalStateMachine;

    move-result-object v7

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/HierarchicalStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 906
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 907
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v7, :cond_1

    .line 908
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z
    invoke-static {v7, v12}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 909
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v8, 0xa

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1000(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 913
    :cond_1
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1500(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v8

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$2300(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V

    .line 917
    :cond_2
    :goto_2
    const-string v7, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Untethered "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 887
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 889
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 892
    :goto_3
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v7, v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_0

    .line 899
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 900
    .restart local v2       #e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_0

    .line 914
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 915
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1300(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v8

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$2400(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_2

    .line 920
    .end local v1           #b:Landroid/os/IBinder;
    .end local v6           #service:Landroid/os/INetworkManagementService;
    :pswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 921
    .local v4, newUpstreamIfaceName:Ljava/lang/String;
    const-string v7, "network_management"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 922
    .restart local v1       #b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    .line 924
    .restart local v6       #service:Landroid/os/INetworkManagementService;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 926
    :try_start_3
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 938
    :cond_4
    if-eqz v4, :cond_5

    .line 940
    :try_start_4
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 951
    :cond_5
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iput-object v4, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    goto/16 :goto_0

    .line 928
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 930
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_5
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 933
    :goto_4
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v7, v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_0

    .line 941
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    move-object v2, v7

    .line 943
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_6
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 946
    :goto_5
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v8, 0x8

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1000(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 947
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1500(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v8

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$2500(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V

    .line 948
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 959
    .end local v1           #b:Landroid/os/IBinder;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #newUpstreamIfaceName:Ljava/lang/String;
    .end local v6           #service:Landroid/os/INetworkManagementService;
    :pswitch_3
    const/4 v3, 0x1

    .line 962
    :pswitch_4
    const-string v7, "network_management"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 963
    .restart local v1       #b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    .line 964
    .restart local v6       #service:Landroid/os/INetworkManagementService;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 966
    :try_start_7
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 979
    :cond_6
    :try_start_8
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 985
    if-eqz v3, :cond_7

    .line 986
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_0

    .line 968
    :catch_4
    move-exception v7

    move-object v2, v7

    .line 970
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_9
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 973
    :goto_6
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v7, v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_0

    .line 980
    .end local v2           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v7

    move-object v2, v7

    .line 981
    .restart local v2       #e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_0

    .line 990
    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    const-string v7, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tether lost upstream connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)V

    .line 992
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v7, :cond_8

    .line 993
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z
    invoke-static {v7, v12}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v7

    if-nez v7, :cond_8

    .line 994
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v8, 0xa

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1000(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 997
    :cond_8
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$1500(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v8

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v7, v8}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$2600(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V

    goto/16 :goto_0

    .line 971
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_6
    move-exception v7

    goto :goto_6

    .line 944
    .restart local v4       #newUpstreamIfaceName:Ljava/lang/String;
    :catch_7
    move-exception v7

    goto/16 :goto_5

    .line 931
    :catch_8
    move-exception v7

    goto/16 :goto_4

    .line 890
    .end local v4           #newUpstreamIfaceName:Ljava/lang/String;
    :catch_9
    move-exception v7

    goto/16 :goto_3

    .line 877
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
