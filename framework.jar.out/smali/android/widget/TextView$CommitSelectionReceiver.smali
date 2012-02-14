.class Landroid/widget/TextView$CommitSelectionReceiver;
.super Landroid/os/ResultReceiver;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommitSelectionReceiver"
.end annotation


# instance fields
.field mNewEnd:I

.field mNewStart:I

.field private final mPrevEnd:I

.field private final mPrevStart:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;II)V
    .locals 1
    .parameter
    .parameter "prevStart"
    .parameter "prevEnd"

    .prologue
    .line 6945
    iput-object p1, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    .line 6946
    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 6947
    iput p2, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mPrevStart:I

    .line 6948
    iput p3, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mPrevEnd:I

    .line 6949
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 6955
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 6956
    iget-object v2, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/widget/TextView;->access$1300(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 6961
    .local v0, len:I
    iget v2, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewStart:I

    if-le v2, v0, :cond_0

    .line 6962
    iput v0, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewStart:I

    .line 6964
    :cond_0
    iget v2, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewEnd:I

    if-le v2, v0, :cond_1

    .line 6965
    iput v0, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewEnd:I

    .line 6969
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/widget/TextView;->access$1300(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    iget v3, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewStart:I

    iget v4, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewEnd:I

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6972
    iget-object v2, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectAllOnFocus:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$1400(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTouchFocusSelected:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$1500(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move v1, v2

    .line 6973
    .local v1, selectAllGotFocus:Z
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 6974
    iget-object v2, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->startTextSelectionMode()V
    invoke-static {v2}, Landroid/widget/TextView;->access$1600(Landroid/widget/TextView;)V

    .line 6977
    .end local v0           #len:I
    .end local v1           #selectAllGotFocus:Z
    :cond_2
    return-void

    .line 6972
    .restart local v0       #len:I
    :cond_3
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method
