.class public Landroid/telephony/CallerInfoHW;
.super Ljava/lang/Object;
.source "CallerInfoHW.java"

# interfaces
.implements Landroid/telephony/TelephonyInterfacesHW;


# static fields
.field public static final MIN_MATCH:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CallerInfo"


# instance fields
.field private NUM_LONG:I

.field private NUM_SHORT:I

.field private configMatchNum:I

.field private configMatchNumShort:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "ro.config.hwft_MatchNum"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/CallerInfoHW;->configMatchNum:I

    .line 35
    iget v0, p0, Landroid/telephony/CallerInfoHW;->configMatchNum:I

    if-ge v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .line 37
    const-string v0, "ro.config.hwft_MatchNumShort"

    iget v1, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/CallerInfoHW;->configMatchNumShort:I

    .line 38
    iget v0, p0, Landroid/telephony/CallerInfoHW;->configMatchNumShort:I

    iget v1, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    :goto_1
    iput v0, p0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    return-void

    .line 35
    :cond_0
    iget v0, p0, Landroid/telephony/CallerInfoHW;->configMatchNum:I

    goto :goto_0

    .line 38
    :cond_1
    iget v0, p0, Landroid/telephony/CallerInfoHW;->configMatchNumShort:I

    goto :goto_1
.end method


