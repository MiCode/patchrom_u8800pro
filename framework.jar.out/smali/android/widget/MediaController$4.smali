.class Landroid/widget/MediaController$4;
.super Landroid/os/Handler;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 497
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 521
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 499
    :pswitch_1
    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    goto :goto_0

    .line 502
    :pswitch_2
    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #calls: Landroid/widget/MediaController;->setProgress()I
    invoke-static {v1}, Landroid/widget/MediaController;->access$300(Landroid/widget/MediaController;)I

    move-result v0

    .line 503
    .local v0, pos:I
    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mDragging:Z
    invoke-static {v1}, Landroid/widget/MediaController;->access$400(Landroid/widget/MediaController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mShowing:Z
    invoke-static {v1}, Landroid/widget/MediaController;->access$000(Landroid/widget/MediaController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v1}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/MediaController$4;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 507
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, p1, v1, v2}, Landroid/widget/MediaController$4;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 514
    .end local v0           #pos:I
    :pswitch_3
    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #calls: Landroid/widget/MediaController;->updatePausePlay()V
    invoke-static {v1}, Landroid/widget/MediaController;->access$600(Landroid/widget/MediaController;)V

    .line 515
    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
