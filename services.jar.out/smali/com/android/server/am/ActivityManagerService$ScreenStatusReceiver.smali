.class Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1665
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "SCREEN_IDLE"

    .line 1668
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.stk.check_screen_idle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1669
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "SCREEN_STATUS_REQUEST"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lcom/android/server/am/ActivityManagerService;->mScreenStatusRequest:Z
    invoke-static {v3, v4}, Lcom/android/server/am/ActivityManagerService;->access$602(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 1670
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mScreenStatusRequest:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1671
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v2, v3, v6

    .line 1672
    .local v2, top:I
    if-ltz v2, :cond_0

    .line 1673
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.stk.idle_screen"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1674
    .local v0, StkIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1675
    .local v1, p:Lcom/android/server/am/ActivityRecord;
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1676
    const-string v3, "SCREEN_IDLE"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1680
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1684
    .end local v0           #StkIntent:Landroid/content/Intent;
    .end local v1           #p:Lcom/android/server/am/ActivityRecord;
    .end local v2           #top:I
    :cond_0
    return-void

    .line 1678
    .restart local v0       #StkIntent:Landroid/content/Intent;
    .restart local v1       #p:Lcom/android/server/am/ActivityRecord;
    .restart local v2       #top:I
    :cond_1
    const-string v3, "SCREEN_IDLE"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method
