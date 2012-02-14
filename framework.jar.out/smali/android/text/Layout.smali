.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions; = null

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions; = null

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory; = null

#the value of this static final field might be set in the static constructor
.field static final MAX_EMOJI:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final MIN_EMOJI:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle; = null

.field private static final TAB_INCREMENT:I = 0x14

.field private static isBidiEnabled:Z

.field private static sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mEmojiRect:Landroid/graphics/RectF;

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mWidth:I

.field mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 42
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 45
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 49
    invoke-static {v3}, Landroid/os/SystemProperties;->getCitArabicFlag(Z)Z

    move-result v0

    sput-boolean v0, Landroid/text/Layout;->isBidiEnabled:Z

    .line 52
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 54
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 2380
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 2401
    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x1

    new-array v1, v1, [S

    const/16 v2, 0x7fff

    aput-short v2, v1, v3

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 2403
    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    new-array v1, v1, [S

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    .line 56
    :cond_0
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 57
    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_0

    .line 2403
    :array_0
    .array-data 0x2
        0x0t 0x0t
        0xfft 0x7ft
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingMult"
    .parameter "spacingAdd"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2377
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 118
    if-gez p3, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 122
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 123
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 124
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 125
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 126
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 127
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 128
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 129
    return-void
.end method

.method private static ArabicMeasureText(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIII)F
    .locals 10
    .parameter "paint"
    .parameter "text"
    .parameter "there"
    .parameter "segstart"
    .parameter "start"
    .parameter "offset"

    .prologue
    .line 1763
    const/4 v0, 0x0

    .line 1764
    .local v0, SegWidth:F
    sub-int v4, p2, p3

    .line 1765
    .local v4, nLen:I
    add-int v1, p4, p3

    sub-int v2, p5, v1

    .line 1766
    .local v2, nCount:I
    const/4 v1, 0x0

    .line 1767
    .local v1, bReverse:Z
    add-int v3, p4, p3

    or-int/2addr v3, v2

    if-ltz v3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 1768
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 1771
    .restart local p0
    :cond_1
    if-lez v4, :cond_10

    .line 1773
    const/4 v2, 0x0

    .line 1774
    .local v2, segbuf:[C
    new-array v7, v4, [F

    .line 1775
    .local v7, widths:[F
    const/4 v2, 0x3

    new-array v3, v2, [F

    .line 1776
    .end local v2           #segbuf:[C
    .local v3, legwidths:[F
    invoke-static {v4}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v5

    .line 1777
    .local v5, segbuf:[C
    add-int v2, p4, p3

    add-int v6, p4, p2

    const/4 v8, 0x0

    invoke-static {p1, v2, v6, v5, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1779
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 1782
    aget-char v6, v5, v2

    const/16 v8, 0x644

    if-ne v6, v8, :cond_3

    .line 1784
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v4, :cond_3

    .line 1786
    add-int/lit8 v6, v2, 0x1

    aget-char v6, v5, v6

    const/16 v8, 0x627

    if-eq v6, v8, :cond_2

    add-int/lit8 v6, v2, 0x1

    aget-char v6, v5, v6

    const/16 v8, 0x622

    if-eq v6, v8, :cond_2

    add-int/lit8 v6, v2, 0x1

    aget-char v6, v5, v6

    const/16 v8, 0x623

    if-eq v6, v8, :cond_2

    add-int/lit8 v6, v2, 0x1

    aget-char v6, v5, v6

    const/16 v8, 0x625

    if-ne v6, v8, :cond_3

    .line 1789
    :cond_2
    const/16 v6, 0x640

    aput-char v6, v5, v2

    .line 1779
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1799
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v5, v2, v4, v7}, Landroid/text/TextPaint;->getTextWidths([CII[F)I

    .line 1801
    .end local v2           #i:I
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_1
    if-ge v2, v4, :cond_5

    .line 1803
    aget-char v6, v5, v2

    const/16 v8, 0x590

    if-lt v6, v8, :cond_6

    aget-char v6, v5, v2

    const/16 v8, 0x6ff

    if-gt v6, v8, :cond_6

    .line 1805
    const/4 v1, 0x1

    .line 1814
    :cond_5
    if-eqz v1, :cond_9

    .line 1816
    const/4 v2, 0x0

    :goto_2
    div-int/lit8 v6, v4, 0x2

    if-ge v2, v6, :cond_9

    .line 1819
    aget v6, v7, v2

    .line 1820
    .local v6, tmp:F
    sub-int v8, v4, v2

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aget v8, v7, v8

    aput v8, v7, v2

    .line 1821
    sub-int v8, v4, v2

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aput v6, v7, v8

    .line 1816
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1808
    .end local v6           #tmp:F
    :cond_6
    aget-char v6, v5, v2

    const/16 v8, 0x61

    if-lt v6, v8, :cond_7

    aget-char v6, v5, v2

    const/16 v8, 0x7a

    if-le v6, v8, :cond_5

    :cond_7
    aget-char v6, v5, v2

    const/16 v8, 0x41

    if-lt v6, v8, :cond_8

    aget-char v6, v5, v2

    const/16 v8, 0x5a

    if-le v6, v8, :cond_5

    .line 1801
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1825
    :cond_9
    add-int v2, p4, p3

    add-int/2addr p2, p4

    const/4 v6, 0x0

    invoke-static {p1, v2, p2, v5, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1827
    .end local v2           #idx:I
    .end local p2
    const/4 p1, 0x0

    .local p1, i:I
    :goto_3
    if-ge p1, v4, :cond_d

    .line 1830
    aget-char p2, v5, p1

    const/16 v2, 0x644

    if-ne p2, v2, :cond_b

    .line 1832
    add-int/lit8 p2, p1, 0x1

    if-ge p2, v4, :cond_b

    .line 1834
    add-int/lit8 p2, p1, 0x1

    aget-char p2, v5, p2

    const/16 v2, 0x627

    if-eq p2, v2, :cond_a

    add-int/lit8 p2, p1, 0x1

    aget-char p2, v5, p2

    const/16 v2, 0x622

    if-eq p2, v2, :cond_a

    add-int/lit8 p2, p1, 0x1

    aget-char p2, v5, p2

    const/16 v2, 0x623

    if-eq p2, v2, :cond_a

    add-int/lit8 p2, p1, 0x1

    aget-char p2, v5, p2

    const/16 v2, 0x625

    if-ne p2, v2, :cond_b

    .line 1837
    :cond_a
    const/4 p2, 0x1

    sub-int p2, p1, p2

    if-ltz p2, :cond_c

    .line 1838
    const/4 p2, 0x1

    sub-int p2, p1, p2

    const/4 v2, 0x3

    invoke-virtual {p0, v5, p2, v2, v3}, Landroid/text/TextPaint;->getTextWidths([CII[F)I

    .line 1842
    :goto_4
    const/4 p2, 0x0

    aget p2, v3, p2

    const/high16 v2, 0x4000

    div-float/2addr p2, v2

    aput p2, v7, p1

    .line 1843
    add-int/lit8 p2, p1, 0x1

    const/4 v2, 0x0

    aget v2, v3, v2

    const/high16 v6, 0x4000

    div-float/2addr v2, v6

    aput v2, v7, p2

    .line 1827
    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 1840
    :cond_c
    const/4 p2, 0x2

    invoke-virtual {p0, v5, p1, p2, v3}, Landroid/text/TextPaint;->getTextWidths([CII[F)I

    goto :goto_4

    .line 1853
    :cond_d
    const/4 p0, 0x0

    .local p0, idx:I
    move p1, p0

    .end local p0           #idx:I
    .local p1, idx:I
    move p0, v0

    .end local v0           #SegWidth:F
    .local p0, SegWidth:F
    :goto_5
    if-ge p1, v4, :cond_e

    .line 1855
    add-int p2, p1, p4

    add-int/2addr p2, p3

    if-ne p2, p5, :cond_f

    .line 1859
    :cond_e
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    move p1, v1

    .line 1861
    .end local v1           #bReverse:Z
    .end local v3           #legwidths:[F
    .end local v5           #segbuf:[C
    .end local v7           #widths:[F
    .local p1, bReverse:Z
    :goto_6
    return p0

    .line 1857
    .restart local v1       #bReverse:Z
    .restart local v3       #legwidths:[F
    .restart local v5       #segbuf:[C
    .restart local v7       #widths:[F
    .local p1, idx:I
    :cond_f
    aget p2, v7, p1

    add-float/2addr p0, p2

    .line 1853
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .end local v3           #legwidths:[F
    .end local v5           #segbuf:[C
    .end local v7           #widths:[F
    .restart local v0       #SegWidth:F
    .local v2, nCount:I
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, text:Ljava/lang/CharSequence;
    .restart local p2
    :cond_10
    move p1, v1

    .end local v1           #bReverse:Z
    .local p1, bReverse:Z
    move p0, v0

    .end local v0           #SegWidth:F
    .local p0, SegWidth:F
    goto :goto_6
.end method

.method static synthetic access$100(Landroid/text/Layout;III[CI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Landroid/text/Layout;->ellipsize(III[CI)V

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 21
    .parameter "line"
    .parameter "start"
    .parameter "end"
    .parameter "top"
    .parameter "bottom"
    .parameter "dest"

    .prologue
    .line 1482
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v18

    .line 1483
    .local v18, linestart:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v17

    .line 1484
    .local v17, lineend:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v13

    .line 1486
    .local v13, dirs:Landroid/text/Layout$Directions;
    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v6, 0x1

    sub-int v6, v17, v6

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 1487
    add-int/lit8 v17, v17, -0x1

    .line 1489
    :cond_0
    move/from16 v15, v18

    .line 1490
    .local v15, here:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v13}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_5

    .line 1491
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v13}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    aget-short v5, v5, v16

    add-int v20, v15, v5

    .line 1492
    .local v20, there:I
    move/from16 v0, v20

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    .line 1493
    move/from16 v20, v17

    .line 1495
    :cond_1
    move/from16 v0, p2

    move/from16 v1, v20

    if-gt v0, v1, :cond_2

    move/from16 v0, p3

    move v1, v15

    if-lt v0, v1, :cond_2

    .line 1496
    move/from16 v0, p2

    move v1, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1497
    .local v19, st:I
    move/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1499
    .local v14, en:I
    move/from16 v0, v19

    move v1, v14

    if-eq v0, v1, :cond_2

    .line 1500
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move v2, v5

    move v3, v6

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getHorizontal(IZZI)F

    move-result v6

    .line 1501
    .local v6, h1:F
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move v2, v5

    move v3, v7

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getHorizontal(IZZI)F

    move-result v8

    .line 1504
    .local v8, h2:F
    sget-boolean v5, Landroid/text/Layout;->isBidiEnabled:Z

    if-eqz v5, :cond_4

    .line 1505
    cmpg-float v5, v6, v8

    if-gtz v5, :cond_3

    .line 1506
    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v9, v0

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v5, p6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1517
    .end local v6           #h1:F
    .end local v8           #h2:F
    .end local v14           #en:I
    .end local v19           #st:I
    :cond_2
    :goto_1
    move/from16 v15, v20

    .line 1490
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1508
    .restart local v6       #h1:F
    .restart local v8       #h2:F
    .restart local v14       #en:I
    .restart local v19       #st:I
    :cond_3
    move/from16 v0, p4

    int-to-float v0, v0

    move v9, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v11, v0

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v7, p6

    move v10, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 1510
    :cond_4
    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v9, v0

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v5, p6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 1519
    .end local v6           #h1:F
    .end local v8           #h2:F
    .end local v14           #en:I
    .end local v19           #st:I
    .end local v20           #there:I
    :cond_5
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;FIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z[Ljava/lang/Object;)V
    .locals 31
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "dir"
    .parameter "directions"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "hasTabs"
    .parameter "parspans"

    .prologue
    .line 1674
    if-nez p13, :cond_6

    .line 1675
    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, p6

    move-object v1, v5

    if-ne v0, v1, :cond_1

    .line 1679
    const/4 v10, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v5 .. v17}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    .line 1755
    :cond_0
    :goto_0
    return-void

    .line 1682
    :cond_1
    const/16 v20, 0x0

    .line 1688
    .local v20, buf:[C
    :goto_1
    const/16 v22, 0x0

    .line 1690
    .local v22, h:F
    const/16 v23, 0x0

    .line 1691
    .local v23, here:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_2
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static/range {p6 .. p6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v24

    move v1, v5

    if-ge v0, v1, :cond_f

    .line 1692
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static/range {p6 .. p6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v5

    aget-short v5, v5, v24

    add-int v29, v23, v5

    .line 1693
    .local v29, there:I
    sub-int v5, p4, p3

    move/from16 v0, v29

    move v1, v5

    if-le v0, v1, :cond_2

    .line 1694
    sub-int v29, p4, p3

    .line 1696
    :cond_2
    move/from16 v27, v23

    .line 1697
    .local v27, segstart:I
    if-eqz p13, :cond_7

    move/from16 v25, v23

    .local v25, j:I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v29

    if-gt v0, v1, :cond_e

    .line 1698
    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    aget-char v5, v20, v25

    const/16 v6, 0x9

    if-ne v5, v6, :cond_a

    .line 1699
    :cond_3
    add-int v7, p3, v27

    add-int v8, p3, v25

    and-int/lit8 v5, v24, 0x1

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    move v10, v5

    :goto_4
    add-float v11, p7, v22

    add-int v5, p3, v25

    move v0, v5

    move/from16 v1, p4

    if-eq v0, v1, :cond_9

    const/4 v5, 0x1

    move/from16 v17, v5

    :goto_5
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p5

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v5 .. v17}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v5

    add-float v22, v22, v5

    .line 1705
    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    aget-char v5, v20, v25

    const/16 v6, 0x9

    if-ne v5, v6, :cond_4

    .line 1706
    move/from16 v0, p5

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v6, v0

    mul-float v6, v6, v22

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move v3, v6

    move-object/from16 v4, p14

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v6

    mul-float v22, v5, v6

    .line 1708
    :cond_4
    add-int/lit8 v27, v25, 0x1

    .line 1697
    :cond_5
    :goto_6
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 1684
    .end local v20           #buf:[C
    .end local v22           #h:F
    .end local v23           #here:I
    .end local v24           #i:I
    .end local v25           #j:I
    .end local v27           #segstart:I
    .end local v29           #there:I
    :cond_6
    sub-int v5, p4, p3

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v20

    .line 1685
    .restart local v20       #buf:[C
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, v20

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    goto/16 :goto_1

    .restart local v22       #h:F
    .restart local v23       #here:I
    .restart local v24       #i:I
    .restart local v27       #segstart:I
    .restart local v29       #there:I
    :cond_7
    move/from16 v25, v29

    .line 1697
    goto :goto_3

    .line 1699
    .restart local v25       #j:I
    :cond_8
    const/4 v5, 0x0

    move v10, v5

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_5

    .line 1709
    :cond_a
    if-eqz p13, :cond_5

    aget-char v5, v20, v25

    const v6, 0xd800

    if-lt v5, v6, :cond_5

    aget-char v5, v20, v25

    const v6, 0xdfff

    if-gt v5, v6, :cond_5

    add-int/lit8 v5, v25, 0x1

    move v0, v5

    move/from16 v1, v29

    if-ge v0, v1, :cond_5

    .line 1710
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v21

    .line 1712
    .local v21, emoji:I
    sget v5, Landroid/text/Layout;->MIN_EMOJI:I

    move/from16 v0, v21

    move v1, v5

    if-lt v0, v1, :cond_5

    sget v5, Landroid/text/Layout;->MAX_EMOJI:I

    move/from16 v0, v21

    move v1, v5

    if-gt v0, v1, :cond_5

    .line 1713
    sget-object v5, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 1716
    .local v19, bm:Landroid/graphics/Bitmap;
    if-eqz v19, :cond_5

    .line 1717
    add-int v7, p3, v27

    add-int v8, p3, v25

    and-int/lit8 v5, v24, 0x1

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    move v10, v5

    :goto_7
    add-float v11, p7, v22

    add-int v5, p3, v25

    move v0, v5

    move/from16 v1, p4

    if-eq v0, v1, :cond_d

    const/4 v5, 0x1

    move/from16 v17, v5

    :goto_8
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p5

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v5 .. v17}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    move-result v5

    add-float v22, v22, v5

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    move-object v5, v0

    if-nez v5, :cond_b

    .line 1724
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    .line 1727
    :cond_b
    move-object/from16 v0, p12

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1728
    add-int v8, p3, v25

    add-int v5, p3, v25

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .line 1732
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v0, v5

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1733
    .local v18, bitmapHeight:F
    invoke-virtual/range {p12 .. p12}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    move v0, v5

    neg-float v0, v0

    move/from16 v28, v0

    .line 1734
    .local v28, textHeight:F
    div-float v26, v28, v18

    .line 1735
    .local v26, scale:F
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v30, v5, v26

    .line 1737
    .local v30, width:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    move-object v5, v0

    add-float v6, p7, v22

    move/from16 v0, p9

    int-to-float v0, v0

    move v7, v0

    sub-float v7, v7, v28

    add-float v8, p7, v22

    add-float v8, v8, v30

    move/from16 v0, p9

    int-to-float v0, v0

    move v9, v0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1740
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mEmojiRect:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, p11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1741
    add-float v22, v22, v30

    .line 1743
    add-int/lit8 v25, v25, 0x1

    .line 1744
    add-int/lit8 v27, v25, 0x1

    goto/16 :goto_6

    .line 1717
    .end local v18           #bitmapHeight:F
    .end local v26           #scale:F
    .end local v28           #textHeight:F
    .end local v30           #width:F
    :cond_c
    const/4 v5, 0x0

    move v10, v5

    goto/16 :goto_7

    :cond_d
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_8

    .line 1750
    .end local v19           #bm:Landroid/graphics/Bitmap;
    .end local v21           #emoji:I
    :cond_e
    move/from16 v23, v29

    .line 1691
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .line 1753
    .end local v25           #j:I
    .end local v27           #segstart:I
    .end local v29           #there:I
    :cond_f
    if-eqz p13, :cond_0

    .line 1754
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->recycle([C)V

    goto/16 :goto_0
.end method

.method private draw_CIT(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 67
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 402
    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    .line 403
    :try_start_0
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 404
    monitor-exit v5

    .line 656
    .end local p2
    :cond_0
    return-void

    .line 407
    .restart local p2
    :cond_1
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v51, v0

    .line 408
    .local v51, dtop:I
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v50, v0

    .line 409
    .local v50, dbottom:I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    const/16 v64, 0x0

    .line 413
    .local v64, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v48

    .line 415
    .local v48, bottom:I
    move/from16 v0, v51

    move/from16 v1, v64

    if-le v0, v1, :cond_2

    .line 416
    move/from16 v64, v51

    .line 418
    :cond_2
    move/from16 v0, v50

    move/from16 v1, v48

    if-ge v0, v1, :cond_3

    .line 419
    move/from16 v48, v50

    .line 422
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v52

    .line 423
    .local v52, first:I
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v54

    .line 425
    .local v54, last:I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v58

    .line 426
    .local v58, previousLineBottom:I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v59

    .line 428
    .local v59, previousLineEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v6, v0

    .line 429
    .local v6, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v0

    .line 430
    .local v12, buf:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v8, v0

    .line 431
    .local v8, width:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v62, v0

    .line 433
    .local v62, spannedText:Z
    sget-object v46, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 434
    .local v46, spans:[Landroid/text/style/ParagraphStyle;
    const/16 v61, 0x0

    .line 435
    .local v61, spanend:I
    const/16 v63, 0x0

    .line 440
    .local v63, textLength:I
    if-eqz v62, :cond_7

    .line 441
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v63

    .line 442
    move/from16 v15, v52

    .local v15, i:I
    :goto_0
    move v0, v15

    move/from16 v1, v54

    if-gt v0, v1, :cond_6

    .line 443
    move/from16 v13, v59

    .line 444
    .local v13, start:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 445
    .local v14, end:I
    move/from16 v59, v14

    .line 447
    move/from16 v9, v58

    .line 448
    .local v9, ltop:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 449
    .local v11, lbottom:I
    move/from16 v58, v11

    .line 450
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v10, v11, v5

    .line 452
    .local v10, lbaseline:I
    move v0, v13

    move/from16 v1, v61

    if-lt v0, v1, :cond_4

    .line 453
    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v60, v0

    .line 454
    .local v60, sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v63

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v61

    .line 456
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v61

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v46

    .end local v46           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v46, [Landroid/text/style/ParagraphStyle;

    .line 460
    .end local v60           #sp:Landroid/text/Spanned;
    .restart local v46       #spans:[Landroid/text/style/ParagraphStyle;
    :cond_4
    const/16 v57, 0x0

    .local v57, n:I
    :goto_1
    move-object/from16 v0, v46

    array-length v0, v0

    move v5, v0

    move/from16 v0, v57

    move v1, v5

    if-ge v0, v1, :cond_5

    .line 461
    aget-object v4, v46, v57

    check-cast v4, Landroid/text/style/LineBackgroundSpan;

    .line 463
    .local v4, back:Landroid/text/style/LineBackgroundSpan;
    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v15}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 460
    add-int/lit8 v57, v57, 0x1

    goto :goto_1

    .line 409
    .end local v4           #back:Landroid/text/style/LineBackgroundSpan;
    .end local v6           #paint:Landroid/text/TextPaint;
    .end local v8           #width:I
    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    .end local v11           #lbottom:I
    .end local v12           #buf:Ljava/lang/CharSequence;
    .end local v13           #start:I
    .end local v14           #end:I
    .end local v15           #i:I
    .end local v46           #spans:[Landroid/text/style/ParagraphStyle;
    .end local v48           #bottom:I
    .end local v50           #dbottom:I
    .end local v51           #dtop:I
    .end local v52           #first:I
    .end local v54           #last:I
    .end local v57           #n:I
    .end local v58           #previousLineBottom:I
    .end local v59           #previousLineEnd:I
    .end local v61           #spanend:I
    .end local v62           #spannedText:Z
    .end local v63           #textLength:I
    .end local v64           #top:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 442
    .restart local v6       #paint:Landroid/text/TextPaint;
    .restart local v8       #width:I
    .restart local v9       #ltop:I
    .restart local v10       #lbaseline:I
    .restart local v11       #lbottom:I
    .restart local v12       #buf:Ljava/lang/CharSequence;
    .restart local v13       #start:I
    .restart local v14       #end:I
    .restart local v15       #i:I
    .restart local v46       #spans:[Landroid/text/style/ParagraphStyle;
    .restart local v48       #bottom:I
    .restart local v50       #dbottom:I
    .restart local v51       #dtop:I
    .restart local v52       #first:I
    .restart local v54       #last:I
    .restart local v57       #n:I
    .restart local v58       #previousLineBottom:I
    .restart local v59       #previousLineEnd:I
    .restart local v61       #spanend:I
    .restart local v62       #spannedText:Z
    .restart local v63       #textLength:I
    .restart local v64       #top:I
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 470
    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    .end local v11           #lbottom:I
    .end local v13           #start:I
    .end local v14           #end:I
    .end local v57           #n:I
    :cond_6
    const/16 v61, 0x0

    .line 471
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v58

    .line 472
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v59

    .line 473
    sget-object v46, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 478
    .end local v15           #i:I
    :cond_7
    if-eqz p2, :cond_9

    .line 479
    if-eqz p4, :cond_8

    .line 480
    const/4 v5, 0x0

    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 483
    :cond_8
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 485
    if-eqz p4, :cond_9

    .line 486
    const/4 v5, 0x0

    move/from16 v0, p4

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 490
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v47, v0

    .line 495
    .local v47, align:Landroid/text/Layout$Alignment;
    move/from16 v15, v52

    .end local p2
    .restart local v15       #i:I
    :goto_2
    move v0, v15

    move/from16 v1, v54

    if-gt v0, v1, :cond_0

    .line 496
    move/from16 v13, v59

    .line 498
    .restart local v13       #start:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v59

    .line 499
    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v59

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v14

    .line 501
    .restart local v14       #end:I
    move/from16 v9, v58

    .line 502
    .restart local v9       #ltop:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 503
    .restart local v11       #lbottom:I
    move/from16 v58, v11

    .line 504
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v10, v11, v5

    .line 506
    .restart local v10       #lbaseline:I
    const/16 v27, 0x0

    .line 507
    .local v27, isFirstParaLine:Z
    if-eqz v62, :cond_c

    .line 508
    if-eqz v13, :cond_a

    const/4 v5, 0x1

    sub-int v5, v13, v5

    invoke-interface {v12, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0xa

    if-ne v5, v7, :cond_b

    .line 509
    :cond_a
    const/16 v27, 0x1

    .line 513
    :cond_b
    move v0, v13

    move/from16 v1, v61

    if-lt v0, v1, :cond_c

    .line 514
    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v60, v0

    .line 515
    .restart local v60       #sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v63

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v61

    .line 517
    const-class v5, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v61

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v46

    .end local v46           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v46, [Landroid/text/style/ParagraphStyle;

    .line 519
    .restart local v46       #spans:[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v47, v0

    .line 520
    move-object/from16 v0, v46

    array-length v0, v0

    move v5, v0

    const/4 v7, 0x1

    sub-int v57, v5, v7

    .restart local v57       #n:I
    :goto_3
    if-ltz v57, :cond_c

    .line 521
    aget-object v5, v46, v57

    instance-of v5, v5, Landroid/text/style/AlignmentSpan;

    if-eqz v5, :cond_f

    .line 522
    aget-object p2, v46, v57

    check-cast p2, Landroid/text/style/AlignmentSpan;

    invoke-interface/range {p2 .. p2}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v47

    .line 529
    .end local v57           #n:I
    .end local v60           #sp:Landroid/text/Spanned;
    :cond_c
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v20

    .line 530
    .local v20, dir:I
    const/16 v31, 0x0

    .line 531
    .local v31, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v19, v0

    .line 535
    .local v19, right:I
    if-eqz v62, :cond_15

    .line 536
    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v55, v0

    .line 537
    .local v55, length:I
    const/16 v57, 0x0

    .restart local v57       #n:I
    :goto_4
    move/from16 v0, v57

    move/from16 v1, v55

    if-ge v0, v1, :cond_15

    .line 538
    aget-object v5, v46, v57

    instance-of v5, v5, Landroid/text/style/LeadingMarginSpan;

    if-eqz v5, :cond_e

    .line 539
    aget-object v16, v46, v57

    check-cast v16, Landroid/text/style/LeadingMarginSpan;

    .line 541
    .local v16, margin:Landroid/text/style/LeadingMarginSpan;
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_12

    move-object/from16 v17, p1

    move-object/from16 v18, v6

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v28, p0

    .line 542
    invoke-interface/range {v16 .. v28}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 547
    sget-boolean v5, Landroid/text/Layout;->isBidiEnabled:Z

    if-eqz v5, :cond_11

    .line 548
    move/from16 v65, v27

    .line 549
    .local v65, useMargin:Z
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move v5, v0

    if-eqz v5, :cond_d

    .line 550
    move-object/from16 v0, v16

    check-cast v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v49

    .line 551
    .local v49, count:I
    move/from16 v0, v49

    move v1, v15

    if-le v0, v1, :cond_10

    const/4 v5, 0x1

    move/from16 v65, v5

    .line 553
    .end local v49           #count:I
    :cond_d
    :goto_5
    move-object/from16 v0, v16

    move/from16 v1, v65

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v19, v19, v5

    .line 537
    .end local v16           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v65           #useMargin:Z
    :cond_e
    :goto_6
    add-int/lit8 v57, v57, 0x1

    goto :goto_4

    .line 520
    .end local v19           #right:I
    .end local v20           #dir:I
    .end local v31           #left:I
    .end local v55           #length:I
    .restart local v60       #sp:Landroid/text/Spanned;
    :cond_f
    add-int/lit8 v57, v57, -0x1

    goto/16 :goto_3

    .line 551
    .end local v60           #sp:Landroid/text/Spanned;
    .restart local v16       #margin:Landroid/text/style/LeadingMarginSpan;
    .restart local v19       #right:I
    .restart local v20       #dir:I
    .restart local v31       #left:I
    .restart local v49       #count:I
    .restart local v55       #length:I
    .restart local v65       #useMargin:Z
    :cond_10
    const/4 v5, 0x0

    move/from16 v65, v5

    goto :goto_5

    .line 555
    .end local v49           #count:I
    .end local v65           #useMargin:Z
    :cond_11
    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v19, v19, v5

    goto :goto_6

    :cond_12
    move-object/from16 v28, v16

    move-object/from16 v29, p1

    move-object/from16 v30, v6

    move/from16 v32, v20

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v11

    move-object/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move/from16 v39, v27

    move-object/from16 v40, p0

    .line 559
    invoke-interface/range {v28 .. v40}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 563
    move/from16 v65, v27

    .line 564
    .restart local v65       #useMargin:Z
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move v5, v0

    if-eqz v5, :cond_13

    .line 565
    move-object/from16 v0, v16

    check-cast v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v49

    .line 566
    .restart local v49       #count:I
    move/from16 v0, v49

    move v1, v15

    if-le v0, v1, :cond_14

    const/4 v5, 0x1

    move/from16 v65, v5

    .line 568
    .end local v49           #count:I
    :cond_13
    :goto_7
    move-object/from16 v0, v16

    move/from16 v1, v65

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    add-int v31, v31, v5

    goto :goto_6

    .line 566
    .restart local v49       #count:I
    :cond_14
    const/4 v5, 0x0

    move/from16 v65, v5

    goto :goto_7

    .line 577
    .end local v16           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v49           #count:I
    .end local v55           #length:I
    .end local v57           #n:I
    .end local v65           #useMargin:Z
    :cond_15
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v38

    .line 578
    .local v38, directions:Landroid/text/Layout$Directions;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v47

    move-object v1, v5

    if-ne v0, v1, :cond_1a

    .line 579
    sget-boolean v5, Landroid/text/Layout;->isBidiEnabled:Z

    if-eqz v5, :cond_18

    .line 580
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_16

    .line 581
    move/from16 v66, v31

    .line 641
    .local v66, x:I
    :goto_8
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v45

    .line 642
    .local v45, hasTab:Z
    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v38

    move-object v1, v5

    if-ne v0, v1, :cond_22

    if-nez v62, :cond_22

    if-nez v45, :cond_22

    .line 649
    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v36, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v32, p1

    move-object/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move-object/from16 v38, v6

    invoke-virtual/range {v32 .. v38}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 495
    .end local v38           #directions:Landroid/text/Layout$Directions;
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 582
    .end local v45           #hasTab:Z
    .end local v66           #x:I
    .restart local v38       #directions:Landroid/text/Layout$Directions;
    :cond_16
    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v38

    move-object v1, v5

    if-ne v0, v1, :cond_17

    if-nez v62, :cond_17

    .line 584
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int v66, v19, v5

    .restart local v66       #x:I
    goto :goto_8

    .line 586
    .end local v66           #x:I
    :cond_17
    move/from16 v66, v19

    .restart local v66       #x:I
    goto :goto_8

    .line 589
    .end local v66           #x:I
    :cond_18
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_19

    .line 590
    move/from16 v66, v31

    .restart local v66       #x:I
    goto :goto_8

    .line 592
    .end local v66           #x:I
    :cond_19
    move/from16 v66, v19

    .restart local v66       #x:I
    goto :goto_8

    .line 596
    .end local v66           #x:I
    :cond_1a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v46

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v56, v0

    .line 597
    .local v56, max:I
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v47

    move-object v1, v5

    if-ne v0, v1, :cond_1e

    .line 598
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_1d

    .line 599
    sget-boolean v5, Landroid/text/Layout;->isBidiEnabled:Z

    if-eqz v5, :cond_1c

    .line 604
    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v38

    move-object v1, v5

    if-ne v0, v1, :cond_1b

    if-nez v62, :cond_1b

    .line 605
    move/from16 v66, v31

    .restart local v66       #x:I
    goto :goto_8

    .line 607
    .end local v66           #x:I
    :cond_1b
    add-int v66, v31, v56

    .restart local v66       #x:I
    goto :goto_8

    .line 610
    .end local v66           #x:I
    :cond_1c
    add-int v66, v31, v56

    .restart local v66       #x:I
    goto/16 :goto_8

    .line 613
    .end local v66           #x:I
    :cond_1d
    sub-int v66, v19, v56

    .restart local v66       #x:I
    goto/16 :goto_8

    .line 617
    .end local v66           #x:I
    :cond_1e
    and-int/lit8 v56, v56, -0x2

    .line 618
    sub-int v5, v19, v31

    sub-int v5, v5, v56

    shr-int/lit8 v53, v5, 0x1

    .line 619
    .local v53, half:I
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_21

    .line 620
    sget-boolean v5, Landroid/text/Layout;->isBidiEnabled:Z

    if-eqz v5, :cond_20

    .line 625
    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v38

    move-object v1, v5

    if-ne v0, v1, :cond_1f

    .line 626
    add-int v66, v31, v53

    .restart local v66       #x:I
    goto/16 :goto_8

    .line 628
    .end local v66           #x:I
    :cond_1f
    sub-int v66, v19, v53

    .restart local v66       #x:I
    goto/16 :goto_8

    .line 631
    .end local v66           #x:I
    :cond_20
    sub-int v66, v19, v53

    .restart local v66       #x:I
    goto/16 :goto_8

    .line 634
    .end local v66           #x:I
    :cond_21
    add-int v66, v31, v53

    .restart local v66       #x:I
    goto/16 :goto_8

    .line 651
    .end local v53           #half:I
    .end local v56           #max:I
    .restart local v45       #hasTab:Z
    :cond_22
    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v44, v0

    move-object/from16 v32, p0

    move-object/from16 v33, p1

    move-object/from16 v34, v12

    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v37, v20

    move/from16 v40, v9

    move/from16 v41, v10

    move/from16 v42, v11

    move-object/from16 v43, v6

    invoke-direct/range {v32 .. v46}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;FIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z[Ljava/lang/Object;)V

    goto/16 :goto_9
.end method

.method private ellipsize(III[CI)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "line"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 2225
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 2227
    .local v2, ellipsisCount:I
    if-nez v2, :cond_1

    .line 2249
    :cond_0
    return-void

    .line 2231
    :cond_1
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 2232
    .local v3, ellipsisStart:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 2234
    .local v5, linestart:I
    move v4, v3

    .local v4, i:I
    :goto_0
    add-int v6, v3, v2

    if-ge v4, v6, :cond_0

    .line 2237
    if-ne v4, v3, :cond_3

    .line 2238
    const/16 v1, 0x2026

    .line 2243
    .local v1, c:C
    :goto_1
    add-int v0, v4, v5

    .line 2245
    .local v0, a:I
    if-lt v0, p1, :cond_2

    if-ge v0, p2, :cond_2

    .line 2246
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 2234
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2240
    .end local v0           #a:I
    .end local v1           #c:C
    :cond_3
    const v1, 0xfeff

    .restart local v1       #c:C
    goto :goto_1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 10
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "paint"

    .prologue
    const/4 v5, 0x0

    .line 79
    const/4 v8, 0x0

    .line 80
    .local v8, need:F
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 83
    .local v1, workPaint:Landroid/text/TextPaint;
    move v3, p1

    .local v3, i:I
    :goto_0
    if-gt v3, p2, :cond_2

    .line 84
    const/16 v0, 0xa

    invoke-static {p0, v0, v3, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    .line 86
    .local v4, next:I
    if-gez v4, :cond_0

    .line 87
    move v4, p2

    .line 90
    :cond_0
    const/4 v6, 0x1

    move-object v0, p3

    move-object v2, p0

    move-object v7, v5

    invoke-static/range {v0 .. v7}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v9

    .line 93
    .local v9, w:F
    cmpl-float v0, v9, v8

    if-lez v0, :cond_1

    .line 94
    move v8, v9

    .line 96
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 83
    move v3, v4

    goto :goto_0

    .line 99
    .end local v4           #next:I
    .end local v9           #w:F
    :cond_2
    return v8
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .parameter "source"
    .parameter "paint"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getHorizontal(IZZ)F
    .locals 2
    .parameter "offset"
    .parameter "trailing"
    .parameter "alt"

    .prologue
    .line 828
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 830
    .local v0, line:I
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getHorizontal(IZZI)F

    move-result v1

    return v1
.end method

.method private getHorizontal(IZZI)F
    .locals 28
    .parameter "offset"
    .parameter "trailing"
    .parameter "alt"
    .parameter "line"

    .prologue
    .line 835
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 836
    .local v5, start:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v7

    .line 837
    .local v7, end:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    .line 838
    .local v8, dir:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v12

    .line 839
    .local v12, tab:Z
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 841
    .local v9, directions:Landroid/text/Layout$Directions;
    const/4 v13, 0x0

    .line 842
    .local v13, tabs:[Landroid/text/style/TabStopSpan;
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v0

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-interface {v2, v5, v7, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13           #tabs:[Landroid/text/style/TabStopSpan;
    check-cast v13, [Landroid/text/style/TabStopSpan;

    .line 846
    .restart local v13       #tabs:[Landroid/text/style/TabStopSpan;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v4, v0

    move/from16 v6, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-static/range {v2 .. v13}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IIIILandroid/text/Layout$Directions;ZZZ[Ljava/lang/Object;)F

    move-result v27

    .line 849
    .local v27, wid:F
    move/from16 v0, p1

    move v1, v7

    if-le v0, v1, :cond_1

    .line 850
    const/4 v2, -0x1

    if-ne v8, v2, :cond_2

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    move/from16 v17, v7

    move/from16 v18, p1

    move/from16 v20, v12

    move-object/from16 v21, v13

    invoke-static/range {v14 .. v21}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v2

    sub-float v27, v27, v2

    .line 858
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v22

    .line 859
    .local v22, align:Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v24

    .line 860
    .local v24, left:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v26

    .line 862
    .local v26, right:I
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    move-object v1, v2

    if-ne v0, v1, :cond_4

    .line 863
    const/4 v2, -0x1

    if-ne v8, v2, :cond_3

    .line 864
    move/from16 v0, v26

    int-to-float v0, v0

    move v2, v0

    add-float v2, v2, v27

    .line 882
    :goto_1
    return v2

    .line 854
    .end local v22           #align:Landroid/text/Layout$Alignment;
    .end local v24           #left:I
    .end local v26           #right:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    move/from16 v17, v7

    move/from16 v18, p1

    move/from16 v20, v12

    move-object/from16 v21, v13

    invoke-static/range {v14 .. v21}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v2

    add-float v27, v27, v2

    goto :goto_0

    .line 866
    .restart local v22       #align:Landroid/text/Layout$Alignment;
    .restart local v24       #left:I
    .restart local v26       #right:I
    :cond_3
    move/from16 v0, v24

    int-to-float v0, v0

    move v2, v0

    add-float v2, v2, v27

    goto :goto_1

    .line 869
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v25

    .line 871
    .local v25, max:F
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    move-object v1, v2

    if-ne v0, v1, :cond_6

    .line 872
    const/4 v2, -0x1

    if-ne v8, v2, :cond_5

    .line 873
    move/from16 v0, v24

    int-to-float v0, v0

    move v2, v0

    add-float v2, v2, v25

    add-float v2, v2, v27

    goto :goto_1

    .line 875
    :cond_5
    move/from16 v0, v26

    int-to-float v0, v0

    move v2, v0

    sub-float v2, v2, v25

    add-float v2, v2, v27

    goto :goto_1

    .line 877
    :cond_6
    move/from16 v0, v25

    float-to-int v0, v0

    move v2, v0

    and-int/lit8 v23, v2, -0x2

    .line 879
    .local v23, imax:I
    const/4 v2, -0x1

    if-ne v8, v2, :cond_7

    .line 880
    sub-int v2, v26, v24

    sub-int v2, v2, v23

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v26, v2

    int-to-float v2, v2

    add-float v2, v2, v27

    goto :goto_1

    .line 882
    :cond_7
    sub-int v2, v26, v24

    sub-int v2, v2, v23

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v24

    int-to-float v2, v2

    add-float v2, v2, v27

    goto :goto_1
.end method

.method private getLineMax(I[Ljava/lang/Object;Z)F
    .locals 8
    .parameter "line"
    .parameter "tabs"
    .parameter "full"

    .prologue
    .line 957
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 960
    .local v3, start:I
    if-eqz p3, :cond_1

    .line 961
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 965
    .local v4, end:I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v6

    .line 967
    .local v6, tab:Z
    if-nez p2, :cond_0

    if-eqz v6, :cond_0

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/TabStopSpan;

    invoke-interface {v0, v3, v4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    .line 971
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Landroid/text/Layout;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F

    move-result v0

    return v0

    .line 963
    .end local v4           #end:I
    .end local v6           #tab:Z
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    .restart local v4       #end:I
    goto :goto_0
.end method

.method private getLineVisibleEnd(III)I
    .locals 4
    .parameter "line"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x1

    .line 1121
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1123
    .local v1, text:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne p1, v2, :cond_1

    move v2, p3

    .line 1140
    :goto_0
    return v2

    .line 1127
    .local v0, ch:C
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .end local v0           #ch:C
    :cond_1
    if-le p3, p2, :cond_3

    .line 1128
    sub-int v2, p3, v3

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1130
    .restart local v0       #ch:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 1131
    sub-int v2, p3, v3

    goto :goto_0

    .line 1134
    :cond_2
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    .end local v0           #ch:C
    :cond_3
    move v2, p3

    .line 1140
    goto :goto_0
.end method

.method private getOffsetAtStartOf(I)I
    .locals 10
    .parameter "offset"

    .prologue
    .line 1368
    if-nez p1, :cond_0

    .line 1369
    const/4 v8, 0x0

    .line 1394
    :goto_0
    return v8

    .line 1371
    :cond_0
    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1372
    .local v7, text:Ljava/lang/CharSequence;
    invoke-interface {v7, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1374
    .local v1, c:C
    const v8, 0xdc00

    if-lt v1, v8, :cond_1

    const v8, 0xdfff

    if-gt v1, v8, :cond_1

    .line 1375
    const/4 v8, 0x1

    sub-int v8, p1, v8

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1377
    .local v2, c1:C
    const v8, 0xd800

    if-lt v2, v8, :cond_1

    const v8, 0xdbff

    if-gt v2, v8, :cond_1

    .line 1378
    add-int/lit8 p1, p1, -0x1

    .line 1381
    .end local v2           #c1:C
    :cond_1
    iget-boolean v8, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v8, :cond_3

    .line 1382
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    const-class v9, Landroid/text/style/ReplacementSpan;

    invoke-interface {v8, p1, p1, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 1385
    .local v5, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, v5

    if-ge v4, v8, :cond_3

    .line 1386
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v5, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1387
    .local v6, start:I
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v5, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1389
    .local v3, end:I
    if-ge v6, p1, :cond_2

    if-le v3, p1, :cond_2

    .line 1390
    move p1, v6

    .line 1385
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v6           #start:I
    :cond_3
    move v8, p1

    .line 1394
    goto :goto_0
.end method

.method private static measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IIIILandroid/text/Layout$Directions;ZZZ[Ljava/lang/Object;)F
    .locals 19
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "offset"
    .parameter "end"
    .parameter "dir"
    .parameter "directions"
    .parameter "trailing"
    .parameter "alt"
    .parameter "hasTabs"
    .parameter "tabs"

    .prologue
    .line 1873
    const/4 v5, 0x0

    .line 1875
    .local v5, buf:[C
    if-eqz p10, :cond_0

    .line 1876
    sub-int v5, p5, p3

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    .end local v5           #buf:[C
    move-result-object v5

    .line 1877
    .restart local v5       #buf:[C
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    move-object v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    :cond_0
    move-object v6, v5

    .line 1880
    .end local v5           #buf:[C
    .local v6, buf:[C
    const/4 v5, 0x0

    .line 1882
    .local v5, h:F
    if-eqz p9, :cond_1

    .line 1883
    const/4 v7, -0x1

    move/from16 v0, p6

    move v1, v7

    if-ne v0, v1, :cond_1

    .line 1884
    if-nez p8, :cond_8

    const/16 p8, 0x1

    .line 1887
    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 1888
    .local v7, here:I
    const/4 v8, 0x0

    .local v8, i:I
    move/from16 v16, v8

    .end local v8           #i:I
    .local v16, i:I
    move v9, v7

    .end local v7           #here:I
    .local v9, here:I
    :goto_1
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static/range {p7 .. p7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v7

    array-length v7, v7

    move/from16 v0, v16

    move v1, v7

    if-ge v0, v1, :cond_19

    .line 1889
    if-eqz p9, :cond_2

    .line 1890
    if-nez p8, :cond_9

    const/16 p8, 0x1

    .line 1892
    :cond_2
    :goto_2
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static/range {p7 .. p7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v7

    aget-short v7, v7, v16

    add-int/2addr v7, v9

    .line 1893
    .local v7, there:I
    sub-int v8, p5, p3

    if-le v7, v8, :cond_3

    .line 1894
    sub-int v7, p5, p3

    .line 1896
    :cond_3
    move v8, v9

    .line 1897
    .local v8, segstart:I
    if-eqz p10, :cond_a

    .local v9, j:I
    :goto_3
    move/from16 v17, v9

    .end local v9           #j:I
    .local v17, j:I
    move v15, v5

    .end local v5           #h:F
    .local v15, h:F
    :goto_4
    move/from16 v0, v17

    move v1, v7

    if-gt v0, v1, :cond_18

    .line 1898
    const/4 v9, 0x0

    .line 1899
    .local v9, codept:I
    const/4 v5, 0x0

    .line 1901
    .local v5, bm:Landroid/graphics/Bitmap;
    if-eqz p10, :cond_4

    move/from16 v0, v17

    move v1, v7

    if-ge v0, v1, :cond_4

    .line 1902
    aget-char v9, v6, v17

    .line 1905
    :cond_4
    const v10, 0xd800

    if-lt v9, v10, :cond_5

    const v10, 0xdfff

    if-gt v9, v10, :cond_5

    add-int/lit8 v10, v17, 0x1

    if-ge v10, v7, :cond_5

    .line 1906
    move-object v0, v6

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v9

    .line 1908
    sget v10, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v9, v10, :cond_5

    sget v10, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v9, v10, :cond_5

    .line 1909
    sget-object v5, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .end local v5           #bm:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v9}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1913
    .restart local v5       #bm:Landroid/graphics/Bitmap;
    :cond_5
    move/from16 v0, v17

    move v1, v7

    if-eq v0, v1, :cond_6

    const/16 v10, 0x9

    if-eq v9, v10, :cond_6

    if-eqz v5, :cond_1c

    .line 1916
    :cond_6
    add-int v9, p3, v17

    move/from16 v0, p4

    move v1, v9

    if-lt v0, v1, :cond_7

    .end local v9           #codept:I
    if-eqz p8, :cond_e

    add-int v9, p3, v17

    move/from16 v0, p4

    move v1, v9

    if-gt v0, v1, :cond_e

    .line 1918
    :cond_7
    const/4 v9, 0x1

    move/from16 v0, p6

    move v1, v9

    if-ne v0, v1, :cond_c

    and-int/lit8 v9, v16, 0x1

    if-nez v9, :cond_c

    .line 1921
    sget-boolean p5, Landroid/text/Layout;->isBidiEnabled:Z

    .end local p5
    if-eqz p5, :cond_b

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 1923
    invoke-static/range {v5 .. v10}, Landroid/text/Layout;->ArabicMeasureText(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIII)F

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v6           #buf:[C
    move-result p0

    .end local p0
    add-float p0, p0, v15

    .end local v15           #h:F
    .local p0, h:F
    :goto_5
    move/from16 p1, p0

    .line 2040
    .end local v7           #there:I
    .end local v8           #segstart:I
    .end local v17           #j:I
    .end local p0           #h:F
    .local p1, h:F
    :goto_6
    return p1

    .line 1884
    .end local v16           #i:I
    .local v5, h:F
    .restart local v6       #buf:[C
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    .restart local p5
    :cond_8
    const/16 p8, 0x0

    goto/16 :goto_0

    .line 1890
    .local v9, here:I
    .restart local v16       #i:I
    :cond_9
    const/16 p8, 0x0

    goto/16 :goto_2

    .restart local v7       #there:I
    .restart local v8       #segstart:I
    :cond_a
    move v9, v7

    .line 1897
    goto :goto_3

    .line 1927
    .end local v9           #here:I
    .end local p5
    .local v5, bm:Landroid/graphics/Bitmap;
    .restart local v15       #h:F
    .restart local v17       #j:I
    :cond_b
    add-int v12, p3, v8

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v13, p4

    invoke-static/range {v9 .. v14}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    add-float p0, p0, v15

    .end local v15           #h:F
    .local p0, h:F
    goto :goto_5

    .line 1936
    .restart local v15       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .restart local p5
    :cond_c
    const/4 v9, -0x1

    move/from16 v0, p6

    move v1, v9

    if-ne v0, v1, :cond_e

    and-int/lit8 v9, v16, 0x1

    if-eqz v9, :cond_e

    .line 1939
    sget-boolean p5, Landroid/text/Layout;->isBidiEnabled:Z

    .end local p5
    if-eqz p5, :cond_d

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 1941
    invoke-static/range {v5 .. v10}, Landroid/text/Layout;->ArabicMeasureText(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIII)F

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v6           #buf:[C
    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v15, p0

    .end local v15           #h:F
    .local p0, h:F
    :goto_7
    move/from16 p1, p0

    .line 1951
    .end local p0           #h:F
    .local p1, h:F
    goto :goto_6

    .line 1945
    .restart local v5       #bm:Landroid/graphics/Bitmap;
    .restart local v6       #buf:[C
    .restart local v15       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_d
    add-int v12, p3, v8

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v13, p4

    invoke-static/range {v9 .. v14}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v15, p0

    .end local v15           #h:F
    .local p0, h:F
    goto :goto_7

    .line 1955
    .restart local v15       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .restart local p5
    :cond_e
    add-int v12, p3, v8

    add-int v13, p3, v17

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-static/range {v9 .. v14}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v18

    .line 1959
    .local v18, segw:F
    add-int v9, p3, v17

    move/from16 v0, p4

    move v1, v9

    if-lt v0, v1, :cond_f

    if-eqz p8, :cond_13

    add-int v9, p3, v17

    move/from16 v0, p4

    move v1, v9

    if-gt v0, v1, :cond_13

    .line 1961
    :cond_f
    const/4 v9, 0x1

    move/from16 v0, p6

    move v1, v9

    if-ne v0, v1, :cond_11

    .line 1964
    sget-boolean p5, Landroid/text/Layout;->isBidiEnabled:Z

    .end local p5
    if-eqz p5, :cond_10

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 1966
    invoke-static/range {v5 .. v10}, Landroid/text/Layout;->ArabicMeasureText(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIII)F

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v6           #buf:[C
    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v18, p0

    add-float p0, p0, v15

    .end local v15           #h:F
    .local p0, h:F
    :goto_8
    move/from16 p1, p0

    .line 1978
    .end local p0           #h:F
    .local p1, h:F
    goto/16 :goto_6

    .line 1970
    .restart local v5       #bm:Landroid/graphics/Bitmap;
    .restart local v6       #buf:[C
    .restart local v15       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_10
    add-int v12, p3, v8

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v13, p4

    invoke-static/range {v9 .. v14}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v18, p0

    add-float p0, p0, v15

    .end local v15           #h:F
    .local p0, h:F
    goto :goto_8

    .line 1981
    .restart local v15       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .restart local p5
    :cond_11
    const/4 v9, -0x1

    move/from16 v0, p6

    move v1, v9

    if-ne v0, v1, :cond_13

    .line 1984
    sget-boolean p5, Landroid/text/Layout;->isBidiEnabled:Z

    .end local p5
    if-eqz p5, :cond_12

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 1986
    invoke-static/range {v5 .. v10}, Landroid/text/Layout;->ArabicMeasureText(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIII)F

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v6           #buf:[C
    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v18, p0

    sub-float p0, v15, p0

    .end local v15           #h:F
    .local p0, h:F
    :goto_9
    move/from16 p1, p0

    .line 1997
    .end local p0           #h:F
    .local p1, h:F
    goto/16 :goto_6

    .line 1990
    .restart local v5       #bm:Landroid/graphics/Bitmap;
    .restart local v6       #buf:[C
    .restart local v15       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_12
    add-int v12, p3, v8

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v13, p4

    invoke-static/range {v9 .. v14}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result p0

    .end local p0           #paint:Landroid/text/TextPaint;
    sub-float p0, v18, p0

    sub-float p0, v15, p0

    .end local v15           #h:F
    .local p0, h:F
    goto :goto_9

    .line 2001
    .restart local v15       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .restart local p5
    :cond_13
    const/4 v8, -0x1

    move/from16 v0, p6

    move v1, v8

    if-ne v0, v1, :cond_14

    .line 2002
    .end local v8           #segstart:I
    sub-float v8, v15, v18

    .line 2006
    .end local v15           #h:F
    .local v8, h:F
    :goto_a
    move/from16 v0, v17

    move v1, v7

    if-eq v0, v1, :cond_16

    aget-char v9, v6, v17

    const/16 v10, 0x9

    if-ne v9, v10, :cond_16

    .line 2007
    add-int v9, p3, v17

    move/from16 v0, p4

    move v1, v9

    if-ne v0, v1, :cond_15

    move/from16 p0, v8

    .end local v8           #h:F
    .local p0, h:F
    move/from16 p1, v8

    .line 2008
    .end local p0           #h:F
    .local p1, h:F
    goto/16 :goto_6

    .line 2004
    .restart local v15       #h:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_14
    add-float v8, v15, v18

    .end local v15           #h:F
    .restart local v8       #h:F
    goto :goto_a

    .line 2010
    :cond_15
    move/from16 v0, p6

    int-to-float v0, v0

    move v9, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move v10, v0

    mul-float/2addr v8, v10

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    move v3, v8

    move-object/from16 v4, p11

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    .end local v8           #h:F
    move-result v8

    mul-float/2addr v8, v9

    .line 2013
    .restart local v8       #h:F
    :cond_16
    if-eqz v5, :cond_1b

    .line 2014
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 2015
    add-int/lit8 v13, v17, 0x2

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, v17

    invoke-static/range {v9 .. v14}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .line 2018
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    neg-float v10, v10

    mul-float/2addr v9, v10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    int-to-float v5, v5

    div-float v5, v9, v5

    .line 2021
    .local v5, wid:F
    const/4 v9, -0x1

    move/from16 v0, p6

    move v1, v9

    if-ne v0, v1, :cond_17

    .line 2022
    sub-float v5, v8, v5

    .line 2027
    .end local v8           #h:F
    .local v5, h:F
    :goto_b
    add-int/lit8 v8, v17, 0x1

    .end local v17           #j:I
    .local v8, j:I
    move v9, v8

    .line 2030
    .end local v8           #j:I
    .local v9, j:I
    :goto_c
    add-int/lit8 v8, v9, 0x1

    .line 1897
    .end local v18           #segw:F
    .local v8, segstart:I
    :goto_d
    add-int/lit8 v9, v9, 0x1

    move/from16 v17, v9

    .end local v9           #j:I
    .restart local v17       #j:I
    move v15, v5

    .end local v5           #h:F
    .restart local v15       #h:F
    goto/16 :goto_4

    .line 2024
    .end local v15           #h:F
    .local v5, wid:F
    .local v8, h:F
    .restart local v18       #segw:F
    :cond_17
    add-float/2addr v5, v8

    .end local v8           #h:F
    .local v5, h:F
    goto :goto_b

    .line 2034
    .end local v5           #h:F
    .end local v18           #segw:F
    .local v8, segstart:I
    .restart local v15       #h:F
    :cond_18
    move v5, v7

    .line 1888
    .local v5, here:I
    add-int/lit8 v7, v16, 0x1

    .end local v16           #i:I
    .local v7, i:I
    move/from16 v16, v7

    .end local v7           #i:I
    .restart local v16       #i:I
    move v9, v5

    .end local v5           #here:I
    .local v9, here:I
    move v5, v15

    .end local v15           #h:F
    .local v5, h:F
    goto/16 :goto_1

    .line 2037
    .end local v8           #segstart:I
    .end local v17           #j:I
    :cond_19
    if-eqz p10, :cond_1a

    .line 2038
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    :cond_1a
    move/from16 p0, v5

    .end local v5           #h:F
    .local p0, h:F
    move/from16 p1, v5

    .line 2040
    .end local p0           #h:F
    .local p1, h:F
    goto/16 :goto_6

    .end local v9           #here:I
    .local v5, bm:Landroid/graphics/Bitmap;
    .local v7, there:I
    .local v8, h:F
    .restart local v17       #j:I
    .restart local v18       #segw:F
    .local p0, paint:Landroid/text/TextPaint;
    .local p1, workPaint:Landroid/text/TextPaint;
    :cond_1b
    move/from16 v9, v17

    .end local v17           #j:I
    .local v9, j:I
    move v5, v8

    .end local v8           #h:F
    .local v5, h:F
    goto :goto_c

    .end local v18           #segw:F
    .local v5, bm:Landroid/graphics/Bitmap;
    .local v8, segstart:I
    .local v9, codept:I
    .restart local v15       #h:F
    .restart local v17       #j:I
    :cond_1c
    move/from16 v9, v17

    .end local v17           #j:I
    .local v9, j:I
    move v5, v15

    .end local v15           #h:F
    .local v5, h:F
    goto :goto_d
.end method

.method static measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;Z[Ljava/lang/Object;)F
    .locals 20
    .parameter "paint"
    .parameter "workPaint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"
    .parameter "hasTabs"
    .parameter "tabs"

    .prologue
    .line 2064
    const/4 v5, 0x0

    .line 2066
    .local v5, buf:[C
    if-eqz p6, :cond_0

    .line 2067
    sub-int v5, p4, p3

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    .end local v5           #buf:[C
    move-result-object v5

    .line 2068
    .restart local v5       #buf:[C
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    :cond_0
    move-object v14, v5

    .line 2071
    .end local v5           #buf:[C
    .local v14, buf:[C
    sub-int v16, p4, p3

    .line 2073
    .local v16, len:I
    const/4 v8, 0x0

    .line 2074
    .local v8, lastPos:I
    const/4 v11, 0x0

    .line 2075
    .local v11, width:F
    const/4 v5, 0x0

    .local v5, ascent:I
    const/4 v7, 0x0

    .local v7, descent:I
    const/4 v10, 0x0

    .local v10, top:I
    const/4 v6, 0x0

    .line 2077
    .local v6, bottom:I
    if-eqz p5, :cond_1

    .line 2078
    const/4 v9, 0x0

    move v0, v9

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 2079
    const/4 v9, 0x0

    move v0, v9

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 2082
    :cond_1
    if-eqz p6, :cond_5

    const/4 v9, 0x0

    .local v9, pos:I
    :goto_0
    move/from16 v17, v9

    .end local v9           #pos:I
    .local v17, pos:I
    move v13, v6

    .end local v6           #bottom:I
    .local v13, bottom:I
    move/from16 v18, v10

    .end local v10           #top:I
    .local v18, top:I
    move v15, v7

    .end local v7           #descent:I
    .local v15, descent:I
    move/from16 v19, v11

    .end local v11           #width:F
    .local v19, width:F
    move v11, v5

    .end local v5           #ascent:I
    .local v11, ascent:I
    move v7, v8

    .end local v8           #lastPos:I
    .local v7, lastPos:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-gt v0, v1, :cond_8

    .line 2083
    const/4 v6, 0x0

    .line 2084
    .local v6, codept:I
    const/4 v5, 0x0

    .line 2086
    .local v5, bm:Landroid/graphics/Bitmap;
    if-eqz p6, :cond_2

    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 2087
    aget-char v6, v14, v17

    .line 2090
    :cond_2
    const v8, 0xd800

    if-lt v6, v8, :cond_12

    const v8, 0xdfff

    if-gt v6, v8, :cond_12

    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_12

    .line 2091
    move-object v0, v14

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v6

    .line 2093
    sget v8, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v6, v8, :cond_12

    sget v8, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v6, v8, :cond_12

    .line 2094
    sget-object v5, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .end local v5           #bm:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v6}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5       #bm:Landroid/graphics/Bitmap;
    move-object v12, v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .local v12, bm:Landroid/graphics/Bitmap;
    move v5, v6

    .line 2098
    .end local v6           #codept:I
    .local v5, codept:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    const/16 v6, 0x9

    if-eq v5, v6, :cond_3

    if-eqz v12, :cond_11

    .line 2099
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 2101
    .end local v5           #codept:I
    add-int v8, p3, v7

    add-int v9, p3, v17

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p5

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .end local v7           #lastPos:I
    move-result v5

    add-float v19, v19, v5

    .line 2105
    if-eqz p5, :cond_4

    .line 2106
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v5, v0

    if-gez v5, :cond_6

    .line 2107
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 2108
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 2115
    :cond_4
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_10

    .line 2116
    if-nez v12, :cond_7

    .line 2118
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, v19

    move-object/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F

    move-result v5

    .end local v19           #width:F
    .local v5, width:F
    move/from16 v9, v17

    .end local v17           #pos:I
    .restart local v9       #pos:I
    move v12, v5

    .line 2141
    .end local v5           #width:F
    .local v12, width:F
    :goto_4
    if-eqz p5, :cond_f

    .line 2142
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    if-ge v5, v11, :cond_e

    .line 2143
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v5, v0

    .line 2145
    .end local v11           #ascent:I
    .local v5, ascent:I
    :goto_5
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v6, v0

    if-le v6, v15, :cond_d

    .line 2146
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v6, v0

    .end local v15           #descent:I
    .local v6, descent:I
    move v7, v6

    .line 2149
    .end local v6           #descent:I
    .local v7, descent:I
    :goto_6
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v6, v0

    move v0, v6

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 2150
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move v6, v0

    .end local v18           #top:I
    .local v6, top:I
    move v8, v6

    .line 2152
    .end local v6           #top:I
    .local v8, top:I
    :goto_7
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v6, v0

    if-le v6, v13, :cond_b

    .line 2153
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v6, v0

    .end local v13           #bottom:I
    .local v6, bottom:I
    move v10, v8

    .line 2160
    .end local v8           #top:I
    .restart local v10       #top:I
    :goto_8
    add-int/lit8 v8, v9, 0x1

    .local v8, lastPos:I
    move v11, v12

    .line 2082
    .end local v12           #width:F
    .local v11, width:F
    :goto_9
    add-int/lit8 v9, v9, 0x1

    move/from16 v17, v9

    .end local v9           #pos:I
    .restart local v17       #pos:I
    move v13, v6

    .end local v6           #bottom:I
    .restart local v13       #bottom:I
    move/from16 v18, v10

    .end local v10           #top:I
    .restart local v18       #top:I
    move v15, v7

    .end local v7           #descent:I
    .restart local v15       #descent:I
    move/from16 v19, v11

    .end local v11           #width:F
    .restart local v19       #width:F
    move v11, v5

    .end local v5           #ascent:I
    .local v11, ascent:I
    move v7, v8

    .end local v8           #lastPos:I
    .local v7, lastPos:I
    goto/16 :goto_1

    .end local v13           #bottom:I
    .end local v15           #descent:I
    .end local v17           #pos:I
    .end local v18           #top:I
    .end local v19           #width:F
    .restart local v5       #ascent:I
    .restart local v6       #bottom:I
    .local v7, descent:I
    .restart local v8       #lastPos:I
    .restart local v10       #top:I
    .local v11, width:F
    :cond_5
    move/from16 v9, v16

    goto/16 :goto_0

    .line 2110
    .end local v5           #ascent:I
    .end local v6           #bottom:I
    .end local v7           #descent:I
    .end local v8           #lastPos:I
    .end local v10           #top:I
    .local v11, ascent:I
    .local v12, bm:Landroid/graphics/Bitmap;
    .restart local v13       #bottom:I
    .restart local v15       #descent:I
    .restart local v17       #pos:I
    .restart local v18       #top:I
    .restart local v19       #width:F
    :cond_6
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 2111
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto/16 :goto_3

    .line 2128
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 2129
    add-int v8, p3, v17

    add-int v5, p3, v17

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .line 2132
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float v6, v19, v5

    .line 2137
    .end local v19           #width:F
    .local v6, width:F
    add-int/lit8 v5, v17, 0x1

    .end local v17           #pos:I
    .local v5, pos:I
    move v9, v5

    .end local v5           #pos:I
    .restart local v9       #pos:I
    move v12, v6

    .end local v6           #width:F
    .local v12, width:F
    goto/16 :goto_4

    .line 2164
    .end local v9           #pos:I
    .end local v12           #width:F
    .local v7, lastPos:I
    .restart local v17       #pos:I
    .restart local v19       #width:F
    :cond_8
    if-eqz p5, :cond_9

    .line 2165
    move v0, v11

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 2166
    move v0, v15

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 2167
    move/from16 v0, v18

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 2168
    move v0, v13

    move-object/from16 v1, p5

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 2171
    :cond_9
    if-eqz p6, :cond_a

    .line 2172
    invoke-static {v14}, Landroid/text/TextUtils;->recycle([C)V

    .line 2174
    :cond_a
    return v19

    .end local v11           #ascent:I
    .end local v15           #descent:I
    .end local v17           #pos:I
    .end local v18           #top:I
    .end local v19           #width:F
    .local v5, ascent:I
    .local v7, descent:I
    .local v8, top:I
    .restart local v9       #pos:I
    .restart local v12       #width:F
    :cond_b
    move v6, v13

    .end local v13           #bottom:I
    .local v6, bottom:I
    move v10, v8

    .end local v8           #top:I
    .restart local v10       #top:I
    goto/16 :goto_8

    .end local v6           #bottom:I
    .end local v10           #top:I
    .restart local v13       #bottom:I
    .restart local v18       #top:I
    :cond_c
    move/from16 v8, v18

    .end local v18           #top:I
    .restart local v8       #top:I
    goto/16 :goto_7

    .end local v7           #descent:I
    .end local v8           #top:I
    .restart local v15       #descent:I
    .restart local v18       #top:I
    :cond_d
    move v7, v15

    .end local v15           #descent:I
    .restart local v7       #descent:I
    goto/16 :goto_6

    .end local v5           #ascent:I
    .end local v7           #descent:I
    .restart local v11       #ascent:I
    .restart local v15       #descent:I
    :cond_e
    move v5, v11

    .end local v11           #ascent:I
    .restart local v5       #ascent:I
    goto/16 :goto_5

    .end local v5           #ascent:I
    .restart local v11       #ascent:I
    :cond_f
    move v6, v13

    .end local v13           #bottom:I
    .restart local v6       #bottom:I
    move/from16 v10, v18

    .end local v18           #top:I
    .restart local v10       #top:I
    move v7, v15

    .end local v15           #descent:I
    .restart local v7       #descent:I
    move v5, v11

    .end local v11           #ascent:I
    .restart local v5       #ascent:I
    goto/16 :goto_8

    .end local v5           #ascent:I
    .end local v6           #bottom:I
    .end local v7           #descent:I
    .end local v9           #pos:I
    .end local v10           #top:I
    .restart local v11       #ascent:I
    .local v12, bm:Landroid/graphics/Bitmap;
    .restart local v13       #bottom:I
    .restart local v15       #descent:I
    .restart local v17       #pos:I
    .restart local v18       #top:I
    .restart local v19       #width:F
    :cond_10
    move/from16 v9, v17

    .end local v17           #pos:I
    .restart local v9       #pos:I
    move/from16 v12, v19

    .end local v19           #width:F
    .local v12, width:F
    goto/16 :goto_4

    .end local v9           #pos:I
    .local v5, codept:I
    .local v7, lastPos:I
    .local v12, bm:Landroid/graphics/Bitmap;
    .restart local v17       #pos:I
    .restart local v19       #width:F
    :cond_11
    move/from16 v9, v17

    .end local v17           #pos:I
    .restart local v9       #pos:I
    move v6, v13

    .end local v13           #bottom:I
    .restart local v6       #bottom:I
    move/from16 v10, v18

    .end local v18           #top:I
    .restart local v10       #top:I
    move v5, v11

    .end local v11           #ascent:I
    .local v5, ascent:I
    move v8, v7

    .end local v7           #lastPos:I
    .local v8, lastPos:I
    move/from16 v11, v19

    .end local v19           #width:F
    .local v11, width:F
    move v7, v15

    .end local v15           #descent:I
    .local v7, descent:I
    goto/16 :goto_9

    .end local v8           #lastPos:I
    .end local v9           #pos:I
    .end local v10           #top:I
    .end local v12           #bm:Landroid/graphics/Bitmap;
    .local v5, bm:Landroid/graphics/Bitmap;
    .local v6, codept:I
    .local v7, lastPos:I
    .local v11, ascent:I
    .restart local v13       #bottom:I
    .restart local v15       #descent:I
    .restart local v17       #pos:I
    .restart local v18       #top:I
    .restart local v19       #width:F
    :cond_12
    move-object v12, v5

    .end local v5           #bm:Landroid/graphics/Bitmap;
    .restart local v12       #bm:Landroid/graphics/Bitmap;
    move v5, v6

    .end local v6           #codept:I
    .local v5, codept:I
    goto/16 :goto_2
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 6
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "h"
    .parameter "tabs"

    .prologue
    const/high16 v5, 0x41a0

    .line 2191
    const v2, 0x7f7fffff

    .line 2192
    .local v2, nh:F
    const/4 v0, 0x0

    .line 2194
    .local v0, alltabs:Z
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_4

    .line 2195
    if-nez p4, :cond_0

    .line 2196
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 2197
    const/4 v0, 0x1

    .line 2200
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_3

    .line 2201
    if-nez v0, :cond_2

    .line 2202
    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_2

    .line 2200
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2206
    :cond_2
    aget-object p0, p4, v1

    check-cast p0, Landroid/text/style/TabStopSpan;

    invoke-interface {p0}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 2208
    .local v3, where:I
    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_1

    .line 2209
    int-to-float v2, v3

    goto :goto_1

    .line 2212
    .end local v3           #where:I
    :cond_3
    const v4, 0x7f7fffff

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    move v4, v2

    .line 2216
    .end local v1           #i:I
    :goto_2
    return v4

    :cond_4
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    goto :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 155
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 67
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 170
    sget-boolean v5, Landroid/text/Layout;->isBidiEnabled:Z

    if-eqz v5, :cond_1

    .line 171
    invoke-direct/range {p0 .. p4}, Landroid/text/Layout;->draw_CIT(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 384
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local p2
    :cond_1
    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    .line 179
    :try_start_0
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 180
    monitor-exit v5

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 183
    :cond_2
    :try_start_1
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v51, v0

    .line 184
    .local v51, dtop:I
    sget-object v6, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v50, v0

    .line 185
    .local v50, dbottom:I
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    const/16 v64, 0x0

    .line 189
    .local v64, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v48

    .line 191
    .local v48, bottom:I
    move/from16 v0, v51

    move/from16 v1, v64

    if-le v0, v1, :cond_3

    .line 192
    move/from16 v64, v51

    .line 194
    :cond_3
    move/from16 v0, v50

    move/from16 v1, v48

    if-ge v0, v1, :cond_4

    .line 195
    move/from16 v48, v50

    .line 198
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v52

    .line 199
    .local v52, first:I
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v54

    .line 201
    .local v54, last:I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v58

    .line 202
    .local v58, previousLineBottom:I
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v59

    .line 204
    .local v59, previousLineEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v6, v0

    .line 205
    .local v6, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v0

    .line 206
    .local v12, buf:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v8, v0

    .line 207
    .local v8, width:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v62, v0

    .line 209
    .local v62, spannedText:Z
    sget-object v46, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 210
    .local v46, spans:[Landroid/text/style/ParagraphStyle;
    const/16 v61, 0x0

    .line 211
    .local v61, spanend:I
    const/16 v63, 0x0

    .line 216
    .local v63, textLength:I
    if-eqz v62, :cond_8

    .line 217
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v63

    .line 218
    move/from16 v15, v52

    .local v15, i:I
    :goto_1
    move v0, v15

    move/from16 v1, v54

    if-gt v0, v1, :cond_7

    .line 219
    move/from16 v13, v59

    .line 220
    .local v13, start:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 221
    .local v14, end:I
    move/from16 v59, v14

    .line 223
    move/from16 v9, v58

    .line 224
    .local v9, ltop:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 225
    .local v11, lbottom:I
    move/from16 v58, v11

    .line 226
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v10, v11, v5

    .line 228
    .local v10, lbaseline:I
    move v0, v13

    move/from16 v1, v61

    if-lt v0, v1, :cond_5

    .line 229
    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v60, v0

    .line 230
    .local v60, sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v63

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v61

    .line 232
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v61

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v46

    .end local v46           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v46, [Landroid/text/style/ParagraphStyle;

    .line 236
    .end local v60           #sp:Landroid/text/Spanned;
    .restart local v46       #spans:[Landroid/text/style/ParagraphStyle;
    :cond_5
    const/16 v57, 0x0

    .local v57, n:I
    :goto_2
    move-object/from16 v0, v46

    array-length v0, v0

    move v5, v0

    move/from16 v0, v57

    move v1, v5

    if-ge v0, v1, :cond_6

    .line 237
    aget-object v4, v46, v57

    check-cast v4, Landroid/text/style/LineBackgroundSpan;

    .line 239
    .local v4, back:Landroid/text/style/LineBackgroundSpan;
    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v15}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 236
    add-int/lit8 v57, v57, 0x1

    goto :goto_2

    .line 218
    .end local v4           #back:Landroid/text/style/LineBackgroundSpan;
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 246
    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    .end local v11           #lbottom:I
    .end local v13           #start:I
    .end local v14           #end:I
    .end local v57           #n:I
    :cond_7
    const/16 v61, 0x0

    .line 247
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v58

    .line 248
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v59

    .line 249
    sget-object v46, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 254
    .end local v15           #i:I
    :cond_8
    if-eqz p2, :cond_a

    .line 255
    if-eqz p4, :cond_9

    .line 256
    const/4 v5, 0x0

    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 259
    :cond_9
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 261
    if-eqz p4, :cond_a

    .line 262
    const/4 v5, 0x0

    move/from16 v0, p4

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 266
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v47, v0

    .line 271
    .local v47, align:Landroid/text/Layout$Alignment;
    move/from16 v15, v52

    .end local p2
    .restart local v15       #i:I
    :goto_3
    move v0, v15

    move/from16 v1, v54

    if-gt v0, v1, :cond_0

    .line 272
    move/from16 v13, v59

    .line 274
    .restart local v13       #start:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v59

    .line 275
    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v59

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v14

    .line 277
    .restart local v14       #end:I
    move/from16 v9, v58

    .line 278
    .restart local v9       #ltop:I
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 279
    .restart local v11       #lbottom:I
    move/from16 v58, v11

    .line 280
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v10, v11, v5

    .line 282
    .restart local v10       #lbaseline:I
    const/16 v27, 0x0

    .line 283
    .local v27, isFirstParaLine:Z
    if-eqz v62, :cond_d

    .line 284
    if-eqz v13, :cond_b

    const/4 v5, 0x1

    sub-int v5, v13, v5

    invoke-interface {v12, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0xa

    if-ne v5, v7, :cond_c

    .line 285
    :cond_b
    const/16 v27, 0x1

    .line 289
    :cond_c
    move v0, v13

    move/from16 v1, v61

    if-lt v0, v1, :cond_d

    .line 290
    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v60, v0

    .line 291
    .restart local v60       #sp:Landroid/text/Spanned;
    const-class v5, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v63

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v61

    .line 293
    const-class v5, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v60

    move v1, v13

    move/from16 v2, v61

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v46

    .end local v46           #spans:[Landroid/text/style/ParagraphStyle;
    check-cast v46, [Landroid/text/style/ParagraphStyle;

    .line 295
    .restart local v46       #spans:[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v47, v0

    .line 296
    move-object/from16 v0, v46

    array-length v0, v0

    move v5, v0

    const/4 v7, 0x1

    sub-int v57, v5, v7

    .restart local v57       #n:I
    :goto_4
    if-ltz v57, :cond_d

    .line 297
    aget-object v5, v46, v57

    instance-of v5, v5, Landroid/text/style/AlignmentSpan;

    if-eqz v5, :cond_f

    .line 298
    aget-object p2, v46, v57

    check-cast p2, Landroid/text/style/AlignmentSpan;

    invoke-interface/range {p2 .. p2}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v47

    .line 305
    .end local v57           #n:I
    .end local v60           #sp:Landroid/text/Spanned;
    :cond_d
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v20

    .line 306
    .local v20, dir:I
    const/16 v31, 0x0

    .line 307
    .local v31, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v19, v0

    .line 311
    .local v19, right:I
    if-eqz v62, :cond_13

    .line 312
    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v55, v0

    .line 313
    .local v55, length:I
    const/16 v57, 0x0

    .restart local v57       #n:I
    :goto_5
    move/from16 v0, v57

    move/from16 v1, v55

    if-ge v0, v1, :cond_13

    .line 314
    aget-object v5, v46, v57

    instance-of v5, v5, Landroid/text/style/LeadingMarginSpan;

    if-eqz v5, :cond_e

    .line 315
    aget-object v16, v46, v57

    check-cast v16, Landroid/text/style/LeadingMarginSpan;

    .line 317
    .local v16, margin:Landroid/text/style/LeadingMarginSpan;
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_10

    move-object/from16 v17, p1

    move-object/from16 v18, v6

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v28, p0

    .line 318
    invoke-interface/range {v16 .. v28}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 322
    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v19, v19, v5

    .line 313
    .end local v16           #margin:Landroid/text/style/LeadingMarginSpan;
    :cond_e
    :goto_6
    add-int/lit8 v57, v57, 0x1

    goto :goto_5

    .line 296
    .end local v19           #right:I
    .end local v20           #dir:I
    .end local v31           #left:I
    .end local v55           #length:I
    .restart local v60       #sp:Landroid/text/Spanned;
    :cond_f
    add-int/lit8 v57, v57, -0x1

    goto :goto_4

    .end local v60           #sp:Landroid/text/Spanned;
    .restart local v16       #margin:Landroid/text/style/LeadingMarginSpan;
    .restart local v19       #right:I
    .restart local v20       #dir:I
    .restart local v31       #left:I
    .restart local v55       #length:I
    :cond_10
    move-object/from16 v28, v16

    move-object/from16 v29, p1

    move-object/from16 v30, v6

    move/from16 v32, v20

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v11

    move-object/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move/from16 v39, v27

    move-object/from16 v40, p0

    .line 324
    invoke-interface/range {v28 .. v40}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 328
    move/from16 v65, v27

    .line 329
    .local v65, useMargin:Z
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move v5, v0

    if-eqz v5, :cond_11

    .line 330
    move-object/from16 v0, v16

    check-cast v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v49

    .line 331
    .local v49, count:I
    move/from16 v0, v49

    move v1, v15

    if-le v0, v1, :cond_12

    const/4 v5, 0x1

    move/from16 v65, v5

    .line 333
    .end local v49           #count:I
    :cond_11
    :goto_7
    move-object/from16 v0, v16

    move/from16 v1, v65

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    add-int v31, v31, v5

    goto :goto_6

    .line 331
    .restart local v49       #count:I
    :cond_12
    const/4 v5, 0x0

    move/from16 v65, v5

    goto :goto_7

    .line 342
    .end local v16           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v49           #count:I
    .end local v55           #length:I
    .end local v57           #n:I
    .end local v65           #useMargin:Z
    :cond_13
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v47

    move-object v1, v5

    if-ne v0, v1, :cond_15

    .line 343
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_14

    .line 344
    move/from16 v66, v31

    .line 368
    .local v66, x:I
    :goto_8
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v38

    .line 369
    .local v38, directions:Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v45

    .line 370
    .local v45, hasTab:Z
    sget-object v5, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v38

    move-object v1, v5

    if-ne v0, v1, :cond_19

    if-nez v62, :cond_19

    if-nez v45, :cond_19

    .line 377
    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v36, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v32, p1

    move-object/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move-object/from16 v38, v6

    invoke-virtual/range {v32 .. v38}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 271
    .end local v38           #directions:Landroid/text/Layout$Directions;
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 346
    .end local v45           #hasTab:Z
    .end local v66           #x:I
    :cond_14
    move/from16 v66, v19

    .restart local v66       #x:I
    goto :goto_8

    .line 349
    .end local v66           #x:I
    :cond_15
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v46

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v56, v0

    .line 350
    .local v56, max:I
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v47

    move-object v1, v5

    if-ne v0, v1, :cond_17

    .line 351
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_16

    .line 352
    add-int v66, v31, v56

    .restart local v66       #x:I
    goto :goto_8

    .line 354
    .end local v66           #x:I
    :cond_16
    sub-int v66, v19, v56

    .restart local v66       #x:I
    goto :goto_8

    .line 358
    .end local v66           #x:I
    :cond_17
    and-int/lit8 v56, v56, -0x2

    .line 359
    sub-int v5, v19, v31

    sub-int v5, v5, v56

    shr-int/lit8 v53, v5, 0x1

    .line 360
    .local v53, half:I
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_18

    .line 361
    sub-int v66, v19, v53

    .restart local v66       #x:I
    goto :goto_8

    .line 363
    .end local v66           #x:I
    :cond_18
    add-int v66, v31, v53

    .restart local v66       #x:I
    goto :goto_8

    .line 379
    .end local v53           #half:I
    .end local v56           #max:I
    .restart local v38       #directions:Landroid/text/Layout$Directions;
    .restart local v45       #hasTab:Z
    :cond_19
    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v44, v0

    move-object/from16 v32, p0

    move-object/from16 v33, p1

    move-object/from16 v34, v12

    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v37, v20

    move/from16 v40, v9

    move/from16 v41, v10

    move/from16 v42, v11

    move-object/from16 v43, v6

    invoke-direct/range {v32 .. v46}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;FIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 11
    .parameter "point"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 1405
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1407
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 1408
    .local v6, line:I
    invoke-virtual {p0, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 1409
    .local v7, top:I
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1411
    .local v0, bottom:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v4, v8, v9

    .line 1412
    .local v4, h1:F
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v5, v8, v9

    .line 1414
    .local v5, h2:F
    const/4 v8, 0x1

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v8

    const/high16 v9, 0x1

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    or-int v1, v8, v9

    .line 1418
    .local v1, caps:I
    const/4 v8, 0x2

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1420
    .local v3, fn:I
    const/4 v2, 0x0

    .line 1422
    .local v2, dist:I
    if-nez v1, :cond_0

    if-eqz v3, :cond_2

    .line 1423
    :cond_0
    sub-int v8, v0, v7

    shr-int/lit8 v2, v8, 0x2

    .line 1425
    if-eqz v3, :cond_1

    .line 1426
    add-int/2addr v7, v2

    .line 1427
    :cond_1
    if-eqz v1, :cond_2

    .line 1428
    sub-int/2addr v0, v2

    .line 1431
    :cond_2
    const/high16 v8, 0x3f00

    cmpg-float v8, v4, v8

    if-gez v8, :cond_3

    .line 1432
    const/high16 v4, 0x3f00

    .line 1433
    :cond_3
    const/high16 v8, 0x3f00

    cmpg-float v8, v5, v8

    if-gez v8, :cond_4

    .line 1434
    const/high16 v5, 0x3f00

    .line 1436
    :cond_4
    cmpl-float v8, v4, v5

    if-nez v8, :cond_7

    .line 1437
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1438
    int-to-float v8, v0

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1447
    :goto_0
    const/4 v8, 0x2

    if-ne v1, v8, :cond_8

    .line 1448
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1449
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1450
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1451
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1463
    :cond_5
    :goto_1
    const/4 v8, 0x2

    if-ne v3, v8, :cond_9

    .line 1464
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1465
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1466
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1467
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1478
    :cond_6
    :goto_2
    return-void

    .line 1440
    :cond_7
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1441
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1443
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1444
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 1452
    :cond_8
    const/4 v8, 0x1

    if-ne v1, v8, :cond_5

    .line 1453
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1454
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1456
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1457
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1459
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1460
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 1468
    :cond_9
    const/4 v8, 0x1

    if-ne v3, v8, :cond_6

    .line 1469
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1470
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1472
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1473
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1475
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1476
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 707
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1164
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1155
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1147
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1
    .parameter "line"
    .parameter "bounds"

    .prologue
    .line 745
    if-eqz p2, :cond_0

    .line 746
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 747
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 748
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 749
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 751
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1105
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 5
    .parameter "offset"

    .prologue
    .line 1005
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 1007
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1008
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1010
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1011
    move v1, v0

    goto :goto_0

    .line 1013
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1016
    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    .line 1017
    const/4 v3, 0x0

    .line 1019
    :goto_1
    return v3

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public getLineForVertical(I)I
    .locals 5
    .parameter "vertical"

    .prologue
    .line 982
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 984
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 985
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 987
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 988
    move v1, v0

    goto :goto_0

    .line 990
    :cond_0
    move v2, v0

    goto :goto_0

    .line 993
    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    .line 994
    const/4 v3, 0x0

    .line 996
    :goto_1
    return v3

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public getLineLeft(I)F
    .locals 8
    .parameter "line"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 891
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 892
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 894
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1

    .line 895
    if-ne v1, v7, :cond_0

    .line 896
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    .line 909
    :goto_0
    return v5

    :cond_0
    move v5, v6

    .line 898
    goto :goto_0

    .line 899
    :cond_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 900
    if-ne v1, v7, :cond_2

    move v5, v6

    .line 901
    goto :goto_0

    .line 903
    :cond_2
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 905
    :cond_3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 906
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 907
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 909
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_0
.end method

.method public getLineMax(I)F
    .locals 2
    .parameter "line"

    .prologue
    .line 945
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    return v0
.end method

.method public getLineRight(I)F
    .locals 7
    .parameter "line"

    .prologue
    const/4 v6, -0x1

    .line 918
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 919
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 921
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1

    .line 922
    if-ne v1, v6, :cond_0

    .line 923
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    .line 936
    :goto_0
    return v5

    .line 925
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    .line 926
    :cond_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 927
    if-ne v1, v6, :cond_2

    .line 928
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    goto :goto_0

    .line 930
    :cond_2
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 932
    :cond_3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 933
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 934
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 936
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_0
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1113
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .locals 2
    .parameter "line"

    .prologue
    .line 953
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    return v0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 20
    .parameter "line"
    .parameter "horiz"

    .prologue
    .line 1027
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v18

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 1028
    .local v13, max:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 1029
    .local v14, min:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1031
    .local v6, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v18

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1032
    add-int/lit8 v13, v13, 0x1

    .line 1034
    :cond_0
    move v4, v14

    .line 1035
    .local v4, best:I
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1037
    .local v5, bestdist:F
    move v9, v14

    .line 1038
    .local v9, here:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move v0, v11

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 1039
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v6}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v18

    aget-short v18, v18, v11

    add-int v17, v9, v18

    .line 1040
    .local v17, there:I
    and-int/lit8 v18, v11, 0x1

    if-nez v18, :cond_2

    const/16 v18, 0x1

    move/from16 v16, v18

    .line 1042
    .local v16, swap:I
    :goto_1
    move/from16 v0, v17

    move v1, v13

    if-le v0, v1, :cond_1

    .line 1043
    move/from16 v17, v13

    .line 1045
    :cond_1
    const/16 v18, 0x1

    sub-int v18, v17, v18

    add-int/lit8 v10, v18, 0x1

    .local v10, high:I
    add-int/lit8 v18, v9, 0x1

    const/16 v19, 0x1

    sub-int v12, v18, v19

    .line 1047
    .local v12, low:I
    :goto_2
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 1048
    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    .line 1049
    .local v8, guess:I
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 1051
    .local v2, adguess:I
    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_3

    .line 1052
    move v10, v8

    goto :goto_2

    .line 1040
    .end local v2           #adguess:I
    .end local v8           #guess:I
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    :cond_2
    const/16 v18, -0x1

    move/from16 v16, v18

    goto :goto_1

    .line 1054
    .restart local v2       #adguess:I
    .restart local v8       #guess:I
    .restart local v10       #high:I
    .restart local v12       #low:I
    .restart local v16       #swap:I
    :cond_3
    move v12, v8

    goto :goto_2

    .line 1057
    .end local v2           #adguess:I
    .end local v8           #guess:I
    :cond_4
    add-int/lit8 v18, v9, 0x1

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 1058
    add-int/lit8 v12, v9, 0x1

    .line 1060
    :cond_5
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 1061
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v12

    .line 1063
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1065
    .local v7, dist:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1066
    .local v3, aft:I
    move v0, v3

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 1067
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1069
    .local v15, other:F
    cmpg-float v18, v15, v7

    if-gez v18, :cond_6

    .line 1070
    move v7, v15

    .line 1071
    move v12, v3

    .line 1075
    .end local v15           #other:F
    :cond_6
    cmpg-float v18, v7, v5

    if-gez v18, :cond_7

    .line 1076
    move v5, v7

    .line 1077
    move v4, v12

    .line 1081
    .end local v3           #aft:I
    .end local v7           #dist:F
    :cond_7
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1083
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_8

    .line 1084
    move v5, v7

    .line 1085
    move v4, v9

    .line 1088
    :cond_8
    move/from16 v9, v17

    .line 1038
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1091
    .end local v7           #dist:F
    .end local v10           #high:I
    .end local v12           #low:I
    .end local v16           #swap:I
    .end local v17           #there:I
    :cond_9
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1093
    .restart local v7       #dist:F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_a

    .line 1094
    move v5, v7

    .line 1095
    move v4, v13

    .line 1098
    :cond_a
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .locals 18
    .parameter "offset"

    .prologue
    .line 1172
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .line 1173
    .local v13, line:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 1174
    .local v14, start:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 1175
    .local v8, end:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1177
    .local v7, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 1178
    add-int/lit8 v8, v8, -0x1

    .line 1180
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    .line 1182
    .local v11, horiz:F
    move/from16 v3, p1

    .line 1183
    .local v3, best:I
    const/high16 v4, -0x3100

    .line 1186
    .local v4, besth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1187
    .local v5, candidate:I
    if-lt v5, v14, :cond_1

    if-gt v5, v8, :cond_1

    .line 1188
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1190
    .local v9, h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_1

    cmpl-float v16, v9, v4

    if-lez v16, :cond_1

    .line 1191
    move v3, v5

    .line 1192
    move v4, v9

    .line 1196
    .end local v9           #h:F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1197
    if-lt v5, v14, :cond_2

    if-gt v5, v8, :cond_2

    .line 1198
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1200
    .restart local v9       #h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_2

    cmpl-float v16, v9, v4

    if-lez v16, :cond_2

    .line 1201
    move v3, v5

    .line 1202
    move v4, v9

    .line 1206
    .end local v9           #h:F
    :cond_2
    move v10, v14

    .line 1207
    .local v10, here:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 1208
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    aget-short v16, v16, v12

    add-int v15, v10, v16

    .line 1209
    .local v15, there:I
    if-le v15, v8, :cond_3

    .line 1210
    move v15, v8

    .line 1212
    :cond_3
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1214
    .restart local v9       #h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_4

    cmpl-float v16, v9, v4

    if-lez v16, :cond_4

    .line 1215
    move v3, v10

    .line 1216
    move v4, v9

    .line 1219
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1220
    if-lt v5, v14, :cond_5

    if-gt v5, v8, :cond_5

    .line 1221
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1223
    cmpg-float v16, v9, v11

    if-gez v16, :cond_5

    cmpl-float v16, v9, v4

    if-lez v16, :cond_5

    .line 1224
    move v3, v5

    .line 1225
    move v4, v9

    .line 1229
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1230
    if-lt v5, v14, :cond_6

    if-gt v5, v8, :cond_6

    .line 1231
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1233
    cmpg-float v16, v9, v11

    if-gez v16, :cond_6

    cmpl-float v16, v9, v4

    if-lez v16, :cond_6

    .line 1234
    move v3, v5

    .line 1235
    move v4, v9

    .line 1239
    :cond_6
    move v10, v15

    .line 1207
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1242
    .end local v9           #h:F
    .end local v15           #there:I
    :cond_7
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1244
    .restart local v9       #h:F
    cmpg-float v16, v9, v11

    if-gez v16, :cond_8

    cmpl-float v16, v9, v4

    if-lez v16, :cond_8

    .line 1245
    move v3, v8

    .line 1246
    move v4, v9

    .line 1249
    :cond_8
    move v0, v3

    move/from16 v1, p1

    if-eq v0, v1, :cond_9

    move/from16 v16, v3

    .line 1263
    :goto_1
    return v16

    .line 1252
    :cond_9
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1254
    .local v6, dir:I
    if-lez v6, :cond_b

    .line 1255
    if-nez v13, :cond_a

    move/from16 v16, v3

    .line 1256
    goto :goto_1

    .line 1258
    :cond_a
    const/16 v16, 0x1

    sub-int v16, v13, v16

    const v17, 0x461c4000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_1

    .line 1260
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    move/from16 v16, v3

    .line 1261
    goto :goto_1

    .line 1263
    :cond_c
    add-int/lit8 v16, v13, 0x1

    const v17, 0x461c4000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_1
.end method

.method public getOffsetToRightOf(I)I
    .locals 18
    .parameter "offset"

    .prologue
    .line 1272
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .line 1273
    .local v13, line:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 1274
    .local v14, start:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 1275
    .local v8, end:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1277
    .local v7, dirs:Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 1278
    add-int/lit8 v8, v8, -0x1

    .line 1280
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    .line 1282
    .local v11, horiz:F
    move/from16 v3, p1

    .line 1283
    .local v3, best:I
    const/high16 v4, 0x4f00

    .line 1286
    .local v4, besth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1287
    .local v5, candidate:I
    if-lt v5, v14, :cond_1

    if-gt v5, v8, :cond_1

    .line 1288
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1290
    .local v9, h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_1

    cmpg-float v16, v9, v4

    if-gez v16, :cond_1

    .line 1291
    move v3, v5

    .line 1292
    move v4, v9

    .line 1296
    .end local v9           #h:F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1297
    if-lt v5, v14, :cond_2

    if-gt v5, v8, :cond_2

    .line 1298
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1300
    .restart local v9       #h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_2

    cmpg-float v16, v9, v4

    if-gez v16, :cond_2

    .line 1301
    move v3, v5

    .line 1302
    move v4, v9

    .line 1306
    .end local v9           #h:F
    :cond_2
    move v10, v14

    .line 1307
    .local v10, here:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 1308
    #getter for: Landroid/text/Layout$Directions;->mDirections:[S
    invoke-static {v7}, Landroid/text/Layout$Directions;->access$000(Landroid/text/Layout$Directions;)[S

    move-result-object v16

    aget-short v16, v16, v12

    add-int v15, v10, v16

    .line 1309
    .local v15, there:I
    if-le v15, v8, :cond_3

    .line 1310
    move v15, v8

    .line 1312
    :cond_3
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1314
    .restart local v9       #h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_4

    cmpg-float v16, v9, v4

    if-gez v16, :cond_4

    .line 1315
    move v3, v10

    .line 1316
    move v4, v9

    .line 1319
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1320
    if-lt v5, v14, :cond_5

    if-gt v5, v8, :cond_5

    .line 1321
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1323
    cmpl-float v16, v9, v11

    if-lez v16, :cond_5

    cmpg-float v16, v9, v4

    if-gez v16, :cond_5

    .line 1324
    move v3, v5

    .line 1325
    move v4, v9

    .line 1329
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1330
    if-lt v5, v14, :cond_6

    if-gt v5, v8, :cond_6

    .line 1331
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1333
    cmpl-float v16, v9, v11

    if-lez v16, :cond_6

    cmpg-float v16, v9, v4

    if-gez v16, :cond_6

    .line 1334
    move v3, v5

    .line 1335
    move v4, v9

    .line 1339
    :cond_6
    move v10, v15

    .line 1307
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1342
    .end local v9           #h:F
    .end local v15           #there:I
    :cond_7
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    .line 1344
    .restart local v9       #h:F
    cmpl-float v16, v9, v11

    if-lez v16, :cond_8

    cmpg-float v16, v9, v4

    if-gez v16, :cond_8

    .line 1345
    move v3, v8

    .line 1346
    move v4, v9

    .line 1349
    :cond_8
    move v0, v3

    move/from16 v1, p1

    if-eq v0, v1, :cond_9

    move/from16 v16, v3

    .line 1363
    :goto_1
    return v16

    .line 1352
    :cond_9
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1354
    .local v6, dir:I
    if-lez v6, :cond_b

    .line 1355
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    move/from16 v16, v3

    .line 1356
    goto :goto_1

    .line 1358
    :cond_a
    add-int/lit8 v16, v13, 0x1

    const v17, -0x39e3c000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_1

    .line 1360
    :cond_b
    if-nez v13, :cond_c

    move/from16 v16, v3

    .line 1361
    goto :goto_1

    .line 1363
    :cond_c
    const/16 v16, 0x1

    sub-int v16, v13, v16

    const v17, -0x39e3c000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    goto :goto_1
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 7
    .parameter "line"

    .prologue
    .line 1584
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1586
    .local v0, align:Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_0

    .line 1587
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1588
    .local v1, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-interface {v1, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .line 1592
    .local v3, spans:[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .line 1593
    .local v2, spanLength:I
    if-lez v2, :cond_0

    .line 1594
    const/4 v4, 0x1

    sub-int v4, v2, v4

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1598
    .end local v1           #sp:Landroid/text/Spanned;
    .end local v2           #spanLength:I
    .end local v3           #spans:[Landroid/text/style/AlignmentSpan;
    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 16
    .parameter "line"

    .prologue
    const/4 v15, 0x1

    .line 1605
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    .line 1607
    .local v3, dir:I
    const/4 v5, 0x0

    .line 1609
    .local v5, left:I
    const/4 v8, 0x0

    .line 1610
    .local v8, par:Z
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    .line 1611
    .local v7, off:I
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v0

    sub-int v13, v7, v15

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_1

    .line 1612
    :cond_0
    const/4 v8, 0x1

    .line 1614
    :cond_1
    if-ne v3, v15, :cond_4

    .line 1615
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move v12, v0

    if-eqz v12, :cond_4

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v9, v0

    check-cast v9, Landroid/text/Spanned;

    .line 1617
    .local v9, sp:Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v13

    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v9, v12, v13, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/LeadingMarginSpan;

    .line 1621
    .local v11, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v12, v11

    if-ge v4, v12, :cond_4

    .line 1622
    move v6, v8

    .line 1623
    .local v6, margin:Z
    aget-object v10, v11, v4

    .line 1624
    .local v10, span:Landroid/text/style/LeadingMarginSpan;
    instance-of v12, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v12, :cond_2

    .line 1625
    move-object v0, v10

    check-cast v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object v12, v0

    invoke-interface {v12}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v2

    .line 1626
    .local v2, count:I
    move v0, v2

    move/from16 v1, p1

    if-lt v0, v1, :cond_3

    move v6, v15

    .line 1628
    .end local v2           #count:I
    :cond_2
    :goto_1
    invoke-interface {v10, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v12

    add-int/2addr v5, v12

    .line 1621
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1626
    .restart local v2       #count:I
    :cond_3
    const/4 v12, 0x0

    move v6, v12

    goto :goto_1

    .line 1633
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #margin:Z
    .end local v9           #sp:Landroid/text/Spanned;
    .end local v10           #span:Landroid/text/style/LeadingMarginSpan;
    .end local v11           #spans:[Landroid/text/style/LeadingMarginSpan;
    :cond_4
    return v5
.end method

.method public final getParagraphRight(I)I
    .locals 10
    .parameter "line"

    .prologue
    .line 1640
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1642
    .local v0, dir:I
    iget v4, p0, Landroid/text/Layout;->mWidth:I

    .line 1644
    .local v4, right:I
    const/4 v3, 0x0

    .line 1645
    .local v3, par:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 1646
    .local v2, off:I
    if-eqz v2, :cond_0

    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x1

    sub-int v8, v2, v8

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    .line 1647
    :cond_0
    const/4 v3, 0x1

    .line 1650
    :cond_1
    const/4 v7, -0x1

    if-ne v0, v7, :cond_2

    .line 1651
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_2

    .line 1652
    iget-object v5, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .line 1653
    .local v5, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v5, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/LeadingMarginSpan;

    .line 1657
    .local v6, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_2

    .line 1658
    aget-object v7, v6, v1

    invoke-interface {v7, v3}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    sub-int/2addr v4, v7

    .line 1657
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1663
    .end local v1           #i:I
    .end local v5           #sp:Landroid/text/Spanned;
    .end local v6           #spans:[Landroid/text/style/LeadingMarginSpan;
    :cond_2
    return v4
.end method

.method public getPrimaryHorizontal(I)F
    .locals 2
    .parameter "offset"

    .prologue
    .line 815
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1
    .parameter "offset"

    .prologue
    const/4 v0, 0x1

    .line 824
    invoke-direct {p0, p1, v0, v0}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v0

    return v0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 19
    .parameter "start"
    .parameter "end"
    .parameter "dest"

    .prologue
    .line 1528
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 1530
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 1577
    :goto_0
    return-void

    .line 1533
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 1534
    move/from16 v17, p2

    .line 1535
    .local v17, temp:I
    move/from16 p2, p1

    .line 1536
    move/from16 p1, v17

    .line 1539
    .end local v17           #temp:I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1540
    .local v3, startline:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 1542
    .local v15, endline:I
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1543
    .local v6, top:I
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1545
    .local v7, bottom:I
    if-ne v3, v15, :cond_2

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 1546
    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_0

    .line 1548
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v2, v0

    move v0, v2

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1550
    .local v18, width:F
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1553
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 1554
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1560
    :goto_1
    add-int/lit8 v16, v3, 0x1

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_4

    .line 1561
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1562
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1563
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1560
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1557
    .end local v16           #i:I
    :cond_3
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 1566
    .restart local v16       #i:I
    :cond_4
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1567
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1569
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1572
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 1573
    .end local v3           #startline:I
    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 1575
    :cond_5
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method public final getSpacingAdd()F
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2
    .parameter "wid"

    .prologue
    .line 696
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_0

    .line 697
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 701
    return-void
.end method

.method protected final isSpanned()Z
    .locals 1

    .prologue
    .line 2220
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"

    .prologue
    .line 137
    if-gez p3, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 142
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 143
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 144
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 145
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 146
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 147
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 148
    return-void
.end method
