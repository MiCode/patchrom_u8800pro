.class Landroid/webkit/WebViewCore$WebCoreThread$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$WebCoreThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore$WebCoreThread;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$WebCoreThread;)V
    .locals 0
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-class v2, Landroid/webkit/WebViewCore;

    .line 630
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 651
    :goto_0
    return-void

    .line 632
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebViewCore;

    .line 633
    .local v0, core:Landroid/webkit/WebViewCore;
    #calls: Landroid/webkit/WebViewCore;->initialize()V
    invoke-static {v0}, Landroid/webkit/WebViewCore;->access$500(Landroid/webkit/WebViewCore;)V

    .line 634
    const-class v1, Landroid/webkit/WebViewCore;

    monitor-enter v2

    .line 635
    :try_start_0
    const-class v2, Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 636
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 641
    .end local v0           #core:Landroid/webkit/WebViewCore;
    :pswitch_1
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 647
    :pswitch_2
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 630
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
