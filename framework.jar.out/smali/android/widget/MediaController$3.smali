.class Landroid/widget/MediaController$3;
.super Ljava/lang/Thread;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MediaController;->doMediaOpInThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;

.field final synthetic val$operation:I


# direct methods
.method constructor <init>(Landroid/widget/MediaController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    iput p2, p0, Landroid/widget/MediaController$3;->val$operation:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 481
    iget v0, p0, Landroid/widget/MediaController$3;->val$operation:I

    packed-switch v0, :pswitch_data_0

    .line 488
    :goto_0
    return-void

    .line 483
    :pswitch_0
    iget-object v0, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    #calls: Landroid/widget/MediaController;->doPauseResumeWithoutUpdateUI()V
    invoke-static {v0}, Landroid/widget/MediaController;->access$100(Landroid/widget/MediaController;)V

    .line 485
    iget-object v0, p0, Landroid/widget/MediaController$3;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/MediaController;->access$200(Landroid/widget/MediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
