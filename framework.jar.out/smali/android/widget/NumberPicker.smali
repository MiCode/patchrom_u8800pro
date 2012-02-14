.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$NumberRangeKeyListener;,
        Landroid/widget/NumberPicker$NumberPickerInputFilter;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$OnChangedListener;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C

.field public static final TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;


# instance fields
.field private mCurrent:I

.field private mDecrement:Z

.field private mDecrementButton:Landroid/widget/NumberPickerButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field private mEnd:I

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Landroid/widget/NumberPickerButton;

.field private mListener:Landroid/widget/NumberPicker$OnChangedListener;

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field private mPrevious:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSpeed:J

.field private mStart:I

.field private final mText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Landroid/widget/NumberPicker$1;

    invoke-direct {v0}, Landroid/widget/NumberPicker$1;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    .line 414
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    new-instance v5, Landroid/widget/NumberPicker$2;

    invoke-direct {v5, p0}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v5, p0, Landroid/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 122
    const-wide/16 v5, 0x12c

    iput-wide v5, p0, Landroid/widget/NumberPicker;->mSpeed:J

    .line 142
    invoke-virtual {p0, v7}, Landroid/widget/NumberPicker;->setOrientation(I)V

    .line 143
    iget-object v5, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 145
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x1090043

    invoke-virtual {v2, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 146
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Landroid/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Landroid/widget/NumberPicker$3;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    .line 162
    .local v0, clickListener:Landroid/view/View$OnClickListener;
    new-instance v1, Landroid/widget/NumberPicker$4;

    invoke-direct {v1, p0}, Landroid/widget/NumberPicker$4;-><init>(Landroid/widget/NumberPicker;)V

    .line 174
    .local v1, focusListener:Landroid/view/View$OnFocusChangeListener;
    new-instance v4, Landroid/widget/NumberPicker$5;

    invoke-direct {v4, p0}, Landroid/widget/NumberPicker$5;-><init>(Landroid/widget/NumberPicker;)V

    .line 196
    .local v4, longClickListener:Landroid/view/View$OnLongClickListener;
    new-instance v3, Landroid/widget/NumberPicker$NumberPickerInputFilter;

    invoke-direct {v3, p0, v9}, Landroid/widget/NumberPicker$NumberPickerInputFilter;-><init>(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$1;)V

    .line 197
    .local v3, inputFilter:Landroid/text/InputFilter;
    new-instance v5, Landroid/widget/NumberPicker$NumberRangeKeyListener;

    invoke-direct {v5, p0, v9}, Landroid/widget/NumberPicker$NumberRangeKeyListener;-><init>(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$1;)V

    iput-object v5, p0, Landroid/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 198
    const v5, 0x10201fa

    invoke-virtual {p0, v5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPickerButton;

    iput-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    .line 199
    iget-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v0}, Landroid/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v4}, Landroid/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    iget-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, p0}, Landroid/widget/NumberPickerButton;->setNumberPicker(Landroid/widget/NumberPicker;)V

    .line 203
    const v5, 0x10201fc

    invoke-virtual {p0, v5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPickerButton;

    iput-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    .line 204
    iget-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v0}, Landroid/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v4}, Landroid/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 206
    iget-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, p0}, Landroid/widget/NumberPickerButton;->setNumberPicker(Landroid/widget/NumberPicker;)V

    .line 208
    const v5, 0x10201fb

    invoke-virtual {p0, v5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    .line 209
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 210
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    new-array v6, v7, [Landroid/text/InputFilter;

    aput-object v3, v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 211
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 213
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 214
    invoke-virtual {p0, v8}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 216
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/widget/NumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrement:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/NumberPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIncrement:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/NumberPicker;)Landroid/text/InputFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$1200()[C
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/NumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/widget/NumberPicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/NumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrement:Z

    return v0
.end method

.method static synthetic access$402(Landroid/widget/NumberPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDecrement:Z

    return p1
.end method

.method static synthetic access$500(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/NumberPicker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/SystemProperties;->getCitRTLFlag(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 487
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 489
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 512
    :goto_0
    return v1

    .line 494
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 496
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 497
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    iget v1, p0, Landroid/widget/NumberPicker;->mStart:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 494
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 506
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 490
    .end local v0           #i:I
    :catch_0
    move-exception v1

    .line 512
    :goto_2
    iget v1, p0, Landroid/widget/NumberPicker;->mStart:I

    goto :goto_0

    .line 507
    .restart local v0       #i:I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Landroid/widget/NumberPicker;->mListener:Landroid/widget/NumberPicker$OnChangedListener;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Landroid/widget/NumberPicker;->mListener:Landroid/widget/NumberPicker$OnChangedListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mPrevious:I

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrent:I

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/NumberPicker$OnChangedListener;->onChanged(Landroid/widget/NumberPicker;II)V

    .line 354
    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 372
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 373
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrent:I

    iget v3, p0, Landroid/widget/NumberPicker;->mStart:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 376
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 377
    .local v0, val:I
    iget v1, p0, Landroid/widget/NumberPicker;->mStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Landroid/widget/NumberPicker;->mEnd:I

    if-gt v0, v1, :cond_0

    .line 378
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    if-eq v1, v0, :cond_0

    .line 379
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    iput v1, p0, Landroid/widget/NumberPicker;->mPrevious:I

    .line 380
    iput v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 381
    invoke-direct {p0}, Landroid/widget/NumberPicker;->notifyChange()V

    .line 384
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 385
    return-void
.end method

.method private validateInput(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 388
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, str:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelDecrement()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrement:Z

    .line 412
    return-void
.end method

.method public cancelIncrement()V
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrement:Z

    .line 405
    return-void
.end method

.method protected changeCurrent(I)V
    .locals 1
    .parameter "current"

    .prologue
    .line 335
    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 336
    iget p1, p0, Landroid/widget/NumberPicker;->mStart:I

    .line 340
    :cond_0
    :goto_0
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    iput v0, p0, Landroid/widget/NumberPicker;->mPrevious:I

    .line 341
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 342
    invoke-direct {p0}, Landroid/widget/NumberPicker;->notifyChange()V

    .line 343
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 344
    return-void

    .line 337
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mStart:I

    if-ge p1, v0, :cond_0

    .line 338
    iget p1, p0, Landroid/widget/NumberPicker;->mEnd:I

    goto :goto_0
.end method

.method protected getBeginRange()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Landroid/widget/NumberPicker;->mStart:I

    return v0
.end method

.method public getCurrent()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    return v0
.end method

.method protected getEndRange()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    return v0
.end method

.method public setCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 291
    iget v0, p0, Landroid/widget/NumberPicker;->mStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "current should be >= start and <= end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 296
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 297
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerButton;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerButton;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 230
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .locals 0
    .parameter "formatter"

    .prologue
    .line 246
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 247
    return-void
.end method

.method public setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 237
    iput-object p1, p0, Landroid/widget/NumberPicker;->mListener:Landroid/widget/NumberPicker$OnChangedListener;

    .line 238
    return-void
.end method

.method public setRange(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/NumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "displayedValues"

    .prologue
    .line 270
    iput-object p3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 271
    iput p1, p0, Landroid/widget/NumberPicker;->mStart:I

    .line 272
    iput p2, p0, Landroid/widget/NumberPicker;->mEnd:I

    .line 273
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 274
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 276
    if-eqz p3, :cond_0

    .line 278
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 281
    :cond_0
    return-void
.end method

.method public setSpeed(J)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 307
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mSpeed:J

    .line 308
    return-void
.end method
