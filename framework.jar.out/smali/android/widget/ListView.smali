.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$1;,
        Landroid/widget/ListView$SavedState;,
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mChoiceMode:I

.field private mClipDivider:Z

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 159
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 163
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 119
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 134
    iput-boolean v9, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 136
    iput-boolean v8, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 138
    iput v8, p0, Landroid/widget/ListView;->mChoiceMode:I

    .line 144
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 149
    new-instance v6, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v6, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 165
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 168
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 170
    .local v3, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 171
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 176
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_1
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 183
    .local v5, osHeader:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 184
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_2
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 189
    .local v4, osFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 190
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 194
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 196
    .local v2, dividerHeight:I
    if-eqz v2, :cond_4

    .line 197
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 200
    :cond_4
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 202
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 203
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 205
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 2904
    const/4 v0, 0x1

    sub-int v2, p2, v0

    .line 2905
    .local v2, abovePosition:I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2906
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 2907
    .local v3, edgeOfNewChild:I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2909
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 2913
    add-int/lit8 v2, p2, 0x1

    .line 2914
    .local v2, belowPosition:I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2915
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 2916
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2918
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 224
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 227
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 230
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 232
    .local v2, delta:I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 235
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 237
    :cond_0
    if-gez v2, :cond_1

    .line 239
    const/4 v2, 0x0

    .line 257
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 258
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 261
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 243
    :cond_3
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 244
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 246
    .restart local v2       #delta:I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 249
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 252
    :cond_4
    if-lez v2, :cond_1

    .line 253
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2519
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2520
    .local v4, listBottom:I
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2522
    .local v5, listTop:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2524
    .local v7, numChildren:I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_5

    .line 2525
    const/4 v10, 0x1

    sub-int v3, v7, v10

    .line 2526
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2527
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2530
    :cond_0
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2531
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2533
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2534
    .local v1, goalBottom:I
    iget v10, p0, Landroid/widget/ListView;->mItemCount:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v8, v10, :cond_1

    .line 2535
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2538
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_2

    .line 2540
    const/4 v10, 0x0

    .line 2586
    .end local v1           #goalBottom:I
    :goto_0
    return v10

    .line 2543
    .restart local v1       #goalBottom:I
    :cond_2
    const/4 v10, -0x1

    if-eq p2, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_3

    .line 2546
    const/4 v10, 0x0

    goto :goto_0

    .line 2549
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2551
    .local v0, amountToScroll:I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne v10, v11, :cond_4

    .line 2553
    const/4 v10, 0x1

    sub-int v10, v7, v10

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2554
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2557
    .end local v6           #max:I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    .line 2559
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .line 2560
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_6

    .line 2561
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2563
    :cond_6
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2564
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2565
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2566
    .local v2, goalTop:I
    if-lez v8, :cond_7

    .line 2567
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2569
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_8

    .line 2571
    const/4 v10, 0x0

    goto :goto_0

    .line 2574
    :cond_8
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_9

    .line 2577
    const/4 v10, 0x0

    goto :goto_0

    .line 2580
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2581
    .restart local v0       #amountToScroll:I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v10, :cond_a

    .line 2583
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2584
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2586
    .end local v6           #max:I
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 2778
    const/4 v0, 0x0

    .line 2779
    .local v0, amountToScroll:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2780
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2781
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 2782
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 2783
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 2784
    if-lez p3, :cond_0

    .line 2785
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 2797
    :cond_0
    :goto_0
    return v0

    .line 2789
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2790
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 2791
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 2792
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge p3, v2, :cond_0

    .line 2793
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 20
    .parameter "direction"

    .prologue
    .line 2676
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v14

    .line 2678
    .local v14, selectedView:Landroid/view/View;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->hasFocus()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2679
    invoke-virtual {v14}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v11

    .line 2680
    .local v11, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v11

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 2705
    .end local v11           #oldFocus:Landroid/view/View;
    .local v10, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v10, :cond_c

    .line 2706
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v12

    .line 2710
    .local v12, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 2711
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v13

    .line 2712
    .local v13, selectablePosition:I
    const/16 v17, -0x1

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    const/16 v17, 0x82

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    if-lt v13, v12, :cond_1

    :cond_0
    const/16 v17, 0x21

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    if-le v13, v12, :cond_a

    .line 2715
    :cond_1
    const/16 v17, 0x0

    .line 2737
    .end local v12           #positionOfNewFocus:I
    .end local v13           #selectablePosition:I
    :goto_1
    return-object v17

    .line 2682
    .end local v10           #newFocus:Landroid/view/View;
    :cond_2
    const/16 v17, 0x82

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 2683
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v17, v0

    if-lez v17, :cond_3

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 2684
    .local v15, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v18

    :goto_3
    add-int v8, v17, v18

    .line 2686
    .local v8, listTop:I
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-le v0, v1, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v16, v17

    .line 2690
    .local v16, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2702
    .end local v8           #listTop:I
    .end local v15           #topFadingEdgeShowing:Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v10

    .restart local v10       #newFocus:Landroid/view/View;
    goto/16 :goto_0

    .line 2683
    .end local v10           #newFocus:Landroid/view/View;
    .end local v16           #ySearchPoint:I
    :cond_3
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_2

    .line 2684
    .restart local v15       #topFadingEdgeShowing:Z
    :cond_4
    const/16 v18, 0x0

    goto :goto_3

    .restart local v8       #listTop:I
    :cond_5
    move/from16 v16, v8

    .line 2686
    goto :goto_4

    .line 2692
    .end local v8           #listTop:I
    .end local v15           #topFadingEdgeShowing:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v18

    add-int v17, v17, v18

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    const/16 v17, 0x1

    move/from16 v5, v17

    .line 2694
    .local v5, bottomFadingEdgeShowing:Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    if-eqz v5, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v18

    :goto_7
    sub-int v7, v17, v18

    .line 2696
    .local v7, listBottom:I
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v0, v17

    move v1, v7

    if-ge v0, v1, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v16, v17

    .line 2700
    .restart local v16       #ySearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    .line 2692
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v7           #listBottom:I
    .end local v16           #ySearchPoint:I
    :cond_7
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_6

    .line 2694
    .restart local v5       #bottomFadingEdgeShowing:Z
    :cond_8
    const/16 v18, 0x0

    goto :goto_7

    .restart local v7       #listBottom:I
    :cond_9
    move/from16 v16, v7

    .line 2696
    goto :goto_8

    .line 2719
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v7           #listBottom:I
    .restart local v10       #newFocus:Landroid/view/View;
    .restart local v12       #positionOfNewFocus:I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v10

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v6

    .line 2721
    .local v6, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    .line 2722
    .local v9, maxScrollAmount:I
    if-ge v6, v9, :cond_b

    .line 2724
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 2727
    :cond_b
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    move v1, v9

    if-ge v0, v1, :cond_c

    .line 2732
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2733
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2734
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 2737
    .end local v6           #focusScroll:I
    .end local v9           #maxScrollAmount:I
    .end local v12           #positionOfNewFocus:I
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 2305
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_0

    move v6, v7

    .line 2377
    :goto_0
    return v6

    .line 2309
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2311
    .local v5, selectedView:Landroid/view/View;
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2312
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v0

    .line 2315
    .local v0, amountToScroll:I
    iget-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_9

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v6

    move-object v1, v6

    .line 2316
    .local v1, focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_1

    .line 2317
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2318
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2321
    :cond_1
    if-eqz v1, :cond_a

    move v3, v9

    .line 2322
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v8, :cond_3

    .line 2323
    if-eqz v1, :cond_b

    move v6, v9

    :goto_3
    invoke-direct {p0, v5, p1, v4, v6}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2324
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2325
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2326
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2327
    iget-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_2

    if-nez v1, :cond_2

    .line 2330
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2331
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2332
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2335
    .end local v2           #focused:Landroid/view/View;
    :cond_2
    const/4 v3, 0x1

    .line 2336
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2339
    :cond_3
    if-lez v0, :cond_4

    .line 2340
    const/16 v6, 0x21

    if-ne p1, v6, :cond_c

    move v6, v0

    :goto_4
    invoke-direct {p0, v6}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2341
    const/4 v3, 0x1

    .line 2346
    :cond_4
    iget-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2348
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2349
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_5

    .line 2350
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2355
    .end local v2           #focused:Landroid/view/View;
    :cond_5
    if-ne v4, v8, :cond_6

    if-eqz v5, :cond_6

    invoke-direct {p0, v5, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2357
    const/4 v5, 0x0

    .line 2358
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2362
    iput v8, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    .line 2365
    :cond_6
    if-eqz v3, :cond_d

    .line 2366
    if-eqz v5, :cond_7

    .line 2367
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 2368
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2370
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2371
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2373
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    move v6, v9

    .line 2374
    goto/16 :goto_0

    .line 2315
    .end local v1           #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    :cond_9
    const/4 v6, 0x0

    move-object v1, v6

    goto/16 :goto_1

    .restart local v1       #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_a
    move v3, v7

    .line 2321
    goto :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_b
    move v6, v7

    .line 2323
    goto :goto_3

    .line 2340
    :cond_c
    neg-int v6, v0

    goto :goto_4

    :cond_d
    move v6, v7

    .line 2377
    goto/16 :goto_0
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 518
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 520
    .local v1, count:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 521
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v0, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 522
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 523
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 524
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 520
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    return-void
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

    .line 2050
    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    move v2, v6

    .line 2143
    :goto_0
    return v2

    .line 2054
    :cond_0
    iget-boolean v2, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 2055
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2058
    :cond_1
    const/4 v1, 0x0

    .line 2059
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2061
    .local v0, action:I
    if-eq v0, v3, :cond_3

    .line 2062
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gez v2, :cond_2

    .line 2063
    sparse-switch p1, :sswitch_data_0

    .line 2074
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 2125
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 2126
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2129
    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    .line 2130
    goto :goto_0

    .line 2069
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 2070
    goto :goto_0

    .line 2076
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2077
    :goto_2
    if-lez p2, :cond_3

    .line 2078
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v1

    .line 2079
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 2082
    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v1

    .line 2084
    goto :goto_1

    .line 2087
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2088
    :goto_3
    if-lez p2, :cond_3

    .line 2089
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v1

    .line 2090
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 2093
    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v1

    .line 2095
    goto :goto_1

    .line 2098
    :sswitch_3
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 2099
    goto :goto_1

    .line 2101
    :sswitch_4
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 2102
    goto :goto_1

    .line 2106
    :sswitch_5
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 2107
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2109
    :cond_7
    const/4 v1, 0x1

    .line 2110
    goto :goto_1

    .line 2113
    :sswitch_6
    iget-object v2, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2114
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2115
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    .line 2119
    :goto_4
    const/4 v1, 0x1

    goto :goto_1

    .line 2117
    :cond_9
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->pageScroll(I)Z

    goto :goto_4

    .line 2132
    :cond_a
    packed-switch v0, :pswitch_data_0

    move v2, v6

    .line 2143
    goto/16 :goto_0

    .line 2134
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2137
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2140
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2063
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 2074
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 2132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .parameter "childCount"

    .prologue
    const/4 v9, 0x1

    .line 1337
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    sub-int v6, v7, v9

    .line 1338
    .local v6, lastPosition:I
    iget v7, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v7, v9

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1341
    sub-int v7, p1, v9

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1344
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1347
    .local v4, lastBottom:I
    iget v7, p0, Landroid/widget/ListView;->mBottom:I

    iget v8, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1351
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1352
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1353
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1357
    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1358
    :cond_0
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1360
    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1363
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1364
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1367
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v7, v9

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1369
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1374
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .parameter "childCount"

    .prologue
    const/4 v10, 0x1

    .line 1386
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1389
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1392
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1395
    .local v2, firstTop:I
    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1398
    .local v6, start:I
    iget v8, p0, Landroid/widget/ListView;->mBottom:I

    iget v9, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1402
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1403
    .local v7, topOffset:I
    sub-int v8, p1, v10

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1404
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1405
    .local v3, lastBottom:I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v8, p1

    sub-int v5, v8, v10

    .line 1409
    .local v5, lastPosition:I
    if-lez v7, :cond_2

    .line 1410
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v8, v10

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1411
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_1

    .line 1413
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1416
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1417
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ge v5, v8, :cond_2

    .line 1420
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1422
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1429
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_2
    :goto_0
    return-void

    .line 1424
    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_3
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_2

    .line 1425
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .parameter "descendant"

    .prologue
    .line 2808
    const/4 v0, 0x0

    .line 2809
    .local v0, distance:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2810
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2811
    iget v2, p0, Landroid/widget/ListView;->mBottom:I

    iget v3, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2812
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 2813
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2817
    :cond_0
    :goto_0
    return v0

    .line 2814
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 2815
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 4
    .parameter "sel"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 774
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 775
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 776
    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 777
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 778
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 784
    :goto_0
    return-void

    .line 780
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 781
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 782
    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 663
    const/4 v8, 0x0

    .line 665
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v1

    .line 667
    .local v7, end:I
    :goto_0
    if-ge p2, v7, :cond_2

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge p1, v0, :cond_2

    .line 669
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 670
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 672
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 673
    if-eqz v5, :cond_0

    .line 674
    move-object v8, v6

    .line 676
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 677
    goto :goto_0

    .line 669
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1

    .line 679
    :cond_2
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 742
    sub-int v6, p2, p1

    .line 744
    .local v6, height:I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 746
    .local v1, position:I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 748
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 750
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 751
    .local v8, selHeight:I
    if-gt v8, v6, :cond_0

    .line 752
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 755
    :cond_0
    invoke-direct {p0, v7, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 757
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 758
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 763
    :goto_0
    return-object v7

    .line 760
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 17
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 798
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v11

    .line 799
    .local v11, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v5, v0

    .line 803
    .local v5, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v11

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v16

    .line 805
    .local v16, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v11

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v10

    .line 808
    .local v10, bottomSelectionPixel:I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v13

    .line 812
    .local v13, sel:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v4, v10, :cond_1

    .line 815
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v14, v4, v16

    .line 819
    .local v14, spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v15, v4, v10

    .line 820
    .local v15, spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 823
    .local v12, offset:I
    neg-int v4, v12

    invoke-virtual {v13, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 839
    .end local v12           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 841
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_2

    .line 842
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 847
    :goto_1
    return-object v13

    .line 824
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 827
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v14, v16, v4

    .line 831
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v15, v10, v4

    .line 832
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 835
    .restart local v12       #offset:I
    invoke-virtual {v13, v12}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 844
    .end local v12           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .parameter "nextTop"

    .prologue
    .line 722
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 723
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 724
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 725
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 727
    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1289
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1290
    .local v5, tempIsSelected:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1292
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1297
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1298
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1299
    sub-int v0, p1, v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1301
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1302
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1303
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1304
    .local v8, childCount:I
    if-lez v8, :cond_0

    .line 1305
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1318
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    move-object v0, v10

    .line 1323
    :goto_2
    return-object v0

    .line 1289
    .end local v5           #tempIsSelected:Z
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v9           #dividerHeight:I
    .end local v10           #temp:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .line 1308
    .restart local v5       #tempIsSelected:Z
    .restart local v9       #dividerHeight:I
    .restart local v10       #temp:Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1310
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1311
    sub-int v0, p1, v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1312
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1313
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 1314
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 1320
    :cond_3
    if-eqz v6, :cond_4

    move-object v0, v6

    .line 1321
    goto :goto_2

    :cond_4
    move-object v0, v7

    .line 1323
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 693
    const/4 v8, 0x0

    .line 695
    .local v8, selectedView:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 697
    .local v7, end:I
    :goto_0
    if-le p2, v7, :cond_2

    if-ltz p1, :cond_2

    .line 699
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    move v5, v0

    .line 700
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 701
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 702
    if-eqz v5, :cond_0

    .line 703
    move-object v8, v6

    .line 705
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 706
    goto :goto_0

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_1
    move v5, v3

    .line 699
    goto :goto_1

    .line 708
    :cond_2
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 710
    return-object v8
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2503
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 3
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 860
    move v0, p1

    .line 861
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq p3, v1, :cond_0

    .line 862
    sub-int/2addr v0, p2

    .line 864
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 877
    move v0, p1

    .line 878
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 879
    add-int/2addr v0, p2

    .line 881
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 2240
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 2241
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2245
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2246
    .local v3, numChildren:I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2247
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2248
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2251
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2252
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2254
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2256
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2257
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2258
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2259
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2260
    const/4 v5, 0x1

    .line 2274
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 2267
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2269
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2270
    invoke-direct {p0, v1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2274
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 2395
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2396
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2406
    :cond_0
    const/4 v5, 0x0

    .line 2407
    .local v5, topSelected:Z
    iget v8, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2408
    .local v4, selectedIndex:I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2409
    .local v2, nextSelectedIndex:I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    .line 2410
    move v7, v2

    .line 2411
    .local v7, topViewIndex:I
    move v1, v4

    .line 2412
    .local v1, bottomViewIndex:I
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2413
    .local v6, topView:Landroid/view/View;
    move-object v0, p1

    .line 2414
    .local v0, bottomView:Landroid/view/View;
    const/4 v5, 0x1

    .line 2422
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2425
    .local v3, numChildren:I
    if-eqz v6, :cond_1

    .line 2426
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2427
    invoke-direct {p0, v6, v7, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2431
    :cond_1
    if-eqz v0, :cond_2

    .line 2432
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2433
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2435
    :cond_2
    return-void

    .line 2416
    .end local v0           #bottomView:Landroid/view/View;
    .end local v1           #bottomViewIndex:I
    .end local v3           #numChildren:I
    .end local v6           #topView:Landroid/view/View;
    .end local v7           #topViewIndex:I
    :cond_3
    move v7, v4

    .line 2417
    .restart local v7       #topViewIndex:I
    move v1, v2

    .line 2418
    .restart local v1       #bottomViewIndex:I
    move-object v6, p1

    .line 2419
    .restart local v6       #topView:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #bottomView:Landroid/view/View;
    goto :goto_0

    .line 2426
    .restart local v3       #numChildren:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2432
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 1692
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1693
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1694
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1695
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1706
    .end local p0
    :goto_1
    return v5

    .line 1694
    .restart local p0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1699
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1700
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1701
    .local v3, numFooters:I
    const/4 v2, 0x0

    .end local p0
    :goto_2
    if-ge v2, v3, :cond_3

    .line 1702
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1703
    goto :goto_1

    .line 1701
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1706
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 2760
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 2765
    :goto_0
    return v1

    .line 2764
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2765
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 9
    .parameter "direction"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 2623
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 2624
    .local v1, firstPosition:I
    const/16 v6, 0x82

    if-ne p1, v6, :cond_4

    .line 2625
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 2628
    .local v5, startPos:I
    :goto_0
    iget-object v6, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    move v6, v7

    .line 2663
    :goto_1
    return v6

    .end local v5           #startPos:I
    :cond_0
    move v5, v1

    .line 2625
    goto :goto_0

    .line 2631
    .restart local v5       #startPos:I
    :cond_1
    if-ge v5, v1, :cond_2

    .line 2632
    move v5, v1

    .line 2635
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 2636
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2637
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_9

    .line 2638
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v4

    .line 2640
    goto :goto_1

    .line 2637
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2644
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    sub-int v2, v6, v8

    .line 2645
    .local v2, last:I
    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v6, v7, :cond_5

    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    sub-int/2addr v6, v8

    move v5, v6

    .line 2648
    .restart local v5       #startPos:I
    :goto_3
    if-gez v5, :cond_6

    move v6, v7

    .line 2649
    goto :goto_1

    .line 2645
    .end local v5           #startPos:I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    sub-int/2addr v6, v8

    move v5, v6

    goto :goto_3

    .line 2651
    .restart local v5       #startPos:I
    :cond_6
    if-le v5, v2, :cond_7

    .line 2652
    move v5, v2

    .line 2655
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2656
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_9

    .line 2657
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_8

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    move v6, v4

    .line 2659
    goto :goto_1

    .line 2656
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_9
    move v6, v7

    .line 2663
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    .line 1727
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1729
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1730
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1738
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1750
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 1745
    .end local v8           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1748
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1750
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 2445
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2446
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2447
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2449
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2452
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2453
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2454
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2457
    .end local v0           #heightDelta:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    const/4 v7, 0x0

    .line 2465
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2466
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2467
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2472
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2474
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2476
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 2477
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2481
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2482
    return-void

    .line 2479
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1135
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1136
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1137
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1139
    .restart local v3       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1141
    :cond_0
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1142
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1144
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1146
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1148
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 1149
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1153
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1154
    return-void

    .line 1151
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 21
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 904
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v12

    .line 905
    .local v12, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 909
    .local v17, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v12

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v20

    .line 911
    .local v20, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v12

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v10

    .line 914
    .local v10, bottomSelectionPixel:I
    if-lez p3, :cond_2

    .line 936
    const/4 v4, 0x1

    sub-int v5, v17, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 939
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mDividerHeight:I

    move v11, v0

    .line 942
    .local v11, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int v6, v4, v11

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 946
    .local v16, sel:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v4, v10, :cond_0

    .line 949
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v18, v4, v20

    .line 952
    .local v18, spaceAbove:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v19, v4, v10

    .line 955
    .local v19, spaceBelow:I
    sub-int v4, p5, p4

    div-int/lit8 v13, v4, 0x2

    .line 956
    .local v13, halfVerticalSpace:I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 957
    .local v15, offset:I
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 960
    neg-int v4, v15

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 962
    neg-int v4, v15

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 966
    .end local v13           #halfVerticalSpace:I
    .end local v15           #offset:I
    .end local v18           #spaceAbove:I
    .end local v19           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_1

    .line 967
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 968
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 969
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1050
    .end local v11           #dividerHeight:I
    :goto_0
    return-object v16

    .line 971
    .restart local v11       #dividerHeight:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 972
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 973
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 975
    .end local v11           #dividerHeight:I
    .end local v16           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 996
    if-eqz p2, :cond_4

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1008
    .restart local v16       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 1010
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v18, v20, v4

    .line 1013
    .restart local v18       #spaceAbove:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v19, v10, v4

    .line 1016
    .restart local v19       #spaceBelow:I
    sub-int v4, p5, p4

    div-int/lit8 v13, v4, 0x2

    .line 1017
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1018
    .restart local v15       #offset:I
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1021
    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1025
    .end local v13           #halfVerticalSpace:I
    .end local v15           #offset:I
    .end local v18           #spaceAbove:I
    .end local v19           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1003
    .end local v16           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16       #sel:Landroid/view/View;
    goto :goto_1

    .line 1028
    .end local v16           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1033
    .local v6, oldTop:I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1036
    .restart local v16       #sel:Landroid/view/View;
    move v0, v6

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    .line 1039
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 1040
    .local v14, newBottom:I
    add-int/lit8 v4, p4, 0x14

    if-ge v14, v4, :cond_6

    .line 1042
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, p4, v4

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1047
    .end local v14           #newBottom:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .parameter "newFocus"

    .prologue
    .line 2745
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 2746
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2747
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2748
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2749
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2746
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2752
    .end local v0           #child:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 2490
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2491
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2492
    .local v4, h:I
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2493
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2494
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2495
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2496
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2497
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 332
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 333
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 334
    .local v1, info:Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 335
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 339
    .end local v1           #info:Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    return-void

    .line 332
    .restart local v1       #info:Landroid/widget/ListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 13
    .parameter "amount"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2828
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 2830
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 2831
    .local v5, listBottom:I
    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 2832
    .local v6, listTop:I
    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 2834
    .local v8, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 2838
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2839
    .local v7, numChildren:I
    sub-int v9, v7, v11

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2840
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 2841
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v7

    sub-int v3, v9, v11

    .line 2842
    .local v3, lastVisiblePosition:I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v9, v11

    if-ge v3, v9, :cond_0

    .line 2843
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2844
    add-int/lit8 v7, v7, 0x1

    .line 2848
    goto :goto_0

    .line 2853
    .end local v3           #lastVisiblePosition:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 2854
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 2858
    :cond_1
    invoke-virtual {p0, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2859
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 2860
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 2861
    .local v4, layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2862
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 2863
    invoke-virtual {v8, v0}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2867
    :goto_2
    invoke-virtual {p0, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2868
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_1

    .line 2865
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    .line 2872
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_3
    invoke-virtual {p0, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2875
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 2876
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2877
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v9, v11

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_3

    .line 2882
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 2883
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 2886
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    sub-int v2, v9, v11

    .line 2887
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2890
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 2891
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 2892
    .restart local v4       #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2893
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 2894
    invoke-virtual {v8, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2898
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2899
    goto :goto_4

    .line 2896
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5

    .line 2901
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 23
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1769
    if-eqz p6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v20, 0x1

    move/from16 v12, v20

    .line 1770
    .local v12, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v20

    move v0, v12

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    const/16 v20, 0x1

    move/from16 v18, v20

    .line 1771
    .local v18, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTouchMode:I

    move v14, v0

    .line 1772
    .local v14, mode:I
    if-lez v14, :cond_a

    const/16 v20, 0x3

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mMotionPosition:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    const/16 v20, 0x1

    move/from16 v11, v20

    .line 1774
    .local v11, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v20

    move v0, v11

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    const/16 v20, 0x1

    move/from16 v17, v20

    .line 1775
    .local v17, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v20

    if-eqz v20, :cond_c

    :cond_0
    const/16 v20, 0x1

    move/from16 v15, v20

    .line 1779
    .local v15, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1780
    .local v16, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v16, :cond_1

    .line 1781
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

    .line 1784
    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1786
    if-eqz p7, :cond_2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    :cond_2
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 1788
    :cond_3
    if-eqz p4, :cond_d

    const/16 v20, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1797
    :goto_6
    if-eqz v18, :cond_4

    .line 1798
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1801
    :cond_4
    if-eqz v17, :cond_5

    .line 1802
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1805
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mChoiceMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1806
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1807
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/Checkable;

    move-object/from16 p6, v0

    .end local p6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    move-object/from16 v0, p6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1811
    :cond_6
    if-eqz v15, :cond_12

    .line 1812
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 1814
    .local v9, childWidthSpec:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move v13, v0

    .line 1816
    .local v13, lpHeight:I
    if-lez v13, :cond_11

    .line 1817
    const/high16 v20, 0x4000

    move v0, v13

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1821
    .local v6, childHeightSpec:I
    :goto_7
    move-object/from16 v0, p1

    move v1, v9

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1826
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v13           #lpHeight:I
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1827
    .local v19, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1828
    .local v10, h:I
    if-eqz p4, :cond_13

    move/from16 v8, p3

    .line 1830
    .local v8, childTop:I
    :goto_9
    if-eqz v15, :cond_14

    .line 1831
    add-int v7, p5, v19

    .line 1832
    .local v7, childRight:I
    add-int v5, v8, v10

    .line 1833
    .local v5, childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    move v2, v8

    move v3, v7

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1839
    .end local v5           #childBottom:I
    .end local v7           #childRight:I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v20

    if-nez v20, :cond_7

    .line 1840
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1842
    :cond_7
    return-void

    .line 1769
    .end local v8           #childTop:I
    .end local v10           #h:I
    .end local v11           #isPressed:Z
    .end local v12           #isSelected:Z
    .end local v14           #mode:I
    .end local v15           #needToMeasure:Z
    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v17           #updateChildPressed:Z
    .end local v18           #updateChildSelected:Z
    .end local v19           #w:I
    .restart local p6
    :cond_8
    const/16 v20, 0x0

    move/from16 v12, v20

    goto/16 :goto_0

    .line 1770
    .restart local v12       #isSelected:Z
    :cond_9
    const/16 v20, 0x0

    move/from16 v18, v20

    goto/16 :goto_1

    .line 1772
    .restart local v14       #mode:I
    .restart local v18       #updateChildSelected:Z
    :cond_a
    const/16 v20, 0x0

    move/from16 v11, v20

    goto/16 :goto_2

    .line 1774
    .restart local v11       #isPressed:Z
    :cond_b
    const/16 v20, 0x0

    move/from16 v17, v20

    goto/16 :goto_3

    .line 1775
    .restart local v17       #updateChildPressed:Z
    :cond_c
    const/16 v20, 0x0

    move/from16 v15, v20

    goto/16 :goto_4

    .line 1788
    .restart local v15       #needToMeasure:Z
    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 1790
    :cond_e
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1791
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 1792
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1794
    :cond_f
    if-eqz p4, :cond_10

    const/16 v20, -0x1

    :goto_b
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v16

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_10
    const/16 v20, 0x0

    goto :goto_b

    .line 1819
    .end local p6
    .restart local v9       #childWidthSpec:I
    .restart local v13       #lpHeight:I
    :cond_11
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .restart local v6       #childHeightSpec:I
    goto/16 :goto_7

    .line 1823
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v13           #lpHeight:I
    :cond_12
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_8

    .line 1828
    .restart local v10       #h:I
    .restart local v19       #w:I
    :cond_13
    sub-int v20, p3, v10

    move/from16 v8, v20

    goto/16 :goto_9

    .line 1835
    .restart local v8       #childTop:I
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    sub-int v20, p5, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1836
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v8, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a
.end method

.method private showingBottomFadingEdge()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 542
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 543
    .local v1, childCount:I
    sub-int v4, v1, v6

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 544
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v1

    sub-int v2, v4, v6

    .line 546
    .local v2, lastVisiblePosition:I
    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 548
    .local v3, listBottom:I
    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v4, v6

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    move v4, v6

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 534
    iget v1, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v0, v1, v2

    .line 535
    .local v0, listTop:I
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v1, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-le v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 379
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 380
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 355
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 356
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 357
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 358
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 359
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 366
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 302
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 303
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 278
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 279
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 284
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 285
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 286
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 287
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2286
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2287
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2288
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 2289
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2293
    :cond_0
    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2291
    return v0

    .line 2293
    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1846
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 3693
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 3694
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3696
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 3697
    iget-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 3699
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .parameter "canvas"

    .prologue
    .line 3001
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mDividerHeight:I

    move v11, v0

    .line 3002
    .local v11, dividerHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    .line 3003
    .local v27, overscrollHeader:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    .line 3004
    .local v26, overscrollFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v27, :cond_8

    const/16 v32, 0x1

    move/from16 v14, v32

    .line 3005
    .local v14, drawOverscrollHeader:Z
    :goto_0
    if-eqz v26, :cond_9

    const/16 v32, 0x1

    move/from16 v13, v32

    .line 3006
    .local v13, drawOverscrollFooter:Z
    :goto_1
    if-lez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    if-eqz v32, :cond_a

    const/16 v32, 0x1

    move/from16 v12, v32

    .line 3008
    .local v12, drawDividers:Z
    :goto_2
    if-nez v12, :cond_0

    if-nez v14, :cond_0

    if-eqz v13, :cond_f

    .line 3010
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 3011
    .local v8, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3012
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3014
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    .line 3015
    .local v10, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3016
    .local v19, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v22, v0

    .line 3017
    .local v22, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    sub-int v32, v22, v32

    const/16 v33, 0x1

    sub-int v18, v32, v33

    .line 3018
    .local v18, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v20, v0

    .line 3019
    .local v20, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v17, v0

    .line 3020
    .local v17, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v16, v0

    .line 3021
    .local v16, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    move v6, v0

    .line 3022
    .local v6, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    .line 3027
    .local v5, adapter:Landroid/widget/ListAdapter;
    if-eqz v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v32

    if-eqz v32, :cond_b

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v32

    if-nez v32, :cond_b

    const/16 v32, 0x1

    move/from16 v15, v32

    .line 3029
    .local v15, fillForMissingDividers:Z
    :goto_3
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    if-nez v32, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 3030
    new-instance v32, Landroid/graphics/Paint;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3031
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/graphics/Paint;->setColor(I)V

    .line 3033
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    .line 3035
    .local v28, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v33, v0

    add-int v23, v32, v33

    .line 3036
    .local v23, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v32, v0

    if-nez v32, :cond_10

    .line 3037
    const/4 v7, 0x0

    .line 3040
    .local v7, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v29, v0

    .line 3041
    .local v29, scrollY:I
    if-lez v10, :cond_2

    if-gez v29, :cond_2

    .line 3042
    if-eqz v14, :cond_c

    .line 3043
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3044
    move/from16 v0, v29

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3045
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3053
    :cond_2
    :goto_4
    const/16 v21, 0x0

    .local v21, i:I
    :goto_5
    move/from16 v0, v21

    move v1, v10

    if-ge v0, v1, :cond_e

    .line 3054
    if-nez v20, :cond_3

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    :cond_3
    if-nez v17, :cond_4

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 3056
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3057
    .local v9, child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 3059
    if-eqz v12, :cond_7

    move v0, v7

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    if-eqz v13, :cond_5

    const/16 v32, 0x1

    sub-int v32, v10, v32

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_7

    .line 3061
    :cond_5
    if-nez v6, :cond_6

    add-int v32, v16, v21

    move-object v0, v5

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_d

    const/16 v32, 0x1

    sub-int v32, v10, v32

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_6

    add-int v32, v16, v21

    add-int/lit8 v32, v32, 0x1

    move-object v0, v5

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 3064
    :cond_6
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3065
    add-int v32, v7, v11

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3066
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3053
    .end local v9           #child:Landroid/view/View;
    :cond_7
    :goto_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 3004
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v7           #bottom:I
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v10           #count:I
    .end local v12           #drawDividers:Z
    .end local v13           #drawOverscrollFooter:Z
    .end local v14           #drawOverscrollHeader:Z
    .end local v15           #fillForMissingDividers:Z
    .end local v16           #first:I
    .end local v17           #footerDividers:Z
    .end local v18           #footerLimit:I
    .end local v19           #headerCount:I
    .end local v20           #headerDividers:Z
    .end local v21           #i:I
    .end local v22           #itemCount:I
    .end local v23           #listBottom:I
    .end local v28           #paint:Landroid/graphics/Paint;
    .end local v29           #scrollY:I
    :cond_8
    const/16 v32, 0x0

    move/from16 v14, v32

    goto/16 :goto_0

    .line 3005
    .restart local v14       #drawOverscrollHeader:Z
    :cond_9
    const/16 v32, 0x0

    move/from16 v13, v32

    goto/16 :goto_1

    .line 3006
    .restart local v13       #drawOverscrollFooter:Z
    :cond_a
    const/16 v32, 0x0

    move/from16 v12, v32

    goto/16 :goto_2

    .line 3027
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v6       #areAllItemsSelectable:Z
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v10       #count:I
    .restart local v12       #drawDividers:Z
    .restart local v16       #first:I
    .restart local v17       #footerDividers:Z
    .restart local v18       #footerLimit:I
    .restart local v19       #headerCount:I
    .restart local v20       #headerDividers:Z
    .restart local v22       #itemCount:I
    :cond_b
    const/16 v32, 0x0

    move/from16 v15, v32

    goto/16 :goto_3

    .line 3046
    .restart local v7       #bottom:I
    .restart local v15       #fillForMissingDividers:Z
    .restart local v23       #listBottom:I
    .restart local v28       #paint:Landroid/graphics/Paint;
    .restart local v29       #scrollY:I
    :cond_c
    if-eqz v12, :cond_2

    .line 3047
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3048
    move v0, v11

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3049
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    .line 3067
    .restart local v9       #child:Landroid/view/View;
    .restart local v21       #i:I
    :cond_d
    if-eqz v15, :cond_7

    .line 3068
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3069
    add-int v32, v7, v11

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3070
    move-object/from16 v0, p1

    move-object v1, v8

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 3076
    .end local v9           #child:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v33, v0

    add-int v25, v32, v33

    .line 3077
    .local v25, overFooterBottom:I
    if-eqz v13, :cond_f

    add-int v32, v16, v10

    move/from16 v0, v32

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    move/from16 v0, v25

    move v1, v7

    if-le v0, v1, :cond_f

    .line 3079
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3080
    move/from16 v0, v25

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3081
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3138
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v7           #bottom:I
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v10           #count:I
    .end local v15           #fillForMissingDividers:Z
    .end local v16           #first:I
    .end local v17           #footerDividers:Z
    .end local v18           #footerLimit:I
    .end local v19           #headerCount:I
    .end local v20           #headerDividers:Z
    .end local v21           #i:I
    .end local v22           #itemCount:I
    .end local v23           #listBottom:I
    .end local v25           #overFooterBottom:I
    .end local v28           #paint:Landroid/graphics/Paint;
    .end local v29           #scrollY:I
    :cond_f
    :goto_7
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3139
    return-void

    .line 3085
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v6       #areAllItemsSelectable:Z
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v10       #count:I
    .restart local v15       #fillForMissingDividers:Z
    .restart local v16       #first:I
    .restart local v17       #footerDividers:Z
    .restart local v18       #footerLimit:I
    .restart local v19       #headerCount:I
    .restart local v20       #headerDividers:Z
    .restart local v22       #itemCount:I
    .restart local v23       #listBottom:I
    .restart local v28       #paint:Landroid/graphics/Paint;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .line 3087
    .local v24, listTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v29, v0

    .line 3089
    .restart local v29       #scrollY:I
    if-lez v10, :cond_11

    if-eqz v14, :cond_11

    .line 3090
    move/from16 v0, v29

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3091
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getTop()I

    move-result v32

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3092
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3095
    :cond_11
    if-eqz v14, :cond_16

    const/16 v32, 0x1

    move/from16 v30, v32

    .line 3096
    .local v30, start:I
    :goto_8
    move/from16 v21, v30

    .restart local v21       #i:I
    :goto_9
    move/from16 v0, v21

    move v1, v10

    if-ge v0, v1, :cond_18

    .line 3097
    if-nez v20, :cond_12

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v19

    if-lt v0, v1, :cond_15

    :cond_12
    if-nez v17, :cond_13

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v18

    if-ge v0, v1, :cond_15

    .line 3099
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3100
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v31

    .line 3102
    .local v31, top:I
    if-eqz v12, :cond_15

    move/from16 v0, v31

    move/from16 v1, v24

    if-le v0, v1, :cond_15

    .line 3103
    if-nez v6, :cond_14

    add-int v32, v16, v21

    move-object v0, v5

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_17

    const/16 v32, 0x1

    sub-int v32, v10, v32

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_14

    add-int v32, v16, v21

    add-int/lit8 v32, v32, 0x1

    move-object v0, v5

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_17

    .line 3106
    :cond_14
    sub-int v32, v31, v11

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3107
    move/from16 v0, v31

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3112
    const/16 v32, 0x1

    sub-int v32, v21, v32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3096
    .end local v9           #child:Landroid/view/View;
    .end local v31           #top:I
    :cond_15
    :goto_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 3095
    .end local v21           #i:I
    .end local v30           #start:I
    :cond_16
    const/16 v32, 0x0

    move/from16 v30, v32

    goto :goto_8

    .line 3113
    .restart local v9       #child:Landroid/view/View;
    .restart local v21       #i:I
    .restart local v30       #start:I
    .restart local v31       #top:I
    :cond_17
    if-eqz v15, :cond_15

    .line 3114
    sub-int v32, v31, v11

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3115
    move/from16 v0, v31

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3116
    move-object/from16 v0, p1

    move-object v1, v8

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 3122
    .end local v9           #child:Landroid/view/View;
    .end local v31           #top:I
    :cond_18
    if-lez v10, :cond_f

    if-lez v29, :cond_f

    .line 3123
    if-eqz v13, :cond_19

    .line 3124
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move v4, v0

    .line 3125
    .local v4, absListBottom:I
    iput v4, v8, Landroid/graphics/Rect;->top:I

    .line 3126
    add-int v32, v4, v29

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 3128
    .end local v4           #absListBottom:I
    :cond_19
    if-eqz v12, :cond_f

    .line 3129
    move/from16 v0, v23

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3130
    add-int v32, v23, v11

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3131
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_7
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 2021
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2022
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 2024
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2025
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2028
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2031
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 1967
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    .line 1971
    .local v5, populated:Z
    if-nez v5, :cond_4

    .line 1972
    const/4 v4, 0x0

    .line 1973
    .local v4, itemCount:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    .line 1975
    .local v2, currentItemIndex:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1976
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    .line 1977
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1978
    .local v1, count:I
    const/16 v6, 0xf

    if-ge v1, v6, :cond_2

    .line 1979
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1980
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1981
    add-int/lit8 v4, v4, 0x1

    .line 1979
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1982
    :cond_1
    if-gt v3, v2, :cond_0

    .line 1983
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1987
    .end local v3           #i:I
    :cond_2
    move v4, v1

    .line 1991
    .end local v1           #count:I
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1992
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1995
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #currentItemIndex:I
    .end local v4           #itemCount:I
    :cond_4
    return v5
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 3152
    iget-object v1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3153
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Landroid/widget/ListView;->mClipDivider:Z

    .line 3155
    .local v0, clipDivider:Z
    if-nez v0, :cond_1

    .line 3156
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3162
    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3164
    if-eqz v0, :cond_0

    .line 3165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3167
    :cond_0
    return-void

    .line 3158
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3159
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 2982
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 2984
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2985
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 2987
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 2988
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 2989
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 2992
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2993
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2995
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2996
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 2965
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 2967
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2968
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 2970
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 2971
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 2972
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 2975
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2976
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2978
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2979
    return-void
.end method

.method fillGap(Z)V
    .locals 5
    .parameter "down"

    .prologue
    const/4 v4, 0x1

    .line 637
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 638
    .local v0, count:I
    if-eqz p1, :cond_1

    .line 639
    if-lez v0, :cond_0

    sub-int v2, v0, v4

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    move v1, v2

    .line 641
    .local v1, startOffset:I
    :goto_0
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 642
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 649
    :goto_1
    return-void

    .line 639
    .end local v1           #startOffset:I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 644
    :cond_1
    if-lez v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    move v1, v2

    .line 646
    .restart local v1       #startOffset:I
    :goto_2
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v2, v4

    invoke-direct {p0, v2, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 647
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 644
    .end local v1           #startOffset:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 1256
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1257
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 1258
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1259
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1260
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1261
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1262
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1274
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1259
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1266
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v3, 0x1

    sub-int v1, v0, v3

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 1267
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1268
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1269
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1266
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1274
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3374
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3375
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3378
    .local v1, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3379
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3381
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3382
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3384
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 3390
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v3

    .line 3378
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3390
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3420
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3421
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3424
    .local v1, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3425
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3427
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3428
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3430
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 3436
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v3

    .line 3424
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3436
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 3355
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3356
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3357
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3358
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3366
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3361
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3362
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3363
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3366
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 3400
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3401
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3402
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3403
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3412
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3407
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3408
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3409
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3412
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 2201
    const/4 v0, 0x0

    .line 2202
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_3

    .line 2203
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 2204
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2205
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 2206
    iput v4, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2207
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2208
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2210
    :cond_0
    const/4 v0, 0x1

    .line 2224
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2225
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2226
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2229
    :cond_2
    return v0

    .line 2212
    :cond_3
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2213
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 2214
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2215
    .restart local v1       #position:I
    if-ltz v1, :cond_4

    .line 2216
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2217
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2218
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2220
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3632
    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3633
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v8

    .line 3662
    :goto_0
    return-object v8

    .line 3638
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 3639
    iget-object v7, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3640
    .local v7, states:Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3641
    .local v3, count:I
    new-array v5, v3, [J

    .line 3642
    .local v5, ids:[J
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3644
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3645
    .local v1, checkedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move v2, v1

    .end local v1           #checkedCount:I
    .local v2, checkedCount:I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 3646
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3647
    add-int/lit8 v1, v2, 0x1

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3645
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #checkedCount:I
    .restart local v2       #checkedCount:I
    goto :goto_1

    .line 3653
    :cond_1
    if-ne v2, v3, :cond_2

    move-object v8, v5

    .line 3654
    goto :goto_0

    .line 3656
    :cond_2
    new-array v6, v2, [J

    .line 3657
    .local v6, result:[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v6

    .line 3659
    goto :goto_0

    .line 3662
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #checkedCount:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #ids:[J
    .end local v6           #result:[J
    .end local v7           #states:Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v8, v10, [J

    goto :goto_0

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #checkedCount:I
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v5       #ids:[J
    .restart local v7       #states:Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    goto :goto_2
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 3674
    iget v4, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_1

    .line 3675
    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [J

    .line 3686
    :goto_0
    return-object v4

    .line 3678
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 3679
    .local v2, idStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 3680
    .local v0, count:I
    new-array v3, v0, [J

    .line 3682
    .local v3, ids:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 3683
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 3682
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v4, v3

    .line 3686
    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3597
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3598
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 3601
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 3614
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 3615
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3617
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 3455
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3175
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3201
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 2939
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 213
    const v0, 0x3ea8f5c3

    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3277
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3258
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 3580
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 3581
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 3584
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 2947
    iget-boolean v0, p0, Landroid/widget/ListView;->mCachingStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 26

    .prologue
    .line 1433
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    move v10, v0

    .line 1434
    .local v10, blockLayoutRequests:Z
    if-nez v10, :cond_0

    .line 1435
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1441
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1443
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    if-nez v4, :cond_1

    .line 1446
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1447
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    if-nez v10, :cond_0

    .line 1681
    :goto_0
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1684
    :cond_0
    return-void

    .line 1451
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 1452
    .local v8, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v4, v5

    .line 1454
    .local v9, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v12

    .line 1455
    .local v12, childCount:I
    const/16 v21, 0x0

    .line 1456
    .local v21, index:I
    const/4 v7, 0x0

    .line 1459
    .local v7, delta:I
    const/4 v5, 0x0

    .line 1460
    .local v5, oldSel:Landroid/view/View;
    const/16 v22, 0x0

    .line 1461
    .local v22, oldFirst:Landroid/view/View;
    const/4 v6, 0x0

    .line 1463
    .local v6, newSel:Landroid/view/View;
    const/16 v16, 0x0

    .line 1466
    .local v16, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLayoutMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 1481
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move v6, v0

    .end local v6           #newSel:Landroid/view/View;
    sub-int v21, v4, v6

    .line 1482
    if-ltz v21, :cond_2

    move/from16 v0, v21

    move v1, v12

    if-ge v0, v1, :cond_2

    .line 1483
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1487
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 1489
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move v4, v0

    if-ltz v4, :cond_3

    .line 1490
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v6, v0

    sub-int v7, v4, v6

    .line 1494
    :cond_3
    add-int v4, v21, v7

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1498
    .restart local v6       #newSel:Landroid/view/View;
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mDataChanged:Z

    move v13, v0

    .line 1499
    .local v13, dataChanged:Z
    if-eqz v13, :cond_5

    .line 1500
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1505
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v4, v0

    if-nez v4, :cond_6

    .line 1506
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1507
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 1680
    if-nez v10, :cond_0

    goto/16 :goto_0

    .line 1468
    .end local v13           #dataChanged:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move v11, v0

    sub-int v21, v4, v11

    .line 1469
    if-ltz v21, :cond_4

    move/from16 v0, v21

    move v1, v12

    if-ge v0, v1, :cond_4

    .line 1470
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 1509
    .restart local v13       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v11, v0

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    if-eq v4, v11, :cond_8

    .line 1510
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #oldSel:Landroid/view/View;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    .end local v6           #newSel:Landroid/view/View;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") with Adapter("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1680
    .end local v7           #delta:I
    .end local v8           #childrenTop:I
    .end local v9           #childrenBottom:I
    .end local v12           #childCount:I
    .end local v13           #dataChanged:Z
    .end local v16           #focusLayoutRestoreView:Landroid/view/View;
    .end local v21           #index:I
    .end local v22           #oldFirst:Landroid/view/View;
    :catchall_0
    move-exception v4

    if-nez v10, :cond_7

    .line 1681
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1680
    :cond_7
    throw v4

    .line 1517
    .restart local v5       #oldSel:Landroid/view/View;
    .restart local v6       #newSel:Landroid/view/View;
    .restart local v7       #delta:I
    .restart local v8       #childrenTop:I
    .restart local v9       #childrenBottom:I
    .restart local v12       #childCount:I
    .restart local v13       #dataChanged:Z
    .restart local v16       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v21       #index:I
    .restart local v22       #oldFirst:Landroid/view/View;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1521
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move v14, v0

    .line 1522
    .local v14, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v24, v0

    .line 1525
    .local v24, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    const/4 v15, 0x0

    .line 1530
    .local v15, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v13, :cond_9

    .line 1531
    const/16 v20, 0x0

    .local v20, i:I
    :goto_2
    move/from16 v0, v20

    move v1, v12

    if-ge v0, v1, :cond_a

    .line 1532
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1531
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1539
    .end local v20           #i:I
    :cond_9
    move-object/from16 v0, v24

    move v1, v12

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1546
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v19

    .line 1547
    .local v19, focusedChild:Landroid/view/View;
    if-eqz v19, :cond_d

    .line 1552
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1553
    :cond_b
    move-object/from16 v15, v19

    .line 1555
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v16

    .line 1556
    if-eqz v16, :cond_c

    .line 1558
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1561
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1565
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1567
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLayoutMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_1

    .line 1594
    if-nez v12, :cond_16

    .line 1595
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_15

    .line 1596
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    .end local v5           #oldSel:Landroid/view/View;
    move-result v23

    .line 1597
    .local v23, position:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1598
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v25

    .line 1619
    .end local v6           #newSel:Landroid/view/View;
    .end local v23           #position:I
    .local v25, sel:Landroid/view/View;
    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1621
    if-eqz v25, :cond_1e

    .line 1624
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    move v4, v0

    if-eqz v4, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1625
    move-object/from16 v0, v25

    move-object v1, v15

    if-ne v0, v1, :cond_e

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_f
    const/4 v4, 0x1

    move/from16 v17, v4

    .line 1627
    .local v17, focusWasTaken:Z
    :goto_4
    if-nez v17, :cond_1c

    .line 1631
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v18

    .line 1632
    .local v18, focused:Landroid/view/View;
    if-eqz v18, :cond_10

    .line 1633
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->clearFocus()V

    .line 1635
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 1643
    .end local v17           #focusWasTaken:Z
    .end local v18           #focused:Landroid/view/View;
    :goto_5
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mSelectedTop:I

    .line 1662
    :cond_11
    :goto_6
    if-eqz v16, :cond_12

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 1664
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1667
    :cond_12
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mLayoutMode:I

    .line 1668
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mDataChanged:Z

    .line 1669
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mNeedSync:Z

    .line 1670
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1672
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 1674
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v4, v0

    if-lez v4, :cond_13

    .line 1675
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 1678
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 1680
    if-nez v10, :cond_0

    goto/16 :goto_0

    .line 1569
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    .restart local v6       #newSel:Landroid/view/View;
    :pswitch_2
    if-eqz v6, :cond_14

    .line 1570
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    move v2, v8

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1572
    .end local v25           #sel:Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v25

    .line 1574
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1576
    .end local v25           #sel:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSyncPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .line 1577
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1579
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .end local v5           #oldSel:Landroid/view/View;
    move-result-object v25

    .line 1580
    .restart local v25       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1583
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_5
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mFirstPosition:I

    .line 1584
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v25

    .line 1585
    .restart local v25       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1588
    .end local v25           #sel:Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .line 1589
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v4, p0

    .line 1591
    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v25

    .line 1592
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1600
    .end local v25           #sel:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    .end local v5           #oldSel:Landroid/view/View;
    move-result v23

    .line 1601
    .restart local v23       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1602
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v25

    .line 1603
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1605
    .end local v23           #position:I
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    if-ltz v4, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v6, v0

    .end local v6           #newSel:Landroid/view/View;
    if-ge v4, v6, :cond_18

    .line 1606
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v4, v0

    if-nez v5, :cond_17

    move v5, v8

    .end local v5           #oldSel:Landroid/view/View;
    :goto_7
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :cond_17
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_7

    .line 1608
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    if-ge v4, v5, :cond_1a

    .line 1609
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move v4, v0

    if-nez v22, :cond_19

    move v5, v8

    :goto_8
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v25           #sel:Landroid/view/View;
    :cond_19
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_8

    .line 1612
    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1625
    :cond_1b
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_4

    .line 1637
    .restart local v17       #focusWasTaken:Z
    :cond_1c
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 1641
    .end local v17           #focusWasTaken:Z
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    .line 1645
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTouchMode:I

    move v4, v0

    if-lez v4, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x3

    if-ge v4, v5, :cond_20

    .line 1646
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1647
    .local v11, child:Landroid/view/View;
    if-eqz v11, :cond_1f

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 1655
    .end local v11           #child:Landroid/view/View;
    :cond_1f
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v16, :cond_11

    .line 1656
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6

    .line 1649
    :cond_20
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mSelectedTop:I

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    .line 1466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1567
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v3, -0x1

    .line 1934
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1935
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 1961
    :goto_0
    return v2

    .line 1939
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1940
    .local v1, count:I
    iget-boolean v2, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v2, :cond_6

    .line 1941
    if-eqz p2, :cond_2

    .line 1942
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1943
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1944
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1947
    :cond_2
    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1948
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1949
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 1953
    :cond_3
    if-ltz p1, :cond_4

    if-lt p1, v1, :cond_5

    :cond_4
    move v2, v3

    .line 1954
    goto :goto_0

    :cond_5
    move v2, p1

    .line 1956
    goto :goto_0

    .line 1958
    :cond_6
    if-ltz p1, :cond_7

    if-lt p1, v1, :cond_8

    :cond_7
    move v2, v3

    .line 1959
    goto :goto_0

    :cond_8
    move v2, p1

    .line 1961
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1195
    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1196
    .local v2, adapter:Landroid/widget/ListAdapter;
    if-nez v2, :cond_0

    .line 1197
    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    .line 1251
    .end local p2
    :goto_0
    return v11

    .line 1201
    .restart local p2
    :cond_0
    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int v10, v11, v12

    .line 1202
    .local v10, returnedHeight:I
    iget v11, p0, Landroid/widget/ListView;->mDividerHeight:I

    if-lez v11, :cond_4

    iget-object v11, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_4

    iget v11, p0, Landroid/widget/ListView;->mDividerHeight:I

    move v4, v11

    .line 1205
    .local v4, dividerHeight:I
    :goto_1
    const/4 v7, 0x0

    .line 1210
    .local v7, prevHeightWithoutPartialChild:I
    const/4 v11, -0x1

    move/from16 v0, p3

    move v1, v11

    if-ne v0, v1, :cond_1

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    move/from16 p3, v11

    .line 1211
    :cond_1
    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1212
    .local v8, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v9

    .line 1213
    .local v9, recyle:Z
    iget-object v6, p0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1215
    .local v6, isScrap:[Z
    move v5, p2

    .end local p2
    .local v5, i:I
    :goto_2
    move v0, v5

    move/from16 v1, p3

    if-gt v0, v1, :cond_8

    .line 1216
    invoke-virtual {p0, v5, v6}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1218
    .local v3, child:Landroid/view/View;
    invoke-direct {p0, v3, v5, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1220
    if-lez v5, :cond_2

    .line 1222
    add-int/2addr v10, v4

    .line 1226
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/AbsListView$LayoutParams;

    iget v11, p2, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v11}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1228
    invoke-virtual {v8, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1231
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    .line 1233
    move v0, v10

    move/from16 v1, p4

    if-lt v0, v1, :cond_6

    .line 1236
    if-ltz p5, :cond_5

    move v0, v5

    move/from16 v1, p5

    if-le v0, v1, :cond_5

    if-lez v7, :cond_5

    move v0, v10

    move/from16 v1, p4

    if-eq v0, v1, :cond_5

    move v11, v7

    goto :goto_0

    .line 1202
    .end local v3           #child:Landroid/view/View;
    .end local v4           #dividerHeight:I
    .end local v5           #i:I
    .end local v6           #isScrap:[Z
    .end local v7           #prevHeightWithoutPartialChild:I
    .end local v8           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v9           #recyle:Z
    .restart local p2
    :cond_4
    const/4 v11, 0x0

    move v4, v11

    goto :goto_1

    .end local p2
    .restart local v3       #child:Landroid/view/View;
    .restart local v4       #dividerHeight:I
    .restart local v5       #i:I
    .restart local v6       #isScrap:[Z
    .restart local v7       #prevHeightWithoutPartialChild:I
    .restart local v8       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .restart local v9       #recyle:Z
    :cond_5
    move/from16 v11, p4

    .line 1236
    goto :goto_0

    .line 1244
    :cond_6
    if-ltz p5, :cond_7

    move v0, v5

    move/from16 v1, p5

    if-lt v0, v1, :cond_7

    .line 1245
    move v7, v10

    .line 1215
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v3           #child:Landroid/view/View;
    :cond_8
    move v11, v10

    .line 1251
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3337
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3339
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3340
    .local v0, count:I
    if-lez v0, :cond_1

    .line 3341
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3342
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3344
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 3346
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 12
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3282
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3284
    const/4 v2, -0x1

    .line 3285
    .local v2, closetChildIndex:I
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 3286
    iget v9, p0, Landroid/widget/ListView;->mScrollX:I

    iget v10, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3288
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3291
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    iget v11, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_0

    .line 3292
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 3293
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3298
    :cond_0
    iget-object v8, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3299
    .local v8, otherRect:Landroid/graphics/Rect;
    const v6, 0x7fffffff

    .line 3300
    .local v6, minDistance:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 3301
    .local v1, childCount:I
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3303
    .local v4, firstPosition:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 3305
    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3303
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3309
    :cond_2
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3310
    .local v7, other:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3311
    invoke-virtual {p0, v7, v8}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3312
    invoke-static {p3, v8, p2}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 3314
    .local v3, distance:I
    if-ge v3, v6, :cond_1

    .line 3315
    move v6, v3

    .line 3316
    move v2, v5

    goto :goto_1

    .line 3321
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #childCount:I
    .end local v3           #distance:I
    .end local v4           #firstPosition:I
    .end local v5           #i:I
    .end local v6           #minDistance:I
    .end local v7           #other:Landroid/view/View;
    .end local v8           #otherRect:Landroid/graphics/Rect;
    :cond_3
    if-ltz v2, :cond_4

    .line 3322
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->setSelection(I)V

    .line 3326
    :goto_2
    return-void

    .line 3324
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2036
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2041
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2046
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1089
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1091
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1092
    .local v10, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1093
    .local v9, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1094
    .local v11, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1096
    .local v4, heightSize:I
    const/4 v8, 0x0

    .line 1097
    .local v8, childWidth:I
    const/4 v7, 0x0

    .line 1099
    .local v7, childHeight:I
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    move v0, v2

    :goto_0
    iput v0, p0, Landroid/widget/ListView;->mItemCount:I

    .line 1100
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v10, :cond_0

    if-nez v9, :cond_1

    .line 1102
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1104
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1106
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1107
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1109
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1111
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1115
    .end local v6           #child:Landroid/view/View;
    :cond_1
    if-nez v10, :cond_2

    .line 1116
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v11, v0, v1

    .line 1120
    :cond_2
    if-nez v9, :cond_3

    .line 1121
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1125
    :cond_3
    const/high16 v0, -0x8000

    if-ne v9, v0, :cond_4

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1127
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1130
    :cond_4
    invoke-virtual {p0, v11, v4}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1131
    iput p1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 1132
    return-void

    .line 1099
    :cond_5
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 3763
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView$SavedState;

    move-object v1, v0

    .line 3765
    .local v1, ss:Landroid/widget/ListView$SavedState;
    invoke-virtual {v1}, Landroid/widget/ListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3767
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_0

    .line 3768
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3771
    :cond_0
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_1

    .line 3772
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 3774
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 3757
    invoke-super {p0}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3758
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ListView$SavedState;

    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/ListView$SavedState;-><init>(Landroid/os/Parcelable;Landroid/util/SparseBooleanArray;Landroid/util/LongSparseArray;)V

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1070
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1071
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1072
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1073
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1074
    .local v1, childPosition:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1075
    .local v0, childBottom:I
    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1076
    .local v3, offset:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1077
    .local v4, top:I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1078
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1080
    :cond_0
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setup(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1083
    .end local v0           #childBottom:I
    .end local v1           #childPosition:I
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #offset:I
    .end local v4           #top:I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1084
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 3441
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3444
    const/4 v0, 0x0

    .line 3446
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2155
    const/4 v1, -0x1

    .line 2156
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2158
    .local v0, down:Z
    const/16 v3, 0x21

    if-ne p1, v3, :cond_4

    .line 2159
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2165
    :cond_0
    :goto_0
    if-ltz v1, :cond_5

    .line 2166
    invoke-virtual {p0, v1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2167
    .local v2, position:I
    if-ltz v2, :cond_5

    .line 2168
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2169
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2171
    if-eqz v0, :cond_1

    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 2172
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2175
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2176
    iput v6, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2179
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2180
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2181
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2182
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_3
    move v3, v6

    .line 2189
    .end local v2           #position:I
    :goto_1
    return v3

    .line 2160
    :cond_4
    const/16 v3, 0x82

    if-ne p1, v3, :cond_0

    .line 2161
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v3, v6

    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2162
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v3, v7

    .line 2189
    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 3481
    const/4 v0, 0x0

    .line 3483
    .local v0, handled:Z
    iget v2, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v2, :cond_1

    .line 3484
    const/4 v0, 0x1

    .line 3486
    iget v2, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 3487
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v6

    .line 3488
    .local v1, newValue:Z
    :goto_0
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3489
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3490
    if-eqz v1, :cond_3

    .line 3491
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3508
    :cond_0
    :goto_1
    iput-boolean v6, p0, Landroid/widget/ListView;->mDataChanged:Z

    .line 3509
    invoke-virtual {p0}, Landroid/widget/ListView;->rememberSyncState()V

    .line 3510
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3513
    .end local v1           #newValue:Z
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 3515
    return v0

    :cond_2
    move v1, v4

    .line 3487
    goto :goto_0

    .line 3493
    .restart local v1       #newValue:Z
    :cond_3
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 3497
    .end local v1           #newValue:Z
    :cond_4
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_5

    move v1, v6

    .line 3498
    .restart local v1       #newValue:Z
    :goto_2
    if-eqz v1, :cond_0

    .line 3499
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3500
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3501
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3502
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 3503
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .end local v1           #newValue:Z
    :cond_5
    move v1, v4

    .line 3497
    goto :goto_2
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1163
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 395
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 399
    const/4 v0, 0x1

    .line 401
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    move v1, v0

    .line 404
    .end local v0           #result:Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 318
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 322
    const/4 v0, 0x1

    .line 324
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    move v1, v0

    .line 327
    .end local v0           #result:Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 18
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 556
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v11, v0

    .line 559
    .local v11, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v15

    neg-int v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 562
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v8

    .line 563
    .local v8, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v10

    .line 564
    .local v10, listUnfadedTop:I
    add-int v9, v10, v8

    .line 565
    .local v9, listUnfadedBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v7

    .line 567
    .local v7, fadingEdge:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 569
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v15, v0

    if-gtz v15, :cond_0

    if-le v11, v7, :cond_1

    .line 570
    :cond_0
    add-int/2addr v10, v7

    .line 574
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    .line 575
    .local v4, childCount:I
    const/4 v15, 0x1

    sub-int v15, v4, v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 577
    .local v3, bottomOfBottomChild:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 579
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int v16, v3, v7

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 581
    :cond_2
    sub-int/2addr v9, v7

    .line 585
    :cond_3
    const/4 v13, 0x0

    .line 587
    .local v13, scrollYDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-le v15, v9, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-le v15, v10, :cond_7

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v8, :cond_6

    .line 594
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int/2addr v15, v10

    add-int/2addr v13, v15

    .line 601
    :goto_0
    sub-int v6, v3, v9

    .line 602
    .local v6, distanceToBottom:I
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 622
    .end local v6           #distanceToBottom:I
    :cond_4
    :goto_1
    if-eqz v13, :cond_9

    const/4 v15, 0x1

    move v12, v15

    .line 623
    .local v12, scroll:Z
    :goto_2
    if-eqz v12, :cond_5

    .line 624
    neg-int v15, v13

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 625
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 626
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ListView;->mSelectedTop:I

    .line 627
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 629
    :cond_5
    return v12

    .line 597
    .end local v12           #scroll:Z
    :cond_6
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v13, v15

    goto :goto_0

    .line 603
    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-ge v15, v10, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-ge v15, v9, :cond_4

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v8, :cond_8

    .line 610
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v13, v15

    .line 617
    :goto_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v14

    .line 618
    .local v14, top:I
    sub-int v5, v14, v10

    .line 619
    .local v5, deltaToTop:I
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_1

    .line 613
    .end local v5           #deltaToTop:I
    .end local v14           #top:I
    :cond_8
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v15, v10, v15

    sub-int/2addr v13, v15

    goto :goto_3

    .line 622
    :cond_9
    const/4 v15, 0x0

    move v12, v15

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 509
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 511
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 513
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 514
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 436
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 440
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 441
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 443
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 444
    :cond_1
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 449
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    .line 450
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    .line 451
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_8

    .line 452
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 453
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    iput v1, p0, Landroid/widget/ListView;->mOldItemCount:I

    .line 454
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mItemCount:I

    .line 455
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 457
    new-instance v1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    .line 458
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 460
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 463
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-eqz v1, :cond_7

    .line 464
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 468
    .local v0, position:I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 469
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 471
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_2

    .line 473
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 476
    :cond_2
    iget v1, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v1, :cond_3

    .line 479
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 489
    .end local v0           #position:I
    :cond_3
    :goto_2
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_4

    .line 490
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 493
    :cond_4
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_5

    .line 494
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 497
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 498
    return-void

    .line 446
    :cond_6
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto/16 :goto_0

    .line 466
    :cond_7
    invoke-virtual {p0, v5, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_1

    .line 483
    .end local v0           #position:I
    :cond_8
    iput-boolean v4, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 484
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 486
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 2953
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 2954
    .local v0, opaque:Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 2955
    if-eqz v0, :cond_1

    .line 2956
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 2957
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 2959
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2961
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 2962
    return-void

    .line 2953
    .end local v0           #opaque:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setChoiceMode(I)V
    .locals 1
    .parameter "choiceMode"

    .prologue
    .line 3468
    iput p1, p0, Landroid/widget/ListView;->mChoiceMode:I

    .line 3469
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_1

    .line 3470
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 3471
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3473
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3474
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 3477
    :cond_1
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "divider"

    .prologue
    const/4 v2, 0x0

    .line 3185
    if-eqz p1, :cond_1

    .line 3186
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3187
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Landroid/widget/ListView;->mClipDivider:Z

    .line 3192
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3193
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3194
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayoutIfNecessary()V

    .line 3195
    return-void

    .line 3189
    :cond_1
    iput v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3190
    iput-boolean v2, p0, Landroid/widget/ListView;->mClipDivider:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3193
    goto :goto_1
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 3211
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3212
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayoutIfNecessary()V

    .line 3213
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 3237
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3238
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3239
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 3224
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3225
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3226
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 6
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 3527
    iget v1, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 3566
    :cond_0
    :goto_0
    return-void

    .line 3531
    :cond_1
    iget v1, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 3532
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3533
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3534
    if-eqz p2, :cond_3

    .line 3535
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3561
    :cond_2
    :goto_1
    iget-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    .line 3562
    iput-boolean v5, p0, Landroid/widget/ListView;->mDataChanged:Z

    .line 3563
    invoke-virtual {p0}, Landroid/widget/ListView;->rememberSyncState()V

    .line 3564
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0

    .line 3537
    :cond_3
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 3541
    :cond_4
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v5

    .line 3544
    .local v0, updateIds:Z
    :goto_2
    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3545
    :cond_5
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3546
    if-eqz v0, :cond_6

    .line 3547
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 3552
    :cond_6
    if-eqz p2, :cond_2

    .line 3553
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3554
    if-eqz v0, :cond_2

    .line 3555
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 3541
    .end local v0           #updateIds:Z
    :cond_7
    const/4 v1, 0x0

    move v0, v1

    goto :goto_2
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 2928
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 2929
    if-nez p1, :cond_0

    .line 2930
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 2932
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 3269
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3270
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3271
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 3248
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3249
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    if-gez v0, :cond_0

    .line 3250
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3252
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1858
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1859
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2003
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2004
    .local v0, count:I
    if-lez v0, :cond_0

    .line 2005
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2016
    :goto_0
    return-void

    .line 2009
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2010
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2012
    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2013
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 1871
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 1895
    :cond_0
    :goto_0
    return-void

    .line 1875
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1876
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 1877
    if-ltz p1, :cond_2

    .line 1878
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1884
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 1885
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 1886
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 1888
    iget-boolean v0, p0, Landroid/widget/ListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 1889
    iput p1, p0, Landroid/widget/ListView;->mSyncPosition:I

    .line 1890
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/ListView;->mSyncRowId:J

    .line 1893
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0

    .line 1881
    :cond_4
    iput p1, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1904
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1905
    const/4 v0, 0x0

    .line 1907
    .local v0, awakeScrollbars:Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1909
    .local v1, selectedPosition:I
    if-ltz v1, :cond_0

    .line 1910
    const/4 v2, 0x1

    sub-int v2, v1, v2

    if-ne p1, v2, :cond_2

    .line 1911
    const/4 v0, 0x1

    .line 1917
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 1919
    if-eqz v0, :cond_1

    .line 1920
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 1922
    :cond_1
    return-void

    .line 1912
    :cond_2
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 1913
    const/4 v0, 0x1

    goto :goto_0
.end method
