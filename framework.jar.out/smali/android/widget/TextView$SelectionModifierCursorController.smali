.class Landroid/widget/TextView$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mEndHandle:Landroid/widget/TextView$HandleView;

.field private mIsShowing:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousTapPositionX:I

.field private mPreviousTapPositionY:I

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/TextView$HandleView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    .line 8272
    iput-object p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8268
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 8273
    new-instance v0, Landroid/widget/TextView$HandleView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    .line 8274
    new-instance v0, Landroid/widget/TextView$HandleView;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    .line 8275
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 8276
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 8406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 8407
    .local v2, pointerCount:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 8408
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v3, v5

    .line 8409
    .local v3, x:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 8410
    .local v4, y:I
    iget-object v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v4}, Landroid/widget/TextView;->getOffset(II)I

    move-result v1

    .line 8411
    .local v1, offset:I
    iget v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v5, :cond_0

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 8412
    :cond_0
    iget v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v5, :cond_1

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 8407
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8414
    .end local v1           #offset:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_2
    return-void
.end method


# virtual methods
.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 8421
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 8417
    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 8291
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 8292
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 8293
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsShowing:Z

    .line 8294
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 8432
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isDragging()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 8297
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 8442
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 8356
    iget-object v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->isTextEditable()Z
    invoke-static {v9}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 8357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 8399
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v9, 0x0

    return v9

    .line 8359
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 8360
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 8363
    .local v8, y:I
    iget-object v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9, v7, v8}, Landroid/widget/TextView;->getOffset(II)I

    move-result v9

    iput v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 8366
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    sub-long v4, v9, v11

    .line 8367
    .local v4, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    int-to-long v9, v9

    cmp-long v9, v4, v9

    if-gtz v9, :cond_1

    .line 8368
    iget v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:I

    sub-int v0, v7, v9

    .line 8369
    .local v0, deltaX:I
    iget v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:I

    sub-int v1, v8, v9

    .line 8370
    .local v1, deltaY:I
    mul-int v9, v0, v0

    mul-int v10, v1, v1

    add-int v2, v9, v10

    .line 8371
    .local v2, distanceSquared:I
    iget-object v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 8372
    .local v3, doubleTapSlop:I
    mul-int v6, v3, v3

    .line 8373
    .local v6, slopSquared:I
    if-ge v2, v6, :cond_1

    .line 8374
    iget-object v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->startTextSelectionMode()V
    invoke-static {v9}, Landroid/widget/TextView;->access$1600(Landroid/widget/TextView;)V

    .line 8376
    iget-object v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    const/4 v10, 0x1

    #setter for: Landroid/widget/TextView;->mNoContextMenuOnUp:Z
    invoke-static {v9, v10}, Landroid/widget/TextView;->access$2902(Landroid/widget/TextView;Z)Z

    .line 8379
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v2           #distanceSquared:I
    .end local v3           #doubleTapSlop:I
    .end local v6           #slopSquared:I
    :cond_1
    iput v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:I

    .line 8380
    iput v8, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:I

    goto :goto_0

    .line 8388
    .end local v4           #duration:J
    .end local v7           #x:I
    .end local v8           #y:I
    :pswitch_2
    iget-object v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 8390
    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 8395
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto :goto_0

    .line 8357
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    .line 8436
    if-nez p1, :cond_0

    .line 8437
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    .line 8439
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    .line 8425
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 8426
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 8279
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8288
    :goto_0
    return-void

    .line 8283
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mIsShowing:Z

    .line 8284
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->updatePosition()V

    .line 8285
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->show()V

    .line 8286
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->show()V

    .line 8287
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/TextView;->access$2300(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public updatePosition()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 8335
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8351
    :goto_0
    return-void

    .line 8339
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8340
    .local v1, selectionStart:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 8342
    .local v0, selectionEnd:I
    if-ltz v1, :cond_1

    if-gez v0, :cond_2

    .line 8344
    :cond_1
    const-string v2, "TextView"

    const-string v3, "Update selection controller position called with no cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8345
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 8349
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView$HandleView;->positionAtCursor(IZ)V

    .line 8350
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView$HandleView;->positionAtCursor(IZ)V

    goto :goto_0
.end method

.method public updatePosition(Landroid/widget/TextView$HandleView;II)V
    .locals 5
    .parameter "handle"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8301
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 8302
    .local v3, selectionStart:I
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 8304
    .local v2, selectionEnd:I
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    if-ne p1, v4, :cond_1

    move v1, v3

    .line 8305
    .local v1, previousOffset:I
    :goto_0
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4, p2, p3, v1}, Landroid/widget/TextView;->getHysteresisOffset(III)I

    move-result v0

    .line 8308
    .local v0, offset:I
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$HandleView;

    if-ne p1, v4, :cond_4

    .line 8309
    if-eq v3, v0, :cond_0

    if-le v0, v2, :cond_2

    .line 8332
    :cond_0
    :goto_1
    return-void

    .end local v0           #offset:I
    .end local v1           #previousOffset:I
    :cond_1
    move v1, v2

    .line 8304
    goto :goto_0

    .line 8314
    .restart local v0       #offset:I
    .restart local v1       #previousOffset:I
    :cond_2
    if-ne v0, v2, :cond_3

    .line 8315
    const/4 v4, 0x1

    sub-int v0, v2, v4

    .line 8317
    :cond_3
    move v3, v0

    .line 8330
    :goto_2
    iget-object v4, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/widget/TextView;->access$1300(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8331
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->updatePosition()V

    goto :goto_1

    .line 8319
    :cond_4
    if-eq v2, v0, :cond_0

    if-lt v0, v3, :cond_0

    .line 8324
    if-ne v0, v3, :cond_5

    .line 8325
    add-int/lit8 v0, v3, 0x1

    .line 8327
    :cond_5
    move v2, v0

    goto :goto_2
.end method
