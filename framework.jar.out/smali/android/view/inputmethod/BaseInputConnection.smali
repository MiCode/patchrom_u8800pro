.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final COMPOSING:Ljava/lang/Object; = null

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field final mDummyMode:Z

.field mEditable:Landroid/text/Editable;

.field final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .parameter "targetView"
    .parameter "fullEditor"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 75
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 76
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 1
    .parameter "mgr"
    .parameter "fullEditor"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 69
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 70
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureDefaultComposingSpans()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 576
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 578
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 579
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 585
    .local v1, context:Landroid/content/Context;
    :goto_0
    if-eqz v1, :cond_0

    .line 586
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [I

    const v6, 0x1010230

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 590
    .local v3, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 591
    .local v2, style:Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 592
    if-eqz v2, :cond_0

    instance-of v4, v2, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    .line 593
    move-object v0, v2

    check-cast v0, Landroid/text/Spanned;

    move-object v4, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v4, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 598
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #style:Ljava/lang/CharSequence;
    .end local v3           #ta:Landroid/content/res/TypedArray;
    :cond_0
    return-void

    .line 580
    :cond_1
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 581
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .restart local v1       #context:Landroid/content/Context;
    goto :goto_0

    .line 583
    .end local v1           #context:Landroid/content/Context;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #context:Landroid/content/Context;
    goto :goto_0
.end method

.method public static getComposingSpanEnd(Landroid/text/Spannable;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 127
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getComposingSpanStart(Landroid/text/Spannable;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 123
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static final removeComposingSpans(Landroid/text/Spannable;)V
    .locals 6
    .parameter "text"

    .prologue
    .line 80
    sget-object v3, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 81
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 82
    .local v2, sps:[Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 83
    array-length v3, v2

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 84
    aget-object v1, v2, v0

    .line 85
    .local v1, o:Ljava/lang/Object;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 86
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 83
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 90
    .end local v0           #i:I
    .end local v1           #o:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 11
    .parameter "text"
    .parameter "newCursorPosition"
    .parameter "composing"

    .prologue
    const/4 v7, -0x1

    .line 602
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v3

    .line 603
    .local v3, content:Landroid/text/Editable;
    if-nez v3, :cond_0

    .line 688
    :goto_0
    return-void

    .line 607
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 610
    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 611
    .local v1, a:I
    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    .line 615
    .local v2, b:I
    if-ge v2, v1, :cond_1

    .line 616
    move v6, v1

    .line 617
    .local v6, tmp:I
    move v1, v2

    .line 618
    move v2, v6

    .line 621
    .end local v6           #tmp:I
    :cond_1
    if-eq v1, v7, :cond_3

    if-eq v2, v7, :cond_3

    .line 622
    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 635
    :cond_2
    :goto_1
    if-eqz p3, :cond_8

    .line 636
    const/4 v5, 0x0

    .line 637
    .local v5, sp:Landroid/text/Spannable;
    instance-of v7, p1, Landroid/text/Spannable;

    if-nez v7, :cond_6

    .line 638
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .end local v5           #sp:Landroid/text/Spannable;
    invoke-direct {v5, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 639
    .restart local v5       #sp:Landroid/text/Spannable;
    move-object p1, v5

    .line 640
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 641
    iget-object v7, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v7, :cond_7

    .line 642
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v7, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v7, v7

    if-ge v4, v7, :cond_7

    .line 643
    iget-object v7, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v7, v7, v4

    const/4 v8, 0x0

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v9

    const/16 v10, 0x121

    invoke-interface {v5, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 642
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 624
    .end local v4           #i:I
    .end local v5           #sp:Landroid/text/Spannable;
    :cond_3
    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 625
    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 626
    if-gez v1, :cond_4

    const/4 v1, 0x0

    .line 627
    :cond_4
    if-gez v2, :cond_5

    const/4 v2, 0x0

    .line 628
    :cond_5
    if-ge v2, v1, :cond_2

    .line 629
    move v6, v1

    .line 630
    .restart local v6       #tmp:I
    move v1, v2

    .line 631
    move v2, v6

    goto :goto_1

    .line 648
    .end local v6           #tmp:I
    .restart local v5       #sp:Landroid/text/Spannable;
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v5, v0

    .line 650
    :cond_7
    invoke-static {v5}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 669
    .end local v5           #sp:Landroid/text/Spannable;
    :cond_8
    if-lez p2, :cond_b

    .line 670
    const/4 v7, 0x1

    sub-int v7, v2, v7

    add-int/2addr p2, v7

    .line 674
    :goto_3
    if-gez p2, :cond_9

    const/4 p2, 0x0

    .line 675
    :cond_9
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v7

    if-le p2, v7, :cond_a

    .line 676
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result p2

    .line 677
    :cond_a
    invoke-static {v3, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 679
    invoke-interface {v3, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 687
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 672
    :cond_b
    add-int/2addr p2, v1

    goto :goto_3
.end method

.method private sendCurrentText()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 536
    iget-boolean v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-nez v1, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v8

    .line 541
    .local v8, content:Landroid/text/Editable;
    if-eqz v8, :cond_0

    .line 542
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v6

    .line 543
    .local v6, N:I
    if-eqz v6, :cond_0

    .line 546
    if-ne v6, v2, :cond_4

    .line 549
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v1, :cond_2

    .line 550
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 553
    :cond_2
    new-array v7, v2, [C

    .line 554
    .local v7, chars:[C
    invoke-interface {v8, v4, v2, v7, v4}, Landroid/text/Editable;->getChars(II[CI)V

    .line 555
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v1, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v9

    .line 556
    .local v9, events:[Landroid/view/KeyEvent;
    if-eqz v9, :cond_4

    .line 557
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v1, v9

    if-ge v10, v1, :cond_3

    .line 559
    aget-object v1, v9, v10

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 557
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 561
    :cond_3
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 568
    .end local v7           #chars:[C
    .end local v9           #events:[Landroid/view/KeyEvent;
    .end local v10           #i:I
    :cond_4
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 570
    .local v0, event:Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 571
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    .line 94
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x121

    .line 98
    const-class v4, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 99
    .local v3, sps:[Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 100
    array-length v4, v3

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 101
    aget-object v2, v3, v1

    .line 102
    .local v2, o:Ljava/lang/Object;
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v2, v4, :cond_1

    .line 103
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 100
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 108
    .local v0, fl:I
    and-int/lit16 v4, v0, 0x133

    if-eq v4, v7, :cond_0

    .line 110
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    and-int/lit8 v6, v0, -0x34

    or-int/lit16 v6, v6, 0x100

    or-int/lit8 v6, v6, 0x21

    invoke-interface {p0, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 118
    .end local v0           #fl:I
    .end local v1           #i:I
    .end local v2           #o:Ljava/lang/Object;
    :cond_2
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v4, p1, p2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 120
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .parameter "states"

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 165
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 167
    :goto_0
    return v1

    .line 166
    :cond_0
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 167
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 185
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 10
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/4 v9, -0x1

    .line 196
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 197
    .local v4, content:Landroid/text/Editable;
    if-nez v4, :cond_0

    const/4 v9, 0x0

    .line 243
    :goto_0
    return v9

    .line 199
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 201
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 202
    .local v0, a:I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 204
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 205
    move v8, v0

    .line 206
    .local v8, tmp:I
    move v0, v1

    .line 207
    move v1, v8

    .line 211
    .end local v8           #tmp:I
    :cond_1
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 212
    .local v2, ca:I
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 213
    .local v3, cb:I
    if-ge v3, v2, :cond_2

    .line 214
    move v8, v2

    .line 215
    .restart local v8       #tmp:I
    move v2, v3

    .line 216
    move v3, v8

    .line 218
    .end local v8           #tmp:I
    :cond_2
    if-eq v2, v9, :cond_4

    if-eq v3, v9, :cond_4

    .line 219
    if-ge v2, v0, :cond_3

    move v0, v2

    .line 220
    :cond_3
    if-le v3, v1, :cond_4

    move v1, v3

    .line 223
    :cond_4
    const/4 v5, 0x0

    .line 225
    .local v5, deleted:I
    if-lez p1, :cond_6

    .line 226
    sub-int v7, v0, p1

    .line 227
    .local v7, start:I
    if-gez v7, :cond_5

    const/4 v7, 0x0

    .line 228
    :cond_5
    invoke-interface {v4, v7, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 229
    sub-int v5, v0, v7

    .line 232
    .end local v7           #start:I
    :cond_6
    if-lez p2, :cond_8

    .line 233
    sub-int/2addr v1, v5

    .line 235
    add-int v6, v1, p2

    .line 236
    .local v6, end:I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v9

    if-le v6, v9, :cond_7

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    .line 238
    :cond_7
    invoke-interface {v4, v1, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 241
    .end local v6           #end:I
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 243
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 254
    .local v0, content:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 256
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 257
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 258
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 260
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCursorCapsMode(I)I
    .locals 6
    .parameter "reqModes"

    .prologue
    const/4 v5, 0x0

    .line 269
    iget-boolean v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-eqz v4, :cond_0

    move v4, v5

    .line 283
    :goto_0
    return v4

    .line 271
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 272
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_1

    move v4, v5

    goto :goto_0

    .line 274
    :cond_1
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 275
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 277
    .local v1, b:I
    if-le v0, v1, :cond_2

    .line 278
    move v3, v0

    .line 279
    .local v3, tmp:I
    move v0, v1

    .line 280
    move v1, v3

    .line 283
    .end local v3           #tmp:I
    :cond_2
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 139
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 141
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .parameter "request"
    .parameter "flags"

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 329
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 330
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-object v4

    .line 332
    :cond_1
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 333
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 335
    .local v1, b:I
    if-le v0, v1, :cond_2

    .line 336
    move v3, v0

    .line 337
    .local v3, tmp:I
    move v0, v1

    .line 338
    move v1, v3

    .line 341
    .end local v3           #tmp:I
    :cond_2
    if-eq v0, v1, :cond_0

    .line 343
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_3

    .line 344
    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 346
    :cond_3
    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 355
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    .line 379
    :goto_0
    return-object v4

    .line 357
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 358
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 360
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 361
    move v3, v0

    .line 362
    .local v3, tmp:I
    move v0, v1

    .line 363
    move v1, v3

    .line 367
    .end local v3           #tmp:I
    :cond_1
    if-gez v1, :cond_2

    .line 368
    const/4 v1, 0x0

    .line 371
    :cond_2
    add-int v4, v1, p1

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 372
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int p1, v4, v1

    .line 376
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 377
    add-int v4, v1, p1

    invoke-interface {v2, v1, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 379
    :cond_4
    add-int v4, v1, p1

    invoke-static {v2, v1, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 299
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    .line 321
    :goto_0
    return-object v4

    .line 301
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 302
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 304
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 305
    move v3, v0

    .line 306
    .local v3, tmp:I
    move v0, v1

    .line 307
    move v1, v3

    .line 310
    .end local v3           #tmp:I
    :cond_1
    if-gtz v0, :cond_2

    .line 311
    const-string v4, ""

    goto :goto_0

    .line 314
    :cond_2
    if-le p1, v0, :cond_3

    .line 315
    move p1, v0

    .line 318
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 319
    sub-int v4, v0, p1

    invoke-interface {v2, v4, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 321
    :cond_4
    sub-int v4, v0, p1

    invoke-static {v2, v4, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 15
    .parameter "actionCode"

    .prologue
    .line 386
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 387
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x42

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x16

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 391
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 531
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->setFullscreenMode(Z)V

    .line 532
    const/4 v0, 0x1

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 491
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 492
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v0, v2

    .line 493
    .local v0, h:Landroid/os/Handler;
    :goto_0
    if-nez v0, :cond_0

    .line 494
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 498
    :cond_0
    if-eqz v0, :cond_1

    .line 499
    const/16 v2, 0x3f3

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 502
    :cond_1
    monitor-exit v1

    .line 503
    const/4 v1, 0x0

    return v1

    .line 492
    .end local v0           #h:Landroid/os/Handler;
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 511
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 512
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v0, v2

    .line 513
    .local v0, h:Landroid/os/Handler;
    :goto_0
    if-nez v0, :cond_0

    .line 514
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 515
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 518
    :cond_0
    if-eqz v0, :cond_1

    .line 519
    const/16 v2, 0x406

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 522
    :cond_1
    monitor-exit v1

    .line 523
    const/4 v1, 0x0

    return v1

    .line 512
    .end local v0           #h:Landroid/os/Handler;
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 522
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setComposingRegion(II)Z
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x121

    .line 424
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 425
    .local v2, content:Landroid/text/Editable;
    if-eqz v2, :cond_6

    .line 426
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 427
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 428
    move v0, p1

    .line 429
    .local v0, a:I
    move v1, p2

    .line 430
    .local v1, b:I
    if-le v0, v1, :cond_0

    .line 431
    move v5, v0

    .line 432
    .local v5, tmp:I
    move v0, v1

    .line 433
    move v1, v5

    .line 436
    .end local v5           #tmp:I
    :cond_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    .line 437
    .local v4, length:I
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 438
    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 439
    :cond_2
    if-le v0, v4, :cond_3

    move v0, v4

    .line 440
    :cond_3
    if-le v1, v4, :cond_4

    move v1, v4

    .line 442
    :cond_4
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 443
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 444
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_5

    .line 445
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 444
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    .end local v3           #i:I
    :cond_5
    sget-object v6, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 453
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 454
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 456
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v4           #length:I
    :cond_6
    const/4 v6, 0x1

    return v6
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v0, 0x1

    .line 419
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 420
    return v0
.end method

.method public setSelection(II)Z
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x1

    .line 465
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 466
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 483
    :goto_0
    return v2

    .line 467
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 468
    .local v1, len:I
    if-gt p1, v1, :cond_1

    if-le p2, v1, :cond_2

    :cond_1
    move v2, v3

    .line 473
    goto :goto_0

    .line 475
    :cond_2
    if-ne p1, p2, :cond_3

    const/high16 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 479
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    :goto_1
    move v2, v3

    .line 483
    goto :goto_0

    .line 481
    :cond_3
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method
