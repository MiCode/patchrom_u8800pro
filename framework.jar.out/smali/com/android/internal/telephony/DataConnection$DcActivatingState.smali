.class Lcom/android/internal/telephony/DataConnection$DcActivatingState;
.super Lcom/android/internal/util/HierarchicalState;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActivatingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    .line 555
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 602
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActivatingState not handled msg.what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 603
    const/4 v3, 0x0

    .line 606
    .local v3, retVal:Z
    :goto_0
    return v3

    .line 557
    .end local v3           #retVal:Z
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "DcActivatingState deferring msg.what=EVENT_DISCONNECT"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 558
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/internal/telephony/DataConnection;->access$800(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V

    .line 559
    const/4 v3, 0x1

    .line 560
    .restart local v3       #retVal:Z
    goto :goto_0

    .line 563
    .end local v3           #retVal:Z
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v5, "DcActivatingState msg.what=EVENT_SETUP_DATA_CONNECTION_DONE"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 565
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 566
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 568
    .local v1, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataConnection$SetupResult;
    invoke-static {v4, v0}, Lcom/android/internal/telephony/DataConnection;->access$900(Lcom/android/internal/telephony/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataConnection$SetupResult;

    move-result-object v2

    .line 569
    .local v2, result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    sget-object v4, Lcom/android/internal/telephony/DataConnection$2;->$SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection$SetupResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 596
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unkown SetupResult, should not happen"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 572
    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$1000(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionFailCause;->NONE:Lcom/android/internal/telephony/DataConnectionFailCause;

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/telephony/DataConnection$DcActiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnectionFailCause;)V

    .line 573
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$1000(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$1100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    .line 598
    :goto_1
    :pswitch_4
    const/4 v3, 0x1

    .line 599
    .restart local v3       #retVal:Z
    goto :goto_0

    .line 579
    .end local v3           #retVal:Z
    :pswitch_5
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/DataConnection$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnectionFailCause;)V

    .line 580
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$1200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    .line 584
    :pswitch_6
    const v4, 0xc3b4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 585
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V
    invoke-static {v4, v1}, Lcom/android/internal/telephony/DataConnection;->access$1300(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V

    .line 586
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mDisconnectingBadDnsState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$1400(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$1500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    .line 589
    :pswitch_7
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/DataConnection$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnectionFailCause;)V

    .line 590
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$1600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_1

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 569
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
