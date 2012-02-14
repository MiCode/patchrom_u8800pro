.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 48
    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 50
    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 56
    iput-object v2, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 57
    iput-object v2, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/GridView;->mGravity:I

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput v8, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 48
    iput v7, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 50
    iput v7, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 51
    iput v9, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 56
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 57
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 59
    iput v11, p0, Landroid/widget/GridView;->mGravity:I

    .line 61
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 74
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 79
    .local v2, hSpacing:I
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 81
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 83
    .local v5, vSpacing:I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 85
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 86
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 87
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 90
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 91
    .local v1, columnWidth:I
    if-lez v1, :cond_1

    .line 92
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 95
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 96
    .local v4, numColumns:I
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 98
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 99
    if-ltz v3, :cond_2

    .line 100
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setGravity(I)V

    .line 103
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 701
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 705
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 709
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 710
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 713
    .local v0, offset:I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 715
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 729
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 736
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 737
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 740
    .local v0, offset:I
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 742
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 1786
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 1788
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 1792
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 1795
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1796
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 1797
    .local v2, delta:I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 1800
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 1802
    :cond_0
    if-gez v2, :cond_1

    .line 1804
    const/4 v2, 0x0

    .line 1823
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1824
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 1827
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 1808
    :cond_3
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1809
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 1811
    .restart local v2       #delta:I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 1814
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 1817
    :cond_4
    if-lez v2, :cond_1

    .line 1819
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x82

    const/16 v4, 0x21

    const/4 v3, 0x1

    .line 1391
    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    move v2, v6

    .line 1479
    :goto_0
    return v2

    .line 1395
    :cond_0
    iget-boolean v2, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 1396
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1399
    :cond_1
    const/4 v1, 0x0

    .line 1400
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1402
    .local v0, action:I
    if-eq v0, v3, :cond_3

    .line 1403
    iget v2, p0, Landroid/widget/GridView;->mSelectedPosition:I

    if-gez v2, :cond_2

    .line 1404
    sparse-switch p1, :sswitch_data_0

    .line 1417
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 1464
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 1465
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1468
    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    .line 1469
    goto :goto_0

    .line 1412
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelection()Z

    move v2, v3

    .line 1413
    goto :goto_0

    .line 1419
    :sswitch_1
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    .line 1420
    goto :goto_1

    .line 1423
    :sswitch_2
    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    .line 1424
    goto :goto_1

    .line 1427
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1428
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1431
    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v1

    .line 1433
    goto :goto_1

    .line 1436
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1437
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1439
    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v1

    .line 1441
    goto :goto_1

    .line 1445
    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 1446
    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    :cond_7
    move v2, v3

    .line 1449
    goto :goto_0

    .line 1453
    :sswitch_6
    iget-object v2, p0, Landroid/widget/GridView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/widget/GridView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1454
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1455
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1457
    :cond_9
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1471
    :cond_a
    packed-switch v0, :pswitch_data_0

    move v2, v6

    .line 1479
    goto/16 :goto_0

    .line 1473
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1475
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1477
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1404
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1417
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 1471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 10
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    const/4 v9, 0x1

    .line 513
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, p3

    sub-int v6, v7, v9

    .line 514
    .local v6, lastPosition:I
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v9

    if-ne v6, v7, :cond_2

    if-lez p3, :cond_2

    .line 516
    sub-int v7, p3, v9

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 519
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 521
    .local v4, lastBottom:I
    iget v7, p0, Landroid/widget/GridView;->mBottom:I

    iget v8, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 525
    .local v1, end:I
    sub-int v0, v1, v4

    .line 527
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 528
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 532
    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 533
    :cond_0
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 535
    iget-object v7, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 539
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 540
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 543
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_3

    move v8, v9

    :goto_0
    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 546
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 550
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_2
    return-void

    .restart local v0       #bottomOffset:I
    .restart local v1       #end:I
    .restart local v2       #firstChild:Landroid/view/View;
    .restart local v3       #firstTop:I
    .restart local v4       #lastBottom:I
    .restart local v5       #lastChild:Landroid/view/View;
    :cond_3
    move v8, p1

    .line 543
    goto :goto_0
.end method

.method private correctTooLow(III)V
    .locals 11
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    const/4 v10, 0x1

    .line 553
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p3, :cond_2

    .line 555
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 558
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 561
    .local v2, firstTop:I
    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 564
    .local v6, start:I
    iget v8, p0, Landroid/widget/GridView;->mBottom:I

    iget v9, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 568
    .local v0, end:I
    sub-int v7, v2, v6

    .line 569
    .local v7, topOffset:I
    sub-int v8, p3, v10

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 570
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 571
    .local v3, lastBottom:I
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v8, p3

    sub-int v5, v8, v10

    .line 575
    .local v5, lastPosition:I
    if-lez v7, :cond_2

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v8, v10

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_2

    .line 576
    :cond_0
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_1

    .line 578
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 582
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 583
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ge v5, v8, :cond_2

    .line 586
    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v8, :cond_3

    move v8, v10

    :goto_0
    add-int/2addr v8, v5

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 589
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 593
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_2
    return-void

    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_3
    move v8, p1

    .line 586
    goto :goto_0
.end method

