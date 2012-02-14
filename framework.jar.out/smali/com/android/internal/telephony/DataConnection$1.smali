.class Lcom/android/internal/telephony/DataConnection$1;
.super Ljava/lang/Object;
.source "DataConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getStateAsString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, state:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "songhao state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 240
    const-string v1, "DcDisconnectingState"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string/jumbo v2, "songhao resetSynchronously"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetSynchronously()V

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string/jumbo v2, "songhao removeCallbacks"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mResetConnection:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
