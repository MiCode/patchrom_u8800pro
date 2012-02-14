.class final Lcom/android/internal/policy/Powerstate$2;
.super Landroid/content/BroadcastReceiver;
.source "Powerstate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/Powerstate;->sendStopBC(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$broadcastDoneSync:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/internal/policy/Powerstate$2;->val$broadcastDoneSync:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/internal/policy/Powerstate$2;->val$broadcastDoneSync:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/android/internal/policy/Powerstate;->access$102(Z)Z

    .line 611
    iget-object v1, p0, Lcom/android/internal/policy/Powerstate$2;->val$broadcastDoneSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 612
    monitor-exit v0

    .line 613
    return-void

    .line 612
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
