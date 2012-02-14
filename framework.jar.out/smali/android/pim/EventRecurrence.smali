.class public Landroid/pim/EventRecurrence;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/EventRecurrence$InvalidFormatException;
    }
.end annotation


# static fields
.field public static final DAILY:I = 0x4

.field public static final FR:I = 0x200000

.field public static final HOURLY:I = 0x3

.field public static final MINUTELY:I = 0x2

.field public static final MO:I = 0x20000

.field public static final MONTHLY:I = 0x6

.field public static final SA:I = 0x400000

.field public static final SECONDLY:I = 0x1

.field public static final SU:I = 0x10000

.field public static final TH:I = 0x100000

.field public static final TU:I = 0x40000

.field public static final WE:I = 0x80000

.field public static final WEEKLY:I = 0x5

.field public static final YEARLY:I = 0x7


# instance fields
.field public byday:[I

.field public bydayCount:I

.field public bydayNum:[I

.field public byhour:[I

.field public byhourCount:I

.field public byminute:[I

.field public byminuteCount:I

.field public bymonth:[I

.field public bymonthCount:I

.field public bymonthday:[I

.field public bymonthdayCount:I

.field public bysecond:[I

.field public bysecondCount:I

.field public bysetpos:[I

.field public bysetposCount:I

.field public byweekno:[I

.field public byweeknoCount:I

.field public byyearday:[I

.field public byyeardayCount:I

.field public count:I

.field public freq:I

.field public interval:I

.field private isBidiEnabled:Z

.field public startDate:Landroid/text/format/Time;

.field public until:Ljava/lang/String;

.field public wkst:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v0, p0, Landroid/pim/EventRecurrence;->isBidiEnabled:Z

    .line 40
    invoke-static {v0}, Landroid/os/SystemProperties;->getCitArabicFlag(Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/pim/EventRecurrence;->isBidiEnabled:Z

    .line 42
    const/high16 v0, 0x2

    iput v0, p0, Landroid/pim/EventRecurrence;->wkst:I

    .line 43
    return-void
.end method

.method private appendByDay(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter "s"
    .parameter "i"

    .prologue
    .line 248
    iget-object v2, p0, Landroid/pim/EventRecurrence;->bydayNum:[I

    aget v0, v2, p2

    .line 249
    .local v0, n:I
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    :cond_0
    iget-object v2, p0, Landroid/pim/EventRecurrence;->byday:[I

    aget v2, v2, p2

    invoke-static {v2}, Landroid/pim/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, str:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    return-void
.end method

.method private static appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V
    .locals 2
    .parameter "s"
    .parameter "label"
    .parameter "count"
    .parameter "values"

    .prologue
    .line 235
    if-lez p2, :cond_1

    .line 236
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    add-int/lit8 p2, p2, -0x1

    .line 238
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 239
    aget v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    aget v1, p3, p2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public static calendarDay2Day(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 107
    packed-switch p0, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :pswitch_0
    const/high16 v0, 0x1

    .line 122
    :goto_0
    return v0

    .line 112
    :pswitch_1
    const/high16 v0, 0x2

    goto :goto_0

    .line 114
    :pswitch_2
    const/high16 v0, 0x4

    goto :goto_0

    .line 116
    :pswitch_3
    const/high16 v0, 0x8

    goto :goto_0

    .line 118
    :pswitch_4
    const/high16 v0, 0x10

    goto :goto_0

    .line 120
    :pswitch_5
    const/high16 v0, 0x20

    goto :goto_0

    .line 122
    :pswitch_6
    const/high16 v0, 0x40

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static day2CalendarDay(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 180
    sparse-switch p0, :sswitch_data_0

    .line 197
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :sswitch_0
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    .line 185
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 187
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 189
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 191
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 193
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 195
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 180
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method private static day2String(I)Ljava/lang/String;
    .locals 3
    .parameter "day"

    .prologue
    .line 212
    sparse-switch p0, :sswitch_data_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :sswitch_0
    const-string v0, "SU"

    .line 226
    :goto_0
    return-object v0

    .line 216
    :sswitch_1
    const-string v0, "MO"

    goto :goto_0

    .line 218
    :sswitch_2
    const-string v0, "TU"

    goto :goto_0

    .line 220
    :sswitch_3
    const-string v0, "WE"

    goto :goto_0

    .line 222
    :sswitch_4
    const-string v0, "TH"

    goto :goto_0

    .line 224
    :sswitch_5
    const-string v0, "FR"

    goto :goto_0

    .line 226
    :sswitch_6
    const-string v0, "SA"

    goto :goto_0

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static day2TimeDay(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 152
    sparse-switch p0, :sswitch_data_0

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :sswitch_0
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    .line 157
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 161
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 163
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 165
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 167
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 152
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static timeDay2Day(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 130
    packed-switch p0, :pswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :pswitch_0
    const/high16 v0, 0x1

    .line 145
    :goto_0
    return v0

    .line 135
    :pswitch_1
    const/high16 v0, 0x2

    goto :goto_0

    .line 137
    :pswitch_2
    const/high16 v0, 0x4

    goto :goto_0

    .line 139
    :pswitch_3
    const/high16 v0, 0x8

    goto :goto_0

    .line 141
    :pswitch_4
    const/high16 v0, 0x10

    goto :goto_0

    .line 143
    :pswitch_5
    const/high16 v0, 0x20

    goto :goto_0

    .line 145
    :pswitch_6
    const/high16 v0, 0x40

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public native parse(Ljava/lang/String;)V
.end method

.method public repeatsMonthlyOnDayCount()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 363
    iget v0, p0, Landroid/pim/EventRecurrence;->freq:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 371
    :goto_0
    return v0

    .line 367
    :cond_0
    iget v0, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 368
    goto :goto_0

    :cond_2
    move v0, v3

    .line 371
    goto :goto_0
.end method

.method public repeatsOnEveryWeekDay()Z
    .locals 8

    .prologue
    const/high16 v7, 0x40

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 334
    iget v4, p0, Landroid/pim/EventRecurrence;->freq:I

    if-eq v4, v6, :cond_0

    move v4, v5

    .line 359
    :goto_0
    return v4

    .line 338
    :cond_0
    iget v0, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 341
    .local v0, count:I
    invoke-static {v5}, Landroid/os/SystemProperties;->getCitRTLFlag(Z)Z

    move-result v3

    .line 342
    .local v3, isArabicLocale:Z
    iget-boolean v4, p0, Landroid/pim/EventRecurrence;->isBidiEnabled:Z

    if-nez v4, :cond_1

    .line 343
    const/4 v3, 0x0

    .line 344
    :cond_1
    if-eq v0, v6, :cond_2

    move v4, v5

    .line 345
    goto :goto_0

    .line 348
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_7

    .line 349
    iget-object v4, p0, Landroid/pim/EventRecurrence;->byday:[I

    aget v1, v4, v2

    .line 350
    .local v1, day:I
    const/high16 v4, 0x1

    if-eq v1, v4, :cond_3

    if-ne v1, v7, :cond_4

    :cond_3
    if-nez v3, :cond_4

    move v4, v5

    .line 351
    goto :goto_0

    .line 353
    :cond_4
    const/high16 v4, 0x20

    if-eq v1, v4, :cond_5

    if-ne v1, v7, :cond_6

    :cond_5
    if-eqz v3, :cond_6

    move v4, v5

    .line 354
    goto :goto_0

    .line 348
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 359
    .end local v1           #day:I
    :cond_7
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setStartDate(Landroid/text/format/Time;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/pim/EventRecurrence;->startDate:Landroid/text/format/Time;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const-string v6, ";BYSECOND="

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v2, s:Ljava/lang/StringBuilder;
    const-string v3, "FREQ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget v3, p0, Landroid/pim/EventRecurrence;->freq:I

    packed-switch v3, :pswitch_data_0

    .line 288
    :goto_0
    iget-object v3, p0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 289
    const-string v3, ";UNTIL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v3, p0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_0
    iget v3, p0, Landroid/pim/EventRecurrence;->count:I

    if-eqz v3, :cond_1

    .line 294
    const-string v3, ";COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget v3, p0, Landroid/pim/EventRecurrence;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    :cond_1
    iget v3, p0, Landroid/pim/EventRecurrence;->interval:I

    if-eqz v3, :cond_2

    .line 299
    const-string v3, ";INTERVAL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget v3, p0, Landroid/pim/EventRecurrence;->interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    :cond_2
    iget v3, p0, Landroid/pim/EventRecurrence;->wkst:I

    if-eqz v3, :cond_3

    .line 304
    const-string v3, ";WKST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget v3, p0, Landroid/pim/EventRecurrence;->wkst:I

    invoke-static {v3}, Landroid/pim/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_3
    const-string v3, ";BYSECOND="

    iget v3, p0, Landroid/pim/EventRecurrence;->bysecondCount:I

    iget-object v4, p0, Landroid/pim/EventRecurrence;->bysecond:[I

    invoke-static {v2, v6, v3, v4}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 309
    const-string v3, ";BYMINUTE="

    iget v4, p0, Landroid/pim/EventRecurrence;->byminuteCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->byminute:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 310
    const-string v3, ";BYSECOND="

    iget v3, p0, Landroid/pim/EventRecurrence;->byhourCount:I

    iget-object v4, p0, Landroid/pim/EventRecurrence;->byhour:[I

    invoke-static {v2, v6, v3, v4}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 313
    iget v0, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 314
    .local v0, count:I
    if-lez v0, :cond_5

    .line 315
    const-string v3, ";BYDAY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v0, v0, -0x1

    .line 317
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 318
    invoke-direct {p0, v2, v1}, Landroid/pim/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 319
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    .end local v0           #count:I
    .end local v1           #i:I
    :pswitch_0
    const-string v3, "SECONDLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 269
    :pswitch_1
    const-string v3, "MINUTELY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    :pswitch_2
    const-string v3, "HOURLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 275
    :pswitch_3
    const-string v3, "DAILY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 278
    :pswitch_4
    const-string v3, "WEEKLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 281
    :pswitch_5
    const-string v3, "MONTHLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 284
    :pswitch_6
    const-string v3, "YEARLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 321
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_4
    invoke-direct {p0, v2, v0}, Landroid/pim/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 324
    .end local v1           #i:I
    :cond_5
    const-string v3, ";BYMONTHDAY="

    iget v4, p0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->bymonthday:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 325
    const-string v3, ";BYYEARDAY="

    iget v4, p0, Landroid/pim/EventRecurrence;->byyeardayCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->byyearday:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 326
    const-string v3, ";BYWEEKNO="

    iget v4, p0, Landroid/pim/EventRecurrence;->byweeknoCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->byweekno:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 327
    const-string v3, ";BYMONTH="

    iget v4, p0, Landroid/pim/EventRecurrence;->bymonthCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->bymonth:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 328
    const-string v3, ";BYSETPOS="

    iget v4, p0, Landroid/pim/EventRecurrence;->bysetposCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->bysetpos:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 330
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
