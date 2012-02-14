.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_MASK:I = -0x40000000

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final FIRST_CJK:C = '\u2e80'

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static isBidiEnabled:Z


# instance fields
.field private mBottomPadding:I

.field private mChdirs:[B

.field private mChs:[C

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mTopPadding:I

.field private mWidths:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/SystemProperties;->getCitArabicFlag(Z)Z

    move-result v0

    sput-boolean v0, Landroid/text/StaticLayout;->isBidiEnabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 59
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 17
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 69
    if-nez p10, :cond_0

    move-object/from16 v3, p1

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 2284
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 84
    if-eqz p10, :cond_2

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Layout$Ellipsizer;

    .line 87
    .local v16, e:Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 88
    move/from16 v0, p11

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 89
    move-object/from16 v0, p10

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 90
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 92
    const/4 v2, 0x5

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    .line 98
    .end local v16           #e:Landroid/text/Layout$Ellipsizer;
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [I

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 99
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v2

    new-array v2, v2, [Landroid/text/Layout$Directions;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 102
    if-eqz p10, :cond_3

    const/4 v2, 0x1

    move v13, v2

    :goto_2
    move/from16 v0, p11

    int-to-float v0, v0

    move v14, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p9

    move-object/from16 v15, p10

    invoke-virtual/range {v2 .. v15}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 106
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 107
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 108
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 109
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 110
    return-void

    .line 69
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v2, v0

    if-eqz v2, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto/16 :goto_0

    .line 94
    :cond_2
    const/4 v2, 0x3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mColumns:I

    .line 95
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto/16 :goto_1

    .line 102
    :cond_3
    const/4 v2, 0x0

    move v13, v2

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 50
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 52
    return-void
.end method

.method constructor <init>(Z)V
    .locals 7
    .parameter "ellipsize"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 113
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 2284
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 115
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 116
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 117
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 119
    return-void
.end method

.method static bidi(I[C[BIZ)I
    .locals 5
    .parameter "dir"
    .parameter "chs"
    .parameter "chInfo"
    .parameter "n"
    .parameter "hasInfo"

    .prologue
    .line 1157
    sget-boolean v0, Landroid/text/StaticLayout;->isBidiEnabled:Z

    if-eqz v0, :cond_1

    .line 1158
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->bidi_CIT(I[C[BIZ)I

    move-result p0

    .line 1371
    .end local p0
    .end local p4
    :cond_0
    return p0

    .line 1163
    .restart local p0
    .restart local p4
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/text/AndroidCharacter;->getDirectionalities([C[BI)V

    .line 1168
    const/4 p4, 0x1

    if-eq p0, p4, :cond_2

    .end local p4
    const/4 p4, -0x1

    if-eq p0, p4, :cond_2

    .line 1170
    if-ltz p0, :cond_4

    const/4 p0, 0x1

    .line 1171
    :goto_0
    const/4 p4, 0x0

    .local p4, j:I
    move v0, p4

    .end local p4           #j:I
    .local v0, j:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 1172
    aget-byte p4, p2, v0

    .line 1174
    .local p4, d:I
    if-nez p4, :cond_5

    .line 1175
    const/4 p0, 0x1

    .line 1185
    .end local v0           #j:I
    .end local p4           #d:I
    :cond_2
    :goto_2
    const/4 p4, 0x1

    if-ne p0, p4, :cond_7

    const/4 p4, 0x0

    .line 1200
    .local p4, SOR:B
    :goto_3
    const/4 v0, 0x0

    .restart local v0       #j:I
    :goto_4
    if-ge v0, p3, :cond_9

    .line 1201
    aget-byte v1, p2, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 1202
    if-nez v0, :cond_8

    .line 1203
    aput-byte p4, p2, v0

    .line 1200
    :cond_3
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1170
    .end local v0           #j:I
    .end local p4           #SOR:B
    :cond_4
    const/4 p0, -0x1

    goto :goto_0

    .line 1178
    .restart local v0       #j:I
    .local p4, d:I
    :cond_5
    const/4 v1, 0x1

    if-ne p4, v1, :cond_6

    .line 1179
    const/4 p0, -0x1

    .line 1180
    goto :goto_2

    .line 1171
    :cond_6
    add-int/lit8 p4, v0, 0x1

    .end local v0           #j:I
    .local p4, j:I
    move v0, p4

    .end local p4           #j:I
    .restart local v0       #j:I
    goto :goto_1

    .line 1185
    .end local v0           #j:I
    :cond_7
    const/4 p4, 0x1

    goto :goto_3

    .line 1205
    .restart local v0       #j:I
    .local p4, SOR:B
    :cond_8
    const/4 v1, 0x1

    sub-int v1, v0, v1

    aget-byte v1, p2, v1

    aput-byte v1, p2, v0

    goto :goto_5

    .line 1212
    :cond_9
    move v0, p4

    .line 1213
    .local v0, cur:B
    const/4 v1, 0x0

    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_6
    if-ge v2, p3, :cond_d

    .line 1214
    aget-byte v1, p2, v2

    .line 1216
    .local v1, d:B
    if-eqz v1, :cond_a

    const/4 v3, 0x1

    if-eq v1, v3, :cond_a

    const/4 v3, 0x2

    if-ne v1, v3, :cond_c

    .line 1219
    :cond_a
    move v0, v1

    .line 1213
    .end local v1           #d:B
    :cond_b
    :goto_7
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_6

    .line 1220
    .local v1, d:B
    :cond_c
    const/4 v3, 0x3

    if-ne v1, v3, :cond_b

    .line 1221
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 1223
    .end local v1           #d:B
    const/4 v1, 0x6

    aput-byte v1, p2, v2

    goto :goto_7

    .line 1230
    :cond_d
    const/4 v0, 0x0

    .end local v2           #j:I
    .local v0, j:I
    :goto_8
    if-ge v0, p3, :cond_f

    .line 1231
    aget-byte v1, p2, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 1232
    const/4 v1, 0x1

    aput-byte v1, p2, v0

    .line 1230
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1238
    :cond_f
    const/4 v0, 0x1

    move v1, v0

    .end local v0           #j:I
    .local v1, j:I
    :goto_9
    const/4 v0, 0x1

    sub-int v0, p3, v0

    if-ge v1, v0, :cond_13

    .line 1239
    aget-byte v0, p2, v1

    .line 1240
    .local v0, d:B
    const/4 v2, 0x1

    sub-int v2, v1, v2

    aget-byte v3, p2, v2

    .line 1241
    .local v3, prev:B
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p2, v2

    .line 1243
    .local v2, next:B
    const/4 v4, 0x4

    if-ne v0, v4, :cond_11

    .line 1244
    const/4 v0, 0x3

    if-ne v3, v0, :cond_10

    .end local v0           #d:B
    const/4 v0, 0x3

    if-ne v2, v0, :cond_10

    .line 1246
    const/4 v0, 0x3

    aput-byte v0, p2, v1

    .line 1238
    :cond_10
    :goto_a
    add-int/lit8 v0, v1, 0x1

    .end local v1           #j:I
    .local v0, j:I
    move v1, v0

    .end local v0           #j:I
    .restart local v1       #j:I
    goto :goto_9

    .line 1247
    .local v0, d:B
    :cond_11
    const/4 v4, 0x7

    if-ne v0, v4, :cond_10

    .line 1248
    const/4 v0, 0x3

    if-ne v3, v0, :cond_12

    .end local v0           #d:B
    const/4 v0, 0x3

    if-ne v2, v0, :cond_12

    .line 1250
    const/4 v0, 0x3

    aput-byte v0, p2, v1

    .line 1251
    :cond_12
    const/4 v0, 0x6

    if-ne v3, v0, :cond_10

    const/4 v0, 0x6

    if-ne v2, v0, :cond_10

    .line 1253
    const/4 v0, 0x6

    aput-byte v0, p2, v1

    goto :goto_a

    .line 1260
    .end local v2           #next:B
    .end local v3           #prev:B
    :cond_13
    const/4 v0, 0x0

    .line 1261
    .local v0, adjacent:Z
    const/4 v1, 0x0

    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_b
    if-ge v2, p3, :cond_16

    .line 1262
    aget-byte v1, p2, v2

    .line 1264
    .local v1, d:B
    const/4 v3, 0x3

    if-ne v1, v3, :cond_14

    .line 1265
    const/4 v0, 0x1

    .line 1261
    .end local v1           #d:B
    :goto_c
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_b

    .line 1266
    .local v1, d:B
    :cond_14
    const/4 v3, 0x5

    if-ne v1, v3, :cond_15

    if-eqz v0, :cond_15

    .line 1267
    const/4 v1, 0x3

    aput-byte v1, p2, v2

    goto :goto_c

    .line 1269
    :cond_15
    const/4 v0, 0x0

    goto :goto_c

    .line 1276
    .end local v1           #d:B
    :cond_16
    const/4 v0, 0x0

    .line 1277
    const/4 v1, 0x1

    sub-int v1, p3, v1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    :goto_d
    if-ltz v2, :cond_1c

    .line 1278
    aget-byte v1, p2, v2

    .line 1280
    .local v1, d:B
    const/4 v3, 0x3

    if-ne v1, v3, :cond_18

    .line 1281
    const/4 v0, 0x1

    .line 1277
    .end local v1           #d:B
    :cond_17
    :goto_e
    add-int/lit8 v1, v2, -0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_d

    .line 1282
    .local v1, d:B
    :cond_18
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1a

    .line 1283
    if-eqz v0, :cond_19

    .line 1284
    const/4 v1, 0x3

    aput-byte v1, p2, v2

    goto :goto_e

    .line 1286
    :cond_19
    const/16 v1, 0xd

    aput-byte v1, p2, v2

    goto :goto_e

    .line 1289
    :cond_1a
    const/4 v0, 0x0

    .line 1291
    const/4 v3, 0x4

    if-eq v1, v3, :cond_1b

    const/4 v3, 0x7

    if-eq v1, v3, :cond_1b

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1b

    const/16 v3, 0xb

    if-ne v1, v3, :cond_17

    .line 1295
    :cond_1b
    const/16 v1, 0xd

    aput-byte v1, p2, v2

    goto :goto_e

    .line 1302
    .end local v1           #d:B
    :cond_1c
    move v0, p4

    .line 1303
    .local v0, cur:B
    const/4 v1, 0x0

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    :goto_f
    if-ge v2, p3, :cond_20

    .line 1304
    aget-byte v1, p2, v2

    .line 1306
    .local v1, d:B
    if-eq v1, p4, :cond_1d

    if-eqz v1, :cond_1d

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1e

    .line 1309
    :cond_1d
    move v0, v1

    .line 1311
    :cond_1e
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1f

    .line 1312
    aput-byte v0, p2, v2

    .line 1303
    :cond_1f
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_f

    .line 1318
    :cond_20
    move v0, p4

    .line 1319
    const/4 v1, 0x0

    .end local v2           #j:I
    .restart local v1       #j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    :goto_10
    if-ge v2, p3, :cond_2b

    .line 1320
    aget-byte v1, p2, v2

    .line 1322
    .local v1, d:B
    if-eqz v1, :cond_21

    const/4 v3, 0x1

    if-ne v1, v3, :cond_22

    .line 1324
    :cond_21
    move v0, v1

    move v1, v2

    .line 1319
    .end local v2           #j:I
    .local v1, j:I
    :goto_11
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_10

    .line 1325
    .local v1, d:B
    :cond_22
    const/4 v3, 0x3

    if-eq v1, v3, :cond_23

    const/4 v3, 0x6

    if-ne v1, v3, :cond_24

    .line 1327
    :cond_23
    const/4 v0, 0x1

    move v1, v2

    .end local v2           #j:I
    .local v1, j:I
    goto :goto_11

    .line 1329
    .local v1, d:B
    .restart local v2       #j:I
    :cond_24
    move v1, p4

    .line 1332
    .local v1, dd:B
    add-int/lit8 v3, v2, 0x1

    .local v3, k:I
    :goto_12
    if-ge v3, p3, :cond_25

    .line 1333
    aget-byte v1, p2, v3

    .line 1335
    if-eqz v1, :cond_25

    const/4 v4, 0x1

    if-ne v1, v4, :cond_26

    .line 1346
    :cond_25
    :goto_13
    move v2, v2

    .local v2, y:I
    :goto_14
    if-ge v2, v3, :cond_2a

    .line 1347
    if-ne v1, v0, :cond_29

    .line 1348
    aput-byte v0, p2, v2

    .line 1346
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1339
    .local v2, j:I
    :cond_26
    const/4 v4, 0x3

    if-eq v1, v4, :cond_27

    const/4 v4, 0x6

    if-ne v1, v4, :cond_28

    .line 1341
    :cond_27
    const/4 v1, 0x1

    .line 1342
    goto :goto_13

    .line 1332
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1350
    .local v2, y:I
    :cond_29
    aput-byte p4, p2, v2

    goto :goto_15

    .line 1353
    :cond_2a
    const/4 v1, 0x1

    sub-int v1, v3, v1

    .local v1, j:I
    goto :goto_11

    .line 1363
    .end local v1           #j:I
    .end local v3           #k:I
    .local v2, j:I
    :cond_2b
    const/4 v0, 0x0

    .end local v2           #j:I
    .local v0, j:I
    move v1, v0

    .end local v0           #j:I
    .restart local v1       #j:I
    :goto_16
    if-ge v1, p3, :cond_0

    .line 1364
    aget-char v0, p1, v1

    .line 1366
    .local v0, c:C
    const/16 v2, 0x9

    if-eq v0, v2, :cond_2c

    const v2, 0xd800

    if-lt v0, v2, :cond_2d

    const v2, 0xdfff

    if-gt v0, v2, :cond_2d

    .line 1367
    :cond_2c
    aput-byte p4, p2, v1

    .line 1363
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    .end local v1           #j:I
    .local v0, j:I
    move v1, v0

    .end local v0           #j:I
    .restart local v1       #j:I
    goto :goto_16
.end method

.method private static bidi_CIT(I[C[BIZ)I
    .locals 7
    .parameter "dir"
    .parameter "chs"
    .parameter "chInfo"
    .parameter "n"
    .parameter "hasInfo"

    .prologue
    .line 1379
    invoke-static {p1, p2, p3}, Landroid/text/AndroidCharacter;->getDirectionalities([C[BI)V

    .line 1389
    const/4 p4, 0x0

    .local p4, j:I
    move v0, p4

    .end local p4           #j:I
    .local v0, j:I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 1390
    aget-byte p4, p2, v0

    .line 1392
    .local p4, d:I
    sget-boolean v1, Landroid/text/StaticLayout;->isBidiEnabled:Z

    if-eqz v1, :cond_5

    .line 1393
    aget-char v1, p1, v0

    const v2, 0xe000

    if-lt v1, v2, :cond_1

    aget-char v1, p1, v0

    const v2, 0xf8ff

    if-gt v1, v2, :cond_1

    .line 1389
    :cond_0
    add-int/lit8 p4, v0, 0x1

    .end local v0           #j:I
    .local p4, j:I
    move v0, p4

    .end local p4           #j:I
    .restart local v0       #j:I
    goto :goto_0

    .line 1395
    .local p4, d:I
    :cond_1
    if-eqz p4, :cond_2

    aget-char v1, p1, v0

    const/16 v2, 0x2022

    if-ne v1, v2, :cond_6

    .line 1396
    :cond_2
    const/4 p0, 0x1

    .line 1421
    .end local p4           #d:I
    :cond_3
    :goto_1
    const/4 p4, 0x1

    if-ne p0, p4, :cond_9

    const/4 p4, 0x0

    move v0, p4

    .line 1436
    .local v0, SOR:B
    :goto_2
    const/4 p4, 0x0

    .local p4, j:I
    :goto_3
    if-ge p4, p3, :cond_b

    .line 1437
    aget-byte v1, p2, p4

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 1438
    if-nez p4, :cond_a

    .line 1439
    aput-byte v0, p2, p4

    .line 1436
    :cond_4
    :goto_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 1400
    .local v0, j:I
    .local p4, d:I
    :cond_5
    if-nez p4, :cond_6

    .line 1401
    const/4 p0, 0x1

    .line 1402
    goto :goto_1

    .line 1407
    :cond_6
    sget-boolean v1, Landroid/text/StaticLayout;->isBidiEnabled:Z

    if-eqz v1, :cond_8

    .line 1408
    const/4 v1, 0x1

    if-eq p4, v1, :cond_7

    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    .line 1409
    :cond_7
    const/4 p0, -0x1

    .line 1410
    goto :goto_1

    .line 1413
    :cond_8
    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    .line 1414
    const/4 p0, -0x1

    .line 1415
    goto :goto_1

    .line 1421
    .end local p4           #d:I
    :cond_9
    const/4 p4, 0x1

    move v0, p4

    goto :goto_2

    .line 1441
    .local v0, SOR:B
    .local p4, j:I
    :cond_a
    const/4 v1, 0x1

    sub-int v1, p4, v1

    aget-byte v1, p2, v1

    aput-byte v1, p2, p4

    goto :goto_4

    .line 1448
    :cond_b
    move p4, v0

    .line 1449
    .local p4, cur:B
    const/4 v1, 0x0

    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    move v1, p4

    .end local p4           #cur:B
    .local v1, cur:B
    :goto_5
    if-ge v2, p3, :cond_11

    .line 1450
    aget-byte p4, p2, v2

    .line 1452
    .local p4, d:B
    if-eqz p4, :cond_c

    const/4 v3, 0x1

    if-eq p4, v3, :cond_c

    const/4 v3, 0x2

    if-ne p4, v3, :cond_d

    .line 1455
    :cond_c
    move p4, p4

    .line 1449
    .end local v1           #cur:B
    .local p4, cur:B
    :goto_6
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    move v1, p4

    .end local p4           #cur:B
    .local v1, cur:B
    goto :goto_5

    .line 1456
    .local p4, d:B
    :cond_d
    const/4 v3, 0x3

    if-ne p4, v3, :cond_4b

    .line 1459
    sget-boolean p4, Landroid/text/StaticLayout;->isBidiEnabled:Z

    .end local p4           #d:B
    if-eqz p4, :cond_f

    .line 1460
    const/4 p4, 0x2

    if-eq v1, p4, :cond_e

    const/4 p4, 0x1

    if-ne v1, p4, :cond_10

    .line 1463
    :cond_e
    const/4 p4, 0x3

    aput-byte p4, p2, v2

    move p4, v1

    .end local v1           #cur:B
    .local p4, cur:B
    goto :goto_6

    .line 1468
    .end local p4           #cur:B
    .restart local v1       #cur:B
    :cond_f
    const/4 p4, 0x2

    if-ne v1, p4, :cond_10

    .line 1469
    const/4 p4, 0x6

    aput-byte p4, p2, v2

    :cond_10
    move p4, v1

    .end local v1           #cur:B
    .restart local p4       #cur:B
    goto :goto_6

    .line 1478
    .end local p4           #cur:B
    .restart local v1       #cur:B
    :cond_11
    const/4 p4, 0x0

    .end local v2           #j:I
    .local p4, j:I
    :goto_7
    if-ge p4, p3, :cond_14

    .line 1479
    aget-byte v2, p2, p4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    .line 1480
    const/4 v2, 0x1

    aput-byte v2, p2, p4

    .line 1482
    :cond_12
    sget-boolean v2, Landroid/text/StaticLayout;->isBidiEnabled:Z

    if-eqz v2, :cond_13

    aget-byte v2, p2, p4

    const/16 v3, 0x8

    if-ne v2, v3, :cond_13

    aget-char v2, p1, p4

    const/16 v3, 0x64a

    if-le v2, v3, :cond_13

    aget-char v2, p1, p4

    const/16 v3, 0x660

    if-ge v2, v3, :cond_13

    .line 1484
    const/4 v2, 0x1

    aput-byte v2, p2, p4

    .line 1478
    :cond_13
    add-int/lit8 p4, p4, 0x1

    goto :goto_7

    .line 1491
    :cond_14
    const/4 p4, 0x1

    move v2, p4

    .end local p4           #j:I
    .restart local v2       #j:I
    :goto_8
    const/4 p4, 0x1

    sub-int p4, p3, p4

    if-ge v2, p4, :cond_1b

    .line 1492
    aget-byte p4, p2, v2

    .line 1493
    .local p4, d:B
    const/4 v3, 0x1

    sub-int v3, v2, v3

    aget-byte v4, p2, v3

    .line 1494
    .local v4, prev:B
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p2, v3

    .line 1496
    .local v3, next:B
    const/4 v5, 0x4

    if-ne p4, v5, :cond_16

    .line 1497
    const/4 p4, 0x3

    if-ne v4, p4, :cond_15

    .end local p4           #d:B
    const/4 p4, 0x3

    if-ne v3, p4, :cond_15

    .line 1499
    const/4 p4, 0x3

    aput-byte p4, p2, v2

    .line 1491
    :cond_15
    :goto_9
    add-int/lit8 p4, v2, 0x1

    .end local v2           #j:I
    .local p4, j:I
    move v2, p4

    .end local p4           #j:I
    .restart local v2       #j:I
    goto :goto_8

    .line 1500
    .local p4, d:B
    :cond_16
    const/4 v5, 0x7

    if-ne p4, v5, :cond_18

    .line 1501
    const/4 p4, 0x3

    if-ne v4, p4, :cond_17

    .end local p4           #d:B
    const/4 p4, 0x3

    if-ne v3, p4, :cond_17

    .line 1503
    const/4 p4, 0x3

    aput-byte p4, p2, v2

    .line 1504
    :cond_17
    const/4 p4, 0x6

    if-ne v4, p4, :cond_15

    const/4 p4, 0x6

    if-ne v3, p4, :cond_15

    .line 1506
    const/4 p4, 0x6

    aput-byte p4, p2, v2

    goto :goto_9

    .line 1511
    .restart local p4       #d:B
    :cond_18
    sget-boolean v5, Landroid/text/StaticLayout;->isBidiEnabled:Z

    if-eqz v5, :cond_1a

    const/16 v5, 0xc

    if-ne p4, v5, :cond_1a

    .line 1512
    const/4 p4, 0x3

    if-ne v4, p4, :cond_15

    .end local p4           #d:B
    const/4 p4, 0x3

    if-eq v3, p4, :cond_19

    const/16 p4, 0xc

    if-ne v3, p4, :cond_15

    .line 1514
    :cond_19
    const/4 p4, 0x3

    aput-byte p4, p2, v2

    goto :goto_9

    .line 1517
    .restart local p4       #d:B
    :cond_1a
    sget-boolean v5, Landroid/text/StaticLayout;->isBidiEnabled:Z

    if-eqz v5, :cond_15

    const/16 v5, 0xd

    if-ne p4, v5, :cond_15

    .line 1518
    const/4 p4, 0x3

    if-ne v4, p4, :cond_15

    .end local p4           #d:B
    const/4 p4, 0x3

    if-ne v3, p4, :cond_15

    .line 1519
    const/4 p4, 0x3

    aput-byte p4, p2, v2

    goto :goto_9

    .line 1528
    .end local v3           #next:B
    .end local v4           #prev:B
    :cond_1b
    const/4 p4, 0x0

    .line 1529
    .local p4, adjacent:Z
    const/4 v2, 0x0

    move v3, v2

    .end local v2           #j:I
    .local v3, j:I
    :goto_a
    if-ge v3, p3, :cond_1e

    .line 1530
    aget-byte v2, p2, v3

    .line 1532
    .local v2, d:B
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1c

    .line 1533
    const/4 p4, 0x1

    .line 1529
    .end local v2           #d:B
    :goto_b
    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .local v2, j:I
    move v3, v2

    .end local v2           #j:I
    .restart local v3       #j:I
    goto :goto_a

    .line 1534
    .local v2, d:B
    :cond_1c
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1d

    if-eqz p4, :cond_1d

    .line 1535
    const/4 v2, 0x3

    aput-byte v2, p2, v3

    goto :goto_b

    .line 1537
    :cond_1d
    const/4 p4, 0x0

    goto :goto_b

    .line 1544
    .end local v2           #d:B
    :cond_1e
    const/4 p4, 0x0

    .line 1545
    const/4 v2, 0x1

    sub-int v2, p3, v2

    .end local v3           #j:I
    .local v2, j:I
    move v3, v2

    .end local v2           #j:I
    .restart local v3       #j:I
    :goto_c
    if-ltz v3, :cond_29

    .line 1546
    aget-byte v2, p2, v3

    .line 1548
    .local v2, d:B
    const/4 v4, 0x3

    if-ne v2, v4, :cond_20

    .line 1549
    const/4 p4, 0x1

    .line 1545
    .end local v2           #d:B
    :cond_1f
    :goto_d
    add-int/lit8 v2, v3, -0x1

    .end local v3           #j:I
    .local v2, j:I
    move v3, v2

    .end local v2           #j:I
    .restart local v3       #j:I
    goto :goto_c

    .line 1551
    .local v2, d:B
    :cond_20
    sget-boolean v4, Landroid/text/StaticLayout;->isBidiEnabled:Z

    if-nez v4, :cond_22

    const/4 v4, 0x5

    if-ne v2, v4, :cond_22

    .line 1553
    if-eqz p4, :cond_21

    .line 1554
    const/4 v2, 0x3

    aput-byte v2, p2, v3

    goto :goto_d

    .line 1556
    :cond_21
    const/16 v2, 0xd

    aput-byte v2, p2, v3

    goto :goto_d

    .line 1557
    :cond_22
    sget-boolean v4, Landroid/text/StaticLayout;->isBidiEnabled:Z

    if-eqz v4, :cond_25

    const/4 v4, 0x5

    if-eq v2, v4, :cond_23

    aget-char v4, p1, v3

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_23

    aget-char v4, p1, v3

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_25

    .line 1558
    :cond_23
    if-eqz p4, :cond_24

    .line 1559
    const/4 v2, 0x3

    aput-byte v2, p2, v3

    goto :goto_d

    .line 1561
    :cond_24
    const/16 v2, 0xd

    aput-byte v2, p2, v3

    goto :goto_d

    .line 1563
    :cond_25
    sget-boolean v4, Landroid/text/StaticLayout;->isBidiEnabled:Z

    if-eqz v4, :cond_27

    aget-char v4, p1, v3

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_27

    if-nez v0, :cond_27

    .line 1564
    if-eqz p4, :cond_26

    .line 1565
    const/4 v2, 0x3

    aput-byte v2, p2, v3

    goto :goto_d

    .line 1567
    :cond_26
    const/16 v2, 0xd

    aput-byte v2, p2, v3

    goto :goto_d

    .line 1569
    :cond_27
    const/4 p4, 0x0

    .line 1571
    const/4 v4, 0x4

    if-eq v2, v4, :cond_28

    const/4 v4, 0x7

    if-eq v2, v4, :cond_28

    const/16 v4, 0xa

    if-eq v2, v4, :cond_28

    const/16 v4, 0xb

    if-ne v2, v4, :cond_1f

    .line 1575
    :cond_28
    const/16 v2, 0xd

    aput-byte v2, p2, v3

    goto :goto_d

    .line 1583
    .end local v2           #d:B
    :cond_29
    sget-boolean p4, Landroid/text/StaticLayout;->isBidiEnabled:Z

    .end local p4           #adjacent:Z
    if-nez p4, :cond_4a

    .line 1584
    move p4, v0

    .line 1585
    .end local v1           #cur:B
    .local p4, cur:B
    const/4 v1, 0x0

    .end local v3           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_e
    if-ge v2, p3, :cond_2d

    .line 1586
    aget-byte v1, p2, v2

    .line 1588
    .local v1, d:B
    if-eq v1, v0, :cond_2a

    if-eqz v1, :cond_2a

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2b

    .line 1591
    :cond_2a
    move p4, v1

    .line 1593
    :cond_2b
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2c

    .line 1594
    aput-byte p4, p2, v2

    .line 1585
    :cond_2c
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_e

    :cond_2d
    move v1, v2

    .line 1601
    .end local v2           #j:I
    .restart local v1       #j:I
    :goto_f
    move v1, v0

    .line 1604
    .end local p4           #cur:B
    .local v1, cur:B
    const/4 p4, -0x1

    .line 1606
    .local p4, OpenDir:B
    const/4 v2, 0x0

    .restart local v2       #j:I
    move v3, v2

    .end local v2           #j:I
    .restart local v3       #j:I
    :goto_10
    if-ge v3, p3, :cond_40

    .line 1607
    aget-byte v2, p2, v3

    .line 1609
    .local v2, d:B
    if-eqz v2, :cond_2e

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2f

    .line 1611
    :cond_2e
    move v1, v2

    move v2, v3

    .line 1606
    .end local v3           #j:I
    .local v2, j:I
    :goto_11
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .end local v2           #j:I
    .restart local v3       #j:I
    goto :goto_10

    .line 1612
    .local v2, d:B
    :cond_2f
    const/4 v4, 0x3

    if-eq v2, v4, :cond_30

    const/4 v4, 0x6

    if-ne v2, v4, :cond_32

    .line 1615
    :cond_30
    sget-boolean v2, Landroid/text/StaticLayout;->isBidiEnabled:Z

    .end local v2           #d:B
    if-eqz v2, :cond_31

    move v2, v3

    .line 1616
    .end local v3           #j:I
    .local v2, j:I
    goto :goto_11

    .line 1618
    .end local v2           #j:I
    .restart local v3       #j:I
    :cond_31
    const/4 v1, 0x1

    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_11

    .line 1621
    .local v2, d:B
    .restart local v3       #j:I
    :cond_32
    move v2, v0

    .line 1624
    .local v2, dd:B
    add-int/lit8 v4, v3, 0x1

    .local v4, k:I
    :goto_12
    if-ge v4, p3, :cond_33

    .line 1625
    aget-byte v2, p2, v4

    .line 1627
    if-eqz v2, :cond_33

    const/4 v5, 0x1

    if-ne v2, v5, :cond_35

    .line 1643
    :cond_33
    :goto_13
    move v3, v3

    .local v3, y:I
    :goto_14
    if-ge v3, v4, :cond_3f

    .line 1644
    sget-boolean v5, Landroid/text/StaticLayout;->isBidiEnabled:Z

    if-eqz v5, :cond_3d

    .line 1645
    aget-char v5, p1, v3

    const/16 v6, 0x28

    if-ne v5, v6, :cond_39

    if-gez p4, :cond_39

    .line 1646
    if-eq v2, v1, :cond_34

    .line 1647
    move p4, v0

    .end local v1           #cur:B
    .local p4, cur:B
    move v1, p4

    .line 1648
    .end local p4           #cur:B
    .restart local v1       #cur:B
    :cond_34
    move p4, v1

    .line 1649
    .local p4, OpenDir:B
    aput-byte v1, p2, v3

    .line 1643
    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1631
    .local v3, j:I
    :cond_35
    const/4 v5, 0x3

    if-eq v2, v5, :cond_36

    const/4 v5, 0x6

    if-ne v2, v5, :cond_38

    .line 1634
    :cond_36
    sget-boolean v2, Landroid/text/StaticLayout;->isBidiEnabled:Z

    .end local v2           #dd:B
    if-eqz v2, :cond_37

    .line 1635
    const/4 v2, 0x0

    .restart local v2       #dd:B
    goto :goto_13

    .line 1638
    .end local v2           #dd:B
    :cond_37
    const/4 v2, 0x1

    .line 1639
    .restart local v2       #dd:B
    goto :goto_13

    .line 1624
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1650
    .local v3, y:I
    :cond_39
    aget-char v5, p1, v3

    const/16 v6, 0x29

    if-ne v5, v6, :cond_3b

    .line 1651
    if-ltz p4, :cond_3a

    .line 1652
    aput-byte p4, p2, v3

    .line 1653
    move v1, p4

    .line 1654
    const/4 p4, -0x1

    goto :goto_15

    .line 1656
    :cond_3a
    aput-byte v1, p2, v3

    goto :goto_15

    .line 1657
    :cond_3b
    if-ne v2, v1, :cond_3c

    .line 1658
    aput-byte v1, p2, v3

    goto :goto_15

    .line 1660
    :cond_3c
    aput-byte v0, p2, v3

    goto :goto_15

    .line 1662
    :cond_3d
    if-ne v2, v1, :cond_3e

    .line 1663
    aput-byte v1, p2, v3

    goto :goto_15

    .line 1665
    :cond_3e
    aput-byte v0, p2, v3

    goto :goto_15

    .line 1669
    :cond_3f
    const/4 v2, 0x1

    sub-int v2, v4, v2

    .local v2, j:I
    goto :goto_11

    .line 1674
    .end local v2           #j:I
    .end local v4           #k:I
    .local v3, j:I
    :cond_40
    sget-boolean p4, Landroid/text/StaticLayout;->isBidiEnabled:Z

    .end local p4           #OpenDir:B
    if-eqz p4, :cond_49

    .line 1675
    move p4, v0

    .line 1676
    .end local v1           #cur:B
    .local p4, cur:B
    const/4 v1, 0x0

    .end local v3           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    :goto_16
    if-ge v2, p3, :cond_45

    .line 1677
    aget-byte v1, p2, v2

    .line 1679
    .local v1, d:B
    if-eq v1, v0, :cond_41

    if-eqz v1, :cond_41

    const/4 v3, 0x1

    if-ne v1, v3, :cond_42

    .line 1682
    :cond_41
    move p4, v1

    .line 1683
    :cond_42
    const/4 v3, 0x3

    if-ne v1, v3, :cond_43

    .line 1684
    sget-boolean v1, Landroid/text/StaticLayout;->isBidiEnabled:Z

    .end local v1           #d:B
    if-eqz v1, :cond_44

    if-eqz v0, :cond_44

    .line 1685
    const/4 v1, 0x0

    aput-byte v1, p2, v2

    .line 1676
    :cond_43
    :goto_17
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_16

    .line 1687
    :cond_44
    aput-byte p4, p2, v2

    goto :goto_17

    :cond_45
    move v1, v2

    .line 1698
    .end local v2           #j:I
    .restart local v1       #j:I
    :goto_18
    const/4 p4, 0x0

    .end local v1           #j:I
    .local p4, j:I
    move v1, p4

    .end local p4           #j:I
    .restart local v1       #j:I
    :goto_19
    if-ge v1, p3, :cond_48

    .line 1699
    aget-char p4, p1, v1

    .line 1701
    .local p4, c:C
    const/16 v2, 0x9

    if-eq p4, v2, :cond_46

    const v2, 0xd800

    if-lt p4, v2, :cond_47

    const v2, 0xdfff

    if-gt p4, v2, :cond_47

    .line 1702
    :cond_46
    aput-byte v0, p2, v1

    .line 1698
    :cond_47
    add-int/lit8 p4, v1, 0x1

    .end local v1           #j:I
    .local p4, j:I
    move v1, p4

    .end local p4           #j:I
    .restart local v1       #j:I
    goto :goto_19

    .line 1706
    :cond_48
    return p0

    .local v1, cur:B
    .restart local v3       #j:I
    :cond_49
    move p4, v1

    .end local v1           #cur:B
    .local p4, cur:B
    move v1, v3

    .end local v3           #j:I
    .local v1, j:I
    goto :goto_18

    .end local p4           #cur:B
    .local v1, cur:B
    .restart local v3       #j:I
    :cond_4a
    move p4, v1

    .end local v1           #cur:B
    .restart local p4       #cur:B
    move v1, v3

    .end local v3           #j:I
    .local v1, j:I
    goto/16 :goto_f

    .local v1, cur:B
    .restart local v2       #j:I
    .local p4, d:B
    :cond_4b
    move p4, v1

    .end local v1           #cur:B
    .local p4, cur:B
    goto/16 :goto_6
.end method

.method private calculateEllipsis(II[FIIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;)V
    .locals 18
    .parameter "linestart"
    .parameter "lineend"
    .parameter "widths"
    .parameter "widstart"
    .parameter "widoff"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textwidth"
    .parameter "paint"

    .prologue
    .line 1996
    sub-int v8, p2, p1

    .line 1998
    .local v8, len:I
    cmpg-float v15, p9, p6

    if-gtz v15, :cond_0

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x3

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x4

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 2072
    :goto_0
    return-void

    .line 2005
    :cond_0
    const-string/jumbo v15, "\u2026"

    move-object/from16 v0, p10

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 2008
    .local v4, ellipsiswid:F
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-ne v0, v1, :cond_3

    .line 2009
    const/4 v13, 0x0

    .line 2012
    .local v13, sum:F
    move v5, v8

    .local v5, i:I
    :goto_1
    if-ltz v5, :cond_1

    .line 2013
    const/4 v15, 0x1

    sub-int v15, v5, v15

    add-int v15, v15, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 2015
    .local v14, w:F
    add-float v15, v14, v13

    add-float/2addr v15, v4

    cmpl-float v15, v15, p6

    if-lez v15, :cond_2

    .line 2022
    .end local v14           #w:F
    :cond_1
    const/4 v3, 0x0

    .line 2023
    .local v3, ellipsisStart:I
    move v2, v5

    .line 2070
    .end local v5           #i:I
    .end local v13           #sum:F
    .local v2, ellipsisCount:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x3

    aput v3, v15, v16

    .line 2071
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v16, v0

    mul-int v16, v16, p8

    add-int/lit8 v16, v16, 0x4

    aput v2, v15, v16

    goto :goto_0

    .line 2019
    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .restart local v5       #i:I
    .restart local v13       #sum:F
    .restart local v14       #w:F
    :cond_2
    add-float/2addr v13, v14

    .line 2012
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2024
    .end local v5           #i:I
    .end local v13           #sum:F
    .end local v14           #w:F
    :cond_3
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-eq v0, v1, :cond_4

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object v1, v15

    if-ne v0, v1, :cond_7

    .line 2025
    :cond_4
    const/4 v13, 0x0

    .line 2028
    .restart local v13       #sum:F
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, v8, :cond_5

    .line 2029
    add-int v15, v5, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 2031
    .restart local v14       #w:F
    add-float v15, v14, v13

    add-float/2addr v15, v4

    cmpl-float v15, v15, p6

    if-lez v15, :cond_6

    .line 2038
    .end local v14           #w:F
    :cond_5
    move v3, v5

    .line 2039
    .restart local v3       #ellipsisStart:I
    sub-int v2, v8, v5

    .line 2040
    .restart local v2       #ellipsisCount:I
    goto :goto_2

    .line 2035
    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .restart local v14       #w:F
    :cond_6
    add-float/2addr v13, v14

    .line 2028
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2041
    .end local v5           #i:I
    .end local v13           #sum:F
    .end local v14           #w:F
    :cond_7
    const/4 v9, 0x0

    .local v9, lsum:F
    const/4 v12, 0x0

    .line 2042
    .local v12, rsum:F
    const/4 v7, 0x0

    .local v7, left:I
    move v11, v8

    .line 2044
    .local v11, right:I
    sub-float v15, p6, v4

    const/high16 v16, 0x4000

    div-float v10, v15, v16

    .line 2045
    .local v10, ravail:F
    move v11, v8

    :goto_4
    if-ltz v11, :cond_8

    .line 2046
    const/4 v15, 0x1

    sub-int v15, v11, v15

    add-int v15, v15, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 2048
    .restart local v14       #w:F
    add-float v15, v14, v12

    cmpl-float v15, v15, v10

    if-lez v15, :cond_a

    .line 2055
    .end local v14           #w:F
    :cond_8
    sub-float v15, p6, v4

    sub-float v6, v15, v12

    .line 2056
    .local v6, lavail:F
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v11, :cond_9

    .line 2057
    add-int v15, v7, p1

    sub-int v15, v15, p4

    add-int v15, v15, p5

    aget v14, p3, v15

    .line 2059
    .restart local v14       #w:F
    add-float v15, v14, v9

    cmpl-float v15, v15, v6

    if-lez v15, :cond_b

    .line 2066
    .end local v14           #w:F
    :cond_9
    move v3, v7

    .line 2067
    .restart local v3       #ellipsisStart:I
    sub-int v2, v11, v7

    .restart local v2       #ellipsisCount:I
    goto/16 :goto_2

    .line 2052
    .end local v2           #ellipsisCount:I
    .end local v3           #ellipsisStart:I
    .end local v6           #lavail:F
    .restart local v14       #w:F
    :cond_a
    add-float/2addr v12, v14

    .line 2045
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 2063
    .restart local v6       #lavail:F
    :cond_b
    add-float/2addr v9, v14

    .line 2056
    add-int/lit8 v7, v7, 0x1

    goto :goto_5
.end method

.method private generate_CIT(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 160
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "breakOnlyAtSpaces"
    .parameter "ellipsizedWidth"
    .parameter "where"

    .prologue
    .line 632
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 634
    const/16 v20, 0x0

    .line 635
    .local v20, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_4

    :cond_0
    const/4 v5, 0x1

    move/from16 v27, v5

    .line 637
    .local v27, needMultiply:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object v11, v0

    .line 638
    .local v11, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v24, 0x0

    .line 640
    .local v24, choosehtv:[I
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v139

    .line 641
    .local v139, end:I
    if-ltz v139, :cond_5

    sub-int v5, v139, p2

    move/from16 v135, v5

    .line 642
    .local v135, bufsiz:I
    :goto_1
    const/16 v140, 0x1

    .line 644
    .local v140, first:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChdirs:[B

    move-object v5, v0

    if-nez v5, :cond_1

    .line 645
    add-int/lit8 v5, v135, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v5

    new-array v5, v5, [B

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 646
    add-int/lit8 v5, v135, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    new-array v5, v5, [C

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 647
    add-int/lit8 v5, v135, 0x1

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v5, v5, [F

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 650
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChdirs:[B

    move-object/from16 v29, v0

    .line 651
    .local v29, chdirs:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChs:[C

    move-object/from16 v137, v0

    .line 652
    .local v137, chs:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWidths:[F

    move-object v10, v0

    .line 654
    .local v10, widths:[F
    const/16 v130, 0x0

    .line 655
    .local v130, alter:Landroid/text/AlteredCharSequence;
    const/4 v7, 0x0

    .line 657
    .local v7, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_2

    .line 658
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    .line 660
    :cond_2
    const/16 v117, 0x1

    .line 662
    .local v117, DEFAULT_DIR:I
    move/from16 v28, p2

    .local v28, start:I
    :goto_2
    move/from16 v0, v28

    move/from16 v1, p3

    if-gt v0, v1, :cond_49

    .line 663
    if-eqz v140, :cond_6

    .line 664
    const/16 v140, 0x0

    .line 668
    :goto_3
    if-gez v139, :cond_7

    .line 669
    move/from16 v139, p3

    .line 673
    :goto_4
    const/16 v141, 0x1

    .line 674
    .local v141, firstWidthLineCount:I
    move/from16 v142, p5

    .line 675
    .local v142, firstwidth:I
    move/from16 v151, p5

    .line 677
    .local v151, restwidth:I
    const/16 v23, 0x0

    .line 679
    .local v23, chooseht:[Landroid/text/style/LineHeightSpan;
    if-eqz v7, :cond_c

    .line 682
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v152

    check-cast v152, [Landroid/text/style/LeadingMarginSpan;

    .line 683
    .local v152, sp:[Landroid/text/style/LeadingMarginSpan;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_5
    move-object/from16 v0, v152

    array-length v0, v0

    move v5, v0

    if-ge v8, v5, :cond_8

    .line 684
    aget-object v148, v152, v8

    .line 685
    .local v148, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v152, v8

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v142, v142, v5

    .line 686
    aget-object v5, v152, v8

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v151, v151, v5

    .line 687
    move-object/from16 v0, v148

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move v5, v0

    if-eqz v5, :cond_3

    .line 688
    check-cast v148, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .end local v148           #lms:Landroid/text/style/LeadingMarginSpan;
    invoke-interface/range {v148 .. v148}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v141

    .line 683
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 635
    .end local v7           #spanned:Landroid/text/Spanned;
    .end local v8           #i:I
    .end local v10           #widths:[F
    .end local v11           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v23           #chooseht:[Landroid/text/style/LineHeightSpan;
    .end local v24           #choosehtv:[I
    .end local v27           #needMultiply:Z
    .end local v28           #start:I
    .end local v29           #chdirs:[B
    .end local v117           #DEFAULT_DIR:I
    .end local v130           #alter:Landroid/text/AlteredCharSequence;
    .end local v135           #bufsiz:I
    .end local v137           #chs:[C
    .end local v139           #end:I
    .end local v140           #first:Z
    .end local v141           #firstWidthLineCount:I
    .end local v142           #firstwidth:I
    .end local v151           #restwidth:I
    .end local v152           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_4
    const/4 v5, 0x0

    move/from16 v27, v5

    goto/16 :goto_0

    .line 641
    .restart local v11       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v24       #choosehtv:[I
    .restart local v27       #needMultiply:Z
    .restart local v139       #end:I
    :cond_5
    sub-int v5, p3, p2

    move/from16 v135, v5

    goto/16 :goto_1

    .line 666
    .restart local v7       #spanned:Landroid/text/Spanned;
    .restart local v10       #widths:[F
    .restart local v28       #start:I
    .restart local v29       #chdirs:[B
    .restart local v117       #DEFAULT_DIR:I
    .restart local v130       #alter:Landroid/text/AlteredCharSequence;
    .restart local v135       #bufsiz:I
    .restart local v137       #chs:[C
    .restart local v140       #first:Z
    :cond_6
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, v28

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v139

    goto :goto_3

    .line 671
    :cond_7
    add-int/lit8 v139, v139, 0x1

    goto :goto_4

    .line 692
    .restart local v8       #i:I
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    .restart local v141       #firstWidthLineCount:I
    .restart local v142       #firstwidth:I
    .restart local v151       #restwidth:I
    .restart local v152       #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_8
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    .end local v23           #chooseht:[Landroid/text/style/LineHeightSpan;
    check-cast v23, [Landroid/text/style/LineHeightSpan;

    .line 694
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    if-eqz v5, :cond_c

    .line 695
    if-eqz v24, :cond_9

    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move v6, v0

    if-ge v5, v6, :cond_a

    .line 697
    :cond_9
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 701
    :cond_a
    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    if-ge v8, v5, :cond_c

    .line 702
    aget-object v5, v23, v8

    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v150

    .line 704
    .local v150, o:I
    move/from16 v0, v150

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    .line 708
    move-object/from16 v0, p0

    move/from16 v1, v150

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v24, v8

    .line 701
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 712
    :cond_b
    aput v20, v24, v8

    goto :goto_7

    .line 718
    .end local v8           #i:I
    .end local v150           #o:I
    .end local v152           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_c
    sub-int v5, v139, v28

    move-object/from16 v0, v29

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_d

    .line 719
    sub-int v5, v139, v28

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 720
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 722
    :cond_d
    sub-int v5, v139, v28

    move-object/from16 v0, v137

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_e

    .line 723
    sub-int v5, v139, v28

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v137, v0

    .line 724
    move-object/from16 v0, v137

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 726
    :cond_e
    sub-int v5, v139, v28

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v10

    if-le v5, v6, :cond_f

    .line 727
    sub-int v5, v139, v28

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v10, v5, [F

    .line 728
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 731
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v139

    move-object/from16 v3, v137

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 732
    sub-int v149, v139, v28

    .line 734
    .local v149, n:I
    const/16 v31, 0x1

    .line 735
    .local v31, easy:Z
    const/16 v131, 0x0

    .line 736
    .local v131, altered:Z
    move/from16 v30, v117

    .line 738
    .local v30, dir:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_8
    move v0, v8

    move/from16 v1, v149

    if-ge v0, v1, :cond_10

    .line 739
    aget-char v5, v137, v8

    const/16 v6, 0x590

    if-lt v5, v6, :cond_12

    .line 740
    const/16 v31, 0x0

    .line 750
    :cond_10
    if-nez v31, :cond_19

    .line 752
    const/4 v5, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v137

    move-object/from16 v2, v29

    move/from16 v3, v149

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout;->bidi(I[C[BIZ)I

    move-result v30

    .line 755
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_14

    .line 756
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v152, v0

    .line 757
    .local v152, sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v152

    move/from16 v1, v28

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v153

    check-cast v153, [Landroid/text/style/ReplacementSpan;

    .line 759
    .local v153, spans:[Landroid/text/style/ReplacementSpan;
    const/16 v159, 0x0

    .local v159, y:I
    :goto_9
    move-object/from16 v0, v153

    array-length v0, v0

    move v5, v0

    move/from16 v0, v159

    move v1, v5

    if-ge v0, v1, :cond_14

    .line 760
    aget-object v5, v153, v159

    move-object/from16 v0, v152

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v129

    .line 761
    .local v129, a:I
    aget-object v5, v153, v159

    move-object/from16 v0, v152

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v132

    .line 763
    .local v132, b:I
    move/from16 v158, v129

    .local v158, x:I
    :goto_a
    move/from16 v0, v158

    move/from16 v1, v132

    if-ge v0, v1, :cond_13

    .line 764
    sget-boolean v5, Landroid/text/StaticLayout;->isBidiEnabled:Z

    if-eqz v5, :cond_11

    .line 765
    sub-int v5, v158, v28

    move/from16 v0, v30

    int-to-byte v0, v0

    move v6, v0

    aput-byte v6, v29, v5

    .line 766
    :cond_11
    sub-int v5, v158, v28

    const v6, 0xfffc

    aput-char v6, v137, v5

    .line 763
    add-int/lit8 v158, v158, 0x1

    goto :goto_a

    .line 738
    .end local v129           #a:I
    .end local v132           #b:I
    .end local v152           #sp:Landroid/text/Spanned;
    .end local v153           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v158           #x:I
    .end local v159           #y:I
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 759
    .restart local v129       #a:I
    .restart local v132       #b:I
    .restart local v152       #sp:Landroid/text/Spanned;
    .restart local v153       #spans:[Landroid/text/style/ReplacementSpan;
    .restart local v158       #x:I
    .restart local v159       #y:I
    :cond_13
    add-int/lit8 v159, v159, 0x1

    goto :goto_9

    .line 773
    .end local v129           #a:I
    .end local v132           #b:I
    .end local v152           #sp:Landroid/text/Spanned;
    .end local v153           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v158           #x:I
    .end local v159           #y:I
    :cond_14
    const/4 v8, 0x0

    :goto_b
    move v0, v8

    move/from16 v1, v149

    if-ge v0, v1, :cond_19

    .line 774
    aget-byte v5, v29, v8

    const/4 v6, 0x1

    if-ne v5, v6, :cond_17

    .line 777
    move/from16 v147, v8

    .local v147, j:I
    :goto_c
    move/from16 v0, v147

    move/from16 v1, v149

    if-ge v0, v1, :cond_15

    .line 778
    aget-byte v5, v29, v147

    const/4 v6, 0x1

    if-eq v5, v6, :cond_18

    .line 783
    :cond_15
    sub-int v5, v147, v8

    move-object/from16 v0, v137

    move v1, v8

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/text/AndroidCharacter;->mirror([CII)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 784
    const/16 v131, 0x1

    .line 786
    :cond_16
    const/4 v5, 0x1

    sub-int v8, v147, v5

    .line 773
    .end local v147           #j:I
    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 777
    .restart local v147       #j:I
    :cond_18
    add-int/lit8 v147, v147, 0x1

    goto :goto_c

    .line 793
    .end local v147           #j:I
    :cond_19
    if-eqz v131, :cond_29

    .line 794
    if-nez v130, :cond_28

    .line 795
    move-object/from16 v0, p1

    move-object/from16 v1, v137

    move/from16 v2, v28

    move/from16 v3, v139

    invoke-static {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;

    move-result-object v130

    .line 799
    :goto_d
    move-object/from16 v154, v130

    .line 804
    .local v154, sub:Ljava/lang/CharSequence;
    :goto_e
    move/from16 v157, v142

    .line 806
    .local v157, width:I
    const/16 v98, 0x0

    .line 807
    .local v98, w:F
    move/from16 v14, v28

    .line 809
    .local v14, here:I
    move/from16 v15, v28

    .line 810
    .local v15, ok:I
    move/from16 v40, v98

    .line 811
    .local v40, okwidth:F
    const/16 v16, 0x0

    .local v16, okascent:I
    const/16 v17, 0x0

    .local v17, okdescent:I
    const/16 v18, 0x0

    .local v18, oktop:I
    const/16 v19, 0x0

    .line 813
    .local v19, okbottom:I
    move/from16 v44, v28

    .line 814
    .local v44, fit:I
    move/from16 v69, v98

    .line 815
    .local v69, fitwidth:F
    const/16 v45, 0x0

    .local v45, fitascent:I
    const/16 v46, 0x0

    .local v46, fitdescent:I
    const/16 v47, 0x0

    .local v47, fittop:I
    const/16 v48, 0x0

    .line 817
    .local v48, fitbottom:I
    const/16 v26, 0x0

    .line 820
    .local v26, tab:Z
    move/from16 v8, v28

    :goto_f
    move v0, v8

    move/from16 v1, v139

    if-ge v0, v1, :cond_46

    .line 821
    if-nez v7, :cond_2a

    .line 822
    move/from16 v9, v139

    .line 828
    .local v9, next:I
    :goto_10
    if-nez v7, :cond_2c

    .line 829
    sget-boolean v5, Landroid/text/StaticLayout;->isBidiEnabled:Z

    if-eqz v5, :cond_2b

    .line 830
    move-object/from16 v0, v154

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout;->reverseArabicWidths(Ljava/lang/CharSequence;II[FLandroid/text/TextPaint;)V

    .line 834
    :goto_11
    const/4 v5, 0x0

    sub-int v6, v139, v28

    sub-int v12, v8, v28

    add-int/2addr v6, v12

    sub-int v12, v9, v8

    invoke-static {v10, v5, v10, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 837
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 864
    :goto_12
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v146, v0

    .line 865
    .local v146, fmtop:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v144, v0

    .line 866
    .local v144, fmbottom:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v143, v0

    .line 867
    .local v143, fmascent:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v145, v0

    .line 879
    .local v145, fmdescent:I
    move/from16 v147, v8

    .restart local v147       #j:I
    :goto_13
    move/from16 v0, v147

    move v1, v9

    if-ge v0, v1, :cond_45

    .line 880
    sub-int v5, v147, v28

    aget-char v136, v137, v5

    .line 881
    .local v136, c:C
    move/from16 v133, v98

    .line 883
    .local v133, before:F
    const/16 v5, 0xa

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_30

    .line 923
    :goto_14
    move/from16 v0, v157

    int-to-float v0, v0

    move v5, v0

    cmpg-float v5, v98, v5

    if-gtz v5, :cond_36

    .line 924
    move/from16 v69, v98

    .line 925
    add-int/lit8 v44, v147, 0x1

    .line 927
    move/from16 v0, v146

    move/from16 v1, v47

    if-ge v0, v1, :cond_1a

    .line 928
    move/from16 v47, v146

    .line 929
    :cond_1a
    move/from16 v0, v143

    move/from16 v1, v45

    if-ge v0, v1, :cond_1b

    .line 930
    move/from16 v45, v143

    .line 931
    :cond_1b
    move/from16 v0, v145

    move/from16 v1, v46

    if-le v0, v1, :cond_1c

    .line 932
    move/from16 v46, v145

    .line 933
    :cond_1c
    move/from16 v0, v144

    move/from16 v1, v48

    if-le v0, v1, :cond_1d

    .line 934
    move/from16 v48, v144

    .line 952
    :cond_1d
    const/16 v5, 0x20

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_23

    const/16 v5, 0x9

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_23

    const/16 v5, 0x2e

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_1e

    const/16 v5, 0x2c

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_1e

    const/16 v5, 0x3a

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_1e

    const/16 v5, 0x3b

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_20

    :cond_1e
    const/4 v5, 0x1

    sub-int v5, v147, v5

    if-lt v5, v14, :cond_1f

    const/4 v5, 0x1

    sub-int v5, v147, v5

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_20

    :cond_1f
    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_23

    add-int/lit8 v5, v147, 0x1

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_23

    :cond_20
    const/16 v5, 0x2f

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_21

    const/16 v5, 0x2d

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_22

    :cond_21
    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_23

    add-int/lit8 v5, v147, 0x1

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_23

    :cond_22
    const/16 v5, 0x2e80

    move/from16 v0, v136

    move v1, v5

    if-lt v0, v1, :cond_27

    const/4 v5, 0x1

    move/from16 v0, v136

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_27

    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_27

    add-int/lit8 v5, v147, 0x1

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 960
    :cond_23
    move/from16 v40, v98

    .line 961
    add-int/lit8 v15, v147, 0x1

    .line 963
    move/from16 v0, v47

    move/from16 v1, v18

    if-ge v0, v1, :cond_24

    .line 964
    move/from16 v18, v47

    .line 965
    :cond_24
    move/from16 v0, v45

    move/from16 v1, v16

    if-ge v0, v1, :cond_25

    .line 966
    move/from16 v16, v45

    .line 967
    :cond_25
    move/from16 v0, v46

    move/from16 v1, v17

    if-le v0, v1, :cond_26

    .line 968
    move/from16 v17, v46

    .line 969
    :cond_26
    move/from16 v0, v48

    move/from16 v1, v19

    if-le v0, v1, :cond_27

    .line 970
    move/from16 v19, v48

    .line 879
    :cond_27
    :goto_15
    add-int/lit8 v147, v147, 0x1

    goto/16 :goto_13

    .line 797
    .end local v9           #next:I
    .end local v14           #here:I
    .end local v15           #ok:I
    .end local v16           #okascent:I
    .end local v17           #okdescent:I
    .end local v18           #oktop:I
    .end local v19           #okbottom:I
    .end local v26           #tab:Z
    .end local v40           #okwidth:F
    .end local v44           #fit:I
    .end local v45           #fitascent:I
    .end local v46           #fitdescent:I
    .end local v47           #fittop:I
    .end local v48           #fitbottom:I
    .end local v69           #fitwidth:F
    .end local v98           #w:F
    .end local v133           #before:F
    .end local v136           #c:C
    .end local v143           #fmascent:I
    .end local v144           #fmbottom:I
    .end local v145           #fmdescent:I
    .end local v146           #fmtop:I
    .end local v147           #j:I
    .end local v154           #sub:Ljava/lang/CharSequence;
    .end local v157           #width:I
    :cond_28
    move-object/from16 v0, v130

    move-object/from16 v1, v137

    move/from16 v2, v28

    move/from16 v3, v139

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->update([CII)V

    goto/16 :goto_d

    .line 801
    :cond_29
    move-object/from16 v154, p1

    .restart local v154       #sub:Ljava/lang/CharSequence;
    goto/16 :goto_e

    .line 824
    .restart local v14       #here:I
    .restart local v15       #ok:I
    .restart local v16       #okascent:I
    .restart local v17       #okdescent:I
    .restart local v18       #oktop:I
    .restart local v19       #okbottom:I
    .restart local v26       #tab:Z
    .restart local v40       #okwidth:F
    .restart local v44       #fit:I
    .restart local v45       #fitascent:I
    .restart local v46       #fitdescent:I
    .restart local v47       #fittop:I
    .restart local v48       #fitbottom:I
    .restart local v69       #fitwidth:F
    .restart local v98       #w:F
    .restart local v157       #width:I
    :cond_2a
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object v0, v7

    move v1, v8

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .restart local v9       #next:I
    goto/16 :goto_10

    .line 832
    :cond_2b
    move-object/from16 v0, p4

    move-object/from16 v1, v154

    move v2, v8

    move v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    goto/16 :goto_11

    .line 839
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/text/TextPaint;->baselineShift:I

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    move-object/from16 v5, p4

    invoke-static/range {v5 .. v11}, Landroid/text/Styled;->getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I

    .line 844
    sget-boolean v5, Landroid/text/StaticLayout;->isBidiEnabled:Z

    if-eqz v5, :cond_2e

    .line 849
    sub-int v5, v9, v8

    const/4 v6, 0x5

    if-ge v5, v6, :cond_2d

    const/4 v5, 0x1

    aget v5, v10, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2e

    .line 850
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    invoke-static {v7, v8, v9, v10, v5}, Landroid/text/StaticLayout;->reverseArabicWidths(Ljava/lang/CharSequence;II[FLandroid/text/TextPaint;)V

    .line 852
    :cond_2e
    const/4 v5, 0x0

    sub-int v6, v139, v28

    sub-int v12, v8, v28

    add-int/2addr v6, v12

    sub-int v12, v9, v8

    invoke-static {v10, v5, v10, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    iget v5, v5, Landroid/text/TextPaint;->baselineShift:I

    if-gez v5, :cond_2f

    .line 856
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 857
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto/16 :goto_12

    .line 859
    :cond_2f
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 860
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto/16 :goto_12

    .line 885
    .restart local v133       #before:F
    .restart local v136       #c:C
    .restart local v143       #fmascent:I
    .restart local v144       #fmbottom:I
    .restart local v145       #fmdescent:I
    .restart local v146       #fmtop:I
    .restart local v147       #j:I
    :cond_30
    const/16 v5, 0x9

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_31

    .line 886
    const/4 v5, 0x0

    move-object/from16 v0, v154

    move/from16 v1, v28

    move/from16 v2, v139

    move/from16 v3, v98

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v98

    .line 887
    const/16 v26, 0x1

    goto/16 :goto_14

    .line 888
    :cond_31
    const v5, 0xd800

    move/from16 v0, v136

    move v1, v5

    if-lt v0, v1, :cond_35

    const v5, 0xdfff

    move/from16 v0, v136

    move v1, v5

    if-gt v0, v1, :cond_35

    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_35

    .line 889
    sub-int v5, v147, v28

    move-object/from16 v0, v137

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v138

    .line 891
    .local v138, emoji:I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v138

    move v1, v5

    if-lt v0, v1, :cond_34

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v138

    move v1, v5

    if-gt v0, v1, :cond_34

    .line 892
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move-object v0, v5

    move/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v134

    .line 895
    .local v134, bm:Landroid/graphics/Bitmap;
    if-eqz v134, :cond_33

    .line 898
    if-nez v7, :cond_32

    .line 899
    move-object/from16 v155, p4

    .line 904
    .local v155, whichPaint:Landroid/graphics/Paint;
    :goto_16
    invoke-virtual/range {v134 .. v134}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v155 .. v155}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v134 .. v134}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v156, v5, v6

    .line 908
    .local v156, wid:F
    add-float v98, v98, v156

    .line 909
    const/16 v26, 0x1

    .line 910
    add-int/lit8 v147, v147, 0x1

    .line 911
    goto/16 :goto_14

    .line 901
    .end local v155           #whichPaint:Landroid/graphics/Paint;
    .end local v156           #wid:F
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v155, v0

    .restart local v155       #whichPaint:Landroid/graphics/Paint;
    goto :goto_16

    .line 912
    .end local v155           #whichPaint:Landroid/graphics/Paint;
    :cond_33
    sub-int v5, v147, v28

    sub-int v6, v139, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_14

    .line 915
    .end local v134           #bm:Landroid/graphics/Bitmap;
    :cond_34
    sub-int v5, v147, v28

    sub-int v6, v139, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_14

    .line 918
    .end local v138           #emoji:I
    :cond_35
    sub-int v5, v147, v28

    sub-int v6, v139, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_14

    .line 972
    :cond_36
    if-eqz p11, :cond_3d

    .line 973
    if-eq v15, v14, :cond_39

    .line 976
    :goto_17
    if-ge v15, v9, :cond_37

    sub-int v5, v15, v28

    aget-char v5, v137, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_37

    .line 977
    add-int/lit8 v15, v15, 0x1

    goto :goto_17

    .line 980
    :cond_37
    move v0, v15

    move/from16 v1, p3

    if-ne v0, v1, :cond_38

    const/4 v5, 0x1

    move/from16 v32, v5

    :goto_18
    sub-int v37, v139, v28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v25, v11

    move/from16 v33, p9

    move/from16 v34, p10

    move-object/from16 v35, v10

    move/from16 v36, v28

    move-object/from16 v38, p13

    move/from16 v39, p12

    move-object/from16 v41, p4

    invoke-direct/range {v12 .. v41}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 992
    move v14, v15

    goto/16 :goto_15

    .line 980
    :cond_38
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_18

    .line 996
    :cond_39
    move/from16 v69, v98

    .line 997
    add-int/lit8 v44, v147, 0x1

    .line 999
    move/from16 v0, v146

    move/from16 v1, v47

    if-ge v0, v1, :cond_3a

    .line 1000
    move/from16 v47, v146

    .line 1001
    :cond_3a
    move/from16 v0, v143

    move/from16 v1, v45

    if-ge v0, v1, :cond_3b

    .line 1002
    move/from16 v45, v143

    .line 1003
    :cond_3b
    move/from16 v0, v145

    move/from16 v1, v46

    if-le v0, v1, :cond_3c

    .line 1004
    move/from16 v46, v145

    .line 1005
    :cond_3c
    move/from16 v0, v144

    move/from16 v1, v48

    if-le v0, v1, :cond_27

    .line 1006
    move/from16 v48, v144

    goto/16 :goto_15

    .line 1009
    :cond_3d
    if-eq v15, v14, :cond_40

    .line 1012
    :goto_19
    if-ge v15, v9, :cond_3e

    sub-int v5, v15, v28

    aget-char v5, v137, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_3e

    .line 1013
    add-int/lit8 v15, v15, 0x1

    goto :goto_19

    .line 1016
    :cond_3e
    move v0, v15

    move/from16 v1, p3

    if-ne v0, v1, :cond_3f

    const/4 v5, 0x1

    move/from16 v32, v5

    :goto_1a
    sub-int v37, v139, v28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v25, v11

    move/from16 v33, p9

    move/from16 v34, p10

    move-object/from16 v35, v10

    move/from16 v36, v28

    move-object/from16 v38, p13

    move/from16 v39, p12

    move-object/from16 v41, p4

    invoke-direct/range {v12 .. v41}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 1028
    move v14, v15

    .line 1068
    .end local v98           #w:F
    :goto_1b
    if-ge v14, v8, :cond_44

    .line 1069
    move v9, v14

    move/from16 v147, v14

    .line 1074
    :goto_1c
    move/from16 v44, v14

    move v15, v14

    .line 1075
    const/16 v98, 0x0

    .line 1076
    .restart local v98       #w:F
    const/16 v48, 0x0

    move/from16 v47, v48

    move/from16 v46, v48

    move/from16 v45, v48

    .line 1077
    const/16 v19, 0x0

    move/from16 v18, v19

    move/from16 v17, v19

    move/from16 v16, v19

    .line 1079
    add-int/lit8 v141, v141, -0x1

    if-gtz v141, :cond_27

    .line 1080
    move/from16 v157, v151

    goto/16 :goto_15

    .line 1016
    :cond_3f
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_1a

    .line 1029
    :cond_40
    move/from16 v0, v44

    move v1, v14

    if-eq v0, v1, :cond_42

    .line 1031
    move/from16 v0, v44

    move/from16 v1, p3

    if-ne v0, v1, :cond_41

    const/4 v5, 0x1

    move/from16 v61, v5

    :goto_1d
    sub-int v66, v139, v28

    move-object/from16 v41, p0

    move-object/from16 v42, p1

    move/from16 v43, v14

    move/from16 v49, v20

    move/from16 v50, p7

    move/from16 v51, p8

    move-object/from16 v52, v23

    move-object/from16 v53, v24

    move-object/from16 v54, v11

    move/from16 v55, v26

    move/from16 v56, v27

    move/from16 v57, v28

    move-object/from16 v58, v29

    move/from16 v59, v30

    move/from16 v60, v31

    move/from16 v62, p9

    move/from16 v63, p10

    move-object/from16 v64, v10

    move/from16 v65, v28

    move-object/from16 v67, p13

    move/from16 v68, p12

    move-object/from16 v70, p4

    invoke-direct/range {v41 .. v70}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 1044
    move/from16 v14, v44

    goto :goto_1b

    .line 1031
    :cond_41
    const/4 v5, 0x0

    move/from16 v61, v5

    goto :goto_1d

    .line 1047
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v33, v0

    add-int/lit8 v36, v14, 0x1

    const/16 v39, 0x0

    move-object/from16 v32, p4

    move-object/from16 v34, p1

    move/from16 v35, v14

    move-object/from16 v37, v11

    move/from16 v38, v26

    invoke-static/range {v32 .. v39}, Landroid/text/StaticLayout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    .line 1051
    add-int/lit8 v73, v14, 0x1

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v74, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v75, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v76, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v77, v0

    add-int/lit8 v5, v14, 0x1

    move v0, v5

    move/from16 v1, p3

    if-ne v0, v1, :cond_43

    const/4 v5, 0x1

    move/from16 v90, v5

    :goto_1e
    sub-int v95, v139, v28

    sub-int v5, v14, v28

    aget v98, v10, v5

    .end local v98           #w:F
    move-object/from16 v70, p0

    move-object/from16 v71, p1

    move/from16 v72, v14

    move/from16 v78, v20

    move/from16 v79, p7

    move/from16 v80, p8

    move-object/from16 v81, v23

    move-object/from16 v82, v24

    move-object/from16 v83, v11

    move/from16 v84, v26

    move/from16 v85, v27

    move/from16 v86, v28

    move-object/from16 v87, v29

    move/from16 v88, v30

    move/from16 v89, v31

    move/from16 v91, p9

    move/from16 v92, p10

    move-object/from16 v93, v10

    move/from16 v94, v28

    move-object/from16 v96, p13

    move/from16 v97, p12

    move-object/from16 v99, p4

    invoke-direct/range {v70 .. v99}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 1065
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1b

    .line 1051
    .restart local v98       #w:F
    :cond_43
    const/4 v5, 0x0

    move/from16 v90, v5

    goto :goto_1e

    .line 1071
    .end local v98           #w:F
    :cond_44
    const/4 v5, 0x1

    sub-int v147, v14, v5

    goto/16 :goto_1c

    .line 820
    .end local v133           #before:F
    .end local v136           #c:C
    .restart local v98       #w:F
    :cond_45
    move v8, v9

    goto/16 :goto_f

    .line 1086
    .end local v9           #next:I
    .end local v143           #fmascent:I
    .end local v144           #fmbottom:I
    .end local v145           #fmdescent:I
    .end local v146           #fmtop:I
    .end local v147           #j:I
    :cond_46
    move/from16 v0, v139

    move v1, v14

    if-eq v0, v1, :cond_48

    .line 1087
    or-int v5, v47, v48

    or-int v5, v5, v46

    or-int v5, v5, v45

    if-nez v5, :cond_47

    .line 1088
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1090
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v47, v0

    .line 1091
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v48, v0

    .line 1092
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v45, v0

    .line 1093
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v46, v0

    .line 1098
    :cond_47
    move/from16 v0, v139

    move/from16 v1, p3

    if-ne v0, v1, :cond_4c

    const/4 v5, 0x1

    move/from16 v90, v5

    :goto_1f
    sub-int v95, v139, v28

    move-object/from16 v70, p0

    move-object/from16 v71, p1

    move/from16 v72, v14

    move/from16 v73, v139

    move/from16 v74, v45

    move/from16 v75, v46

    move/from16 v76, v47

    move/from16 v77, v48

    move/from16 v78, v20

    move/from16 v79, p7

    move/from16 v80, p8

    move-object/from16 v81, v23

    move-object/from16 v82, v24

    move-object/from16 v83, v11

    move/from16 v84, v26

    move/from16 v85, v27

    move/from16 v86, v28

    move-object/from16 v87, v29

    move/from16 v88, v30

    move/from16 v89, v31

    move/from16 v91, p9

    move/from16 v92, p10

    move-object/from16 v93, v10

    move/from16 v94, v28

    move-object/from16 v96, p13

    move/from16 v97, p12

    move-object/from16 v99, p4

    invoke-direct/range {v70 .. v99}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 1110
    :cond_48
    move/from16 v28, v139

    .line 1112
    move/from16 v0, v139

    move/from16 v1, p3

    if-ne v0, v1, :cond_4d

    .line 1116
    .end local v8           #i:I
    .end local v14           #here:I
    .end local v15           #ok:I
    .end local v16           #okascent:I
    .end local v17           #okdescent:I
    .end local v18           #oktop:I
    .end local v19           #okbottom:I
    .end local v23           #chooseht:[Landroid/text/style/LineHeightSpan;
    .end local v26           #tab:Z
    .end local v30           #dir:I
    .end local v31           #easy:Z
    .end local v40           #okwidth:F
    .end local v44           #fit:I
    .end local v45           #fitascent:I
    .end local v46           #fitdescent:I
    .end local v47           #fittop:I
    .end local v48           #fitbottom:I
    .end local v69           #fitwidth:F
    .end local v98           #w:F
    .end local v131           #altered:Z
    .end local v141           #firstWidthLineCount:I
    .end local v142           #firstwidth:I
    .end local v149           #n:I
    .end local v151           #restwidth:I
    .end local v154           #sub:Ljava/lang/CharSequence;
    .end local v157           #width:I
    :cond_49
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_4a

    const/4 v5, 0x1

    sub-int v5, p3, v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4b

    .line 1119
    :cond_4a
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1121
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v103, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v104, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v105, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v106, v0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v113, 0x0

    const/16 v118, 0x1

    const/16 v119, 0x1

    const/16 v124, 0x0

    const/16 v127, 0x0

    move-object/from16 v99, p0

    move-object/from16 v100, p1

    move/from16 v101, p3

    move/from16 v102, p3

    move/from16 v107, v20

    move/from16 v108, p7

    move/from16 v109, p8

    move-object/from16 v112, v11

    move/from16 v114, v27

    move/from16 v115, p3

    move-object/from16 v116, v29

    move/from16 v120, p9

    move/from16 v121, p10

    move-object/from16 v122, v10

    move/from16 v123, p2

    move-object/from16 v125, p13

    move/from16 v126, p12

    move-object/from16 v128, p4

    invoke-direct/range {v99 .. v128}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 1132
    :cond_4b
    return-void

    .line 1098
    .restart local v8       #i:I
    .restart local v14       #here:I
    .restart local v15       #ok:I
    .restart local v16       #okascent:I
    .restart local v17       #okdescent:I
    .restart local v18       #oktop:I
    .restart local v19       #okbottom:I
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    .restart local v26       #tab:Z
    .restart local v30       #dir:I
    .restart local v31       #easy:Z
    .restart local v40       #okwidth:F
    .restart local v44       #fit:I
    .restart local v45       #fitascent:I
    .restart local v46       #fitdescent:I
    .restart local v47       #fittop:I
    .restart local v48       #fitbottom:I
    .restart local v69       #fitwidth:F
    .restart local v98       #w:F
    .restart local v131       #altered:Z
    .restart local v141       #firstWidthLineCount:I
    .restart local v142       #firstwidth:I
    .restart local v149       #n:I
    .restart local v151       #restwidth:I
    .restart local v154       #sub:Ljava/lang/CharSequence;
    .restart local v157       #width:I
    :cond_4c
    const/4 v5, 0x0

    move/from16 v90, v5

    goto/16 :goto_1f

    .line 662
    :cond_4d
    move/from16 v28, v139

    goto/16 :goto_2
.end method

.method private static getFit(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IIF)I
    .locals 10
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "wid"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1819
    add-int/lit8 v8, p4, 0x1

    .local v8, high:I
    sub-int v9, p3, v6

    .line 1821
    .local v9, low:I
    :goto_0
    sub-int v0, v8, v9

    if-le v0, v6, :cond_1

    .line 1822
    add-int v0, v8, v9

    div-int/lit8 v4, v0, 0x2

    .local v4, guess:I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v5

    .line 1824
    invoke-static/range {v0 .. v7}, Landroid/text/StaticLayout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v0

    cmpl-float v0, v0, p5

    if-lez v0, :cond_0

    .line 1826
    move v8, v4

    goto :goto_0

    .line 1828
    :cond_0
    move v9, v4

    goto :goto_0

    .line 1831
    .end local v4           #guess:I
    :cond_1
    if-ge v9, p3, :cond_2

    move v0, p3

    .line 1834
    :goto_1
    return v0

    :cond_2
    move v0, v9

    goto :goto_1
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1722
    const/16 v0, 0x2e80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2fff

    if-gt p0, v0, :cond_0

    move v0, v1

    .line 1799
    :goto_0
    return v0

    .line 1725
    :cond_0
    const/16 v0, 0x3000

    if-ne p0, v0, :cond_1

    move v0, v1

    .line 1726
    goto :goto_0

    .line 1728
    :cond_1
    const/16 v0, 0x3040

    if-lt p0, v0, :cond_3

    const/16 v0, 0x309f

    if-gt p0, v0, :cond_3

    .line 1729
    if-nez p1, :cond_2

    .line 1730
    sparse-switch p0, :sswitch_data_0

    :cond_2
    move v0, v1

    .line 1750
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 1747
    goto :goto_0

    .line 1752
    :cond_3
    const/16 v0, 0x30a0

    if-lt p0, v0, :cond_5

    const/16 v0, 0x30ff

    if-gt p0, v0, :cond_5

    .line 1753
    if-nez p1, :cond_4

    .line 1754
    sparse-switch p0, :sswitch_data_1

    :cond_4
    move v0, v1

    .line 1775
    goto :goto_0

    :sswitch_1
    move v0, v2

    .line 1772
    goto :goto_0

    .line 1777
    :cond_5
    const/16 v0, 0x3400

    if-lt p0, v0, :cond_6

    const/16 v0, 0x4db5

    if-gt p0, v0, :cond_6

    move v0, v1

    .line 1778
    goto :goto_0

    .line 1780
    :cond_6
    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_7

    const v0, 0x9fbb

    if-gt p0, v0, :cond_7

    move v0, v1

    .line 1781
    goto :goto_0

    .line 1783
    :cond_7
    const v0, 0xf900

    if-lt p0, v0, :cond_8

    const v0, 0xfad9

    if-gt p0, v0, :cond_8

    move v0, v1

    .line 1784
    goto :goto_0

    .line 1786
    :cond_8
    const v0, 0xa000

    if-lt p0, v0, :cond_9

    const v0, 0xa48f

    if-gt p0, v0, :cond_9

    move v0, v1

    .line 1787
    goto :goto_0

    .line 1789
    :cond_9
    const v0, 0xa490

    if-lt p0, v0, :cond_a

    const v0, 0xa4cf

    if-gt p0, v0, :cond_a

    move v0, v1

    .line 1790
    goto :goto_0

    .line 1792
    :cond_a
    const v0, 0xfe62

    if-lt p0, v0, :cond_b

    const v0, 0xfe66

    if-gt p0, v0, :cond_b

    move v0, v1

    .line 1793
    goto :goto_0

    .line 1795
    :cond_b
    const v0, 0xff10

    if-lt p0, v0, :cond_c

    const v0, 0xff19

    if-gt p0, v0, :cond_c

    move v0, v1

    .line 1796
    goto :goto_0

    :cond_c
    move v0, v2

    .line 1799
    goto :goto_0

    .line 1730
    nop

    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 1754
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I
    .locals 33
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "above"
    .parameter "below"
    .parameter "top"
    .parameter "bottom"
    .parameter "v"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "chooseht"
    .parameter "choosehtv"
    .parameter "fm"
    .parameter "tab"
    .parameter "needMultiply"
    .parameter "pstart"
    .parameter "chdirs"
    .parameter "dir"
    .parameter "easy"
    .parameter "last"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "widths"
    .parameter "widstart"
    .parameter "widoff"
    .parameter "ellipsize"
    .parameter "ellipsiswidth"
    .parameter "textwidth"
    .parameter "paint"

    .prologue
    .line 1848
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move v13, v0

    .line 1849
    .local v13, j:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    mul-int v31, v13, v5

    .line 1850
    .local v31, off:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v31

    add-int/lit8 v32, v5, 0x1

    .line 1851
    .local v32, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v29, v0

    .line 1855
    .local v29, lines:[I
    move-object/from16 v0, v29

    array-length v0, v0

    move v5, v0

    move/from16 v0, v32

    move v1, v5

    if-lt v0, v1, :cond_0

    .line 1856
    add-int/lit8 v5, v32, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v30

    .line 1857
    .local v30, nlen:I
    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 1858
    .local v22, grow:[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move v7, v0

    move-object/from16 v0, v29

    move v1, v5

    move-object/from16 v2, v22

    move v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1859
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 1860
    move-object/from16 v29, v22

    .line 1862
    move/from16 v0, v30

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v23, v0

    .line 1863
    .local v23, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v8, v0

    array-length v8, v8

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v23

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1865
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 1868
    .end local v22           #grow:[I
    .end local v23           #grow2:[Landroid/text/Layout$Directions;
    .end local v30           #nlen:I
    :cond_0
    if-eqz p11, :cond_3

    .line 1869
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1870
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1871
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1872
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1874
    const/16 v25, 0x0

    .local v25, i:I
    :goto_0
    move-object/from16 v0, p11

    array-length v0, v0

    move v5, v0

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_2

    .line 1875
    aget-object v5, p11, v25

    instance-of v5, v5, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v5, :cond_1

    .line 1876
    aget-object v5, p11, v25

    check-cast v5, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v9, p12, v25

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p8

    move-object/from16 v11, p13

    move-object/from16 v12, p29

    invoke-interface/range {v5 .. v12}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1874
    :goto_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 1880
    :cond_1
    aget-object v5, p11, v25

    aget v9, p12, v25

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p8

    move-object/from16 v11, p13

    invoke-interface/range {v5 .. v11}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 1884
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 1885
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 1886
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 1887
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 1890
    .end local v25           #i:I
    :cond_3
    if-nez v13, :cond_5

    .line 1891
    if-eqz p22, :cond_4

    .line 1892
    sub-int v5, p6, p4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mTopPadding:I

    .line 1895
    :cond_4
    if-eqz p21, :cond_5

    .line 1896
    move/from16 p4, p6

    .line 1899
    :cond_5
    if-eqz p20, :cond_7

    .line 1900
    if-eqz p22, :cond_6

    .line 1901
    sub-int v5, p7, p5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 1904
    :cond_6
    if-eqz p21, :cond_7

    .line 1905
    move/from16 p5, p7

    .line 1911
    :cond_7
    if-eqz p15, :cond_b

    .line 1912
    sub-int v5, p5, p4

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    sub-float v6, p9, v6

    mul-float/2addr v5, v6

    add-float v5, v5, p10

    move v0, v5

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 1913
    .local v19, ex:D
    const-wide/16 v5, 0x0

    cmpl-double v5, v19, v5

    if-ltz v5, :cond_a

    .line 1914
    const-wide/high16 v5, 0x3fe0

    add-double v5, v5, v19

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v21, v0

    .line 1922
    .end local v19           #ex:D
    .local v21, extra:I
    :goto_2
    add-int/lit8 v5, v31, 0x0

    aput p2, v29, v5

    .line 1923
    add-int/lit8 v5, v31, 0x1

    aput p8, v29, v5

    .line 1924
    add-int/lit8 v5, v31, 0x2

    add-int v6, p5, v21

    aput v6, v29, v5

    .line 1926
    sub-int v5, p5, p4

    add-int v5, v5, v21

    add-int p8, p8, v5

    .line 1927
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v31

    add-int/lit8 v5, v5, 0x0

    aput p3, v29, v5

    .line 1928
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move v5, v0

    add-int v5, v5, v31

    add-int/lit8 v5, v5, 0x1

    aput p8, v29, v5

    .line 1930
    if-eqz p14, :cond_8

    .line 1931
    add-int/lit8 v5, v31, 0x0

    aget v6, v29, v5

    const/high16 v7, 0x2000

    or-int/2addr v6, v7

    aput v6, v29, v5

    .line 1934
    :cond_8
    add-int/lit8 v5, v31, 0x0

    aget v6, v29, v5

    shl-int/lit8 v7, p18, 0x1e

    or-int/2addr v6, v7

    aput v6, v29, v5

    .line 1936
    const/16 v18, 0x0

    .line 1937
    .local v18, cur:I
    const/16 v16, 0x0

    .line 1939
    .local v16, count:I
    if-nez p19, :cond_c

    .line 1940
    move/from16 v26, p2

    .local v26, k:I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, p3

    if-ge v0, v1, :cond_c

    .line 1941
    sub-int v5, v26, p16

    aget-byte v5, p17, v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 1942
    add-int/lit8 v16, v16, 0x1

    .line 1943
    sub-int v5, v26, p16

    aget-byte v18, p17, v5

    .line 1940
    :cond_9
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 1916
    .end local v16           #count:I
    .end local v18           #cur:I
    .end local v21           #extra:I
    .end local v26           #k:I
    .restart local v19       #ex:D
    :cond_a
    move-wide/from16 v0, v19

    neg-double v0, v0

    move-wide v5, v0

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v5, v5

    move v0, v5

    neg-int v0, v0

    move/from16 v21, v0

    .restart local v21       #extra:I
    goto :goto_2

    .line 1919
    .end local v19           #ex:D
    .end local v21           #extra:I
    :cond_b
    const/16 v21, 0x0

    .restart local v21       #extra:I
    goto :goto_2

    .line 1950
    .restart local v16       #count:I
    .restart local v18       #cur:I
    :cond_c
    if-nez v16, :cond_f

    .line 1951
    sget-object v28, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1978
    .local v28, linedirs:Landroid/text/Layout$Directions;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object v5, v0

    aput-object v28, v5, v13

    .line 1981
    if-eqz p26, :cond_e

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p26

    move-object v1, v5

    if-ne v0, v1, :cond_d

    if-eqz v13, :cond_e

    :cond_d
    move-object/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p23

    move/from16 v9, p24

    move/from16 v10, p25

    move/from16 v11, p27

    move-object/from16 v12, p26

    move/from16 v14, p28

    move-object/from16 v15, p29

    .line 1982
    invoke-direct/range {v5 .. v15}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;)V

    .line 1988
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 1989
    return p8

    .line 1953
    .end local v28           #linedirs:Landroid/text/Layout$Directions;
    :cond_f
    add-int/lit8 v5, v16, 0x1

    move v0, v5

    new-array v0, v0, [S

    move-object/from16 v27, v0

    .line 1955
    .local v27, ld:[S
    const/16 v18, 0x0

    .line 1956
    const/16 v16, 0x0

    .line 1957
    move/from16 v24, p2

    .line 1959
    .local v24, here:I
    move/from16 v26, p2

    .restart local v26       #k:I
    move/from16 v17, v16

    .end local v16           #count:I
    .local v17, count:I
    :goto_5
    move/from16 v0, v26

    move/from16 v1, p3

    if-ge v0, v1, :cond_10

    .line 1960
    sub-int v5, v26, p16

    aget-byte v5, p17, v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 1963
    add-int/lit8 v16, v17, 0x1

    .end local v17           #count:I
    .restart local v16       #count:I
    sub-int v5, v26, v24

    int-to-short v5, v5

    aput-short v5, v27, v17

    .line 1964
    sub-int v5, v26, p16

    aget-byte v18, p17, v5

    .line 1965
    move/from16 v24, v26

    .line 1959
    :goto_6
    add-int/lit8 v26, v26, 0x1

    move/from16 v17, v16

    .end local v16           #count:I
    .restart local v17       #count:I
    goto :goto_5

    .line 1969
    :cond_10
    sub-int v5, p3, v24

    int-to-short v5, v5

    aput-short v5, v27, v17

    .line 1971
    const/4 v5, 0x1

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_11

    const/4 v5, 0x0

    aget-short v5, v27, v5

    if-nez v5, :cond_11

    .line 1972
    sget-object v28, Landroid/text/StaticLayout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .restart local v28       #linedirs:Landroid/text/Layout$Directions;
    move/from16 v16, v17

    .end local v17           #count:I
    .restart local v16       #count:I
    goto :goto_4

    .line 1974
    .end local v16           #count:I
    .end local v28           #linedirs:Landroid/text/Layout$Directions;
    .restart local v17       #count:I
    :cond_11
    new-instance v28, Landroid/text/Layout$Directions;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    .restart local v28       #linedirs:Landroid/text/Layout$Directions;
    move/from16 v16, v17

    .end local v17           #count:I
    .restart local v16       #count:I
    goto/16 :goto_4

    .end local v16           #count:I
    .end local v28           #linedirs:Landroid/text/Layout$Directions;
    .restart local v17       #count:I
    :cond_12
    move/from16 v16, v17

    .end local v17           #count:I
    .restart local v16       #count:I
    goto :goto_6
.end method

.method private static reverseArabicWidths(Ljava/lang/CharSequence;II[FLandroid/text/TextPaint;)V
    .locals 11
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "widths"
    .parameter "paint"

    .prologue
    .line 2102
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2104
    .local v0, chs:[C
    sub-int v4, p2, p1

    .line 2111
    .local v4, iRealChars:I
    array-length p0, p3

    if-ge p1, p0, :cond_1

    move p0, p1

    :goto_0
    array-length v1, p3

    if-ge p2, v1, :cond_2

    move v1, p2

    :goto_1
    const/4 v2, 0x0

    invoke-static {p3, p0, v1, v2}, Ljava/util/Arrays;->fill([FIIF)V

    .line 2113
    const/4 v3, 0x0

    .line 2114
    .local v3, startOfSpan:I
    const/4 v1, 0x0

    .line 2120
    .local v1, endOfSpan:I
    new-array v7, v4, [F

    .line 2121
    .local v7, tempWidths:[F
    const/4 p0, 0x0

    .line 2122
    .local p0, bArSpan:Z
    move v2, p1

    .local v2, i:I
    :goto_2
    add-int p0, p1, v4

    if-ge v2, p0, :cond_0

    .line 2123
    .end local p0           #bArSpan:Z
    array-length p0, v0

    if-lt v2, p0, :cond_3

    .line 2191
    :cond_0
    return-void

    .line 2111
    .end local v1           #endOfSpan:I
    .end local v2           #i:I
    .end local v3           #startOfSpan:I
    .end local v7           #tempWidths:[F
    :cond_1
    array-length p0, p3

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    goto :goto_0

    :cond_2
    array-length v1, p3

    goto :goto_1

    .line 2125
    .restart local v1       #endOfSpan:I
    .restart local v2       #i:I
    .restart local v3       #startOfSpan:I
    .restart local v7       #tempWidths:[F
    :cond_3
    const/4 v3, 0x0

    .line 2126
    const/4 v1, 0x0

    .line 2127
    const/4 p0, 0x0

    .line 2132
    .restart local p0       #bArSpan:Z
    aget-char v5, v0, v2

    const/16 v6, 0x590

    if-lt v5, v6, :cond_8

    aget-char v5, v0, v2

    const/16 v6, 0x6ff

    if-gt v5, v6, :cond_8

    .line 2133
    const/4 p0, 0x1

    .line 2134
    move v1, v2

    move v3, v2

    move v1, v2

    .line 2136
    .end local v2           #i:I
    .local v1, i:I
    :goto_3
    add-int/lit8 v2, v1, 0x1

    .line 2137
    .end local v1           #i:I
    .restart local v2       #i:I
    array-length v1, v0

    if-ge v2, v1, :cond_5

    if-ge v2, p2, :cond_5

    aget-char v1, v0, v2

    const/16 v5, 0x590

    if-lt v1, v5, :cond_4

    aget-char v1, v0, v2

    const/16 v5, 0x6ff

    if-le v1, v5, :cond_10

    :cond_4
    aget-char v1, v0, v2

    const/16 v5, 0x20

    if-eq v1, v5, :cond_10

    .line 2138
    :cond_5
    const/4 v1, 0x1

    sub-int v1, v2, v1

    .local v1, endOfSpan:I
    move v6, v3

    .line 2146
    .end local v3           #startOfSpan:I
    .local v6, startOfSpan:I
    :goto_4
    add-int/lit8 v2, v2, -0x1

    .line 2152
    add-int/lit8 v3, v1, 0x1

    sub-int v5, v3, v6

    .line 2153
    .local v5, iSpanCharsCount:I
    invoke-virtual {p4, v0, v6, v5, v7}, Landroid/text/TextPaint;->getTextWidths([CII[F)I

    move-result v3

    .line 2157
    .local v3, iCharCount:I
    if-ge v3, v5, :cond_c

    if-eqz p0, :cond_c

    .line 2158
    move v3, v6

    .local v3, k:I
    :goto_5
    if-ge v3, v5, :cond_b

    array-length v8, v0

    if-ge v3, v8, :cond_b

    .line 2159
    aget-char v8, v0, v3

    const/16 v9, 0x644

    if-ne v8, v9, :cond_7

    .line 2160
    add-int/lit8 v8, v3, 0x1

    if-ge v8, v5, :cond_7

    add-int/lit8 v8, v3, 0x1

    array-length v9, v0

    if-ge v8, v9, :cond_7

    .line 2161
    add-int/lit8 v8, v3, 0x1

    aget-char v8, v0, v8

    const/16 v9, 0x627

    if-eq v8, v9, :cond_6

    add-int/lit8 v8, v3, 0x1

    aget-char v8, v0, v8

    const/16 v9, 0x622

    if-eq v8, v9, :cond_6

    add-int/lit8 v8, v3, 0x1

    aget-char v8, v0, v8

    const/16 v9, 0x623

    if-eq v8, v9, :cond_6

    add-int/lit8 v8, v3, 0x1

    aget-char v8, v0, v8

    const/16 v9, 0x625

    if-ne v8, v9, :cond_7

    .line 2162
    :cond_6
    const/16 v8, 0x648

    aput-char v8, v0, v3

    .line 2163
    add-int/lit8 v8, v3, 0x1

    const/16 v9, 0x200b

    aput-char v9, v0, v8

    .line 2158
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2139
    .end local v5           #iSpanCharsCount:I
    .end local v6           #startOfSpan:I
    .local v3, startOfSpan:I
    :cond_8
    aget-char v5, v0, v2

    const/16 v6, 0x590

    if-lt v5, v6, :cond_9

    aget-char v5, v0, v2

    const/16 v6, 0x6ff

    if-le v5, v6, :cond_f

    .line 2140
    :cond_9
    move v1, v2

    move v3, v2

    move v1, v2

    .line 2142
    .end local v2           #i:I
    .local v1, i:I
    :goto_6
    add-int/lit8 v2, v1, 0x1

    .line 2143
    .end local v1           #i:I
    .restart local v2       #i:I
    array-length v1, v0

    if-ge v2, v1, :cond_a

    if-ge v2, p2, :cond_a

    aget-char v1, v0, v2

    const/16 v5, 0x590

    if-lt v1, v5, :cond_e

    aget-char v1, v0, v2

    const/16 v5, 0x6ff

    if-gt v1, v5, :cond_e

    .line 2144
    :cond_a
    const/4 v1, 0x1

    sub-int v1, v2, v1

    .local v1, endOfSpan:I
    move v6, v3

    .end local v3           #startOfSpan:I
    .restart local v6       #startOfSpan:I
    goto :goto_4

    .line 2169
    .local v3, k:I
    .restart local v5       #iSpanCharsCount:I
    :cond_b
    invoke-virtual {p4, v0, v6, v5, v7}, Landroid/text/TextPaint;->getTextWidths([CII[F)I

    move-result v3

    .line 2175
    .local v3, iCharCount:I
    :cond_c
    if-eqz p0, :cond_d

    .line 2177
    const/4 v5, 0x0

    .local v5, idx:I
    :goto_7
    div-int/lit8 v8, v3, 0x2

    if-ge v5, v8, :cond_d

    .line 2179
    aget v8, v7, v5

    .line 2180
    .local v8, tmp:F
    sub-int v9, v3, v5

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget v9, v7, v9

    aput v9, v7, v5

    .line 2181
    sub-int v9, v3, v5

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aput v8, v7, v9

    .line 2177
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 2188
    .end local v5           #idx:I
    .end local v8           #tmp:F
    :cond_d
    const/4 v5, 0x0

    sub-int v8, v6, p1

    invoke-static {v7, v5, p3, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2122
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    .end local v6           #startOfSpan:I
    .local v3, startOfSpan:I
    goto/16 :goto_2

    .end local v1           #endOfSpan:I
    :cond_e
    move v1, v2

    .end local v2           #i:I
    .local v1, i:I
    goto :goto_6

    .local v1, endOfSpan:I
    .restart local v2       #i:I
    :cond_f
    move v6, v3

    .end local v3           #startOfSpan:I
    .restart local v6       #startOfSpan:I
    goto/16 :goto_4

    .end local v1           #endOfSpan:I
    .end local v6           #startOfSpan:I
    .restart local v3       #startOfSpan:I
    :cond_10
    move v1, v2

    .end local v2           #i:I
    .local v1, i:I
    goto/16 :goto_3
.end method


# virtual methods
.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 160
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "breakOnlyAtSpaces"
    .parameter "ellipsizedWidth"
    .parameter "where"

    .prologue
    .line 130
    sget-boolean v5, Landroid/text/StaticLayout;->isBidiEnabled:Z

    if-eqz v5, :cond_1

    .line 131
    invoke-direct/range {p0 .. p13}, Landroid/text/StaticLayout;->generate_CIT(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 140
    const/16 v20, 0x0

    .line 141
    .local v20, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_6

    :cond_2
    const/4 v5, 0x1

    move/from16 v27, v5

    .line 143
    .local v27, needMultiply:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object v11, v0

    .line 144
    .local v11, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v24, 0x0

    .line 146
    .local v24, choosehtv:[I
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v139

    .line 147
    .local v139, end:I
    if-ltz v139, :cond_7

    sub-int v5, v139, p2

    move/from16 v135, v5

    .line 148
    .local v135, bufsiz:I
    :goto_2
    const/16 v140, 0x1

    .line 150
    .local v140, first:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChdirs:[B

    move-object v5, v0

    if-nez v5, :cond_3

    .line 151
    add-int/lit8 v5, v135, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v5

    new-array v5, v5, [B

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 152
    add-int/lit8 v5, v135, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    new-array v5, v5, [C

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 153
    add-int/lit8 v5, v135, 0x1

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v5, v5, [F

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 156
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChdirs:[B

    move-object/from16 v29, v0

    .line 157
    .local v29, chdirs:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mChs:[C

    move-object/from16 v137, v0

    .line 158
    .local v137, chs:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWidths:[F

    move-object v10, v0

    .line 160
    .local v10, widths:[F
    const/16 v130, 0x0

    .line 161
    .local v130, alter:Landroid/text/AlteredCharSequence;
    const/4 v7, 0x0

    .line 163
    .local v7, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_4

    .line 164
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    .line 166
    :cond_4
    const/16 v117, 0x1

    .line 168
    .local v117, DEFAULT_DIR:I
    move/from16 v28, p2

    .local v28, start:I
    :goto_3
    move/from16 v0, v28

    move/from16 v1, p3

    if-gt v0, v1, :cond_47

    .line 169
    if-eqz v140, :cond_8

    .line 170
    const/16 v140, 0x0

    .line 174
    :goto_4
    if-gez v139, :cond_9

    .line 175
    move/from16 v139, p3

    .line 179
    :goto_5
    const/16 v141, 0x1

    .line 180
    .local v141, firstWidthLineCount:I
    move/from16 v142, p5

    .line 181
    .local v142, firstwidth:I
    move/from16 v151, p5

    .line 183
    .local v151, restwidth:I
    const/16 v23, 0x0

    .line 185
    .local v23, chooseht:[Landroid/text/style/LineHeightSpan;
    if-eqz v7, :cond_e

    .line 188
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v152

    check-cast v152, [Landroid/text/style/LeadingMarginSpan;

    .line 189
    .local v152, sp:[Landroid/text/style/LeadingMarginSpan;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_6
    move-object/from16 v0, v152

    array-length v0, v0

    move v5, v0

    if-ge v8, v5, :cond_a

    .line 190
    aget-object v148, v152, v8

    .line 191
    .local v148, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v152, v8

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v142, v142, v5

    .line 192
    aget-object v5, v152, v8

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v151, v151, v5

    .line 193
    move-object/from16 v0, v148

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move v5, v0

    if-eqz v5, :cond_5

    .line 194
    check-cast v148, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .end local v148           #lms:Landroid/text/style/LeadingMarginSpan;
    invoke-interface/range {v148 .. v148}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v141

    .line 189
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 141
    .end local v7           #spanned:Landroid/text/Spanned;
    .end local v8           #i:I
    .end local v10           #widths:[F
    .end local v11           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v23           #chooseht:[Landroid/text/style/LineHeightSpan;
    .end local v24           #choosehtv:[I
    .end local v27           #needMultiply:Z
    .end local v28           #start:I
    .end local v29           #chdirs:[B
    .end local v117           #DEFAULT_DIR:I
    .end local v130           #alter:Landroid/text/AlteredCharSequence;
    .end local v135           #bufsiz:I
    .end local v137           #chs:[C
    .end local v139           #end:I
    .end local v140           #first:Z
    .end local v141           #firstWidthLineCount:I
    .end local v142           #firstwidth:I
    .end local v151           #restwidth:I
    .end local v152           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_6
    const/4 v5, 0x0

    move/from16 v27, v5

    goto/16 :goto_1

    .line 147
    .restart local v11       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v24       #choosehtv:[I
    .restart local v27       #needMultiply:Z
    .restart local v139       #end:I
    :cond_7
    sub-int v5, p3, p2

    move/from16 v135, v5

    goto/16 :goto_2

    .line 172
    .restart local v7       #spanned:Landroid/text/Spanned;
    .restart local v10       #widths:[F
    .restart local v28       #start:I
    .restart local v29       #chdirs:[B
    .restart local v117       #DEFAULT_DIR:I
    .restart local v130       #alter:Landroid/text/AlteredCharSequence;
    .restart local v135       #bufsiz:I
    .restart local v137       #chs:[C
    .restart local v140       #first:Z
    :cond_8
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, v28

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v139

    goto :goto_4

    .line 177
    :cond_9
    add-int/lit8 v139, v139, 0x1

    goto :goto_5

    .line 198
    .restart local v8       #i:I
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    .restart local v141       #firstWidthLineCount:I
    .restart local v142       #firstwidth:I
    .restart local v151       #restwidth:I
    .restart local v152       #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_a
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    .end local v23           #chooseht:[Landroid/text/style/LineHeightSpan;
    check-cast v23, [Landroid/text/style/LineHeightSpan;

    .line 200
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    if-eqz v5, :cond_e

    .line 201
    if-eqz v24, :cond_b

    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move v6, v0

    if-ge v5, v6, :cond_c

    .line 203
    :cond_b
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 207
    :cond_c
    const/4 v8, 0x0

    :goto_7
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    if-ge v8, v5, :cond_e

    .line 208
    aget-object v5, v23, v8

    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v150

    .line 210
    .local v150, o:I
    move/from16 v0, v150

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    .line 214
    move-object/from16 v0, p0

    move/from16 v1, v150

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v24, v8

    .line 207
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 218
    :cond_d
    aput v20, v24, v8

    goto :goto_8

    .line 224
    .end local v8           #i:I
    .end local v150           #o:I
    .end local v152           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_e
    sub-int v5, v139, v28

    move-object/from16 v0, v29

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_f

    .line 225
    sub-int v5, v139, v28

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 226
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChdirs:[B

    .line 228
    :cond_f
    sub-int v5, v139, v28

    move-object/from16 v0, v137

    array-length v0, v0

    move v6, v0

    if-le v5, v6, :cond_10

    .line 229
    sub-int v5, v139, v28

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v5

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v137, v0

    .line 230
    move-object/from16 v0, v137

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mChs:[C

    .line 232
    :cond_10
    sub-int v5, v139, v28

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v10

    if-le v5, v6, :cond_11

    .line 233
    sub-int v5, v139, v28

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v10, v5, [F

    .line 234
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mWidths:[F

    .line 237
    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v139

    move-object/from16 v3, v137

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 238
    sub-int v149, v139, v28

    .line 240
    .local v149, n:I
    const/16 v31, 0x1

    .line 241
    .local v31, easy:Z
    const/16 v131, 0x0

    .line 242
    .local v131, altered:Z
    move/from16 v30, v117

    .line 244
    .local v30, dir:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_9
    move v0, v8

    move/from16 v1, v149

    if-ge v0, v1, :cond_12

    .line 245
    aget-char v5, v137, v8

    const/16 v6, 0x590

    if-lt v5, v6, :cond_13

    .line 246
    const/16 v31, 0x0

    .line 255
    :cond_12
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_15

    .line 256
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v152, v0

    .line 257
    .local v152, sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v152

    move/from16 v1, v28

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v153

    check-cast v153, [Landroid/text/style/ReplacementSpan;

    .line 259
    .local v153, spans:[Landroid/text/style/ReplacementSpan;
    const/16 v159, 0x0

    .local v159, y:I
    :goto_a
    move-object/from16 v0, v153

    array-length v0, v0

    move v5, v0

    move/from16 v0, v159

    move v1, v5

    if-ge v0, v1, :cond_15

    .line 260
    aget-object v5, v153, v159

    move-object/from16 v0, v152

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v129

    .line 261
    .local v129, a:I
    aget-object v5, v153, v159

    move-object/from16 v0, v152

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v132

    .line 263
    .local v132, b:I
    move/from16 v158, v129

    .local v158, x:I
    :goto_b
    move/from16 v0, v158

    move/from16 v1, v132

    if-ge v0, v1, :cond_14

    .line 264
    sub-int v5, v158, v28

    const v6, 0xfffc

    aput-char v6, v137, v5

    .line 263
    add-int/lit8 v158, v158, 0x1

    goto :goto_b

    .line 244
    .end local v129           #a:I
    .end local v132           #b:I
    .end local v152           #sp:Landroid/text/Spanned;
    .end local v153           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v158           #x:I
    .end local v159           #y:I
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 259
    .restart local v129       #a:I
    .restart local v132       #b:I
    .restart local v152       #sp:Landroid/text/Spanned;
    .restart local v153       #spans:[Landroid/text/style/ReplacementSpan;
    .restart local v158       #x:I
    .restart local v159       #y:I
    :cond_14
    add-int/lit8 v159, v159, 0x1

    goto :goto_a

    .line 269
    .end local v129           #a:I
    .end local v132           #b:I
    .end local v152           #sp:Landroid/text/Spanned;
    .end local v153           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v158           #x:I
    .end local v159           #y:I
    :cond_15
    if-nez v31, :cond_1a

    .line 271
    const/4 v5, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v137

    move-object/from16 v2, v29

    move/from16 v3, v149

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout;->bidi(I[C[BIZ)I

    move-result v30

    .line 275
    const/4 v8, 0x0

    :goto_c
    move v0, v8

    move/from16 v1, v149

    if-ge v0, v1, :cond_1a

    .line 276
    aget-byte v5, v29, v8

    const/4 v6, 0x1

    if-ne v5, v6, :cond_18

    .line 279
    move/from16 v147, v8

    .local v147, j:I
    :goto_d
    move/from16 v0, v147

    move/from16 v1, v149

    if-ge v0, v1, :cond_16

    .line 280
    aget-byte v5, v29, v147

    const/4 v6, 0x1

    if-eq v5, v6, :cond_19

    .line 285
    :cond_16
    sub-int v5, v147, v8

    move-object/from16 v0, v137

    move v1, v8

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/text/AndroidCharacter;->mirror([CII)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 286
    const/16 v131, 0x1

    .line 288
    :cond_17
    const/4 v5, 0x1

    sub-int v8, v147, v5

    .line 275
    .end local v147           #j:I
    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 279
    .restart local v147       #j:I
    :cond_19
    add-int/lit8 v147, v147, 0x1

    goto :goto_d

    .line 295
    .end local v147           #j:I
    :cond_1a
    if-eqz v131, :cond_2a

    .line 296
    if-nez v130, :cond_29

    .line 297
    move-object/from16 v0, p1

    move-object/from16 v1, v137

    move/from16 v2, v28

    move/from16 v3, v139

    invoke-static {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;

    move-result-object v130

    .line 301
    :goto_e
    move-object/from16 v154, v130

    .line 306
    .local v154, sub:Ljava/lang/CharSequence;
    :goto_f
    move/from16 v157, v142

    .line 308
    .local v157, width:I
    const/16 v98, 0x0

    .line 309
    .local v98, w:F
    move/from16 v14, v28

    .line 311
    .local v14, here:I
    move/from16 v15, v28

    .line 312
    .local v15, ok:I
    move/from16 v40, v98

    .line 313
    .local v40, okwidth:F
    const/16 v16, 0x0

    .local v16, okascent:I
    const/16 v17, 0x0

    .local v17, okdescent:I
    const/16 v18, 0x0

    .local v18, oktop:I
    const/16 v19, 0x0

    .line 315
    .local v19, okbottom:I
    move/from16 v44, v28

    .line 316
    .local v44, fit:I
    move/from16 v69, v98

    .line 317
    .local v69, fitwidth:F
    const/16 v45, 0x0

    .local v45, fitascent:I
    const/16 v46, 0x0

    .local v46, fitdescent:I
    const/16 v47, 0x0

    .local v47, fittop:I
    const/16 v48, 0x0

    .line 319
    .local v48, fitbottom:I
    const/16 v26, 0x0

    .line 322
    .local v26, tab:Z
    move/from16 v8, v28

    :goto_10
    move v0, v8

    move/from16 v1, v139

    if-ge v0, v1, :cond_44

    .line 323
    if-nez v7, :cond_2b

    .line 324
    move/from16 v9, v139

    .line 330
    .local v9, next:I
    :goto_11
    if-nez v7, :cond_2c

    .line 331
    move-object/from16 v0, p4

    move-object/from16 v1, v154

    move v2, v8

    move v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 332
    const/4 v5, 0x0

    sub-int v6, v139, v28

    sub-int v12, v8, v28

    add-int/2addr v6, v12

    sub-int v12, v9, v8

    invoke-static {v10, v5, v10, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 354
    :goto_12
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v146, v0

    .line 355
    .local v146, fmtop:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v144, v0

    .line 356
    .local v144, fmbottom:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v143, v0

    .line 357
    .local v143, fmascent:I
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v145, v0

    .line 369
    .local v145, fmdescent:I
    move/from16 v147, v8

    .restart local v147       #j:I
    :goto_13
    move/from16 v0, v147

    move v1, v9

    if-ge v0, v1, :cond_43

    .line 370
    sub-int v5, v147, v28

    aget-char v136, v137, v5

    .line 371
    .local v136, c:C
    move/from16 v133, v98

    .line 373
    .local v133, before:F
    const/16 v5, 0xa

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_2e

    .line 413
    :goto_14
    move/from16 v0, v157

    int-to-float v0, v0

    move v5, v0

    cmpg-float v5, v98, v5

    if-gtz v5, :cond_34

    .line 414
    move/from16 v69, v98

    .line 415
    add-int/lit8 v44, v147, 0x1

    .line 417
    move/from16 v0, v146

    move/from16 v1, v47

    if-ge v0, v1, :cond_1b

    .line 418
    move/from16 v47, v146

    .line 419
    :cond_1b
    move/from16 v0, v143

    move/from16 v1, v45

    if-ge v0, v1, :cond_1c

    .line 420
    move/from16 v45, v143

    .line 421
    :cond_1c
    move/from16 v0, v145

    move/from16 v1, v46

    if-le v0, v1, :cond_1d

    .line 422
    move/from16 v46, v145

    .line 423
    :cond_1d
    move/from16 v0, v144

    move/from16 v1, v48

    if-le v0, v1, :cond_1e

    .line 424
    move/from16 v48, v144

    .line 442
    :cond_1e
    const/16 v5, 0x20

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_24

    const/16 v5, 0x9

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_24

    const/16 v5, 0x2e

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_1f

    const/16 v5, 0x2c

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_1f

    const/16 v5, 0x3a

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_1f

    const/16 v5, 0x3b

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_21

    :cond_1f
    const/4 v5, 0x1

    sub-int v5, v147, v5

    if-lt v5, v14, :cond_20

    const/4 v5, 0x1

    sub-int v5, v147, v5

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_21

    :cond_20
    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_24

    add-int/lit8 v5, v147, 0x1

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_24

    :cond_21
    const/16 v5, 0x2f

    move/from16 v0, v136

    move v1, v5

    if-eq v0, v1, :cond_22

    const/16 v5, 0x2d

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_23

    :cond_22
    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_24

    add-int/lit8 v5, v147, 0x1

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_24

    :cond_23
    const/16 v5, 0x2e80

    move/from16 v0, v136

    move v1, v5

    if-lt v0, v1, :cond_28

    const/4 v5, 0x1

    move/from16 v0, v136

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_28

    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_28

    add-int/lit8 v5, v147, 0x1

    sub-int v5, v5, v28

    aget-char v5, v137, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 450
    :cond_24
    move/from16 v40, v98

    .line 451
    add-int/lit8 v15, v147, 0x1

    .line 453
    move/from16 v0, v47

    move/from16 v1, v18

    if-ge v0, v1, :cond_25

    .line 454
    move/from16 v18, v47

    .line 455
    :cond_25
    move/from16 v0, v45

    move/from16 v1, v16

    if-ge v0, v1, :cond_26

    .line 456
    move/from16 v16, v45

    .line 457
    :cond_26
    move/from16 v0, v46

    move/from16 v1, v17

    if-le v0, v1, :cond_27

    .line 458
    move/from16 v17, v46

    .line 459
    :cond_27
    move/from16 v0, v48

    move/from16 v1, v19

    if-le v0, v1, :cond_28

    .line 460
    move/from16 v19, v48

    .line 369
    :cond_28
    :goto_15
    add-int/lit8 v147, v147, 0x1

    goto/16 :goto_13

    .line 299
    .end local v9           #next:I
    .end local v14           #here:I
    .end local v15           #ok:I
    .end local v16           #okascent:I
    .end local v17           #okdescent:I
    .end local v18           #oktop:I
    .end local v19           #okbottom:I
    .end local v26           #tab:Z
    .end local v40           #okwidth:F
    .end local v44           #fit:I
    .end local v45           #fitascent:I
    .end local v46           #fitdescent:I
    .end local v47           #fittop:I
    .end local v48           #fitbottom:I
    .end local v69           #fitwidth:F
    .end local v98           #w:F
    .end local v133           #before:F
    .end local v136           #c:C
    .end local v143           #fmascent:I
    .end local v144           #fmbottom:I
    .end local v145           #fmdescent:I
    .end local v146           #fmtop:I
    .end local v147           #j:I
    .end local v154           #sub:Ljava/lang/CharSequence;
    .end local v157           #width:I
    :cond_29
    move-object/from16 v0, v130

    move-object/from16 v1, v137

    move/from16 v2, v28

    move/from16 v3, v139

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->update([CII)V

    goto/16 :goto_e

    .line 303
    :cond_2a
    move-object/from16 v154, p1

    .restart local v154       #sub:Ljava/lang/CharSequence;
    goto/16 :goto_f

    .line 326
    .restart local v14       #here:I
    .restart local v15       #ok:I
    .restart local v16       #okascent:I
    .restart local v17       #okdescent:I
    .restart local v18       #oktop:I
    .restart local v19       #okbottom:I
    .restart local v26       #tab:Z
    .restart local v40       #okwidth:F
    .restart local v44       #fit:I
    .restart local v45       #fitascent:I
    .restart local v46       #fitdescent:I
    .restart local v47       #fittop:I
    .restart local v48       #fitbottom:I
    .restart local v69       #fitwidth:F
    .restart local v98       #w:F
    .restart local v157       #width:I
    :cond_2b
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object v0, v7

    move v1, v8

    move/from16 v2, v139

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .restart local v9       #next:I
    goto/16 :goto_11

    .line 337
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/text/TextPaint;->baselineShift:I

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    move-object/from16 v5, p4

    invoke-static/range {v5 .. v11}, Landroid/text/Styled;->getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I

    .line 342
    const/4 v5, 0x0

    sub-int v6, v139, v28

    sub-int v12, v8, v28

    add-int/2addr v6, v12

    sub-int v12, v9, v8

    invoke-static {v10, v5, v10, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    iget v5, v5, Landroid/text/TextPaint;->baselineShift:I

    if-gez v5, :cond_2d

    .line 346
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 347
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto/16 :goto_12

    .line 349
    :cond_2d
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 350
    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto/16 :goto_12

    .line 375
    .restart local v133       #before:F
    .restart local v136       #c:C
    .restart local v143       #fmascent:I
    .restart local v144       #fmbottom:I
    .restart local v145       #fmdescent:I
    .restart local v146       #fmtop:I
    .restart local v147       #j:I
    :cond_2e
    const/16 v5, 0x9

    move/from16 v0, v136

    move v1, v5

    if-ne v0, v1, :cond_2f

    .line 376
    const/4 v5, 0x0

    move-object/from16 v0, v154

    move/from16 v1, v28

    move/from16 v2, v139

    move/from16 v3, v98

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v98

    .line 377
    const/16 v26, 0x1

    goto/16 :goto_14

    .line 378
    :cond_2f
    const v5, 0xd800

    move/from16 v0, v136

    move v1, v5

    if-lt v0, v1, :cond_33

    const v5, 0xdfff

    move/from16 v0, v136

    move v1, v5

    if-gt v0, v1, :cond_33

    add-int/lit8 v5, v147, 0x1

    if-ge v5, v9, :cond_33

    .line 379
    sub-int v5, v147, v28

    move-object/from16 v0, v137

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v138

    .line 381
    .local v138, emoji:I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v138

    move v1, v5

    if-lt v0, v1, :cond_32

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v138

    move v1, v5

    if-gt v0, v1, :cond_32

    .line 382
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move-object v0, v5

    move/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v134

    .line 385
    .local v134, bm:Landroid/graphics/Bitmap;
    if-eqz v134, :cond_31

    .line 388
    if-nez v7, :cond_30

    .line 389
    move-object/from16 v155, p4

    .line 394
    .local v155, whichPaint:Landroid/graphics/Paint;
    :goto_16
    invoke-virtual/range {v134 .. v134}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v155 .. v155}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v134 .. v134}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v156, v5, v6

    .line 398
    .local v156, wid:F
    add-float v98, v98, v156

    .line 399
    const/16 v26, 0x1

    .line 400
    add-int/lit8 v147, v147, 0x1

    .line 401
    goto/16 :goto_14

    .line 391
    .end local v155           #whichPaint:Landroid/graphics/Paint;
    .end local v156           #wid:F
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v155, v0

    .restart local v155       #whichPaint:Landroid/graphics/Paint;
    goto :goto_16

    .line 402
    .end local v155           #whichPaint:Landroid/graphics/Paint;
    :cond_31
    sub-int v5, v147, v28

    sub-int v6, v139, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_14

    .line 405
    .end local v134           #bm:Landroid/graphics/Bitmap;
    :cond_32
    sub-int v5, v147, v28

    sub-int v6, v139, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_14

    .line 408
    .end local v138           #emoji:I
    :cond_33
    sub-int v5, v147, v28

    sub-int v6, v139, v28

    add-int/2addr v5, v6

    aget v5, v10, v5

    add-float v98, v98, v5

    goto/16 :goto_14

    .line 462
    :cond_34
    if-eqz p11, :cond_3b

    .line 463
    if-eq v15, v14, :cond_37

    .line 466
    :goto_17
    if-ge v15, v9, :cond_35

    sub-int v5, v15, v28

    aget-char v5, v137, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_35

    .line 467
    add-int/lit8 v15, v15, 0x1

    goto :goto_17

    .line 470
    :cond_35
    move v0, v15

    move/from16 v1, p3

    if-ne v0, v1, :cond_36

    const/4 v5, 0x1

    move/from16 v32, v5

    :goto_18
    sub-int v37, v139, v28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v25, v11

    move/from16 v33, p9

    move/from16 v34, p10

    move-object/from16 v35, v10

    move/from16 v36, v28

    move-object/from16 v38, p13

    move/from16 v39, p12

    move-object/from16 v41, p4

    invoke-direct/range {v12 .. v41}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 482
    move v14, v15

    goto/16 :goto_15

    .line 470
    :cond_36
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_18

    .line 486
    :cond_37
    move/from16 v69, v98

    .line 487
    add-int/lit8 v44, v147, 0x1

    .line 489
    move/from16 v0, v146

    move/from16 v1, v47

    if-ge v0, v1, :cond_38

    .line 490
    move/from16 v47, v146

    .line 491
    :cond_38
    move/from16 v0, v143

    move/from16 v1, v45

    if-ge v0, v1, :cond_39

    .line 492
    move/from16 v45, v143

    .line 493
    :cond_39
    move/from16 v0, v145

    move/from16 v1, v46

    if-le v0, v1, :cond_3a

    .line 494
    move/from16 v46, v145

    .line 495
    :cond_3a
    move/from16 v0, v144

    move/from16 v1, v48

    if-le v0, v1, :cond_28

    .line 496
    move/from16 v48, v144

    goto/16 :goto_15

    .line 499
    :cond_3b
    if-eq v15, v14, :cond_3e

    .line 502
    :goto_19
    if-ge v15, v9, :cond_3c

    sub-int v5, v15, v28

    aget-char v5, v137, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_3c

    .line 503
    add-int/lit8 v15, v15, 0x1

    goto :goto_19

    .line 506
    :cond_3c
    move v0, v15

    move/from16 v1, p3

    if-ne v0, v1, :cond_3d

    const/4 v5, 0x1

    move/from16 v32, v5

    :goto_1a
    sub-int v37, v139, v28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v25, v11

    move/from16 v33, p9

    move/from16 v34, p10

    move-object/from16 v35, v10

    move/from16 v36, v28

    move-object/from16 v38, p13

    move/from16 v39, p12

    move-object/from16 v41, p4

    invoke-direct/range {v12 .. v41}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 518
    move v14, v15

    .line 558
    .end local v98           #w:F
    :goto_1b
    if-ge v14, v8, :cond_42

    .line 559
    move v9, v14

    move/from16 v147, v14

    .line 564
    :goto_1c
    move/from16 v44, v14

    move v15, v14

    .line 565
    const/16 v98, 0x0

    .line 566
    .restart local v98       #w:F
    const/16 v48, 0x0

    move/from16 v47, v48

    move/from16 v46, v48

    move/from16 v45, v48

    .line 567
    const/16 v19, 0x0

    move/from16 v18, v19

    move/from16 v17, v19

    move/from16 v16, v19

    .line 569
    add-int/lit8 v141, v141, -0x1

    if-gtz v141, :cond_28

    .line 570
    move/from16 v157, v151

    goto/16 :goto_15

    .line 506
    :cond_3d
    const/4 v5, 0x0

    move/from16 v32, v5

    goto :goto_1a

    .line 519
    :cond_3e
    move/from16 v0, v44

    move v1, v14

    if-eq v0, v1, :cond_40

    .line 521
    move/from16 v0, v44

    move/from16 v1, p3

    if-ne v0, v1, :cond_3f

    const/4 v5, 0x1

    move/from16 v61, v5

    :goto_1d
    sub-int v66, v139, v28

    move-object/from16 v41, p0

    move-object/from16 v42, p1

    move/from16 v43, v14

    move/from16 v49, v20

    move/from16 v50, p7

    move/from16 v51, p8

    move-object/from16 v52, v23

    move-object/from16 v53, v24

    move-object/from16 v54, v11

    move/from16 v55, v26

    move/from16 v56, v27

    move/from16 v57, v28

    move-object/from16 v58, v29

    move/from16 v59, v30

    move/from16 v60, v31

    move/from16 v62, p9

    move/from16 v63, p10

    move-object/from16 v64, v10

    move/from16 v65, v28

    move-object/from16 v67, p13

    move/from16 v68, p12

    move-object/from16 v70, p4

    invoke-direct/range {v41 .. v70}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 534
    move/from16 v14, v44

    goto :goto_1b

    .line 521
    :cond_3f
    const/4 v5, 0x0

    move/from16 v61, v5

    goto :goto_1d

    .line 537
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v33, v0

    add-int/lit8 v36, v14, 0x1

    const/16 v39, 0x0

    move-object/from16 v32, p4

    move-object/from16 v34, p1

    move/from16 v35, v14

    move-object/from16 v37, v11

    move/from16 v38, v26

    invoke-static/range {v32 .. v39}, Landroid/text/StaticLayout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    .line 541
    add-int/lit8 v73, v14, 0x1

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v74, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v75, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v76, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v77, v0

    add-int/lit8 v5, v14, 0x1

    move v0, v5

    move/from16 v1, p3

    if-ne v0, v1, :cond_41

    const/4 v5, 0x1

    move/from16 v90, v5

    :goto_1e
    sub-int v95, v139, v28

    sub-int v5, v14, v28

    aget v98, v10, v5

    .end local v98           #w:F
    move-object/from16 v70, p0

    move-object/from16 v71, p1

    move/from16 v72, v14

    move/from16 v78, v20

    move/from16 v79, p7

    move/from16 v80, p8

    move-object/from16 v81, v23

    move-object/from16 v82, v24

    move-object/from16 v83, v11

    move/from16 v84, v26

    move/from16 v85, v27

    move/from16 v86, v28

    move-object/from16 v87, v29

    move/from16 v88, v30

    move/from16 v89, v31

    move/from16 v91, p9

    move/from16 v92, p10

    move-object/from16 v93, v10

    move/from16 v94, v28

    move-object/from16 v96, p13

    move/from16 v97, p12

    move-object/from16 v99, p4

    invoke-direct/range {v70 .. v99}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 555
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1b

    .line 541
    .restart local v98       #w:F
    :cond_41
    const/4 v5, 0x0

    move/from16 v90, v5

    goto :goto_1e

    .line 561
    .end local v98           #w:F
    :cond_42
    const/4 v5, 0x1

    sub-int v147, v14, v5

    goto/16 :goto_1c

    .line 322
    .end local v133           #before:F
    .end local v136           #c:C
    .restart local v98       #w:F
    :cond_43
    move v8, v9

    goto/16 :goto_10

    .line 576
    .end local v9           #next:I
    .end local v143           #fmascent:I
    .end local v144           #fmbottom:I
    .end local v145           #fmdescent:I
    .end local v146           #fmtop:I
    .end local v147           #j:I
    :cond_44
    move/from16 v0, v139

    move v1, v14

    if-eq v0, v1, :cond_46

    .line 577
    or-int v5, v47, v48

    or-int v5, v5, v46

    or-int v5, v5, v45

    if-nez v5, :cond_45

    .line 578
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 580
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v47, v0

    .line 581
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v48, v0

    .line 582
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v45, v0

    .line 583
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v46, v0

    .line 588
    :cond_45
    move/from16 v0, v139

    move/from16 v1, p3

    if-ne v0, v1, :cond_49

    const/4 v5, 0x1

    move/from16 v90, v5

    :goto_1f
    sub-int v95, v139, v28

    move-object/from16 v70, p0

    move-object/from16 v71, p1

    move/from16 v72, v14

    move/from16 v73, v139

    move/from16 v74, v45

    move/from16 v75, v46

    move/from16 v76, v47

    move/from16 v77, v48

    move/from16 v78, v20

    move/from16 v79, p7

    move/from16 v80, p8

    move-object/from16 v81, v23

    move-object/from16 v82, v24

    move-object/from16 v83, v11

    move/from16 v84, v26

    move/from16 v85, v27

    move/from16 v86, v28

    move-object/from16 v87, v29

    move/from16 v88, v30

    move/from16 v89, v31

    move/from16 v91, p9

    move/from16 v92, p10

    move-object/from16 v93, v10

    move/from16 v94, v28

    move-object/from16 v96, p13

    move/from16 v97, p12

    move-object/from16 v99, p4

    invoke-direct/range {v70 .. v99}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    .line 600
    :cond_46
    move/from16 v28, v139

    .line 602
    move/from16 v0, v139

    move/from16 v1, p3

    if-ne v0, v1, :cond_4a

    .line 606
    .end local v8           #i:I
    .end local v14           #here:I
    .end local v15           #ok:I
    .end local v16           #okascent:I
    .end local v17           #okdescent:I
    .end local v18           #oktop:I
    .end local v19           #okbottom:I
    .end local v23           #chooseht:[Landroid/text/style/LineHeightSpan;
    .end local v26           #tab:Z
    .end local v30           #dir:I
    .end local v31           #easy:Z
    .end local v40           #okwidth:F
    .end local v44           #fit:I
    .end local v45           #fitascent:I
    .end local v46           #fitdescent:I
    .end local v47           #fittop:I
    .end local v48           #fitbottom:I
    .end local v69           #fitwidth:F
    .end local v98           #w:F
    .end local v131           #altered:Z
    .end local v141           #firstWidthLineCount:I
    .end local v142           #firstwidth:I
    .end local v149           #n:I
    .end local v151           #restwidth:I
    .end local v154           #sub:Ljava/lang/CharSequence;
    .end local v157           #width:I
    :cond_47
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_48

    const/4 v5, 0x1

    sub-int v5, p3, v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 609
    :cond_48
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 611
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v103, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v104, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v105, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v106, v0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v113, 0x0

    const/16 v118, 0x1

    const/16 v119, 0x1

    const/16 v124, 0x0

    const/16 v127, 0x0

    move-object/from16 v99, p0

    move-object/from16 v100, p1

    move/from16 v101, p3

    move/from16 v102, p3

    move/from16 v107, v20

    move/from16 v108, p7

    move/from16 v109, p8

    move-object/from16 v112, v11

    move/from16 v114, v27

    move/from16 v115, p3

    move-object/from16 v116, v29

    move/from16 v120, p9

    move/from16 v121, p10

    move-object/from16 v122, v10

    move/from16 v123, p2

    move-object/from16 v125, p13

    move/from16 v126, p12

    move-object/from16 v128, p4

    invoke-direct/range {v99 .. v128}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZI[BIZZZZ[FIILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;)I

    move-result v20

    goto/16 :goto_0

    .line 588
    .restart local v8       #i:I
    .restart local v14       #here:I
    .restart local v15       #ok:I
    .restart local v16       #okascent:I
    .restart local v17       #okdescent:I
    .restart local v18       #oktop:I
    .restart local v19       #okbottom:I
    .restart local v23       #chooseht:[Landroid/text/style/LineHeightSpan;
    .restart local v26       #tab:Z
    .restart local v30       #dir:I
    .restart local v31       #easy:Z
    .restart local v40       #okwidth:F
    .restart local v44       #fit:I
    .restart local v45       #fitascent:I
    .restart local v46       #fitdescent:I
    .restart local v47       #fittop:I
    .restart local v48       #fitbottom:I
    .restart local v69       #fitwidth:F
    .restart local v98       #w:F
    .restart local v131       #altered:Z
    .restart local v141       #firstWidthLineCount:I
    .restart local v142       #firstwidth:I
    .restart local v149       #n:I
    .restart local v151       #restwidth:I
    .restart local v154       #sub:Ljava/lang/CharSequence;
    .restart local v157       #width:I
    :cond_49
    const/4 v5, 0x0

    move/from16 v90, v5

    goto/16 :goto_1f

    .line 168
    :cond_4a
    move/from16 v28, v139

    goto/16 :goto_3
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 2227
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 2232
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 2233
    const/4 v0, 0x0

    .line 2236
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 2241
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 2242
    const/4 v0, 0x0

    .line 2245
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 2250
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .parameter "line"

    .prologue
    .line 2215
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 2195
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 2203
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 2219
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .parameter "vertical"

    .prologue
    .line 2079
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 2080
    .local v1, high:I
    const/4 v3, -0x1

    .line 2082
    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 2083
    .local v2, lines:[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 2084
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 2085
    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 2086
    move v1, v0

    goto :goto_0

    .line 2088
    :cond_0
    move v3, v0

    goto :goto_0

    .line 2091
    .end local v0           #guess:I
    :cond_1
    if-gez v3, :cond_2

    .line 2092
    const/4 v4, 0x0

    .line 2094
    :goto_1
    return v4

    :cond_2
    move v4, v3

    goto :goto_1
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 2207
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 2199
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 2211
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 2223
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
