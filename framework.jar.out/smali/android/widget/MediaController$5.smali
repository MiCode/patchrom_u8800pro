.class Landroid/widget/MediaController$5;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 642
    iput-object p1, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 645
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mIsSteamMedia:Z
    invoke-static {v0}, Landroid/widget/MediaController;->access$800(Landroid/widget/MediaController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 651
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    const/4 v1, 0x3

    #calls: Landroid/widget/MediaController;->doMediaOpInThread(I)V
    invoke-static {v0, v1}, Landroid/widget/MediaController;->access$900(Landroid/widget/MediaController;I)V

    .line 656
    :goto_0
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 657
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #calls: Landroid/widget/MediaController;->doPauseResume()V
    invoke-static {v0}, Landroid/widget/MediaController;->access$1000(Landroid/widget/MediaController;)V

    goto :goto_0
.end method
