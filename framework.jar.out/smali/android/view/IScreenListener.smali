.class public Landroid/view/IScreenListener;
.super Ljava/lang/Object;
.source "IScreenListener.java"


# static fields
.field public static final BUBBLE_MODE:I = 0x3

.field public static final LINE_MODE:I = 0x1

.field public static final MAX_H_DIS:I = 0x14

.field public static final MAX_H_TABDIS:I = 0x14

.field public static final MAX_MOT_TIME:I = 0x5dc

.field public static final MAX_TABMOT_TIME:I = 0x1f4

.field public static final MAX_V_DIS:I = 0x14

.field public static final MIN_H_DIS:I = 0x14

.field public static final MIN_MOT_TIME:I = 0x190

.field public static final NORMAL_MODE:I = 0x0

.field public static final PARAGRAPH_MODE:I = 0x2

.field private static TAG:Ljava/lang/String;

.field public static maxHorizontalDist:I

.field public static maxHorizontalTabDist:I

.field public static maxMotionTime:I

.field public static maxTabMotionTime:I

.field public static maxVerticalDist:I

.field public static minHorizontalDist:I

.field public static minMotionTime:I

.field public static translationMode:I


# instance fields
.field private downTimeMs:J

.field private end_x:F

.field private end_y:F

.field private start_x:F

.field private start_y:F

.field private targetView:Landroid/view/View;

.field private upTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 18
    const-string v0, "IScreenListener"

    sput-object v0, Landroid/view/IScreenListener;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput v0, Landroid/view/IScreenListener;->translationMode:I

    .line 44
    sput v1, Landroid/view/IScreenListener;->maxVerticalDist:I

    .line 45
    sput v1, Landroid/view/IScreenListener;->minHorizontalDist:I

    .line 46
    sput v1, Landroid/view/IScreenListener;->maxHorizontalDist:I

    .line 47
    const/16 v0, 0x190

    sput v0, Landroid/view/IScreenListener;->minMotionTime:I

    .line 48
    const/16 v0, 0x5dc

    sput v0, Landroid/view/IScreenListener;->maxMotionTime:I

    .line 49
    sput v1, Landroid/view/IScreenListener;->maxHorizontalTabDist:I

    .line 50
    const/16 v0, 0x1f4

    sput v0, Landroid/view/IScreenListener;->maxTabMotionTime:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide v0, p0, Landroid/view/IScreenListener;->downTimeMs:J

    .line 24
    iput-wide v0, p0, Landroid/view/IScreenListener;->upTimeMs:J

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/IScreenListener;->targetView:Landroid/view/View;

    return-void
.end method

.method public static displayWord(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/Point;)V
    .locals 4
    .parameter "context"
    .parameter "word"
    .parameter "bubblePnt"

    .prologue
    .line 361
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mohab: displayWord the word is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 365
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MOBIDIV.ISCREEN.RECIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, in:Landroid/content/Intent;
    const-string v1, "Word"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 367
    const-string/jumbo v1, "x"

    iget v2, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const-string/jumbo v1, "y"

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    const-string v1, "AppName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 374
    .end local v0           #in:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static getFirstWordSeparatorIndex(Ljava/lang/String;II)I
    .locals 5
    .parameter "str"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, -0x1

    .line 382
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 402
    :goto_0
    return v3

    .line 386
    :cond_1
    const/4 v1, -0x1

    .line 387
    .local v1, index:I
    if-ge p1, p2, :cond_4

    const/4 v3, 0x1

    move v2, v3

    .line 388
    .local v2, step:I
    :goto_1
    sub-int v0, p1, v2

    .line 389
    .local v0, i:I
    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 390
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 394
    :cond_3
    add-int/2addr v0, v2

    .line 395
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/view/IScreenListener;->isWordSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 397
    move v1, v0

    :goto_2
    move v3, v1

    .line 402
    goto :goto_0

    .end local v0           #i:I
    .end local v2           #step:I
    :cond_4
    move v2, v4

    .line 387
    goto :goto_1

    .line 400
    .restart local v0       #i:I
    .restart local v2       #step:I
    :cond_5
    if-ne v0, p2, :cond_3

    goto :goto_2
.end method

