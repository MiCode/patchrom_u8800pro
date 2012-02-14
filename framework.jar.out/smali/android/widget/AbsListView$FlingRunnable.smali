.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter

    .prologue
    .line 2791
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2792
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 2793
    return-void
.end method

.method static synthetic access$200(Landroid/widget/AbsListView$FlingRunnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2780
    invoke-direct {p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    return-void
.end method

.method private endFling()V
    .locals 2

    .prologue
    .line 2856
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2858
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2859
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)V

    .line 2861
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2863
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1900(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2864
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v1}, Landroid/widget/AbsListView;->access$1900(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2866
    :cond_0
    return-void
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .parameter "delta"

    .prologue
    .line 2831
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$1400(Landroid/widget/AbsListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 2832
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 2833
    .local v0, overscrollMode:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1500(Landroid/widget/AbsListView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2835
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2836
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 2837
    .local v1, vel:I
    if-lez p1, :cond_2

    .line 2838
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)Landroid/widget/EdgeGlow;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 2843
    .end local v1           #vel:I
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 2844
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2845
    return-void

    .line 2840
    .restart local v1       #vel:I
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Landroid/widget/EdgeGlow;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    goto :goto_0
.end method

.method public run()V
    .locals 26

    .prologue
    .line 2869
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    iget v3, v3, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v3, :pswitch_data_0

    .line 2965
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2874
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    iget v3, v3, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 2875
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 2879
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v24, v0

    .line 2880
    .local v24, scroller:Landroid/widget/OverScroller;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v20

    .line 2881
    .local v20, more:Z
    invoke-virtual/range {v24 .. v24}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v25

    .line 2885
    .local v25, y:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    move v3, v0

    sub-int v17, v3, v25

    .line 2888
    .local v17, delta:I
    if-lez v17, :cond_5

    .line 2890
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v4, v0

    iget v4, v4, Landroid/widget/AbsListView;->mFirstPosition:I

    iput v4, v3, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2891
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 2892
    .local v18, firstView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2895
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v4, v0

    #getter for: Landroid/widget/AbsListView;->mPaddingBottom:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2000(Landroid/widget/AbsListView;)I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v4, v0

    #getter for: Landroid/widget/AbsListView;->mPaddingTop:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 2909
    .end local v18           #firstView:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v4, v0

    iget v4, v4, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v5, v0

    iget v5, v5, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 2910
    .local v21, motionView:Landroid/view/View;
    const/16 v23, 0x0

    .line 2911
    .local v23, oldTop:I
    if-eqz v21, :cond_3

    .line 2912
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v23

    .line 2915
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v16

    .line 2916
    .local v16, atEnd:Z
    if-eqz v16, :cond_6

    .line 2917
    if-eqz v21, :cond_4

    .line 2919
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v3, v23

    sub-int v3, v17, v3

    neg-int v5, v3

    .line 2920
    .local v5, overshoot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v7, v0

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$2400(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v11, v0

    iget v11, v11, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v12, 0x0

    #calls: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v3 .. v12}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    .line 2923
    .end local v5           #overshoot:I
    :cond_4
    if-eqz v20, :cond_0

    .line 2924
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    .line 2898
    .end local v16           #atEnd:Z
    .end local v21           #motionView:Landroid/view/View;
    .end local v23           #oldTop:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v22, v3, v4

    .line 2899
    .local v22, offsetToLast:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v4, v0

    iget v4, v4, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v4, v4, v22

    iput v4, v3, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2901
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 2902
    .local v19, lastView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v4, v0

    #getter for: Landroid/widget/AbsListView;->mPaddingBottom:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v4, v0

    #getter for: Landroid/widget/AbsListView;->mPaddingTop:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    neg-int v3, v3

    move v0, v3

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    goto/16 :goto_1

    .line 2929
    .end local v19           #lastView:Landroid/view/View;
    .end local v22           #offsetToLast:I
    .restart local v16       #atEnd:Z
    .restart local v21       #motionView:Landroid/view/View;
    .restart local v23       #oldTop:I
    :cond_6
    if-eqz v20, :cond_7

    if-nez v16, :cond_7

    .line 2930
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidate()V

    .line 2931
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 2932
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2934
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 2947
    .end local v16           #atEnd:Z
    .end local v17           #delta:I
    .end local v20           #more:Z
    .end local v21           #motionView:Landroid/view/View;
    .end local v23           #oldTop:I
    .end local v24           #scroller:Landroid/widget/OverScroller;
    .end local v25           #y:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v24, v0

    .line 2948
    .restart local v24       #scroller:Landroid/widget/OverScroller;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2949
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)I

    move-result v10

    .line 2950
    .local v10, scrollY:I
    invoke-virtual/range {v24 .. v24}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    sub-int v8, v3, v10

    .line 2951
    .local v8, deltaY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    iget v14, v3, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v15, 0x0

    #calls: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v6 .. v15}, Landroid/widget/AbsListView;->access$2700(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2953
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 2955
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidate()V

    .line 2956
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2959
    .end local v8           #deltaY:I
    .end local v10           #scrollY:I
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 2869
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 2796
    if-gez p1, :cond_0

    move v2, v6

    .line 2797
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 2798
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 2800
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2801
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2809
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 2796
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x0

    .line 2822
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, -0x8000

    move v7, v0

    .line 2823
    .local v7, min:I
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;)I

    move-result v0

    if-lez v0, :cond_1

    move v8, v1

    .line 2824
    .local v8, max:I
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2825
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2826
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2827
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2828
    return-void

    .end local v7           #min:I
    .end local v8           #max:I
    :cond_0
    move v7, v1

    .line 2822
    goto :goto_0

    .line 2823
    .restart local v7       #min:I
    :cond_1
    const v0, 0x7fffffff

    move v8, v0

    goto :goto_1
.end method

.method startScroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 2848
    if-gez p1, :cond_0

    const v0, 0x7fffffff

    move v2, v0

    .line 2849
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 2850
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 2851
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2852
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2853
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 2848
    goto :goto_0
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2812
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2813
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2814
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2815
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2819
    :goto_0
    return-void

    .line 2817
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_0
.end method
