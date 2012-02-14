.class Landroid/widget/TextView$ChangeWatcher;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeWatcher"
.end annotation


# instance fields
.field private mBeforeText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 6592
    iput-object p1, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6592
    invoke-direct {p0, p1}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 6658
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 6660
    const/high16 v0, 0x1

    invoke-static {p1, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 6662
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 6664
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6602
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mInputType:I
    invoke-static {v1}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)I

    move-result v1

    #calls: Landroid/widget/TextView;->isPasswordInputType(I)Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6604
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    .line 6607
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    invoke-static {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->access$700(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    .line 6608
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 7
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"

    .prologue
    const/4 v3, -0x1

    .line 6676
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, v3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 6677
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 7
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"
    .parameter "st"
    .parameter "en"

    .prologue
    .line 6670
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move v5, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 6671
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 7
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"

    .prologue
    const/4 v4, -0x1

    .line 6682
    iget-object v0, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    .line 6683
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6616
    sget-boolean v2, Landroid/widget/TextView;->isBidiEnabled:Z

    if-eqz v2, :cond_2

    .line 6619
    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mArabicView:Z
    invoke-static {v2, v4}, Landroid/widget/TextView;->access$802(Landroid/widget/TextView;Z)Z

    .line 6620
    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    iput-boolean v4, v2, Landroid/widget/TextView;->mIsArabicText:Z

    .line 6621
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6622
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 6623
    .local v0, ch:C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_5

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_5

    .line 6631
    .end local v0           #ch:C
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    iget-boolean v2, v2, Landroid/widget/TextView;->mIsArabicText:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getGravity()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    .line 6633
    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mGravityModified:Z
    invoke-static {v2, v5}, Landroid/widget/TextView;->access$1002(Landroid/widget/TextView;Z)Z

    .line 6634
    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getGravity()I

    move-result v3

    #setter for: Landroid/widget/TextView;->mOldGravityVal:I
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$1102(Landroid/widget/TextView;I)I

    .line 6636
    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, -0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 6646
    .end local v1           #i:I
    :cond_2
    :goto_2
    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/widget/TextView;->handleTextChanged(Ljava/lang/CharSequence;III)V

    .line 6648
    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/widget/TextView;->access$1200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6651
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/widget/TextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 6652
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->mBeforeText:Ljava/lang/CharSequence;

    .line 6654
    :cond_4
    return-void

    .line 6625
    .restart local v0       #ch:C
    .restart local v1       #i:I
    :cond_5
    const/16 v2, 0x590

    if-lt v0, v2, :cond_6

    const/16 v2, 0x6ff

    if-gt v0, v2, :cond_6

    .line 6626
    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    iput-boolean v5, v2, Landroid/widget/TextView;->mIsArabicText:Z

    .line 6627
    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mArabicView:Z
    invoke-static {v2, v5}, Landroid/widget/TextView;->access$902(Landroid/widget/TextView;Z)Z

    goto :goto_1

    .line 6621
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 6638
    .end local v0           #ch:C
    :cond_7
    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mGravityModified:Z
    invoke-static {v2}, Landroid/widget/TextView;->access$1000(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    iget-boolean v2, v2, Landroid/widget/TextView;->mIsArabicText:Z

    if-nez v2, :cond_2

    .line 6640
    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mOldGravityVal:I
    invoke-static {v3}, Landroid/widget/TextView;->access$1100(Landroid/widget/TextView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 6641
    iget-object v2, p0, Landroid/widget/TextView$ChangeWatcher;->this$0:Landroid/widget/TextView;

    #setter for: Landroid/widget/TextView;->mGravityModified:Z
    invoke-static {v2, v4}, Landroid/widget/TextView;->access$1002(Landroid/widget/TextView;Z)Z

    goto :goto_2
.end method
