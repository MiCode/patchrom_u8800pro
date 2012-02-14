.class public Landroid/text/Styled;
.super Ljava/lang/Object;
.source "Styled.java"


# static fields
.field private static isBidiEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/SystemProperties;->getCitArabicFlag(Z)Z

    move-result v0

    sput-boolean v0, Landroid/text/Styled;->isBidiEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static drawDirectionalRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .locals 24
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needWidth"

    .prologue
    .line 279
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-nez v5, :cond_b

    .line 280
    const/16 p9, 0x0

    .line 282
    .local p9, ret:F
    if-eqz p5, :cond_9

    .line 286
    sget-boolean p5, Landroid/text/Styled;->isBidiEnabled:Z

    .end local p5
    if-eqz p5, :cond_8

    .line 288
    const/16 p5, 0x0

    .line 290
    .local p5, bRTL:Z
    sub-int p7, p3, p2

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->obtain(I)[C

    .end local p7
    move-result-object p7

    .line 291
    .local p7, buf:[C
    const/16 p12, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    move/from16 v4, p12

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 293
    .end local p12
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    sub-int p12, p3, p2

    move v0, v11

    move/from16 v1, p12

    if-ge v0, v1, :cond_2

    .line 294
    aget-char p12, p7, v11

    const/16 v5, 0x590

    move/from16 v0, p12

    move v1, v5

    if-lt v0, v1, :cond_0

    aget-char p12, p7, v11

    const/16 v5, 0x6ff

    move/from16 v0, p12

    move v1, v5

    if-le v0, v1, :cond_1

    :cond_0
    aget-char p12, p7, v11

    const/16 v5, 0x30

    move/from16 v0, p12

    move v1, v5

    if-lt v0, v1, :cond_6

    aget-char p12, p7, v11

    const/16 v5, 0x39

    move/from16 v0, p12

    move v1, v5

    if-gt v0, v1, :cond_6

    .line 295
    :cond_1
    const/16 p5, 0x1

    .line 299
    :cond_2
    if-eqz p5, :cond_7

    .line 300
    invoke-static/range {p1 .. p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, tmp:Ljava/lang/CharSequence;
    :goto_1
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->recycle([C)V

    .line 309
    .end local v11           #i:I
    .end local p5           #bRTL:Z
    .end local p7           #buf:[C
    :goto_2
    sub-int v8, p3, p2

    .line 311
    .local v8, tmpend:I
    if-nez p0, :cond_3

    if-eqz p13, :cond_17

    .line 312
    :cond_3
    const/16 p1, 0x0

    move-object/from16 v0, p11

    move-object v1, v6

    move/from16 v2, p1

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    .end local p1
    move-result p1

    .line 314
    .end local p9           #ret:F
    .local p1, ret:F
    :goto_3
    if-eqz p0, :cond_4

    .line 315
    const/4 v7, 0x0

    sub-float v9, p6, p1

    move/from16 v0, p8

    int-to-float v0, v0

    move v10, v0

    move-object/from16 v5, p0

    move-object/from16 v11, p11

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_4
    move/from16 p0, p1

    .line 325
    .end local v6           #tmp:Ljava/lang/CharSequence;
    .end local v8           #tmpend:I
    .end local p1           #ret:F
    .local p0, ret:F
    :goto_4
    if-eqz p10, :cond_5

    .line 326
    move-object/from16 v0, p11

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 329
    :cond_5
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 p1, v0

    mul-float p0, p0, p1

    .line 378
    .end local p0           #ret:F
    :goto_5
    return p0

    .line 293
    .restart local v11       #i:I
    .local p0, canvas:Landroid/graphics/Canvas;
    .local p1, text:Ljava/lang/CharSequence;
    .restart local p5       #bRTL:Z
    .restart local p7       #buf:[C
    .restart local p9       #ret:F
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 302
    :cond_7
    invoke-static/range {p1 .. p3}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6       #tmp:Ljava/lang/CharSequence;
    goto :goto_1

    .line 305
    .end local v6           #tmp:Ljava/lang/CharSequence;
    .end local v11           #i:I
    .end local p5           #bRTL:Z
    .local p7, top:I
    .restart local p12
    :cond_8
    invoke-static/range {p1 .. p3}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6       #tmp:Ljava/lang/CharSequence;
    goto :goto_2

    .line 318
    .end local v6           #tmp:Ljava/lang/CharSequence;
    .local p5, runIsRtl:Z
    :cond_9
    if-eqz p13, :cond_16

    .line 319
    move-object/from16 v0, p11

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p5

    .line 321
    .end local p9           #ret:F
    .local p5, ret:F
    :goto_6
    if-eqz p0, :cond_a

    .line 322
    move/from16 v0, p8

    int-to-float v0, v0

    move v14, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p6

    move-object/from16 v15, p11

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_a
    move/from16 p0, p5

    .end local p5           #ret:F
    .local p0, ret:F
    goto :goto_4

    .line 332
    .local p0, canvas:Landroid/graphics/Canvas;
    .local p5, runIsRtl:Z
    .local p9, bottom:I
    :cond_b
    move/from16 v23, p6

    .line 333
    .local v23, ox:F
    const/4 v7, 0x0

    .local v7, minAscent:I
    const/4 v6, 0x0

    .local v6, maxDescent:I
    const/4 v8, 0x0

    .local v8, minTop:I
    const/4 v5, 0x0

    .line 335
    .local v5, maxBottom:I
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v10, v0

    .line 338
    .local v10, sp:Landroid/text/Spanned;
    if-nez p0, :cond_11

    .line 339
    const-class p1, Landroid/text/style/MetricAffectingSpan;

    .line 344
    .local p1, division:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_7
    move/from16 v11, p2

    .restart local v11       #i:I
    :goto_8
    move v0, v11

    move/from16 v1, p3

    if-ge v0, v1, :cond_13

    .line 345
    move-object v0, v10

    move v1, v11

    move/from16 v2, p3

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v12

    .line 350
    .local v12, next:I
    if-nez p13, :cond_c

    move v0, v12

    move/from16 v1, p3

    if-eq v0, v1, :cond_12

    :cond_c
    const/4 v9, 0x1

    move/from16 v22, v9

    :goto_9
    move-object/from16 v9, p0

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    move-object/from16 v19, p10

    move-object/from16 v20, p11

    move-object/from16 v21, p12

    invoke-static/range {v9 .. v22}, Landroid/text/Styled;->drawUniformRun(Landroid/graphics/Canvas;Landroid/text/Spanned;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v9

    add-float p6, p6, v9

    .line 354
    if-eqz p10, :cond_10

    .line 355
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v9, v0

    if-ge v9, v7, :cond_d

    .line 356
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v7, v0

    .line 357
    :cond_d
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v9, v0

    if-le v9, v6, :cond_e

    .line 358
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v6, v0

    .line 360
    :cond_e
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v9, v0

    if-ge v9, v8, :cond_f

    .line 361
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v8, v0

    .line 362
    :cond_f
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v9, v0

    if-le v9, v5, :cond_10

    .line 363
    move-object/from16 v0, p10

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v5, v0

    .line 344
    :cond_10
    move v11, v12

    goto :goto_8

    .line 341
    .end local v11           #i:I
    .end local v12           #next:I
    .local p1, text:Ljava/lang/CharSequence;
    :cond_11
    const-class p1, Landroid/text/style/CharacterStyle;

    .local p1, division:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_7

    .line 350
    .restart local v11       #i:I
    .restart local v12       #next:I
    :cond_12
    const/4 v9, 0x0

    move/from16 v22, v9

    goto :goto_9

    .line 367
    .end local v12           #next:I
    :cond_13
    if-eqz p10, :cond_14

    .line 368
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_15

    .line 369
    move-object/from16 v0, p11

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 378
    :cond_14
    :goto_a
    sub-float p0, p6, v23

    goto/16 :goto_5

    .line 371
    :cond_15
    move v0, v7

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 372
    move v0, v6

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 373
    move v0, v8

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 374
    move v0, v5

    move-object/from16 v1, p10

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_a

    .end local v5           #maxBottom:I
    .end local v6           #maxDescent:I
    .end local v7           #minAscent:I
    .end local v8           #minTop:I
    .end local v10           #sp:Landroid/text/Spanned;
    .end local v11           #i:I
    .end local v23           #ox:F
    .local p1, text:Ljava/lang/CharSequence;
    .local p9, ret:F
    :cond_16
    move/from16 p5, p9

    .end local p9           #ret:F
    .local p5, ret:F
    goto/16 :goto_6

    .end local p5           #ret:F
    .end local p7           #top:I
    .end local p12
    .local v6, tmp:Ljava/lang/CharSequence;
    .local v8, tmpend:I
    .restart local p9       #ret:F
    :cond_17
    move/from16 p1, p9

    .end local p9           #ret:F
    .local p1, ret:F
    goto/16 :goto_3
.end method

.method public static drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .locals 13
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "direction"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needWidth"

    .prologue
    .line 452
    if-ltz p4, :cond_0

    const/16 p4, 0x1

    .line 459
    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v0 .. v12}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result p0

    .end local p0
    return p0

    .line 452
    .restart local p0
    :cond_0
    const/16 p4, -0x1

    goto :goto_0
.end method

.method static drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .locals 16
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needWidth"

    .prologue
    .line 394
    const/4 v2, -0x1

    move/from16 v0, p4

    move v1, v2

    if-ne v0, v1, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    if-eqz p5, :cond_2

    const/4 v2, 0x1

    move/from16 v0, p4

    move v1, v2

    if-ne v0, v1, :cond_2

    .line 397
    :cond_1
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-static/range {v2 .. v15}, Landroid/text/Styled;->drawDirectionalRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result p12

    .line 401
    .local p12, ch:F
    move/from16 v0, p4

    int-to-float v0, v0

    move v2, v0

    mul-float p12, p12, v2

    .line 402
    move/from16 v0, p4

    neg-int v0, v0

    move v6, v0

    add-float v8, p6, p12

    const/4 v12, 0x0

    const/4 v15, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-static/range {v2 .. v15}, Landroid/text/Styled;->drawDirectionalRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move/from16 p0, p12

    .line 409
    .end local p0
    .end local p12           #ch:F
    :goto_0
    return p0

    .restart local p0
    .local p12, needWidth:Z
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    invoke-static/range {v2 .. v15}, Landroid/text/Styled;->drawDirectionalRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result p0

    goto :goto_0
.end method

.method private static drawUniformRun(Landroid/graphics/Canvas;Landroid/text/Spanned;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F
    .locals 16
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "needWidth"

    .prologue
    .line 64
    const/4 v15, 0x0

    .line 65
    .local v15, haveWidth:Z
    const/4 v6, 0x0

    .line 66
    .local v6, ret:F
    const-class v5, Landroid/text/style/CharacterStyle;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/CharacterStyle;

    .line 68
    .local v8, spans:[Landroid/text/style/CharacterStyle;
    const/4 v5, 0x0

    .line 73
    .local v5, replacement:Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p11

    iput v0, v1, Landroid/text/TextPaint;->bgColor:I

    .line 74
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p11

    iput v0, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 75
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 77
    move-object v0, v8

    array-length v0, v0

    move/from16 p11, v0

    .end local p11
    if-lez p11, :cond_1

    .line 78
    const/16 p11, 0x0

    .local p11, i:I
    :goto_0
    array-length v7, v8

    move/from16 v0, p11

    move v1, v7

    if-ge v0, v1, :cond_1

    .line 79
    aget-object v7, v8, p11

    .line 81
    .local v7, span:Landroid/text/style/CharacterStyle;
    instance-of v9, v7, Landroid/text/style/ReplacementSpan;

    if-eqz v9, :cond_0

    .line 82
    move-object v0, v7

    check-cast v0, Landroid/text/style/ReplacementSpan;

    move-object v5, v0

    .line 78
    :goto_1
    add-int/lit8 p11, p11, 0x1

    goto :goto_0

    .line 85
    :cond_0
    move-object v0, v7

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 90
    .end local v7           #span:Landroid/text/style/CharacterStyle;
    .end local p11           #i:I
    :cond_1
    if-nez v5, :cond_f

    .line 94
    if-eqz p5, :cond_a

    .line 97
    sget-boolean p5, Landroid/text/Styled;->isBidiEnabled:Z

    .end local p5
    if-eqz p5, :cond_9

    .line 99
    const/16 p5, 0x0

    .line 101
    .local p5, bRTL:Z
    sub-int p11, p3, p2

    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object p11

    .line 102
    .local p11, buf:[C
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p11

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 104
    .end local v5           #replacement:Landroid/text/style/ReplacementSpan;
    const/4 v5, 0x0

    .end local v8           #spans:[Landroid/text/style/CharacterStyle;
    .local v5, i:I
    :goto_2
    sub-int v7, p3, p2

    if-ge v5, v7, :cond_4

    .line 105
    aget-char v7, p11, v5

    const/16 v8, 0x590

    if-lt v7, v8, :cond_2

    aget-char v7, p11, v5

    const/16 v8, 0x6ff

    if-le v7, v8, :cond_3

    :cond_2
    aget-char v7, p11, v5

    const/16 v8, 0x30

    if-lt v7, v8, :cond_7

    aget-char v7, p11, v5

    const/16 v8, 0x39

    if-gt v7, v8, :cond_7

    .line 106
    :cond_3
    const/16 p5, 0x1

    .line 110
    :cond_4
    if-eqz p5, :cond_8

    .line 111
    invoke-static/range {p1 .. p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p1

    .line 114
    .local p1, tmp:Ljava/lang/CharSequence;
    :goto_3
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->recycle([C)V

    .line 120
    .end local v5           #i:I
    .end local p5           #bRTL:Z
    .end local p11           #buf:[C
    :goto_4
    const/16 p5, 0x0

    .line 122
    .local p5, tmpstart:I
    sub-int p2, p3, p2

    .local p2, tmpend:I
    move/from16 v11, p2

    .end local p2           #tmpend:I
    .local v11, tmpend:I
    move/from16 v12, p5

    .end local p5           #tmpstart:I
    .local v12, tmpstart:I
    move-object/from16 p11, p1

    .line 129
    .end local p1           #tmp:Ljava/lang/CharSequence;
    .local p11, tmp:Ljava/lang/CharSequence;
    :goto_5
    if-eqz p10, :cond_5

    .line 130
    move-object/from16 v0, p12

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 133
    :cond_5
    if-eqz p0, :cond_e

    .line 134
    move-object/from16 v0, p12

    iget v0, v0, Landroid/text/TextPaint;->bgColor:I

    move/from16 p1, v0

    if-eqz p1, :cond_16

    .line 135
    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    .line 136
    .local p1, c:I
    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p5

    .line 137
    .local p5, s:Landroid/graphics/Paint$Style;
    move-object/from16 v0, p12

    iget v0, v0, Landroid/text/TextPaint;->bgColor:I

    move/from16 p2, v0

    move-object/from16 v0, p12

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 138
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    if-nez v15, :cond_15

    .line 141
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    move v2, v12

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p3

    .line 142
    .end local v6           #ret:F
    .local p3, ret:F
    const/16 p2, 0x1

    .line 145
    .end local v15           #haveWidth:Z
    .local p2, haveWidth:Z
    :goto_6
    const/16 p10, -0x1

    move/from16 v0, p4

    move/from16 v1, p10

    if-ne v0, v1, :cond_b

    .line 146
    .end local p10
    sub-float v6, p6, p3

    move/from16 v0, p7

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, p9

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v5, p0

    move/from16 v8, p6

    move-object/from16 v10, p12

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 150
    :goto_7
    move-object/from16 v0, p12

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    move-object/from16 v0, p12

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    move/from16 p1, p2

    .end local p2           #haveWidth:Z
    .local p1, haveWidth:Z
    move/from16 p2, p3

    .line 154
    .end local p3           #ret:F
    .end local p5           #s:Landroid/graphics/Paint$Style;
    .local p2, ret:F
    :goto_8
    const/16 p3, -0x1

    move/from16 v0, p4

    move/from16 v1, p3

    if-ne v0, v1, :cond_c

    .line 155
    if-nez p1, :cond_6

    .line 156
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    move v2, v12

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    .line 157
    const/16 p1, 0x1

    .line 160
    :cond_6
    sub-float v9, p6, p2

    move-object/from16 v0, p12

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move/from16 p3, v0

    add-int p3, p3, p8

    move/from16 v0, p3

    int-to-float v0, v0

    move v10, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p11

    move v7, v12

    move v8, v11

    move-object/from16 v11, p12

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .end local v11           #tmpend:I
    move/from16 p0, p1

    .end local p1           #haveWidth:Z
    .local p0, haveWidth:Z
    move/from16 p1, p2

    .line 192
    .end local v12           #tmpstart:I
    .end local p2           #ret:F
    .end local p11           #tmp:Ljava/lang/CharSequence;
    .local p1, ret:F
    :goto_9
    const/16 p0, -0x1

    move/from16 v0, p4

    move/from16 v1, p0

    if-ne v0, v1, :cond_12

    .line 193
    .end local p0           #haveWidth:Z
    move/from16 v0, p1

    neg-float v0, v0

    move/from16 p0, v0

    .line 195
    :goto_a
    return p0

    .line 104
    .restart local v5       #i:I
    .restart local v6       #ret:F
    .restart local v15       #haveWidth:Z
    .local p0, canvas:Landroid/graphics/Canvas;
    .local p1, text:Landroid/text/Spanned;
    .local p2, start:I
    .local p3, end:I
    .local p5, bRTL:Z
    .restart local p10
    .local p11, buf:[C
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 113
    :cond_8
    invoke-static/range {p1 .. p3}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    .local p1, tmp:Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 116
    .end local p5           #bRTL:Z
    .end local p11           #buf:[C
    .local v5, replacement:Landroid/text/style/ReplacementSpan;
    .restart local v8       #spans:[Landroid/text/style/CharacterStyle;
    .local p1, text:Landroid/text/Spanned;
    :cond_9
    invoke-static/range {p1 .. p3}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    .local p1, tmp:Ljava/lang/CharSequence;
    goto/16 :goto_4

    .line 124
    .local p1, text:Landroid/text/Spanned;
    .local p5, runIsRtl:Z
    :cond_a
    move-object/from16 p1, p1

    .line 125
    .local p1, tmp:Ljava/lang/CharSequence;
    move/from16 p5, p2

    .line 126
    .local p5, tmpstart:I
    move/from16 p2, p3

    .local p2, tmpend:I
    move/from16 v11, p2

    .end local p2           #tmpend:I
    .restart local v11       #tmpend:I
    move/from16 v12, p5

    .end local p5           #tmpstart:I
    .restart local v12       #tmpstart:I
    move-object/from16 p11, p1

    .end local p1           #tmp:Ljava/lang/CharSequence;
    .local p11, tmp:Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 148
    .end local v5           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v6           #ret:F
    .end local v8           #spans:[Landroid/text/style/CharacterStyle;
    .end local v15           #haveWidth:Z
    .end local p10
    .local p1, c:I
    .local p2, haveWidth:Z
    .local p3, ret:F
    .local p5, s:Landroid/graphics/Paint$Style;
    :cond_b
    move/from16 v0, p7

    int-to-float v0, v0

    move v7, v0

    add-float v8, p6, p3

    move/from16 v0, p9

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v5, p0

    move/from16 v6, p6

    move-object/from16 v10, p12

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 163
    .end local p3           #ret:F
    .end local p5           #s:Landroid/graphics/Paint$Style;
    .local p1, haveWidth:Z
    .local p2, ret:F
    :cond_c
    if-eqz p13, :cond_d

    .line 164
    if-nez p1, :cond_d

    .line 165
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    move v2, v12

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    .line 166
    const/16 p1, 0x1

    .line 170
    :cond_d
    move-object/from16 v0, p12

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move/from16 p3, v0

    add-int p3, p3, p8

    move/from16 v0, p3

    int-to-float v0, v0

    move v10, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p11

    move v7, v12

    move v8, v11

    move/from16 v9, p6

    move-object/from16 v11, p12

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .end local v11           #tmpend:I
    move/from16 p0, p1

    .end local p1           #haveWidth:Z
    .local p0, haveWidth:Z
    move/from16 p1, p2

    .end local p2           #ret:F
    .local p1, ret:F
    goto :goto_9

    .line 174
    .end local p1           #ret:F
    .restart local v6       #ret:F
    .restart local v11       #tmpend:I
    .restart local v15       #haveWidth:Z
    .local p0, canvas:Landroid/graphics/Canvas;
    .local p3, end:I
    .restart local p10
    :cond_e
    if-eqz p13, :cond_14

    if-nez v15, :cond_13

    .line 175
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    move v2, v12

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    .line 176
    .end local v6           #ret:F
    .restart local p1       #ret:F
    const/16 p0, 0x1

    .end local v15           #haveWidth:Z
    .local p0, haveWidth:Z
    goto :goto_9

    .end local v11           #tmpend:I
    .end local v12           #tmpstart:I
    .end local p11           #tmp:Ljava/lang/CharSequence;
    .restart local v5       #replacement:Landroid/text/style/ReplacementSpan;
    .restart local v6       #ret:F
    .restart local v8       #spans:[Landroid/text/style/CharacterStyle;
    .restart local v15       #haveWidth:Z
    .local p0, canvas:Landroid/graphics/Canvas;
    .local p1, text:Landroid/text/Spanned;
    .local p2, start:I
    .local p5, runIsRtl:Z
    :cond_f
    move-object/from16 v6, p12

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p10

    .line 180
    invoke-virtual/range {v5 .. v10}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    .end local v6           #ret:F
    .end local v8           #spans:[Landroid/text/style/CharacterStyle;
    move-result p5

    .end local p5           #runIsRtl:Z
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p5, v0

    .line 182
    .local p5, ret:F
    if-eqz p0, :cond_11

    .line 183
    const/16 p10, -0x1

    move/from16 v0, p4

    move/from16 v1, p10

    if-ne v0, v1, :cond_10

    .line 184
    .end local p10
    sub-float v10, p6, p5

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p12

    invoke-virtual/range {v5 .. v14}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    move/from16 p1, p5

    .end local p5           #ret:F
    .local p1, ret:F
    move/from16 p0, v15

    .end local v15           #haveWidth:Z
    .local p0, haveWidth:Z
    goto/16 :goto_9

    .restart local v15       #haveWidth:Z
    .local p0, canvas:Landroid/graphics/Canvas;
    .local p1, text:Landroid/text/Spanned;
    .restart local p5       #ret:F
    :cond_10
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p12

    .line 187
    invoke-virtual/range {v5 .. v14}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    :cond_11
    move/from16 p1, p5

    .end local p5           #ret:F
    .local p1, ret:F
    move/from16 p0, v15

    .end local v15           #haveWidth:Z
    .local p0, haveWidth:Z
    goto/16 :goto_9

    .end local v5           #replacement:Landroid/text/style/ReplacementSpan;
    .end local p0           #haveWidth:Z
    .end local p2           #start:I
    .end local p3           #end:I
    :cond_12
    move/from16 p0, p1

    .line 195
    goto/16 :goto_a

    .end local p1           #ret:F
    .restart local v6       #ret:F
    .restart local v11       #tmpend:I
    .restart local v12       #tmpstart:I
    .restart local v15       #haveWidth:Z
    .local p0, canvas:Landroid/graphics/Canvas;
    .restart local p3       #end:I
    .restart local p10
    .restart local p11       #tmp:Ljava/lang/CharSequence;
    :cond_13
    move/from16 p1, v6

    .end local v6           #ret:F
    .restart local p1       #ret:F
    move/from16 p0, v15

    .end local v15           #haveWidth:Z
    .local p0, haveWidth:Z
    goto/16 :goto_9

    .end local p1           #ret:F
    .restart local v6       #ret:F
    .restart local v15       #haveWidth:Z
    .local p0, canvas:Landroid/graphics/Canvas;
    :cond_14
    move/from16 p1, v6

    .end local v6           #ret:F
    .restart local p1       #ret:F
    move/from16 p0, v15

    .end local v15           #haveWidth:Z
    .local p0, haveWidth:Z
    goto/16 :goto_9

    .restart local v6       #ret:F
    .restart local v15       #haveWidth:Z
    .local p0, canvas:Landroid/graphics/Canvas;
    .local p1, c:I
    .local p5, s:Landroid/graphics/Paint$Style;
    :cond_15
    move/from16 p3, v6

    .end local v6           #ret:F
    .local p3, ret:F
    move/from16 p2, v15

    .end local v15           #haveWidth:Z
    .local p2, haveWidth:Z
    goto/16 :goto_6

    .end local p1           #c:I
    .end local p2           #haveWidth:Z
    .end local p5           #s:Landroid/graphics/Paint$Style;
    .restart local v6       #ret:F
    .restart local v15       #haveWidth:Z
    .local p3, end:I
    :cond_16
    move/from16 p2, v6

    .end local v6           #ret:F
    .local p2, ret:F
    move/from16 p1, v15

    .end local v15           #haveWidth:Z
    .local p1, haveWidth:Z
    goto/16 :goto_8
.end method

.method public static getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I
    .locals 7
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "widths"
    .parameter "fmi"

    .prologue
    .line 219
    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p2, p3, p4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    .line 222
    .local v3, spans:[Landroid/text/style/MetricAffectingSpan;
    const/4 v1, 0x0

    .line 223
    .local v1, replacement:Landroid/text/style/ReplacementSpan;
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 225
    const/4 p0, 0x0

    .local p0, i:I
    :goto_0
    array-length v2, v3

    if-ge p0, v2, :cond_1

    .line 226
    aget-object v2, v3, p0

    .line 227
    .local v2, span:Landroid/text/style/MetricAffectingSpan;
    instance-of v4, v2, Landroid/text/style/ReplacementSpan;

    if-eqz v4, :cond_0

    .line 228
    move-object v0, v2

    check-cast v0, Landroid/text/style/ReplacementSpan;

    move-object v1, v0

    .line 225
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v2, p1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 235
    .end local v2           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_1
    if-nez v1, :cond_3

    .line 236
    invoke-virtual {p1, p6}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 237
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 247
    .end local v3           #spans:[Landroid/text/style/MetricAffectingSpan;
    .end local p0           #i:I
    .end local p1
    .end local p2
    :cond_2
    sub-int p0, p4, p3

    return p0

    .restart local v3       #spans:[Landroid/text/style/MetricAffectingSpan;
    .restart local p0       #i:I
    .restart local p1
    .restart local p2
    :cond_3
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p6

    .line 239
    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    .end local v3           #spans:[Landroid/text/style/MetricAffectingSpan;
    move-result p0

    .line 241
    .local p0, wid:I
    if-le p4, p3, :cond_2

    .line 242
    const/4 p1, 0x0

    int-to-float p0, p0

    aput p0, p5, p1

    .line 243
    .end local p0           #wid:I
    .end local p1
    add-int/lit8 p0, p3, 0x1

    .end local p2
    .local p0, i:I
    :goto_2
    if-ge p0, p4, :cond_2

    .line 244
    sub-int p1, p0, p3

    const/4 p2, 0x0

    aput p2, p5, p1

    .line 243
    add-int/lit8 p0, p0, 0x1

    goto :goto_2
.end method

.method public static measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 14
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fmi"

    .prologue
    .line 482
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v10, p5

    move-object v11, p0

    move-object v12, p1

    invoke-static/range {v0 .. v13}, Landroid/text/Styled;->drawDirectionalRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result p0

    .end local p0
    return p0
.end method