.method private getLineUnderTouch(Landroid/widget/TextView;Landroid/view/MotionEvent;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 186
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 188
    .local v6, text:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 191
    .local v0, layout:Landroid/text/Layout;
    iget v7, p0, Landroid/view/IScreenListener;->start_y:F

    iget v8, p0, Landroid/view/IScreenListener;->end_y:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v8

    sub-int v5, v7, v8

    .line 193
    .local v5, midy:I
    const/4 v1, 0x0

    .line 195
    .local v1, line:Ljava/lang/CharSequence;
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 197
    .local v3, lineNo:I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 199
    .local v4, lineStart:I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    sub-int v2, v7, v9

    .line 202
    .local v2, lineEnd:I
    :goto_0
    if-lez v4, :cond_0

    invoke-interface {v6, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Landroid/view/IScreenListener;->isWordSeparator(C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 204
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 209
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v9

    if-ge v2, v7, :cond_1

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Landroid/view/IScreenListener;->isWordSeparator(C)Z

    move-result v7

    if-nez v7, :cond_1

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    :cond_1
    invoke-interface {v6, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 216
    return-object v1
.end method

.method private getParagraphUnderTouch(Landroid/widget/TextView;Landroid/view/MotionEvent;)Ljava/lang/CharSequence;
    .locals 11
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    .line 221
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 223
    .local v6, text:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 226
    .local v0, layout:Landroid/text/Layout;
    iget v7, p0, Landroid/view/IScreenListener;->start_y:F

    iget v8, p0, Landroid/view/IScreenListener;->end_y:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v8

    sub-int v2, v7, v8

    .line 228
    .local v2, midy:I
    const/4 v3, 0x0

    .line 230
    .local v3, paragraph:Ljava/lang/CharSequence;
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 232
    .local v1, lineNo:I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 234
    .local v5, paragraphStart:I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    sub-int v4, v7, v9

    .line 237
    .local v4, paragraphEnd:I
    :goto_0
    if-lez v5, :cond_0

    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_0

    .line 239
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 244
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v9

    if-ge v4, v7, :cond_1

    invoke-interface {v6, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_1

    .line 246
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 249
    :cond_1
    invoke-interface {v6, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 251
    return-object v3
.end method

.method private getWordUnderTouch(Landroid/widget/TextView;Landroid/view/MotionEvent;)Ljava/lang/CharSequence;
    .locals 22
    .parameter "view"
    .parameter "event"

    .prologue
    .line 259
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "Mohab: Enter getWordUnderTouch"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    .line 262
    .local v14, text:Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 265
    .local v7, layout:Landroid/text/Layout;
    invoke-virtual {v7}, Landroid/text/Layout;->getWidth()I

    move-result v8

    .line 266
    .local v8, layoutWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getWidth()I

    move-result v15

    .line 270
    .local v15, viewWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/IScreenListener;->start_y:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/IScreenListener;->end_y:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v20

    sub-int v13, v19, v20

    .line 272
    .local v13, midy:I
    const/16 v18, 0x0

    .line 274
    .local v18, word:Ljava/lang/CharSequence;
    invoke-virtual {v7, v13}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v9

    .line 276
    .local v9, line:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    .line 278
    .local v4, dir:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v3

    .line 282
    .local v3, alignment:Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/IScreenListener;->start_x:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/IScreenListener;->end_x:F

    move/from16 v20, v0

    add-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move v12, v0

    .line 284
    .local v12, midx:I
    const/16 v19, -0x1

    move v0, v4

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v0, v3

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    :cond_0
    const/16 v19, 0x1

    move v0, v4

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object v0, v3

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 287
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/IScreenListener;->start_x:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/IScreenListener;->end_x:F

    move/from16 v20, v0

    add-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v19, v15, v19

    sub-int v12, v8, v19

    .line 295
    :cond_2
    :goto_0
    if-eqz v14, :cond_3

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-nez v19, :cond_5

    .line 297
    :cond_3
    const/16 v19, 0x0

    .line 351
    :goto_1
    return-object v19

    .line 289
    :cond_4
    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object v0, v3

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 291
    div-int/lit8 v19, v8, 0x2

    div-int/lit8 v20, v15, 0x2

    sub-int v20, v12, v20

    add-int v12, v19, v20

    goto :goto_0

    .line 300
    :cond_5
    move v0, v12

    int-to-float v0, v0

    move/from16 v19, v0

    move-object v0, v7

    move v1, v9

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v6

    .line 302
    .local v6, index:I
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v10

    .line 304
    .local v10, lineEnd:I
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v11

    .line 307
    .local v11, lineStart:I
    const/16 v16, 0x0

    .line 309
    .local v16, wfirstIndex:I
    if-lez v6, :cond_6

    .line 311
    const/16 v19, 0x1

    sub-int v16, v6, v19

    .line 313
    :cond_6
    move/from16 v17, v6

    .line 317
    .local v17, wlastIndex:I
    :goto_2
    move/from16 v0, v16

    move v1, v11

    if-le v0, v1, :cond_7

    move-object v0, v14

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/view/IScreenListener;->isWordSeparator(C)Z

    move-result v19

    if-nez v19, :cond_7

    .line 319
    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    .line 324
    :cond_7
    :goto_3
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_8

    move-object v0, v14

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/view/IScreenListener;->isWordSeparator(C)Z

    move-result v19

    if-nez v19, :cond_8

    .line 326
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 329
    :cond_8
    move-object v0, v14

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/view/IScreenListener;->isWordSeparator(C)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 331
    add-int/lit8 v16, v16, 0x1

    .line 334
    :cond_9
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Landroid/view/IScreenListener;->TAG:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "getWordUnderTouch:text under touch = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " , first index = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " , last index = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    :try_start_0
    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    :goto_4
    move-object/from16 v19, v18

    .line 351
    goto/16 :goto_1

    .line 343
    :catch_0
    move-exception v5

    .line 345
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private handleIScreen(Landroid/widget/TextView;Landroid/view/MotionEvent;Landroid/graphics/Point;)V
    .locals 5
    .parameter "textView"
    .parameter "event"
    .parameter "screenPnt"

    .prologue
    const/4 v4, 0x0

    .line 155
    iget v2, p0, Landroid/view/IScreenListener;->end_x:F

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/view/IScreenListener;->end_x:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Landroid/view/IScreenListener;->end_y:F

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/view/IScreenListener;->end_y:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Landroid/view/IScreenListener;->start_x:F

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/view/IScreenListener;->start_x:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Landroid/view/IScreenListener;->start_y:F

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/view/IScreenListener;->start_y:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const/4 v1, 0x0

    .line 165
    .local v1, text:Ljava/lang/CharSequence;
    sget v2, Landroid/view/IScreenListener;->translationMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 167
    invoke-direct {p0, p1, p2}, Landroid/view/IScreenListener;->getLineUnderTouch(Landroid/widget/TextView;Landroid/view/MotionEvent;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 180
    :goto_1
    new-instance v0, Landroid/graphics/Point;

    iget v2, p3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Landroid/view/IScreenListener;->start_x:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Landroid/view/IScreenListener;->start_y:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 181
    .local v0, bubblePnt:Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/view/IScreenListener;->displayWord(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/Point;)V

    goto :goto_0

    .line 170
    .end local v0           #bubblePnt:Landroid/graphics/Point;
    :cond_2
    sget v2, Landroid/view/IScreenListener;->translationMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 172
    invoke-direct {p0, p1, p2}, Landroid/view/IScreenListener;->getParagraphUnderTouch(Landroid/widget/TextView;Landroid/view/MotionEvent;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 177
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/view/IScreenListener;->getWordUnderTouch(Landroid/widget/TextView;Landroid/view/MotionEvent;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1
.end method

.method public static isIScreenMove(JFFFFI)Z
    .locals 4
    .parameter "time"
    .parameter "sx"
    .parameter "ex"
    .parameter "sy"
    .parameter "ey"
    .parameter "verticalScrollDiff"

    .prologue
    const/4 v3, 0x0

    .line 108
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxVerticalDist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/view/IScreenListener;->maxVerticalDist:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minHorizontalDist  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/view/IScreenListener;->minHorizontalDist:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " minMotionTime= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/view/IScreenListener;->minMotionTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxMotionTime= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/view/IScreenListener;->maxMotionTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxTabMotionTime= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/view/IScreenListener;->maxTabMotionTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tabbing time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ex= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sy= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ey= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    sub-float v0, p5, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Landroid/view/IScreenListener;->maxVerticalDist:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    sub-float v0, p3, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Landroid/view/IScreenListener;->minHorizontalDist:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    move v0, v3

    .line 148
    :goto_0
    return v0

    .line 121
    :cond_1
    sget v0, Landroid/view/IScreenListener;->minMotionTime:I

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    sget v0, Landroid/view/IScreenListener;->maxMotionTime:I

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 142
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/view/IScreenListener;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iScreen moving"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 148
    goto :goto_0
.end method

.method private static isWordSeparator(C)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 410
    const/16 v2, 0x29

    new-array v1, v2, [C

    fill-array-data v1, :array_0

    .line 416
    .local v1, separators:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 418
    aget-char v2, v1, v0

    if-ne p0, v2, :cond_0

    .line 420
    const/4 v2, 0x1

    .line 423
    :goto_1
    return v2

    .line 416
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 410
    :array_0
    .array-data 0x2
        0x20t 0x0t
        0xdt 0x0t
        0xat 0x0t
        0x2ct 0x0t
        0x5ft 0x0t
        0x2dt 0x0t
        0x5ct 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x2ft 0x0t
        0x7ct 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x5bt 0x0t
        0x5dt 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x21t 0x0t
        0x40t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x5et 0x0t
        0x26t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x3dt 0x0t
        0x7et 0x0t
        0x3ft 0x0t
        0x18t 0x20t
        0x9t 0x20t
        0x2et 0x0t
        0x27t 0x0t
        0x22t 0x0t
        0x2dt 0x0t
        0x7bt 0x20t
        0x8bt 0x20t
        0x63t 0xfet
        0xdt 0xfft
    .end array-data
.end method

.method public static readSettings(Landroid/content/Context;)V
    .locals 4
    .parameter "ctxt"

    .prologue
    .line 438
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "translation_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/view/IScreenListener;->translationMode:I

    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ISCREEN_TOUCH_MAX_VDIST"

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/view/IScreenListener;->maxVerticalDist:I

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ISCREEN_TOUCH_MIN_HDIST"

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/view/IScreenListener;->minHorizontalDist:I

    .line 441
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ISCREEN_TOUCH_MIN_TIME"

    const/16 v3, 0x190

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/view/IScreenListener;->minMotionTime:I

    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ISCREEN_TOUCH_MAX_TIME"

    const/16 v3, 0x5dc

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/view/IScreenListener;->maxMotionTime:I

    .line 443
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ISCREEN_TOUCH_MAX_TAB_TIME"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/view/IScreenListener;->maxTabMotionTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 447
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getTargetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroid/view/IScreenListener;->targetView:Landroid/view/View;

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/Point;)Z
    .locals 8
    .parameter "v"
    .parameter "event"
    .parameter "screenPnt"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    move v2, v6

    .line 99
    .end local p1
    :goto_0
    return v2

    .line 69
    .restart local p1
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/IScreenListener;->downTimeMs:J

    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/view/IScreenListener;->start_x:F

    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/view/IScreenListener;->start_y:F

    .line 74
    iput-object p1, p0, Landroid/view/IScreenListener;->targetView:Landroid/view/View;

    move v2, v7

    .line 76
    goto :goto_0

    .line 80
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IScreenListener;->readSettings(Landroid/content/Context;)V

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/IScreenListener;->upTimeMs:J

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/view/IScreenListener;->end_x:F

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/view/IScreenListener;->end_y:F

    .line 86
    iget-wide v2, p0, Landroid/view/IScreenListener;->upTimeMs:J

    iget-wide v4, p0, Landroid/view/IScreenListener;->downTimeMs:J

    sub-long v0, v2, v4

    .line 87
    .local v0, motionTime:J
    iget v2, p0, Landroid/view/IScreenListener;->start_x:F

    iget v3, p0, Landroid/view/IScreenListener;->end_x:F

    iget v4, p0, Landroid/view/IScreenListener;->start_y:F

    iget v5, p0, Landroid/view/IScreenListener;->end_y:F

    invoke-static/range {v0 .. v6}, Landroid/view/IScreenListener;->isIScreenMove(JFFFFI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/IScreenListener;->handleIScreen(Landroid/widget/TextView;Landroid/view/MotionEvent;Landroid/graphics/Point;)V

    move v2, v7

    .line 91
    goto :goto_0

    .restart local p1
    :cond_1
    move v2, v6

    .line 95
    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