# virtual methods
.method public compareNums(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "num1"
    .parameter "num2"

    .prologue
    const-string v4, "CallerInfo"

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, num1Len:I
    const/4 v1, 0x0

    .line 45
    .local v1, num2Len:I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 46
    :cond_0
    const/4 v2, 0x0

    .line 71
    :goto_0
    return v2

    .line 48
    :cond_1
    const-string v2, "CallerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compareNums, num1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", num2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 54
    iget v2, p0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    iget v3, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    if-ge v2, v3, :cond_2

    .line 55
    const-string v2, "CallerInfo"

    const-string v2, "compareNums, NUM_SHORT have been set! Only do full compare."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 60
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 62
    iget v2, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    if-le v0, v2, :cond_3

    .line 63
    iget v2, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    sub-int v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 66
    :cond_3
    iget v2, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    if-le v1, v2, :cond_4

    .line 67
    iget v2, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    sub-int v2, v1, v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 70
    :cond_4
    const-string v2, "CallerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compareNums, new num1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new num2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .parameter "cursor"
    .parameter "compNum"

    .prologue
    .line 75
    const-string v0, "number"

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/CallerInfoHW;->getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I
    .locals 19
    .parameter "cursor"
    .parameter "compNum"
    .parameter "columnName"

    .prologue
    .line 83
    const/4 v5, 0x0

    .line 84
    .local v5, compNumShort:Ljava/lang/String;
    const/4 v4, 0x0

    .line 85
    .local v4, compNumLong:Ljava/lang/String;
    const/4 v12, 0x0

    .line 86
    .local v12, tmpNum:Ljava/lang/String;
    const/4 v15, 0x0

    .line 87
    .local v15, tmpNumShort:Ljava/lang/String;
    const/4 v14, 0x0

    .line 89
    .local v14, tmpNumLong:Ljava/lang/String;
    const/4 v11, -0x1

    .line 90
    .local v11, numShortID:I
    const/4 v8, -0x1

    .line 91
    .local v8, numLongID:I
    const/4 v6, -0x1

    .line 93
    .local v6, fixedIndex:I
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getCallerIndex(), NUM_LONG = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",NUM_SHORT = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v16, "ro.config.hwft_MatchNum"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v16

    if-nez v16, :cond_0

    .line 104
    const-string v16, "gsm.hw.matchnum"

    const/16 v17, 0x7

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 105
    .local v9, numMatch:I
    const-string v16, "gsm.hw.matchnum"

    move-object/from16 v0, v16

    move v1, v9

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 106
    .local v10, numMatchShort:I
    const/16 v16, 0x7

    move v0, v9

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    const/16 v16, 0x7

    :goto_0
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .line 107
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v16, v0

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    .line 108
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getCallerIndex(), after setprop NUM_LONG = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", NUM_SHORT = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v9           #numMatch:I
    .end local v10           #numMatchShort:I
    :cond_0
    if-nez p2, :cond_4

    .line 114
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v16

    if-lez v16, :cond_1

    .line 116
    const/4 v6, 0x0

    .line 118
    :cond_1
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CallerInfoHW(),null == compNum!fixedIndex = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 317
    .end local v6           #fixedIndex:I
    .local v7, fixedIndex:I
    :goto_2
    return v7

    .end local v7           #fixedIndex:I
    .restart local v6       #fixedIndex:I
    .restart local v9       #numMatch:I
    .restart local v10       #numMatchShort:I
    :cond_2
    move/from16 v16, v9

    .line 106
    goto :goto_0

    :cond_3
    move/from16 v16, v10

    .line 107
    goto :goto_1

    .line 122
    .end local v9           #numMatch:I
    .end local v10           #numMatchShort:I
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 123
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 124
    .local v3, compNumLen:I
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "compNum: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz p1, :cond_6

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v16, v0

    move v0, v3

    move/from16 v1, v16

    if-lt v0, v1, :cond_d

    .line 134
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v16, v0

    sub-int v16, v3, v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 135
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v16, v0

    sub-int v16, v3, v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 137
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "11:, compNumLong = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",compNumShort = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 142
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 144
    .local v2, columnIndex:I
    const/16 v16, -0x1

    move v0, v2

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    .line 148
    :cond_5
    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 149
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 150
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    .line 151
    .local v13, tmpNumLen:I
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "11: tmpNum = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", tmpNum.length11: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",ID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v16, v0

    move v0, v13

    move/from16 v1, v16

    if-lt v0, v1, :cond_9

    .line 157
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v16, v0

    sub-int v16, v13, v16

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 159
    const/16 v16, -0x1

    move/from16 v0, v16

    move v1, v8

    if-ne v0, v1, :cond_7

    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_7

    .line 161
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 162
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "11: break! numLongID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_3
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "11:  numLongID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",numShortID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/16 v16, -0x1

    move/from16 v0, v16

    move v1, v8

    if-eq v0, v1, :cond_b

    .line 202
    move v6, v8

    .line 315
    .end local v2           #columnIndex:I
    .end local v13           #tmpNumLen:I
    :cond_6
    :goto_4
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fixedIndex: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 317
    .end local v6           #fixedIndex:I
    .restart local v7       #fixedIndex:I
    goto/16 :goto_2

    .line 165
    .end local v7           #fixedIndex:I
    .restart local v2       #columnIndex:I
    .restart local v6       #fixedIndex:I
    .restart local v13       #tmpNumLen:I
    :cond_7
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "11: >=NUM_LONG, and !=,  tmpNumLong = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", numLongID:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/16 v16, -0x1

    move/from16 v0, v16

    move v1, v11

    if-ne v0, v1, :cond_8

    .line 170
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v16, v0

    sub-int v16, v13, v16

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 172
    invoke-virtual {v5, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_8

    .line 174
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    .line 197
    :cond_8
    :goto_5
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-nez v16, :cond_5

    goto/16 :goto_3

    .line 179
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v16, v0

    move v0, v13

    move/from16 v1, v16

    if-lt v0, v1, :cond_a

    .line 181
    const/16 v16, -0x1

    move/from16 v0, v16

    move v1, v11

    if-ne v0, v1, :cond_8

    .line 183
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v16, v0

    sub-int v16, v13, v16

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 185
    invoke-virtual {v5, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_8

    .line 187
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    goto :goto_5

    .line 193
    :cond_a
    const-string v16, "CallerInfo"

    const-string/jumbo v17, "tmpNum11, continue"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 203
    :cond_b
    const/16 v16, -0x1

    move/from16 v0, v16

    move v1, v11

    if-eq v0, v1, :cond_c

    .line 204
    move v6, v11

    goto/16 :goto_4

    .line 206
    :cond_c
    const/4 v6, -0x1

    goto/16 :goto_4

    .line 210
    .end local v2           #columnIndex:I
    .end local v13           #tmpNumLen:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v16, v0

    move v0, v3

    move/from16 v1, v16

    if-lt v0, v1, :cond_14

    .line 213
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v16, v0

    sub-int v16, v3, v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 214
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "7:  compNumShort = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 218
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 220
    .restart local v2       #columnIndex:I
    const/16 v16, -0x1

    move v0, v2

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    .line 224
    :cond_e
    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 225
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 226
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    .line 227
    .restart local v13       #tmpNumLen:I
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "7: tmpNum = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", tmpNum.length7: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",ID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v16, v0

    move v0, v13

    move/from16 v1, v16

    if-lt v0, v1, :cond_10

    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v16, v0

    sub-int v16, v13, v16

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 234
    const/16 v16, -0x1

    move/from16 v0, v16

    move v1, v8

    if-ne v0, v1, :cond_f

    .line 236
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v16, v0

    sub-int v16, v13, v16

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 238
    invoke-virtual {v5, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_f

    .line 240
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 263
    :cond_f
    :goto_6
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-nez v16, :cond_e

    .line 265
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "7: numShortID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",numLongID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/16 v16, -0x1

    move/from16 v0, v16

    move v1, v11

    if-eq v0, v1, :cond_12

    .line 268
    move v6, v11

    goto/16 :goto_4

    .line 245
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v16, v0

    move v0, v13

    move/from16 v1, v16

    if-lt v0, v1, :cond_11

    .line 247
    const/16 v16, -0x1

    move/from16 v0, v16

    move v1, v11

    if-ne v0, v1, :cond_f

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v16, v0

    sub-int v16, v13, v16

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 251
    invoke-virtual {v5, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_f

    .line 253
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    goto :goto_6

    .line 259
    :cond_11
    const-string v16, "CallerInfo"

    const-string v17, "7: continue"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 269
    :cond_12
    const/16 v16, -0x1

    move/from16 v0, v16

    move v1, v8

    if-eq v0, v1, :cond_13

    .line 270
    move v6, v8

    goto/16 :goto_4

    .line 272
    :cond_13
    const/4 v6, -0x1

    goto/16 :goto_4

    .line 278
    .end local v2           #columnIndex:I
    .end local v13           #tmpNumLen:I
    :cond_14
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 280
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 282
    .restart local v2       #columnIndex:I
    const/16 v16, -0x1

    move v0, v2

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    .line 286
    :cond_15
    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 287
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 288
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    .line 289
    .restart local v13       #tmpNumLen:I
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "5: tmpNum = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", tmpNum.length: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",ID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    if-ne v13, v3, :cond_16

    .line 294
    const/16 v16, -0x1

    move/from16 v0, v16

    move v1, v6

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_17

    .line 296
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 297
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "5: break! numLongID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_7
    const-string v16, "CallerInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "5: fixedIndex = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 303
    :cond_16
    const-string v16, "CallerInfo"

    const-string v17, "5: continue"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_17
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-nez v16, :cond_15

    goto :goto_7
.end method