.method private determineColumns(I)V
    .locals 7
    .parameter "availableSpace"

    .prologue
    const/4 v6, 0x1

    .line 842
    iget v1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 843
    .local v1, requestedHorizontalSpacing:I
    iget v3, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 844
    .local v3, stretchMode:I
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 846
    .local v0, requestedColumnWidth:I
    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 847
    if-lez v0, :cond_1

    .line 849
    add-int v4, p1, v1

    add-int v5, v0, v1

    div-int/2addr v4, v5

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 860
    :goto_0
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    if-gtz v4, :cond_0

    .line 861
    iput v6, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 864
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 872
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v5, v6

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    .line 874
    .local v2, spaceLeftOver:I
    packed-switch v3, :pswitch_data_1

    .line 906
    .end local v2           #spaceLeftOver:I
    :goto_1
    return-void

    .line 853
    :cond_1
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    .line 857
    :cond_2
    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    .line 867
    :pswitch_0
    iput v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 868
    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 877
    .restart local v2       #spaceLeftOver:I
    :pswitch_1
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v4, v2, v4

    add-int/2addr v4, v0

    iput v4, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 878
    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 883
    :pswitch_2
    iput v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 884
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v4, v6, :cond_3

    .line 885
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v4, v6

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 888
    :cond_3
    add-int v4, v1, v2

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 894
    :pswitch_3
    iput v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 895
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v4, v6, :cond_4

    .line 896
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v4, v4, 0x1

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 899
    :cond_4
    add-int v4, v1, v2

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 864
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 874
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 5
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 218
    .local v1, selectedView:Landroid/view/View;
    iget v3, p0, Landroid/widget/GridView;->mBottom:I

    iget v4, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 220
    .local v0, end:I
    :goto_0
    if-ge p2, v0, :cond_1

    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge p1, v3, :cond_1

    .line 221
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 222
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 223
    move-object v1, v2

    .line 228
    :cond_0
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 230
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 231
    goto :goto_0

    .line 233
    .end local v2           #temp:Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .parameter "lastPosition"
    .parameter "nextBottom"

    .prologue
    const/4 v2, 0x1

    .line 344
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 345
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 347
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v2

    sub-int v0, v1, p1

    .line 348
    .local v0, invertedPosition:I
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 350
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 18
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 606
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 607
    .local v6, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move v13, v0

    .line 608
    .local v13, selectedPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v8, v0

    .line 609
    .local v8, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move v15, v0

    .line 612
    .local v15, verticalSpacing:I
    const/4 v10, -0x1

    .line 614
    .local v10, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 615
    rem-int v16, v13, v8

    sub-int v11, v13, v16

    .line 626
    .local v11, rowStart:I
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v6

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v14

    .line 627
    .local v14, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v6

    move v3, v8

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v5

    .line 630
    .local v5, bottomSelectionPixel:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move/from16 v16, v10

    :goto_1
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p1

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v12

    .line 632
    .local v12, sel:Landroid/view/View;
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v9, v0

    .line 635
    .local v9, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v14

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 636
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v14

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 638
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 639
    sub-int v16, v11, v8

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 640
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 641
    add-int v16, v11, v8

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v17

    add-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 649
    :goto_2
    return-object v12

    .line 617
    .end local v5           #bottomSelectionPixel:I
    .end local v9           #referenceView:Landroid/view/View;
    .end local v11           #rowStart:I
    .end local v12           #sel:Landroid/view/View;
    .end local v14           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    sub-int v7, v16, v13

    .line 619
    .local v7, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    rem-int v17, v7, v8

    sub-int v17, v7, v17

    sub-int v10, v16, v17

    .line 620
    const/16 v16, 0x0

    sub-int v17, v10, v8

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v11

    .restart local v11       #rowStart:I
    goto/16 :goto_0

    .end local v7           #invertedSelection:I
    .restart local v5       #bottomSelectionPixel:I
    .restart local v14       #topSelectionPixel:I
    :cond_1
    move/from16 v16, v11

    .line 630
    goto :goto_1

    .line 643
    .restart local v9       #referenceView:Landroid/view/View;
    .restart local v12       #sel:Landroid/view/View;
    :cond_2
    add-int v16, v10, v8

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v17

    add-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 644
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 645
    const/16 v16, 0x1

    sub-int v16, v11, v16

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .parameter "nextTop"

    .prologue
    .line 334
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 335
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 336
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 339
    :cond_0
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 340
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 19
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v14

    .line 355
    .local v14, selectedPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v8, v0

    .line 356
    .local v8, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v16, v0

    .line 359
    .local v16, verticalSpacing:I
    const/4 v11, -0x1

    .line 361
    .local v11, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 362
    rem-int v17, v14, v8

    sub-int v12, v14, v17

    .line 370
    .local v12, rowStart:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 371
    .local v6, fadingEdgeLength:I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v6

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v15

    .line 373
    .local v15, topSelectionPixel:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move/from16 v17, v11

    :goto_1
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v13

    .line 374
    .local v13, sel:Landroid/view/View;
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v10, v0

    .line 378
    .local v10, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 379
    add-int v17, v12, v8

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v18

    add-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 380
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/GridView;->pinToBottom(I)V

    .line 381
    sub-int v17, v12, v8

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 382
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 394
    :goto_2
    return-object v13

    .line 364
    .end local v6           #fadingEdgeLength:I
    .end local v10           #referenceView:Landroid/view/View;
    .end local v12           #rowStart:I
    .end local v13           #sel:Landroid/view/View;
    .end local v15           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    sub-int v7, v17, v14

    .line 366
    .local v7, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    rem-int v18, v7, v8

    sub-int v18, v7, v18

    sub-int v11, v17, v18

    .line 367
    const/16 v17, 0x0

    sub-int v18, v11, v8

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v12

    .restart local v12       #rowStart:I
    goto/16 :goto_0

    .end local v7           #invertedSelection:I
    .restart local v6       #fadingEdgeLength:I
    .restart local v15       #topSelectionPixel:I
    :cond_1
    move/from16 v17, v12

    .line 373
    goto :goto_1

    .line 384
    .restart local v10       #referenceView:Landroid/view/View;
    .restart local v13       #sel:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v6

    move v3, v8

    move v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v5

    .line 386
    .local v5, bottomSelectionPixel:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v17

    sub-int v9, v5, v17

    .line 387
    .local v9, offset:I
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 388
    const/16 v17, 0x1

    sub-int v17, v12, v17

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 389
    invoke-direct/range {p0 .. p1}, Landroid/widget/GridView;->pinToTop(I)V

    .line 390
    add-int v17, v11, v8

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v18

    add-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 391
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v12, 0x1

    .line 452
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 455
    .local v6, numColumns:I
    const/4 v4, -0x1

    .line 457
    .local v4, motionRowEnd:I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_0

    .line 458
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 466
    .local v5, motionRowStart:I
    :goto_0
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v10, :cond_1

    move v10, v4

    :goto_1
    invoke-direct {p0, v10, p2, v12}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 469
    .local v8, temp:Landroid/view/View;
    iput v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 471
    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 473
    .local v7, referenceView:Landroid/view/View;
    if-nez v7, :cond_2

    .line 474
    const/4 v10, 0x0

    .line 507
    :goto_2
    return-object v10

    .line 460
    .end local v5           #motionRowStart:I
    .end local v7           #referenceView:Landroid/view/View;
    .end local v8           #temp:Landroid/view/View;
    :cond_0
    iget v10, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v10, v12

    sub-int v3, v10, p1

    .line 462
    .local v3, invertedSelection:I
    iget v10, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v10, v12

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 463
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #motionRowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    :cond_1
    move v10, v5

    .line 466
    goto :goto_1

    .line 477
    .restart local v7       #referenceView:Landroid/view/View;
    .restart local v8       #temp:Landroid/view/View;
    :cond_2
    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 482
    .local v9, verticalSpacing:I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_4

    .line 483
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 484
    .local v0, above:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 485
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 487
    .local v1, below:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 488
    .local v2, childCount:I
    if-lez v2, :cond_3

    .line 489
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 502
    :cond_3
    :goto_3
    if-eqz v8, :cond_5

    move-object v10, v8

    .line 503
    goto :goto_2

    .line 492
    .end local v0           #above:Landroid/view/View;
    .end local v1           #below:Landroid/view/View;
    .end local v2           #childCount:I
    :cond_4
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 493
    .restart local v1       #below:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 494
    sub-int v10, v5, v12

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 496
    .restart local v0       #above:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 497
    .restart local v2       #childCount:I
    if-lez v2, :cond_3

    .line 498
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_3

    .line 504
    :cond_5
    if-eqz v0, :cond_6

    move-object v10, v0

    .line 505
    goto :goto_2

    :cond_6
    move-object v10, v1

    .line 507
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v5, 0x0

    .line 300
    const/4 v1, 0x0

    .line 302
    .local v1, selectedView:Landroid/view/View;
    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 304
    .local v0, end:I
    :goto_0
    if-le p2, v0, :cond_1

    if-ltz p1, :cond_1

    .line 306
    invoke-direct {p0, p1, p2, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 307
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 308
    move-object v1, v2

    .line 311
    :cond_0
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 313
    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 315
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 316
    goto :goto_0

    .line 318
    .end local v2           #temp:Landroid/view/View;
    :cond_1
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_2

    .line 319
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 322
    :cond_2
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 4
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "numColumns"
    .parameter "rowStart"

    .prologue
    const/4 v3, 0x1

    .line 664
    move v0, p1

    .line 665
    .local v0, bottomSelectionPixel:I
    add-int v1, p4, p3

    sub-int/2addr v1, v3

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 666
    sub-int/2addr v0, p2

    .line 668
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "rowStart"

    .prologue
    .line 681
    move v0, p1

    .line 682
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 683
    add-int/2addr v0, p2

    .line 685
    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .parameter "childIndex"
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1653
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 1654
    .local v0, count:I
    sub-int v4, v0, v6

    sub-int v1, v4, p1

    .line 1659
    .local v1, invertedIndex:I
    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v4, :cond_0

    .line 1660
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v4, p1, v4

    sub-int v3, p1, v4

    .line 1661
    .local v3, rowStart:I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v4, v3

    sub-int/2addr v4, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1667
    .local v2, rowEnd:I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 1682
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1663
    .end local v2           #rowEnd:I
    .end local v3           #rowStart:I
    :cond_0
    sub-int v4, v0, v6

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v5, v1, v5

    sub-int v5, v1, v5

    sub-int v2, v4, v5

    .line 1664
    .restart local v2       #rowEnd:I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #rowStart:I
    goto :goto_0

    .line 1671
    :sswitch_0
    if-ne p1, v3, :cond_1

    move v4, v6

    .line 1680
    :goto_1
    return v4

    :cond_1
    move v4, v7

    .line 1671
    goto :goto_1

    .line 1674
    :sswitch_1
    if-nez v3, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v7

    goto :goto_1

    .line 1677
    :sswitch_2
    if-ne p1, v2, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v7

    goto :goto_1

    .line 1680
    :sswitch_3
    sub-int v4, v0, v6

    if-ne v2, v4, :cond_4

    move v4, v6

    goto :goto_1

    :cond_4
    move v4, v7

    goto :goto_1

    .line 1667
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "where"

    .prologue
    .line 1209
    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1211
    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1212
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1215
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1227
    .end local v1           #child:Landroid/view/View;
    .local v9, child:Landroid/view/View;
    :goto_0
    return-object v9

    .line 1222
    .end local v9           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1225
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/GridView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1227
    .end local v1           #child:Landroid/view/View;
    .restart local v9       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 15
    .parameter "startPos"
    .parameter "y"
    .parameter "flow"

    .prologue
    .line 237
    iget v8, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 238
    .local v8, columnWidth:I
    iget v10, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 241
    .local v10, horizontalSpacing:I
    iget-object v0, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    move v1, v10

    :goto_0
    add-int v4, v0, v1

    .line 244
    .local v4, nextLeft:I
    iget-boolean v0, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v0, :cond_5

    .line 245
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int v0, v0, p1

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 255
    .local v12, last:I
    :cond_0
    :goto_1
    const/4 v14, 0x0

    .line 257
    .local v14, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v9

    .line 258
    .local v9, hasFocus:Z
    invoke-virtual {p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v11

    .line 259
    .local v11, inClick:Z
    iget v13, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 261
    .local v13, selectedPosition:I
    const/4 v7, 0x0

    .line 262
    .local v7, child:Landroid/view/View;
    move/from16 v1, p1

    .local v1, pos:I
    :goto_2
    if-ge v1, v12, :cond_8

    .line 264
    if-ne v1, v13, :cond_6

    const/4 v0, 0x1

    move v5, v0

    .line 267
    .local v5, selected:Z
    :goto_3
    if-eqz p3, :cond_7

    const/4 v0, -0x1

    move v6, v0

    .local v6, where:I
    :goto_4
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 268
    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    .line 270
    add-int/2addr v4, v8

    .line 271
    const/4 v0, 0x1

    sub-int v0, v12, v0

    if-ge v1, v0, :cond_1

    .line 272
    add-int/2addr v4, v10

    .line 275
    :cond_1
    if-eqz v5, :cond_3

    if-nez v9, :cond_2

    if-eqz v11, :cond_3

    .line 276
    :cond_2
    move-object v14, v7

    .line 262
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 241
    .end local v1           #pos:I
    .end local v4           #nextLeft:I
    .end local v5           #selected:Z
    .end local v6           #where:I
    .end local v7           #child:Landroid/view/View;
    .end local v9           #hasFocus:Z
    .end local v11           #inClick:Z
    .end local v12           #last:I
    .end local v13           #selectedPosition:I
    .end local v14           #selectedView:Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 247
    .restart local v4       #nextLeft:I
    :cond_5
    add-int/lit8 v12, p1, 0x1

    .line 248
    .restart local v12       #last:I
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 250
    sub-int v0, v12, p1

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    if-ge v0, v1, :cond_0

    .line 251
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v1, v12, p1

    sub-int/2addr v0, v1

    add-int v1, v8, v10

    mul-int/2addr v0, v1

    add-int/2addr v4, v0

    goto :goto_1

    .line 264
    .restart local v1       #pos:I
    .restart local v7       #child:Landroid/view/View;
    .restart local v9       #hasFocus:Z
    .restart local v11       #inClick:Z
    .restart local v13       #selectedPosition:I
    .restart local v14       #selectedView:Landroid/view/View;
    :cond_6
    const/4 v0, 0x0

    move v5, v0

    goto :goto_3

    .line 267
    .restart local v5       #selected:Z
    :cond_7
    sub-int v0, v1, p1

    move v6, v0

    goto :goto_4

    .line 280
    .end local v5           #selected:Z
    :cond_8
    iput-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 282
    if-eqz v14, :cond_9

    .line 283
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 286
    :cond_9
    return-object v14
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 23
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 758
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 759
    .local v6, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 760
    .local v17, selectedPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v8, v0

    .line 761
    .local v8, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v19, v0

    .line 765
    .local v19, verticalSpacing:I
    const/4 v14, -0x1

    .line 767
    .local v14, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 768
    sub-int v20, v17, p1

    sub-int v21, v17, p1

    rem-int v21, v21, v8

    sub-int v10, v20, v21

    .line 770
    .local v10, oldRowStart:I
    rem-int v20, v17, v8

    sub-int v15, v17, v20

    .line 782
    .local v15, rowStart:I
    :goto_0
    sub-int v13, v15, v10

    .line 784
    .local v13, rowDelta:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v6

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v18

    .line 785
    .local v18, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v6

    move v3, v8

    move v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v5

    .line 789
    .local v5, bottomSelectionPixel:I
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 794
    if-lez v13, :cond_3

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    const/16 v20, 0x0

    move/from16 v9, v20

    .line 802
    .local v9, oldBottom:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move/from16 v20, v14

    :goto_2
    add-int v21, v9, v19

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v16

    .line 803
    .local v16, sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v12, v0

    .line 805
    .local v12, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v18

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 828
    .end local v9           #oldBottom:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    .line 829
    sub-int v20, v15, v8

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 830
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 831
    add-int v20, v15, v8

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v21

    add-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 838
    :goto_4
    return-object v16

    .line 772
    .end local v5           #bottomSelectionPixel:I
    .end local v10           #oldRowStart:I
    .end local v12           #referenceView:Landroid/view/View;
    .end local v13           #rowDelta:I
    .end local v15           #rowStart:I
    .end local v16           #sel:Landroid/view/View;
    .end local v18           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    sub-int v7, v20, v17

    .line 774
    .local v7, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    rem-int v21, v7, v8

    sub-int v21, v7, v21

    sub-int v14, v20, v21

    .line 775
    const/16 v20, 0x0

    sub-int v21, v14, v8

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 777
    .restart local v15       #rowStart:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    sub-int v21, v17, p1

    sub-int v7, v20, v21

    .line 778
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    rem-int v21, v7, v8

    sub-int v21, v7, v21

    sub-int v10, v20, v21

    .line 779
    .restart local v10       #oldRowStart:I
    const/16 v20, 0x0

    sub-int v21, v10, v8

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_0

    .line 799
    .end local v7           #invertedSelection:I
    .restart local v5       #bottomSelectionPixel:I
    .restart local v13       #rowDelta:I
    .restart local v18       #topSelectionPixel:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v20

    move/from16 v9, v20

    goto/16 :goto_1

    .restart local v9       #oldBottom:I
    :cond_2
    move/from16 v20, v15

    .line 802
    goto/16 :goto_2

    .line 806
    .end local v9           #oldBottom:I
    :cond_3
    if-gez v13, :cond_6

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    const/16 v20, 0x0

    move/from16 v11, v20

    .line 813
    .local v11, oldTop:I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move/from16 v20, v14

    :goto_6
    sub-int v21, v11, v19

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v16

    .line 814
    .restart local v16       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v12, v0

    .line 816
    .restart local v12       #referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v18

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 810
    .end local v11           #oldTop:I
    .end local v12           #referenceView:Landroid/view/View;
    .end local v16           #sel:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v11, v20

    goto :goto_5

    .restart local v11       #oldTop:I
    :cond_5
    move/from16 v20, v15

    .line 813
    goto :goto_6

    .line 821
    .end local v11           #oldTop:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    const/16 v20, 0x0

    move/from16 v11, v20

    .line 824
    .restart local v11       #oldTop:I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move/from16 v20, v14

    :goto_8
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v11

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v16

    .line 825
    .restart local v16       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v12, v0

    .restart local v12       #referenceView:Landroid/view/View;
    goto/16 :goto_3

    .line 821
    .end local v11           #oldTop:I
    .end local v12           #referenceView:Landroid/view/View;
    .end local v16           #sel:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v11, v20

    goto :goto_7

    .restart local v11       #oldTop:I
    :cond_8
    move/from16 v20, v15

    .line 824
    goto :goto_8

    .line 833
    .end local v11           #oldTop:I
    .restart local v12       #referenceView:Landroid/view/View;
    .restart local v16       #sel:Landroid/view/View;
    :cond_9
    add-int v20, v14, v8

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v21

    add-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 834
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 835
    const/16 v20, 0x1

    sub-int v20, v15, v20

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5
    .parameter "childrenBottom"

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 409
    .local v1, count:I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 410
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 411
    .local v0, bottom:I
    sub-int v2, p1, v0

    .line 412
    .local v2, offset:I
    if-lez v2, :cond_0

    .line 413
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 416
    .end local v0           #bottom:I
    .end local v2           #offset:I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3
    .parameter "childrenTop"

    .prologue
    .line 398
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 399
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 400
    .local v1, top:I
    sub-int v0, p1, v1

    .line 401
    .local v0, offset:I
    if-gez v0, :cond_0

    .line 402
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 405
    .end local v0           #offset:I
    .end local v1           #top:I
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 23
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"
    .parameter "where"

    .prologue
    .line 1248
    if-eqz p6, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v20, 0x1

    move/from16 v13, v20

    .line 1249
    .local v13, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v20

    move v0, v13

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    const/16 v20, 0x1

    move/from16 v18, v20

    .line 1250
    .local v18, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move v14, v0

    .line 1251
    .local v14, mode:I
    if-lez v14, :cond_7

    const/16 v20, 0x3

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    const/16 v20, 0x1

    move/from16 v12, v20

    .line 1253
    .local v12, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v20

    move v0, v12

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    const/16 v20, 0x1

    move/from16 v17, v20

    .line 1255
    .local v17, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v20

    if-eqz v20, :cond_9

    :cond_0
    const/16 v20, 0x1

    move/from16 v15, v20

    .line 1259
    .local v15, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1260
    .local v16, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v16, :cond_1

    .line 1261
    new-instance v16, Landroid/widget/AbsListView$LayoutParams;

    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1264
    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1266
    if-eqz p7, :cond_a

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 1267
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1273
    :goto_5
    if-eqz v18, :cond_2

    .line 1274
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1275
    if-eqz v13, :cond_2

    .line 1276
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    .line 1280
    :cond_2
    if-eqz v17, :cond_3

    .line 1281
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1284
    :cond_3
    if-eqz v15, :cond_b

    .line 1285
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 1288
    .local v6, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    const/high16 v21, 0x4000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    .line 1290
    .local v10, childWidthSpec:I
    move-object/from16 v0, p1

    move v1, v10

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1295
    .end local v6           #childHeightSpec:I
    .end local v10           #childWidthSpec:I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1296
    .local v19, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 1299
    .local v11, h:I
    if-eqz p4, :cond_c

    move/from16 v9, p3

    .line 1301
    .local v9, childTop:I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mGravity:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x7

    packed-switch v20, :pswitch_data_0

    .line 1312
    :pswitch_0
    move/from16 v7, p5

    .line 1316
    .local v7, childLeft:I
    :goto_8
    if-eqz v15, :cond_d

    .line 1317
    add-int v8, v7, v19

    .line 1318
    .local v8, childRight:I
    add-int v5, v9, v11

    .line 1319
    .local v5, childBottom:I
    move-object/from16 v0, p1

    move v1, v7

    move v2, v9

    move v3, v8

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1325
    .end local v5           #childBottom:I
    .end local v8           #childRight:I
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mCachingStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1326
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1328
    :cond_4
    return-void

    .line 1248
    .end local v7           #childLeft:I
    .end local v9           #childTop:I
    .end local v11           #h:I
    .end local v12           #isPressed:Z
    .end local v13           #isSelected:Z
    .end local v14           #mode:I
    .end local v15           #needToMeasure:Z
    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v17           #updateChildPressed:Z
    .end local v18           #updateChildSelected:Z
    .end local v19           #w:I
    :cond_5
    const/16 v20, 0x0

    move/from16 v13, v20

    goto/16 :goto_0

    .line 1249
    .restart local v13       #isSelected:Z
    :cond_6
    const/16 v20, 0x0

    move/from16 v18, v20

    goto/16 :goto_1

    .line 1251
    .restart local v14       #mode:I
    .restart local v18       #updateChildSelected:Z
    :cond_7
    const/16 v20, 0x0

    move/from16 v12, v20

    goto/16 :goto_2

    .line 1253
    .restart local v12       #isPressed:Z
    :cond_8
    const/16 v20, 0x0

    move/from16 v17, v20

    goto/16 :goto_3

    .line 1255
    .restart local v17       #updateChildPressed:Z
    :cond_9
    const/16 v20, 0x0

    move/from16 v15, v20

    goto/16 :goto_4

    .line 1269
    .restart local v15       #needToMeasure:Z
    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_a
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1270
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v16

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    .line 1292
    :cond_b
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_6

    .line 1299
    .restart local v11       #h:I
    .restart local v19       #w:I
    :cond_c
    sub-int v20, p3, v11

    move/from16 v9, v20

    goto :goto_7

    .line 1303
    .restart local v9       #childTop:I
    :pswitch_1
    move/from16 v7, p5

    .line 1304
    .restart local v7       #childLeft:I
    goto :goto_8

    .line 1306
    .end local v7           #childLeft:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v19

    div-int/lit8 v20, v20, 0x2

    add-int v7, p5, v20

    .line 1307
    .restart local v7       #childLeft:I
    goto :goto_8

    .line 1309
    .end local v7           #childLeft:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    add-int v20, v20, p5

    sub-int v7, v20, v19

    .line 1310
    .restart local v7       #childLeft:I
    goto :goto_8

    .line 1321
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    sub-int v20, v7, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1322
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v9, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_9

    .line 1301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x6

    const/4 v8, 0x1

    .line 1546
    iget v4, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 1547
    .local v4, selectedPosition:I
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1552
    .local v3, numColumns:I
    const/4 v2, 0x0

    .line 1554
    .local v2, moved:Z
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    .line 1555
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1556
    .local v5, startOfRowPos:I
    add-int v6, v5, v3

    sub-int/2addr v6, v8

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1563
    .local v0, endOfRowPos:I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1594
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1595
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1596
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1599
    :cond_1
    if-eqz v2, :cond_2

    .line 1600
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1603
    :cond_2
    return v2

    .line 1558
    .end local v0           #endOfRowPos:I
    .end local v5           #startOfRowPos:I
    :cond_3
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v8

    sub-int v1, v6, v4

    .line 1559
    .local v1, invertedSelection:I
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v8

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1560
    .restart local v0       #endOfRowPos:I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #startOfRowPos:I
    goto :goto_0

    .line 1565
    .end local v1           #invertedSelection:I
    :sswitch_0
    if-lez v5, :cond_0

    .line 1566
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1567
    sub-int v6, v4, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1568
    const/4 v2, 0x1

    goto :goto_1

    .line 1572
    :sswitch_1
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v8

    if-ge v0, v6, :cond_0

    .line 1573
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1574
    add-int v6, v4, v3

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1575
    const/4 v2, 0x1

    goto :goto_1

    .line 1579
    :sswitch_2
    if-le v4, v5, :cond_0

    .line 1580
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1581
    sub-int v6, v4, v8

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1582
    const/4 v2, 0x1

    goto :goto_1

    .line 1586
    :sswitch_3
    if-ge v4, v0, :cond_0

    .line 1587
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1588
    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1589
    const/4 v2, 0x1

    goto :goto_1

    .line 1563
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 5
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    .line 989
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 992
    .local v0, animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 993
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 994
    .restart local v0       #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 997
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 998
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 999
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1000
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1002
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1003
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1004
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1011
    :goto_0
    return-void

    .line 1006
    :cond_1
    sub-int v2, p4, v4

    sub-int v1, v2, p3

    .line 1008
    .local v1, invertedIndex:I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v2, v4

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1009
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    sub-int/2addr v2, v4

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1831
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 1832
    .local v1, count:I
    if-lez v1, :cond_2

    .line 1833
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1834
    .local v4, numColumns:I
    add-int v8, v1, v4

    sub-int/2addr v8, v10

    div-int v5, v8, v4

    .line 1836
    .local v5, rowCount:I
    mul-int/lit8 v2, v5, 0x64

    .line 1838
    .local v2, extent:I
    invoke-virtual {p0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1839
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1840
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1841
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1842
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 1845
    :cond_0
    sub-int v8, v1, v10

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1846
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1847
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1848
    if-lez v3, :cond_1

    .line 1849
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    :cond_1
    move v8, v2

    .line 1854
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #numColumns:I
    .end local v5           #rowCount:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :goto_0
    return v8

    :cond_2
    move v8, v9

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1859
    iget v6, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-ltz v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 1860
    invoke-virtual {p0, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1861
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1862
    .local v3, top:I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1863
    .local v0, height:I
    if-lez v0, :cond_0

    .line 1864
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1865
    .local v1, numColumns:I
    iget v6, p0, Landroid/widget/GridView;->mFirstPosition:I

    div-int v5, v6, v1

    .line 1866
    .local v5, whichRow:I
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v6, v1

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    div-int v2, v6, v1

    .line 1867
    .local v2, rowCount:I
    mul-int/lit8 v6, v5, 0x64

    mul-int/lit8 v7, v3, 0x64

    div-int/2addr v7, v0

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v2

    mul-float/2addr v7, v8

    const/high16 v8, 0x42c8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1871
    .end local v0           #height:I
    .end local v1           #numColumns:I
    .end local v2           #rowCount:I
    .end local v3           #top:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #whichRow:I
    :goto_0
    return v6

    :cond_0
    move v6, v9

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    .line 1877
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1878
    .local v0, numColumns:I
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    div-int v2, v3, v0

    .line 1879
    .local v2, rowCount:I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1880
    .local v1, result:I
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    if-eqz v3, :cond_0

    .line 1882
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 1884
    :cond_0
    return v1
.end method

.method fillGap(Z)V
    .locals 7
    .parameter "down"

    .prologue
    const/4 v6, 0x1

    .line 176
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 177
    .local v1, numColumns:I
    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 179
    .local v4, verticalSpacing:I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 181
    .local v0, count:I
    if-eqz p1, :cond_2

    .line 182
    if-lez v0, :cond_1

    sub-int v5, v0, v6

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v4

    move v3, v5

    .line 184
    .local v3, startOffset:I
    :goto_0
    iget v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int v2, v5, v0

    .line 185
    .local v2, position:I
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v5, :cond_0

    .line 186
    sub-int v5, v1, v6

    add-int/2addr v2, v5

    .line 188
    :cond_0
    invoke-direct {p0, v2, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 189
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 202
    :goto_1
    return-void

    .line 182
    .end local v2           #position:I
    .end local v3           #startOffset:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v5

    move v3, v5

    goto :goto_0

    .line 191
    :cond_2
    if-lez v0, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v4

    move v3, v5

    .line 193
    .restart local v3       #startOffset:I
    :goto_2
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 194
    .restart local v2       #position:I
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v5, :cond_4

    .line 195
    sub-int/2addr v2, v1

    .line 199
    :goto_3
    invoke-direct {p0, v2, v3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 200
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_1

    .line 191
    .end local v2           #position:I
    .end local v3           #startOffset:I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    move v3, v5

    goto :goto_2

    .line 197
    .restart local v2       #position:I
    .restart local v3       #startOffset:I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 420
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 421
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 423
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 424
    .local v2, numColumns:I
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 425
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 426
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 427
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 438
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :goto_1
    return v3

    .line 425
    .restart local v1       #i:I
    .restart local v2       #numColumns:I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 431
    .end local v1           #i:I
    :cond_1
    const/4 v3, 0x1

    sub-int v1, v0, v3

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 432
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 433
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 431
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 438
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x2

    .line 1517
    const/4 v0, 0x0

    .line 1518
    .local v0, moved:Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    .line 1519
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1520
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1521
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1522
    const/4 v0, 0x1

    .line 1530
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1531
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1534
    :cond_1
    return v0

    .line 1523
    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 1524
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1525
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1526
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1527
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 1750
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 22

    .prologue
    .line 1015
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    move v4, v0

    .line 1016
    .local v4, blockLayoutRequests:Z
    if-nez v4, :cond_0

    .line 1017
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1021
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1023
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 1026
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1027
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    if-nez v4, :cond_1

    .line 1185
    :goto_0
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1188
    :cond_1
    return-void

    .line 1031
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    .line 1032
    .local v8, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTop:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v7, v20, v21

    .line 1034
    .local v7, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    .line 1036
    .local v6, childCount:I
    const/4 v10, 0x0

    .line 1039
    .local v10, delta:I
    const/16 v17, 0x0

    .line 1040
    .local v17, oldSel:Landroid/view/View;
    const/16 v16, 0x0

    .line 1041
    .local v16, oldFirst:Landroid/view/View;
    const/4 v15, 0x0

    .line 1044
    .local v15, newSel:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mLayoutMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 1063
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .line 1064
    .local v13, index:I
    if-ltz v13, :cond_3

    if-ge v13, v6, :cond_3

    .line 1065
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1069
    :cond_3
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1072
    .end local v13           #index:I
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mDataChanged:Z

    move v9, v0

    .line 1073
    .local v9, dataChanged:Z
    if-eqz v9, :cond_5

    .line 1074
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V

    .line 1079
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 1080
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1081
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1184
    if-nez v4, :cond_1

    goto :goto_0

    .line 1046
    .end local v9           #dataChanged:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .line 1047
    .restart local v13       #index:I
    if-ltz v13, :cond_4

    if-ge v13, v6, :cond_4

    .line 1048
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    goto :goto_1

    .line 1057
    .end local v13           #index:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v20, v0

    if-ltz v20, :cond_4

    .line 1058
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v21, v0

    sub-int v10, v20, v21

    goto :goto_1

    .line 1085
    .restart local v9       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1089
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move v11, v0

    .line 1090
    .local v11, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v18, v0

    .line 1092
    .local v18, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    if-eqz v9, :cond_7

    .line 1093
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v6, :cond_8

    .line 1094
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1093
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1097
    .end local v12           #i:I
    :cond_7
    move-object/from16 v0, v18

    move v1, v6

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1102
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    .line 1104
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mLayoutMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    .line 1132
    if-nez v6, :cond_12

    .line 1133
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_f

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v20

    if-eqz v20, :cond_e

    :cond_9
    const/16 v20, -0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1136
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v19

    .line 1158
    .local v19, sel:Landroid/view/View;
    :goto_4
    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1160
    if-eqz v19, :cond_17

    .line 1161
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->positionSelector(Landroid/view/View;)V

    .line 1162
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mSelectedTop:I

    .line 1171
    :cond_a
    :goto_5
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mLayoutMode:I

    .line 1172
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mDataChanged:Z

    .line 1173
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mNeedSync:Z

    .line 1174
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1176
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    .line 1178
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v20, v0

    if-lez v20, :cond_b

    .line 1179
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 1182
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1184
    if-nez v4, :cond_1

    goto/16 :goto_0

    .line 1106
    .end local v19           #sel:Landroid/view/View;
    :pswitch_3
    if-eqz v15, :cond_c

    .line 1107
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v8

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto :goto_4

    .line 1109
    .end local v19           #sel:Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    move v1, v8

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v19

    .line 1111
    .restart local v19       #sel:Landroid/view/View;
    goto :goto_4

    .line 1113
    .end local v19           #sel:Landroid/view/View;
    :pswitch_4
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1114
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v19

    .line 1115
    .restart local v19       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1184
    .end local v6           #childCount:I
    .end local v7           #childrenBottom:I
    .end local v8           #childrenTop:I
    .end local v9           #dataChanged:Z
    .end local v10           #delta:I
    .end local v11           #firstPosition:I
    .end local v15           #newSel:Landroid/view/View;
    .end local v16           #oldFirst:Landroid/view/View;
    .end local v17           #oldSel:Landroid/view/View;
    .end local v18           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v19           #sel:Landroid/view/View;
    :catchall_0
    move-exception v20

    if-nez v4, :cond_d

    .line 1185
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1184
    :cond_d
    throw v20

    .line 1118
    .restart local v6       #childCount:I
    .restart local v7       #childrenBottom:I
    .restart local v8       #childrenTop:I
    .restart local v9       #dataChanged:Z
    .restart local v10       #delta:I
    .restart local v11       #firstPosition:I
    .restart local v15       #newSel:Landroid/view/View;
    .restart local v16       #oldFirst:Landroid/view/View;
    .restart local v17       #oldSel:Landroid/view/View;
    .restart local v18       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    :pswitch_5
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v19

    .line 1119
    .restart local v19       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1122
    .end local v19           #sel:Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSpecificTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .line 1123
    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1125
    .end local v19           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSyncPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSpecificTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .line 1126
    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1129
    .end local v19           #sel:Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    move v1, v10

    move v2, v8

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v19

    .line 1130
    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1134
    .end local v19           #sel:Landroid/view/View;
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 1138
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v14, v20, v21

    .line 1139
    .local v14, last:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v20

    if-eqz v20, :cond_11

    :cond_10
    const/16 v20, -0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1141
    move-object/from16 v0, p0

    move v1, v14

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v19

    .line 1142
    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v19           #sel:Landroid/view/View;
    :cond_11
    move/from16 v20, v14

    .line 1139
    goto :goto_6

    .line 1144
    .end local v14           #last:I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v20, v0

    if-ltz v20, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_14

    .line 1145
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v20, v0

    if-nez v17, :cond_13

    move/from16 v21, v8

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v19           #sel:Landroid/view/View;
    :cond_13
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v21

    goto :goto_7

    .line 1147
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_16

    .line 1148
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v20, v0

    if-nez v16, :cond_15

    move/from16 v21, v8

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v19           #sel:Landroid/view/View;
    :cond_15
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v21

    goto :goto_8

    .line 1151
    :cond_16
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1163
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v20, v0

    if-lez v20, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_18

    .line 1164
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1165
    .local v5, child:Landroid/view/View;
    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    .line 1167
    .end local v5           #child:Landroid/view/View;
    :cond_18
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mSelectedTop:I

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 1044
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1104
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 160
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 161
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    .line 168
    :goto_0
    return v1

    .line 165
    :cond_1
    if-ltz p1, :cond_2

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    if-lt p1, v1, :cond_3

    :cond_2
    move v1, v2

    .line 166
    goto :goto_0

    :cond_3
    move v1, p1

    .line 168
    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1608
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1610
    const/4 v1, -0x1

    .line 1611
    .local v1, closestChildIndex:I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1612
    iget v7, p0, Landroid/widget/GridView;->mScrollX:I

    iget v8, p0, Landroid/widget/GridView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1616
    iget-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 1617
    .local v6, otherRect:Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1618
    .local v4, minDistance:I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 1619
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1621
    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1619
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1625
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1626
    .local v5, other:Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1627
    invoke-virtual {p0, v5, v6}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1628
    invoke-static {p3, v6, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1630
    .local v2, distance:I
    if-ge v2, v4, :cond_0

    .line 1631
    move v4, v2

    .line 1632
    move v1, v3

    goto :goto_1

    .line 1637
    .end local v0           #childCount:I
    .end local v2           #distance:I
    .end local v3           #i:I
    .end local v4           #minDistance:I
    .end local v5           #other:Landroid/view/View;
    .end local v6           #otherRect:Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    .line 1638
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelection(I)V

    .line 1642
    :goto_2
    return-void

    .line 1640
    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1377
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 1382
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1387
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 21
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 911
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 913
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 914
    .local v16, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 915
    .local v10, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 916
    .local v17, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 918
    .local v11, heightSize:I
    if-nez v16, :cond_0

    .line 919
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v18, v0

    if-lez v18, :cond_7

    .line 920
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v17, v18, v19

    .line 924
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v18

    add-int v17, v17, v18

    .line 927
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v18, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v7, v18, v19

    .line 928
    .local v7, childWidth:I
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Landroid/widget/GridView;->determineColumns(I)V

    .line 930
    const/4 v5, 0x0

    .line 932
    .local v5, childHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mItemCount:I

    .line 933
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move v9, v0

    .line 934
    .local v9, count:I
    if-lez v9, :cond_2

    .line 935
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mIsScrap:[Z

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 937
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 938
    .local v15, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_1

    .line 939
    new-instance v15, Landroid/widget/AbsListView$LayoutParams;

    .end local v15           #p:Landroid/widget/AbsListView$LayoutParams;
    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x0

    move-object v0, v15

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 941
    .restart local v15       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v4, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 943
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v18

    move/from16 v0, v18

    move-object v1, v15

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 944
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object v1, v15

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 946
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/16 v19, 0x0

    move-object v0, v15

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v6

    .line 948
    .local v6, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v18, v0

    const/high16 v19, 0x4000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/16 v19, 0x0

    move-object v0, v15

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v8

    .line 950
    .local v8, childWidthSpec:I
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    .line 952
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v18, v0

    move-object v0, v15

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 959
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v15           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    if-nez v10, :cond_3

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int v18, v18, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    add-int v11, v18, v19

    .line 964
    :cond_3
    const/high16 v18, -0x8000

    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v14, v18, v19

    .line 967
    .local v14, ourSize:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v13, v0

    .line 968
    .local v13, numColumns:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v9, :cond_5

    .line 969
    add-int/2addr v14, v5

    .line 970
    add-int v18, v12, v13

    move/from16 v0, v18

    move v1, v9

    if-ge v0, v1, :cond_4

    .line 971
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v18, v0

    add-int v14, v14, v18

    .line 973
    :cond_4
    if-lt v14, v11, :cond_9

    .line 974
    move v14, v11

    .line 978
    :cond_5
    move v11, v14

    .line 981
    .end local v12           #i:I
    .end local v13           #numColumns:I
    .end local v14           #ourSize:I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    .line 982
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mWidthMeasureSpec:I

    .line 983
    return-void

    .line 922
    .end local v5           #childHeight:I
    .end local v7           #childWidth:I
    .end local v9           #count:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v17, v18, v19

    goto/16 :goto_0

    .line 932
    .restart local v5       #childHeight:I
    .restart local v7       #childWidth:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/widget/ListAdapter;->getCount()I

    move-result v18

    goto/16 :goto_1

    .line 968
    .restart local v9       #count:I
    .restart local v12       #i:I
    .restart local v13       #numColumns:I
    .restart local v14       #ourSize:I
    :cond_9
    add-int/2addr v12, v13

    goto :goto_2
.end method

.method pageScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1491
    const/4 v0, -0x1

    .line 1493
    .local v0, nextPage:I
    const/16 v1, 0x21

    if-ne p1, v1, :cond_1

    .line 1494
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1499
    :cond_0
    :goto_0
    if-ltz v0, :cond_2

    .line 1500
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1501
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1502
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    move v1, v4

    .line 1506
    :goto_1
    return v1

    .line 1495
    :cond_1
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 1496
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v4

    iget v2, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v5

    .line 1506
    goto :goto_1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 118
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    .line 123
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 124
    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 126
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    .line 127
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    .line 129
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 130
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    iput v1, p0, Landroid/widget/GridView;->mOldItemCount:I

    .line 131
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/GridView;->mItemCount:I

    .line 132
    iput-boolean v3, p0, Landroid/widget/GridView;->mDataChanged:Z

    .line 133
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 135
    new-instance v1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    .line 136
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 138
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 141
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 142
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1, v4}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 146
    .local v0, position:I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 147
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 148
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 155
    .end local v0           #position:I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 156
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0, v4, v3}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_0

    .line 150
    .end local v0           #position:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 152
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setColumnWidth(I)V
    .locals 1
    .parameter "columnWidth"

    .prologue
    .line 1761
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 1762
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 1763
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1765
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1695
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1696
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    .line 1697
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1699
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .parameter "horizontalSpacing"

    .prologue
    .line 1711
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 1712
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 1713
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1715
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .parameter "numColumns"

    .prologue
    .line 1775
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 1776
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 1777
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1779
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1340
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1341
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1345
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1346
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 1347
    return-void

    .line 1343
    :cond_0
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    .line 1356
    iget v4, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    .line 1358
    .local v4, previousSelectedPosition:I
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1359
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1361
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    sub-int/2addr v5, v6

    move v0, v5

    .line 1363
    .local v0, next:I
    :goto_0
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, v7

    sub-int/2addr v5, v4

    move v2, v5

    .line 1366
    .local v2, previous:I
    :goto_1
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, v0, v5

    .line 1367
    .local v1, nextRow:I
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v2, v5

    .line 1369
    .local v3, previousRow:I
    if-eq v1, v3, :cond_0

    .line 1370
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1373
    :cond_0
    return-void

    .line 1361
    .end local v0           #next:I
    .end local v1           #nextRow:I
    .end local v2           #previous:I
    .end local v3           #previousRow:I
    :cond_1
    iget v5, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move v0, v5

    goto :goto_0

    .restart local v0       #next:I
    :cond_2
    move v2, v4

    .line 1363
    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1
    .parameter "stretchMode"

    .prologue
    .line 1743
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 1744
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 1745
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1747
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .parameter "verticalSpacing"

    .prologue
    .line 1728
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 1729
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 1730
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1732
    :cond_0
    return-void
.end method
