.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$SavedState;,
        Landroid/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final NUMBER_OF_MONTHS:I = 0xc


# instance fields
.field private mDay:I

.field private final mDayPicker:Landroid/widget/NumberPicker;

.field private mMonth:I

.field private volatile mMonthLocale:Ljava/util/Locale;

.field private final mMonthPicker:Landroid/widget/NumberPicker;

.field private mMonthUpdateLock:Ljava/lang/Object;

.field private mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private mYear:I

.field private final mYearPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Landroid/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    .line 100
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 101
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x109001f

    const/4 v8, 0x1

    invoke-virtual {v3, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 103
    const v7, 0x102019f

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    .line 104
    iget-object v7, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    sget-object v8, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 105
    iget-object v7, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Landroid/widget/NumberPicker;->setSpeed(J)V

    .line 106
    iget-object v7, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    new-instance v8, Landroid/widget/DatePicker$1;

    invoke-direct {v8, p0}, Landroid/widget/DatePicker$1;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 112
    const v7, 0x102019e

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    .line 113
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    sget-object v8, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 114
    invoke-direct {p0}, Landroid/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, months:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 122
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, v6

    if-ge v2, v7, :cond_0

    .line 123
    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_0
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x1

    const/16 v9, 0xc

    invoke-virtual {v7, v8, v9}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 130
    .end local v2           #i:I
    :goto_1
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/widget/NumberPicker;->setSpeed(J)V

    .line 131
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    new-instance v8, Landroid/widget/DatePicker$2;

    invoke-direct {v8, p0}, Landroid/widget/DatePicker$2;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 144
    const v7, 0x10201a0

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    .line 145
    iget-object v7, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Landroid/widget/NumberPicker;->setSpeed(J)V

    .line 146
    iget-object v7, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    new-instance v8, Landroid/widget/DatePicker$3;

    invoke-direct {v8, p0}, Landroid/widget/DatePicker$3;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 157
    sget-object v7, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 159
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/16 v8, 0x76c

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 160
    .local v5, mStartYear:I
    const/4 v7, 0x1

    const/16 v8, 0x834

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 161
    .local v4, mEndYear:I
    iget-object v7, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v5, v4}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 163
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 167
    .local v1, cal:Ljava/util/Calendar;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 170
    invoke-direct {p0, v6}, Landroid/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroid/widget/DatePicker;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 173
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 175
    :cond_1
    return-void

    .line 127
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v4           #mEndYear:I
    .end local v5           #mStartYear:I
    :cond_2
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x1

    const/16 v9, 0xc

    invoke-virtual {v7, v8, v9, v6}, Landroid/widget/NumberPicker;->setRange(II[Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$002(Landroid/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Landroid/widget/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$202(Landroid/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Landroid/widget/DatePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$300(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/DatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateDaySpinner()V

    return-void
.end method

.method static synthetic access$502(Landroid/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    return p1
.end method

.method private adjustMaxDay()V
    .locals 4

    .prologue
    .line 433
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 434
    .local v0, cal:Ljava/util/Calendar;
    const/4 v2, 0x1

    iget v3, p0, Landroid/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 435
    const/4 v2, 0x2

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 436
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 437
    .local v1, max:I
    iget v2, p0, Landroid/widget/DatePicker;->mDay:I

    if-le v2, v1, :cond_0

    .line 438
    iput v1, p0, Landroid/widget/DatePicker;->mDay:I

    .line 440
    :cond_0
    return-void
.end method

.method private getShortMonths()[Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xc

    .line 263
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 264
    .local v0, currentLocale:Ljava/util/Locale;
    iget-object v2, p0, Landroid/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 277
    :goto_0
    return-object v2

    .line 267
    :cond_0
    iget-object v2, p0, Landroid/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 268
    :try_start_0
    iget-object v3, p0, Landroid/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 269
    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 270
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 271
    iget-object v3, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x0

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    :cond_1
    iput-object v0, p0, Landroid/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    .line 276
    .end local v1           #i:I
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    iget-object v2, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget v1, p0, Landroid/widget/DatePicker;->mYear:I

    iget v2, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v3, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 446
    :cond_0
    return-void
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 12
    .parameter "months"

    .prologue
    const/4 v11, 0x0

    .line 196
    aget-object v9, p1, v11

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 197
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 202
    .local v4, format:Ljava/text/DateFormat;
    :goto_0
    instance-of v9, v4, Ljava/text/SimpleDateFormat;

    if-eqz v9, :cond_3

    .line 203
    check-cast v4, Ljava/text/SimpleDateFormat;

    .end local v4           #format:Ljava/text/DateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, order:Ljava/lang/String;
    :goto_1
    const v9, 0x102019d

    invoke-virtual {p0, v9}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 213
    .local v7, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 215
    const/4 v8, 0x0

    .line 216
    .local v8, quoted:Z
    const/4 v1, 0x0

    .local v1, didDay:Z
    const/4 v2, 0x0

    .local v2, didMonth:Z
    const/4 v3, 0x0

    .line 218
    .local v3, didYear:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_8

    .line 219
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 221
    .local v0, c:C
    const/16 v9, 0x27

    if-ne v0, v9, :cond_0

    .line 222
    if-nez v8, :cond_4

    const/4 v9, 0x1

    move v8, v9

    .line 225
    :cond_0
    :goto_3
    if-nez v8, :cond_1

    .line 226
    const/16 v9, 0x64

    if-ne v0, v9, :cond_5

    if-nez v1, :cond_5

    .line 227
    iget-object v9, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    const/4 v1, 0x1

    .line 218
    :cond_1
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 199
    .end local v0           #c:C
    .end local v1           #didDay:Z
    .end local v2           #didMonth:Z
    .end local v3           #didYear:Z
    .end local v5           #i:I
    .end local v6           #order:Ljava/lang/String;
    .end local v7           #parent:Landroid/widget/LinearLayout;
    .end local v8           #quoted:Z
    :cond_2
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .restart local v4       #format:Ljava/text/DateFormat;
    goto :goto_0

    .line 206
    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([C)V

    .restart local v6       #order:Ljava/lang/String;
    goto :goto_1

    .end local v4           #format:Ljava/text/DateFormat;
    .restart local v0       #c:C
    .restart local v1       #didDay:Z
    .restart local v2       #didMonth:Z
    .restart local v3       #didYear:Z
    .restart local v5       #i:I
    .restart local v7       #parent:Landroid/widget/LinearLayout;
    .restart local v8       #quoted:Z
    :cond_4
    move v8, v11

    .line 222
    goto :goto_3

    .line 229
    :cond_5
    const/16 v9, 0x4d

    if-eq v0, v9, :cond_6

    const/16 v9, 0x4c

    if-ne v0, v9, :cond_7

    :cond_6
    if-nez v2, :cond_7

    .line 230
    iget-object v9, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    const/4 v2, 0x1

    goto :goto_4

    .line 232
    :cond_7
    const/16 v9, 0x79

    if-ne v0, v9, :cond_1

    if-nez v3, :cond_1

    .line 233
    iget-object v9, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    const/4 v3, 0x1

    goto :goto_4

    .line 240
    .end local v0           #c:C
    :cond_8
    if-nez v2, :cond_9

    .line 241
    iget-object v9, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    :cond_9
    if-nez v1, :cond_a

    .line 244
    iget-object v9, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    :cond_a
    if-nez v3, :cond_b

    .line 247
    iget-object v9, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    :cond_b
    return-void
.end method

.method private updateDaySpinner()V
    .locals 5

    .prologue
    .line 403
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 404
    .local v0, cal:Ljava/util/Calendar;
    iget v2, p0, Landroid/widget/DatePicker;->mYear:I

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v4, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 405
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 406
    .local v1, max:I
    iget-object v2, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 409
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/SystemProperties;->getCitArabicFlag(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 411
    iget-object v2, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 412
    iget-object v2, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    sget-object v3, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 418
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v2, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setCurrent(I)V

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 2

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateDaySpinner()V

    .line 384
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Landroid/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 391
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/SystemProperties;->getCitRTLFlag(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 393
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Landroid/widget/DatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 394
    iget-object v0, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    sget-object v1, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 400
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Landroid/widget/DatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setCurrent(I)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 347
    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Landroid/widget/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Landroid/widget/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 375
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 376
    iput p2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 377
    iput p3, p0, Landroid/widget/DatePicker;->mDay:I

    .line 378
    iput-object p4, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 379
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 380
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 358
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$SavedState;

    move-object v1, v0

    .line 359
    .local v1, ss:Landroid/widget/DatePicker$SavedState;
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 360
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getYear()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mYear:I

    .line 361
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getMonth()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 362
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getDay()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mDay:I

    .line 363
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 364
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 351
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 353
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/DatePicker$SavedState;

    iget v2, p0, Landroid/widget/DatePicker;->mYear:I

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v4, p0, Landroid/widget/DatePicker;->mDay:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 183
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 252
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/widget/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/widget/DatePicker;->mDay:I

    if-eq v0, p3, :cond_1

    .line 253
    :cond_0
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 254
    iput p2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 255
    iput p3, p0, Landroid/widget/DatePicker;->mDay:I

    .line 256
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 257
    invoke-direct {p0}, Landroid/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    .line 260
    :cond_1
    return-void
.end method
