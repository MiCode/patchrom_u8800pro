.class Lcom/android/internal/telephony/IccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 94
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 95
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    move v3, v5

    :goto_1
    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 97
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 98
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    move v3, v4

    .line 96
    goto :goto_1

    .line 101
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 102
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 103
    :try_start_1
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 104
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v3, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 107
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    #calls: Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V
    invoke-static {v3, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/ArrayList;)V

    .line 113
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 109
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v3, "Cannot load Sms records"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 118
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 119
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->smscAddr:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$402(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 126
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    move v3, v5

    :goto_4
    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 127
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 122
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->smscAddr:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$402(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :cond_4
    move v3, v4

    .line 126
    goto :goto_4

    .line 131
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 132
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 133
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5

    move v3, v5

    :goto_5
    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 134
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 135
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v2

    :cond_5
    move v3, v4

    .line 133
    goto :goto_5

    .line 140
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 141
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 142
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    move v3, v5

    :goto_6
    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 143
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 144
    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v2

    :cond_6
    move v3, v4

    .line 142
    goto :goto_6

    .line 92
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
    .end sparse-switch
.end method
