.class Landroid/webkit/WebTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebTextView$1;,
        Landroid/webkit/WebTextView$OutlineDrawable;,
        Landroid/webkit/WebTextView$AutoCompleteAdapter;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String; = "webtextview"

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static isBidiEnabled:Z


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCharacter:[C

.field private mDragSent:Z

.field private mDragStartTime:J

.field private mDragStartX:F

.field private mDragStartY:F

.field private mFromFocusChange:Z

.field private mFromSetInputType:Z

.field private mFromWebKit:Z

.field private mGotEnterDown:Z

.field private mGotTouchDown:Z

.field private mHasPerformedLongClick:Z

.field private mHeightSpec:I

.field private mInSetTextAndKeepSelection:Z

.field private mMaxLength:I

.field private mNodePointer:I

.field private mPreChange:Ljava/lang/String;

.field private mScrolled:Z

.field private mSingle:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWidthSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    new-array v0, v1, [Landroid/text/InputFilter;

    sput-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 115
    invoke-static {v1}, Landroid/os/SystemProperties;->getCitArabicFlag(Z)Z

    move-result v0

    sput-boolean v0, Landroid/webkit/WebTextView;->isBidiEnabled:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 4
    .parameter "context"
    .parameter "webView"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 125
    const/4 v0, 0x0

    const v1, 0x10102b9

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    new-array v0, v2, [C

    iput-object v0, p0, Landroid/webkit/WebTextView;->mCharacter:[C

    .line 126
    iput-object p2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 130
    sget-boolean v0, Landroid/webkit/WebTextView;->isBidiEnabled:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Landroid/webkit/WebTextView;->createBackground()V

    .line 134
    iget-object v0, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v0, v3, v1}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 138
    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setCursorVisible(Z)V

    .line 142
    :cond_0
    return-void
.end method

.method private createBackground()V
    .locals 4

    .prologue
    .line 780
    iget-object v2, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 796
    :goto_0
    return-void

    .line 783
    :cond_0
    new-instance v2, Landroid/webkit/WebTextView$OutlineDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/webkit/WebTextView$OutlineDrawable;-><init>(Landroid/webkit/WebTextView$1;)V

    iput-object v2, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 785
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 788
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 789
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    or-int/lit8 v0, v2, 0x1

    .line 791
    .local v0, flags:I
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 795
    const/high16 v2, -0x100

    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private lineUpScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 315
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 316
    .local v0, layout:Landroid/text/Layout;
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 317
    iget v2, p0, Landroid/webkit/WebTextView;->mScrollY:I

    invoke-static {p0, v0, v2}, Landroid/text/method/Touch;->getMaxScrollX(Landroid/widget/TextView;Landroid/text/Layout;I)I

    move-result v2

    int-to-float v1, v2

    .line 322
    .local v1, maxScrollX:F
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    cmpl-float v3, v1, v4

    if-lez v3, :cond_1

    iget v3, p0, Landroid/webkit/WebTextView;->mScrollX:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    :goto_0
    iget v4, p0, Landroid/webkit/WebTextView;->mScrollY:I

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->scrollFocusedTextInput(FI)V

    .line 325
    .end local v1           #maxScrollX:F
    :cond_0
    return-void

    .restart local v1       #maxScrollX:F
    :cond_1
    move v3, v4

    .line 322
    goto :goto_0
.end method

.method private sendDomEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 645
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 646
    return-void
.end method

.method private setMaxLength(I)V
    .locals 3
    .parameter "maxLength"

    .prologue
    .line 806
    iput p1, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 807
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 808
    sget-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 813
    :goto_0
    return-void

    .line 810
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method


# virtual methods
.method bringIntoView()V
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->bringPointIntoView(I)Z

    .line 638
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 18
    .parameter "event"

    .prologue
    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 297
    :goto_0
    return v3

    .line 150
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    move v9, v3

    .line 151
    .local v9, down:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    .line 153
    .local v11, keyCode:I
    const/4 v10, 0x0

    .line 154
    .local v10, isArrowKey:Z
    packed-switch v11, :pswitch_data_0

    .line 168
    :goto_2
    const/16 v3, 0x3d

    if-ne v3, v11, :cond_5

    .line 169
    if-eqz v9, :cond_1

    .line 170
    const/4 v3, 0x5

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->onEditorAction(I)V

    .line 172
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 150
    .end local v9           #down:Z
    .end local v10           #isArrowKey:Z
    .end local v11           #keyCode:I
    :cond_2
    const/4 v3, 0x0

    move v9, v3

    goto :goto_1

    .line 159
    .restart local v9       #down:Z
    .restart local v10       #isArrowKey:Z
    .restart local v11       #keyCode:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v3

    if-nez v3, :cond_4

    .line 160
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 164
    :cond_4
    const/4 v10, 0x1

    goto :goto_2

    .line 174
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    .line 175
    .local v17, text:Landroid/text/Spannable;
    invoke-interface/range {v17 .. v17}, Landroid/text/Spannable;->length()I

    move-result v5

    .line 179
    .local v5, oldLength:I
    const/16 v3, 0x43

    if-ne v3, v11, :cond_6

    if-nez v5, :cond_6

    .line 180
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 181
    const/4 v3, 0x1

    goto :goto_0

    .line 184
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mSingle:Z

    move v3, v0

    if-eqz v3, :cond_9

    const/16 v3, 0x42

    if-ne v3, v11, :cond_9

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 186
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 188
    :cond_7
    if-nez v9, :cond_8

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 194
    .end local v5           #oldLength:I
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v11}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 195
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 197
    :cond_8
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 198
    .restart local v5       #oldLength:I
    :cond_9
    const/16 v3, 0x17

    if-ne v3, v11, :cond_e

    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 201
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 203
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v3

    if-nez v3, :cond_c

    .line 204
    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 208
    :cond_c
    if-nez v9, :cond_d

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 212
    :cond_d
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 216
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_f

    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mWidthSpec:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mHeightSpec:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 219
    :cond_f
    invoke-static/range {v17 .. v17}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    .line 220
    .local v14, oldStart:I
    invoke-static/range {v17 .. v17}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 222
    .local v13, oldEnd:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v3, v0

    if-ne v5, v3, :cond_11

    const/4 v3, 0x1

    move v12, v3

    .line 227
    .local v12, maxedOut:Z
    :goto_3
    if-eqz v12, :cond_12

    if-eq v13, v14, :cond_12

    .line 228
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 232
    .local v15, oldText:Ljava/lang/String;
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 243
    const/16 v3, 0x42

    if-ne v3, v11, :cond_10

    .line 247
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    .line 249
    :cond_10
    if-eqz v12, :cond_14

    if-nez v10, :cond_14

    const/16 v3, 0x43

    if-eq v11, v3, :cond_14

    .line 250
    if-ne v13, v14, :cond_13

    .line 252
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 222
    .end local v12           #maxedOut:Z
    .end local v15           #oldText:Ljava/lang/String;
    :cond_11
    const/4 v3, 0x0

    move v12, v3

    goto :goto_3

    .line 230
    .restart local v12       #maxedOut:Z
    :cond_12
    const-string v15, ""

    .restart local v15       #oldText:Ljava/lang/String;
    goto :goto_4

    .line 253
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v16

    .line 261
    .local v16, span:Landroid/text/Spannable;
    invoke-static/range {v16 .. v16}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v7

    .line 262
    .local v7, newStart:I
    invoke-static/range {v16 .. v16}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    .line 263
    .local v8, newEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 265
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 280
    .end local v7           #newStart:I
    .end local v8           #newEnd:I
    .end local v16           #span:Landroid/text/Spannable;
    :cond_14
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 284
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    move v3, v0

    if-eqz v3, :cond_16

    if-nez v9, :cond_16

    .line 285
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 288
    :cond_16
    if-eqz v10, :cond_18

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->resetTrackballTime()V

    .line 294
    if-eqz v9, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 297
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isSameTextField(I)Z
    .locals 1
    .parameter "ptr"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 330
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 336
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 343
    sget-boolean v0, Landroid/webkit/WebTextView;->isBidiEnabled:Z

    if-eqz v0, :cond_0

    .line 344
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 362
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeFocusCandidatePointer()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 358
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    goto :goto_0

    .line 360
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onDrawSubstitute()V
    .locals 0

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->updateCursorControllerPositions()V

    .line 366
    return-void
.end method

.method public onEditorAction(I)V
    .locals 4
    .parameter "actionCode"

    .prologue
    const/16 v3, 0x42

    const/4 v2, 0x0

    .line 370
    packed-switch p1, :pswitch_data_0

    .line 399
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 372
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeMoveCursorToNextTextInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 378
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 379
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 380
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    .line 384
    :pswitch_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onEditorAction(I)V

    goto :goto_0

    .line 389
    :pswitch_3
    iget-object v0, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 391
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 393
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 405
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 407
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 411
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onScrollChanged(IIII)V

    .line 412
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 413
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 7
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 417
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-eqz v1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 422
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 424
    .local v6, sp:Landroid/text/Spannable;
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 425
    .local v4, candStart:I
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .local v5, candEnd:I
    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 426
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 428
    .end local v4           #candStart:I
    .end local v5           #candEnd:I
    .end local v6           #sp:Landroid/text/Spannable;
    :cond_2
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView;->setSelection(II)V

    .line 435
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 18
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 441
    invoke-super/range {p0 .. p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 442
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 447
    .local v17, postChange:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v5, v0

    const/4 v6, -0x1

    if-le v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v6, v0

    if-le v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 453
    if-nez p4, :cond_2

    .line 454
    if-lez p3, :cond_0

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v6, p2, p3

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->deleteSelection(II)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto :goto_0

    .line 471
    :cond_2
    add-int v5, p2, p4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    add-int v6, p2, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 472
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v15

    .line 474
    .local v15, kmap:Landroid/view/KeyCharacterMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    move-object v5, v0

    invoke-virtual {v15, v5}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v13

    .line 475
    .local v13, events:[Landroid/view/KeyEvent;
    if-nez v13, :cond_6

    const/4 v5, 0x1

    move v11, v5

    .line 476
    .local v11, cannotUseKeyEvents:Z
    :goto_1
    if-eqz v11, :cond_7

    const/4 v5, 0x0

    move v12, v5

    .line 477
    .local v12, charactersFromKeyEvents:I
    :goto_2
    const/4 v5, 0x1

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_3

    if-eqz v11, :cond_8

    .line 478
    :cond_3
    add-int v5, p2, p4

    sub-int/2addr v5, v12

    move-object/from16 v0, p1

    move/from16 v1, p2

    move v2, v5

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 480
    .local v8, replace:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v7, p2, p3

    add-int v6, p2, p4

    sub-int v9, v6, v12

    add-int v6, p2, p4

    sub-int v10, v6, v12

    move/from16 v6, p2

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 494
    .end local v8           #replace:Ljava/lang/String;
    :cond_4
    :goto_3
    if-nez v11, :cond_9

    .line 495
    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    .line 496
    .local v16, length:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 499
    aget-object v5, v13, v14

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 500
    aget-object v5, v13, v14

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 496
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 475
    .end local v11           #cannotUseKeyEvents:Z
    .end local v12           #charactersFromKeyEvents:I
    .end local v14           #i:I
    .end local v16           #length:I
    :cond_6
    const/4 v5, 0x0

    move v11, v5

    goto :goto_1

    .line 476
    .restart local v11       #cannotUseKeyEvents:Z
    :cond_7
    const/4 v5, 0x1

    move v12, v5

    goto :goto_2

    .line 490
    .restart local v12       #charactersFromKeyEvents:I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v6, p2, p3

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setSelection(II)V

    goto :goto_3

    .line 504
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 590
    :goto_0
    const/4 v8, 0x1

    :goto_1
    return v8

    .line 511
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 514
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    .line 515
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    .line 517
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 518
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 519
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 520
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    goto :goto_0

    .line 523
    :pswitch_1
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_0

    .line 524
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 525
    const/4 v8, 0x0

    goto :goto_1

    .line 527
    :cond_0
    iget-object v8, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 528
    .local v6, slop:I
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 529
    .local v0, buffer:Landroid/text/Spannable;
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v3

    .line 530
    .local v3, initialScrollX:I
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v4

    .line 531
    .local v4, initialScrollY:I
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 532
    iget v8, p0, Landroid/webkit/WebTextView;->mScrollX:I

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 533
    .local v1, dx:I
    iget v8, p0, Landroid/webkit/WebTextView;->mScrollY:I

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 537
    .local v2, dy:I
    div-int/lit8 v7, v6, 0x2

    .line 538
    .local v7, smallerSlop:I
    if-gt v1, v7, :cond_1

    if-le v2, v7, :cond_2

    .line 540
    :cond_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 541
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 542
    const/4 v8, 0x1

    goto :goto_1

    .line 544
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 549
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 551
    :cond_3
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_5

    .line 553
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-nez v8, :cond_4

    .line 554
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    iget v10, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    iget-wide v11, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/WebView;->initiateTextFieldDrag(FFJ)V

    .line 556
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 558
    :cond_4
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->textFieldDrag(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 559
    .local v5, scrolled:Z
    if-eqz v5, :cond_5

    .line 560
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 561
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 562
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 565
    .end local v5           #scrolled:Z
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 568
    .end local v0           #buffer:Landroid/text/Spannable;
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #initialScrollX:I
    .end local v4           #initialScrollY:I
    .end local v6           #slop:I
    .end local v7           #smallerSlop:I
    :pswitch_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 569
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_6

    .line 570
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 571
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 573
    :cond_6
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    if-nez v8, :cond_7

    .line 576
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 577
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_7

    .line 578
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->touchUpOnTextField(Landroid/view/MotionEvent;)V

    .line 582
    :cond_7
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-eqz v8, :cond_8

    .line 583
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 585
    :cond_8
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    goto/16 :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 595
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 613
    :goto_0
    return v2

    .line 598
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move v2, v4

    .line 599
    goto :goto_0

    .line 603
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v2

    if-nez v2, :cond_2

    .line 604
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 606
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 607
    .local v1, text:Landroid/text/Spannable;
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 608
    .local v0, move:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 611
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    .line 613
    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    .line 619
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method remove()V
    .locals 3

    .prologue
    .line 628
    iget-object v0, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 630
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 631
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 632
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "rectangle"

    .prologue
    .line 983
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->inAnimateZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 984
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v0

    .line 986
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 653
    if-eqz p1, :cond_0

    .line 654
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 656
    #calls: Landroid/webkit/WebTextView$AutoCompleteAdapter;->setTextView(Landroid/widget/TextView;)V
    invoke-static {p1, p0}, Landroid/webkit/WebTextView$AutoCompleteAdapter;->access$000(Landroid/webkit/WebTextView$AutoCompleteAdapter;Landroid/widget/TextView;)V

    .line 658
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 659
    return-void
.end method

.method setDefaultSelection()V
    .locals 3

    .prologue
    .line 699
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 700
    .local v1, text:Landroid/text/Spannable;
    iget-boolean v2, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    move v0, v2

    .line 701
    .local v0, selection:I
    :goto_0
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_2

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 711
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 712
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0, v0}, Landroid/webkit/WebView;->setSelection(II)V

    .line 717
    :cond_0
    :goto_1
    return-void

    .line 700
    .end local v0           #selection:I
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 715
    .restart local v0       #selection:I
    :cond_2
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method setInPassword(Z)V
    .locals 1
    .parameter "inPassword"

    .prologue
    .line 725
    if-eqz p1, :cond_0

    .line 726
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 730
    sget-boolean v0, Landroid/webkit/WebTextView;->isBidiEnabled:Z

    if-nez v0, :cond_0

    .line 731
    invoke-direct {p0}, Landroid/webkit/WebTextView;->createBackground()V

    .line 738
    :cond_0
    sget-boolean v0, Landroid/webkit/WebTextView;->isBidiEnabled:Z

    if-nez v0, :cond_1

    .line 741
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setWillNotDraw(Z)V

    .line 742
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    :cond_1
    return-void

    .line 741
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 742
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 800
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 801
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 803
    return-void
.end method

.method setNodePointer(I)V
    .locals 0
    .parameter "ptr"

    .prologue
    .line 822
    iput p1, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    .line 823
    return-void
.end method

.method setRect(IIII)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v2, 0x4000

    .line 836
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 837
    .local v0, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 838
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v0, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 845
    .restart local v0       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 846
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p0, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    :goto_1
    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    .line 852
    invoke-static {p4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    .line 853
    return-void

    .line 840
    :cond_0
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 841
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 842
    iput p3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 843
    iput p4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    goto :goto_0

    .line 848
    :cond_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method setSelectionFromWebKit(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 859
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 861
    .local v1, text:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 862
    .local v0, length:I
    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    .line 863
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    .line 864
    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 865
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    goto :goto_0
.end method

.method setTextAndKeepSelection(Ljava/lang/String;)V
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 874
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 875
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 876
    .local v0, edit:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 877
    .local v3, selStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 878
    .local v2, selEnd:I
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 879
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v0, v5, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 880
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 881
    .local v1, newLength:I
    if-le v3, v1, :cond_0

    move v3, v1

    .line 882
    :cond_0
    if-le v2, v1, :cond_1

    move v2, v1

    .line 883
    :cond_1
    invoke-static {v0, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 884
    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 885
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    .line 886
    return-void
.end method

.method setType(I)V
    .locals 10
    .parameter "type"

    .prologue
    .line 897
    iget-object v7, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-nez v7, :cond_0

    .line 970
    :goto_0
    return-void

    .line 898
    :cond_0
    const/4 v6, 0x1

    .line 899
    .local v6, single:Z
    const/4 v2, 0x0

    .line 900
    .local v2, inPassword:Z
    const/4 v4, -0x1

    .line 901
    .local v4, maxLength:I
    const/4 v3, 0x1

    .line 902
    .local v3, inputType:I
    iget-object v7, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->nativeFocusCandidateHasNextTextfield()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 903
    or-int/lit16 v3, v3, 0xa0

    .line 905
    :cond_1
    const/high16 v1, -0x7000

    .line 907
    .local v1, imeOptions:I
    packed-switch p1, :pswitch_data_0

    .line 947
    or-int/lit8 v1, v1, 0x2

    .line 950
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 951
    if-eqz v6, :cond_2

    .line 952
    iget-object v7, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->nativeFocusCandidateFramePointer()I

    move-result v8

    iget v9, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebView;->requestLabel(II)V

    .line 954
    iget-object v7, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->nativeFocusCandidateMaxLength()I

    move-result v4

    .line 955
    const/4 v7, 0x2

    if-eq p1, v7, :cond_2

    .line 956
    iget-object v7, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v5

    .line 957
    .local v5, name:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 958
    iget-object v7, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v8, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v7, v5, v8}, Landroid/webkit/WebView;->requestFormData(Ljava/lang/String;I)V

    .line 962
    .end local v5           #name:Ljava/lang/String;
    :cond_2
    iput-boolean v6, p0, Landroid/webkit/WebTextView;->mSingle:Z

    .line 963
    invoke-direct {p0, v4}, Landroid/webkit/WebTextView;->setMaxLength(I)V

    .line 964
    invoke-virtual {p0, v6}, Landroid/webkit/WebTextView;->setHorizontallyScrolling(Z)V

    .line 965
    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 966
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setImeOptions(I)V

    .line 967
    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 968
    const/4 v0, 0x0

    .line 969
    .local v0, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto :goto_0

    .line 909
    .end local v0           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :pswitch_0
    or-int/lit8 v1, v1, 0x2

    .line 910
    goto :goto_1

    .line 912
    :pswitch_1
    const/4 v6, 0x0

    .line 913
    const v3, 0x2c001

    .line 917
    or-int/lit8 v1, v1, 0x1

    .line 918
    goto :goto_1

    .line 920
    :pswitch_2
    const/4 v2, 0x1

    .line 921
    or-int/lit8 v1, v1, 0x2

    .line 922
    goto :goto_1

    .line 924
    :pswitch_3
    or-int/lit8 v1, v1, 0x3

    .line 925
    goto :goto_1

    .line 929
    :pswitch_4
    or-int/lit8 v1, v1, 0x2

    .line 930
    goto :goto_1

    .line 932
    :pswitch_5
    or-int/lit8 v3, v3, 0x2

    .line 935
    or-int/lit8 v1, v1, 0x5

    .line 936
    goto :goto_1

    .line 938
    :pswitch_6
    or-int/lit8 v3, v3, 0x3

    .line 939
    or-int/lit8 v1, v1, 0x5

    .line 940
    goto :goto_1

    .line 944
    :pswitch_7
    or-int/lit8 v1, v1, 0x2

    .line 945
    goto :goto_1

    .line 907
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method updateCachedTextfield()V
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateCachedTextfield(Ljava/lang/String;)V

    .line 977
    return-void
.end method
