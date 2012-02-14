.class public Landroid/widget/EdgeGlow;
.super Ljava/lang/Object;
.source "EdgeGlow.java"


# static fields
.field private static final EPSILON:F = 0.0010f

.field private static final HELD_EDGE_ALPHA:F = 0.7f

.field private static final HELD_EDGE_SCALE_Y:F = 0.5f

.field private static final HELD_GLOW_ALPHA:F = 0.5f

.field private static final HELD_GLOW_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 0.8f

.field private static final MAX_GLOW_HEIGHT:F = 3.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x5

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x5

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeGlow"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field private mDuration:F

.field private final mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "edge"
    .parameter "glow"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 104
    iput-object p1, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 105
    iput-object p2, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 107
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/EdgeGlow;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 108
    return-void
.end method

.method private update()V
    .locals 11

    .prologue
    const/high16 v10, 0x447a

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 267
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 268
    .local v3, time:J
    iget-wide v5, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Landroid/widget/EdgeGlow;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 270
    .local v2, t:F
    iget-object v5, p0, Landroid/widget/EdgeGlow;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 272
    .local v1, interp:F
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    .line 273
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    .line 274
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    .line 275
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 277
    const v5, 0x3f7fbe77

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 278
    iget v5, p0, Landroid/widget/EdgeGlow;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 280
    :pswitch_0
    const/4 v5, 0x3

    iput v5, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 281
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 282
    iput v10, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 284
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 285
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    .line 286
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 287
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 290
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 291
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 292
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 293
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    goto :goto_0

    .line 296
    :pswitch_1
    const/4 v5, 0x4

    iput v5, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 297
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 298
    iput v10, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 300
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 301
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    .line 302
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 303
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 306
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 307
    iput v8, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 308
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 309
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    goto :goto_0

    .line 314
    :pswitch_2
    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v5, v9, v5

    move v0, v5

    .line 317
    .local v0, factor:F
    :goto_1
    iget v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    iget v7, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    goto :goto_0

    .line 314
    .end local v0           #factor:F
    :cond_1
    const v5, 0x7f7fffff

    move v0, v5

    goto :goto_1

    .line 322
    :pswitch_3
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/EdgeGlow;->mState:I

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 13
    .parameter "canvas"

    .prologue
    const/high16 v12, 0x437f

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 245
    invoke-direct {p0}, Landroid/widget/EdgeGlow;->update()V

    .line 247
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 248
    .local v1, edgeHeight:I
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 250
    .local v2, glowHeight:I
    iget v3, p0, Landroid/widget/EdgeGlow;->mHeight:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/EdgeGlow;->mWidth:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 252
    .local v0, distScale:F
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    invoke-static {v4, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 255
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/widget/EdgeGlow;->mWidth:I

    neg-int v4, v4

    iget v5, p0, Landroid/widget/EdgeGlow;->mWidth:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v6, v2

    iget v7, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v0

    const v7, 0x3f19999a

    mul-float/2addr v6, v7

    iget v7, p0, Landroid/widget/EdgeGlow;->mHeight:I

    int-to-float v7, v7

    const/high16 v8, 0x4040

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v4, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 257
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 259
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    invoke-static {v4, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 260
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/widget/EdgeGlow;->mWidth:I

    int-to-float v5, v1

    iget v6, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 261
    iget-object v3, p0, Landroid/widget/EdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 263
    iget v3, p0, Landroid/widget/EdgeGlow;->mState:I

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    move v3, v9

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 121
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Landroid/widget/EdgeGlow;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 5
    .parameter "velocity"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 201
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 202
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 204
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 205
    const v0, 0x3dcccccd

    int-to-float v1, p1

    const v2, 0x3cf5c28f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 209
    iput v3, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 210
    iput v3, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iput v3, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    .line 213
    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 214
    iput v3, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 218
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 220
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 227
    const v0, 0x3ccccccd

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    .line 229
    iget v0, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 231
    return-void
.end method

.method public onPull(F)V
    .locals 11
    .parameter "deltaDistance"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40a0

    const/high16 v8, 0x3f80

    const v6, 0x3f4ccccd

    const/4 v7, 0x0

    .line 129
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 130
    .local v2, now:J
    iget v4, p0, Landroid/widget/EdgeGlow;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeGlow;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 168
    :goto_0
    return-void

    .line 133
    :cond_0
    iget v4, p0, Landroid/widget/EdgeGlow;->mState:I

    if-eq v4, v10, :cond_1

    .line 134
    iput v8, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 136
    :cond_1
    iput v10, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 138
    iput-wide v2, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 139
    const/high16 v4, 0x4327

    iput v4, p0, Landroid/widget/EdgeGlow;->mDuration:F

    .line 141
    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    .line 142
    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 144
    .local v0, distance:F
    const v4, 0x3f19999a

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    .line 145
    const/high16 v4, 0x3f00

    mul-float v5, v0, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    .line 148
    iget v4, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    .line 152
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 153
    .local v1, glowChange:F
    cmpl-float v4, p1, v7

    if-lez v4, :cond_2

    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 154
    neg-float v1, v1

    .line 156
    :cond_2
    iget v4, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    .line 157
    iput v7, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 161
    :cond_3
    const/high16 v4, 0x4040

    iget v5, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    mul-float v6, v1, v9

    add-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    .line 164
    iget v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 165
    iget v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 166
    iget v4, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 167
    iget v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    goto/16 :goto_0
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    iput v2, p0, Landroid/widget/EdgeGlow;->mPullDistance:F

    .line 176
    iget v0, p0, Landroid/widget/EdgeGlow;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/EdgeGlow;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/EdgeGlow;->mState:I

    .line 181
    iget v0, p0, Landroid/widget/EdgeGlow;->mEdgeAlpha:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaStart:F

    .line 182
    iget v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleY:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYStart:F

    .line 183
    iget v0, p0, Landroid/widget/EdgeGlow;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowAlphaStart:F

    .line 184
    iget v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeGlow;->mGlowScaleYStart:F

    .line 186
    iput v2, p0, Landroid/widget/EdgeGlow;->mEdgeAlphaFinish:F

    .line 187
    iput v2, p0, Landroid/widget/EdgeGlow;->mEdgeScaleYFinish:F

    .line 188
    iput v2, p0, Landroid/widget/EdgeGlow;->mGlowAlphaFinish:F

    .line 189
    iput v2, p0, Landroid/widget/EdgeGlow;->mGlowScaleYFinish:F

    .line 191
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeGlow;->mStartTime:J

    .line 192
    const/high16 v0, 0x447a

    iput v0, p0, Landroid/widget/EdgeGlow;->mDuration:F

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 111
    iput p1, p0, Landroid/widget/EdgeGlow;->mWidth:I

    .line 112
    iput p2, p0, Landroid/widget/EdgeGlow;->mHeight:I

    .line 113
    return-void
.end method
