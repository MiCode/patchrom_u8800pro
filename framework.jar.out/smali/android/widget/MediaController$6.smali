.class Landroid/widget/MediaController$6;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private duration:J

.field private newposition:J

.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 727
    if-nez p3, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/widget/MediaController$6;->duration:J

    .line 737
    iget-wide v0, p0, Landroid/widget/MediaController$6;->duration:J

    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/MediaController$6;->newposition:J

    .line 739
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mIsSteamMedia:Z
    invoke-static {v0}, Landroid/widget/MediaController;->access$800(Landroid/widget/MediaController;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 740
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    iget-wide v1, p0, Landroid/widget/MediaController$6;->newposition:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 743
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/MediaController;->access$1100(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/MediaController;->access$1100(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    iget-wide v2, p0, Landroid/widget/MediaController$6;->newposition:J

    long-to-int v2, v2

    #calls: Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/widget/MediaController;->access$1200(Landroid/widget/MediaController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 714
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 716
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    const/4 v1, 0x1

    #setter for: Landroid/widget/MediaController;->mDragging:Z
    invoke-static {v0, v1}, Landroid/widget/MediaController;->access$402(Landroid/widget/MediaController;Z)Z

    .line 723
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/MediaController;->access$200(Landroid/widget/MediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 724
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "bar"

    .prologue
    .line 748
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    const/4 v1, 0x0

    #setter for: Landroid/widget/MediaController;->mDragging:Z
    invoke-static {v0, v1}, Landroid/widget/MediaController;->access$402(Landroid/widget/MediaController;Z)Z

    .line 751
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mIsSteamMedia:Z
    invoke-static {v0}, Landroid/widget/MediaController;->access$800(Landroid/widget/MediaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v0}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    iget-wide v1, p0, Landroid/widget/MediaController$6;->newposition:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 754
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/MediaController;->access$1100(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/MediaController;->access$1100(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    iget-wide v2, p0, Landroid/widget/MediaController$6;->newposition:J

    long-to-int v2, v2

    #calls: Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/widget/MediaController;->access$1200(Landroid/widget/MediaController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #calls: Landroid/widget/MediaController;->setProgress()I
    invoke-static {v0}, Landroid/widget/MediaController;->access$300(Landroid/widget/MediaController;)I

    .line 760
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #calls: Landroid/widget/MediaController;->updatePausePlay()V
    invoke-static {v0}, Landroid/widget/MediaController;->access$600(Landroid/widget/MediaController;)V

    .line 761
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 766
    iget-object v0, p0, Landroid/widget/MediaController$6;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/MediaController;->access$200(Landroid/widget/MediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 767
    return-void
.end method
