.class Landroid/net/LinkProvider$NotificationsThread$1;
.super Landroid/os/Handler;
.source "LinkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/LinkProvider$NotificationsThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/LinkProvider$NotificationsThread;


# direct methods
.method constructor <init>(Landroid/net/LinkProvider$NotificationsThread;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Landroid/net/LinkProvider$NotificationsThread$1;->this$1:Landroid/net/LinkProvider$NotificationsThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 337
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 339
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkInfo;

    .line 340
    .local v0, info:Landroid/net/LinkInfo;
    iget-object v2, p0, Landroid/net/LinkProvider$NotificationsThread$1;->this$1:Landroid/net/LinkProvider$NotificationsThread;

    iget-object v2, v2, Landroid/net/LinkProvider$NotificationsThread;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mLinkNotifier:Landroid/net/LinkNotifier;
    invoke-static {v2}, Landroid/net/LinkProvider;->access$400(Landroid/net/LinkProvider;)Landroid/net/LinkNotifier;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 341
    iget-object v2, p0, Landroid/net/LinkProvider$NotificationsThread$1;->this$1:Landroid/net/LinkProvider$NotificationsThread;

    iget-object v2, v2, Landroid/net/LinkProvider$NotificationsThread;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mLinkNotifier:Landroid/net/LinkNotifier;
    invoke-static {v2}, Landroid/net/LinkProvider;->access$400(Landroid/net/LinkProvider;)Landroid/net/LinkNotifier;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/net/LinkNotifier;->onLinkAvail(Landroid/net/LinkInfo;)V

    goto :goto_0

    .line 346
    .end local v0           #info:Landroid/net/LinkInfo;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkInfo;

    .line 347
    .restart local v0       #info:Landroid/net/LinkInfo;
    iget-object v2, p0, Landroid/net/LinkProvider$NotificationsThread$1;->this$1:Landroid/net/LinkProvider$NotificationsThread;

    iget-object v2, v2, Landroid/net/LinkProvider$NotificationsThread;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mLinkNotifier:Landroid/net/LinkNotifier;
    invoke-static {v2}, Landroid/net/LinkProvider;->access$400(Landroid/net/LinkProvider;)Landroid/net/LinkNotifier;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 348
    iget-object v2, p0, Landroid/net/LinkProvider$NotificationsThread$1;->this$1:Landroid/net/LinkProvider$NotificationsThread;

    iget-object v2, v2, Landroid/net/LinkProvider$NotificationsThread;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mLinkNotifier:Landroid/net/LinkNotifier;
    invoke-static {v2}, Landroid/net/LinkProvider;->access$400(Landroid/net/LinkProvider;)Landroid/net/LinkNotifier;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/net/LinkNotifier;->onBetterLinkAvail(Landroid/net/LinkInfo;)V

    goto :goto_0

    .line 353
    .end local v0           #info:Landroid/net/LinkInfo;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkInfo;

    .line 354
    .restart local v0       #info:Landroid/net/LinkInfo;
    iget-object v2, p0, Landroid/net/LinkProvider$NotificationsThread$1;->this$1:Landroid/net/LinkProvider$NotificationsThread;

    iget-object v2, v2, Landroid/net/LinkProvider$NotificationsThread;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mLinkNotifier:Landroid/net/LinkNotifier;
    invoke-static {v2}, Landroid/net/LinkProvider;->access$400(Landroid/net/LinkProvider;)Landroid/net/LinkNotifier;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 355
    iget-object v2, p0, Landroid/net/LinkProvider$NotificationsThread$1;->this$1:Landroid/net/LinkProvider$NotificationsThread;

    iget-object v2, v2, Landroid/net/LinkProvider$NotificationsThread;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mLinkNotifier:Landroid/net/LinkNotifier;
    invoke-static {v2}, Landroid/net/LinkProvider;->access$400(Landroid/net/LinkProvider;)Landroid/net/LinkNotifier;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/net/LinkNotifier;->onLinkLost(Landroid/net/LinkInfo;)V

    goto :goto_0

    .line 360
    .end local v0           #info:Landroid/net/LinkInfo;
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 361
    .local v1, reason:I
    iget-object v2, p0, Landroid/net/LinkProvider$NotificationsThread$1;->this$1:Landroid/net/LinkProvider$NotificationsThread;

    iget-object v2, v2, Landroid/net/LinkProvider$NotificationsThread;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mLinkNotifier:Landroid/net/LinkNotifier;
    invoke-static {v2}, Landroid/net/LinkProvider;->access$400(Landroid/net/LinkProvider;)Landroid/net/LinkNotifier;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Landroid/net/LinkProvider$NotificationsThread$1;->this$1:Landroid/net/LinkProvider$NotificationsThread;

    iget-object v2, v2, Landroid/net/LinkProvider$NotificationsThread;->this$0:Landroid/net/LinkProvider;

    #getter for: Landroid/net/LinkProvider;->mLinkNotifier:Landroid/net/LinkNotifier;
    invoke-static {v2}, Landroid/net/LinkProvider;->access$400(Landroid/net/LinkProvider;)Landroid/net/LinkNotifier;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/net/LinkNotifier;->onGetLinkFailure(I)V

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
