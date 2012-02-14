.class Lcom/android/internal/telephony/cat/ComprehensionTlv;
.super Ljava/lang/Object;
.source "ComprehensionTlv.java"


# instance fields
.field private mCr:Z

.field private mLength:I

.field private mRawValue:[B

.field private mTag:I

.field private mValueIndex:I


# direct methods
.method protected constructor <init>(IZI[BI)V
    .locals 0
    .parameter "tag"
    .parameter "cr"
    .parameter "length"
    .parameter "data"
    .parameter "valueIndex"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mTag:I

    .line 51
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mCr:Z

    .line 52
    iput p3, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    .line 53
    iput p5, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    .line 54
    iput-object p4, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mRawValue:[B

    .line 55
    return-void
.end method

.method public static decode([BI)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 13
    .parameter "data"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x80

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 117
    move v5, p1

    .line 118
    .local v5, curIndex:I
    :try_start_0
    array-length v8, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .local v8, endIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #curIndex:I
    .local v6, curIndex:I
    :try_start_1
    aget-byte v0, p0, v5
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit16 v9, v0, 0xff

    .line 124
    .local v9, temp:I
    sparse-switch v9, :sswitch_data_0

    .line 139
    move v1, v9

    .line 140
    .local v1, tag:I
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_2

    move v2, v11

    .line 141
    .local v2, cr:Z
    :goto_0
    and-int/lit16 v1, v1, -0x81

    .line 147
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    :try_start_2
    aget-byte v0, p0, v6

    and-int/lit16 v9, v0, 0xff

    .line 148
    if-ge v9, v12, :cond_3

    .line 149
    move v3, v9

    .line 177
    .local v3, length:I
    :cond_0
    :goto_2
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/ComprehensionTlv;-><init>(IZI[BI)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 128
    .end local v1           #tag:I
    .end local v2           #cr:Z
    .end local v3           #length:I
    .end local v5           #curIndex:I
    .restart local v6       #curIndex:I
    :sswitch_0
    :try_start_3
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 179
    .end local v9           #temp:I
    :catch_0
    move-exception v0

    move-object v7, v0

    move v5, v6

    .line 180
    .end local v6           #curIndex:I
    .end local v8           #endIndex:I
    .restart local v5       #curIndex:I
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_3
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    .line 131
    .end local v5           #curIndex:I
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v6       #curIndex:I
    .restart local v8       #endIndex:I
    .restart local v9       #temp:I
    :sswitch_1
    :try_start_4
    aget-byte v0, p0, v6

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v6, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v1, v0, v4

    .line 133
    .restart local v1       #tag:I
    const v0, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    move v2, v11

    .line 134
    .restart local v2       #cr:Z
    :goto_4
    const v0, -0x8001

    and-int/2addr v1, v0

    .line 135
    add-int/lit8 v5, v6, 0x2

    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    move v6, v5

    .line 136
    .end local v5           #curIndex:I
    .restart local v6       #curIndex:I
    goto :goto_1

    .end local v2           #cr:Z
    :cond_1
    move v2, v10

    .line 133
    goto :goto_4

    :cond_2
    move v2, v10

    .line 140
    goto :goto_0

    .line 150
    .end local v6           #curIndex:I
    .restart local v2       #cr:Z
    .restart local v5       #curIndex:I
    :cond_3
    const/16 v0, 0x81

    if-ne v9, v0, :cond_4

    .line 151
    add-int/lit8 v6, v5, 0x1

    .end local v5           #curIndex:I
    .restart local v6       #curIndex:I
    aget-byte v0, p0, v5

    and-int/lit16 v3, v0, 0xff

    .line 152
    .restart local v3       #length:I
    if-ge v3, v12, :cond_7

    .line 153
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 156
    .end local v3           #length:I
    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    :cond_4
    const/16 v0, 0x82

    if-ne v9, v0, :cond_5

    .line 157
    :try_start_5
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v3, v0, v4

    .line 159
    .restart local v3       #length:I
    add-int/lit8 v5, v5, 0x2

    .line 160
    const/16 v0, 0x100

    if-ge v3, v0, :cond_0

    .line 161
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    .line 179
    .end local v1           #tag:I
    .end local v2           #cr:Z
    .end local v3           #length:I
    .end local v8           #endIndex:I
    .end local v9           #temp:I
    :catch_1
    move-exception v0

    move-object v7, v0

    goto :goto_3

    .line 164
    .restart local v1       #tag:I
    .restart local v2       #cr:Z
    .restart local v8       #endIndex:I
    .restart local v9       #temp:I
    :cond_5
    const/16 v0, 0x83

    if-ne v9, v0, :cond_6

    .line 165
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v3, v0, v4

    .line 168
    .restart local v3       #length:I
    add-int/lit8 v5, v5, 0x3

    .line 169
    const/high16 v0, 0x1

    if-ge v3, v0, :cond_0

    .line 170
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    .line 174
    .end local v3           #length:I
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .end local v5           #curIndex:I
    .restart local v3       #length:I
    .restart local v6       #curIndex:I
    :cond_7
    move v5, v6

    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    goto/16 :goto_2

    .line 124
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7f -> :sswitch_1
        0x80 -> :sswitch_0
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public static decodeMany([BI)Ljava/util/List;
    .locals 6
    .parameter "data"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    array-length v1, p0

    .line 89
    .local v1, endIndex:I
    :goto_0
    if-ge p1, v1, :cond_0

    .line 92
    aget-byte v4, p0, p1

    and-int/lit16 v3, v4, 0xff

    .line 93
    .local v3, temp:I
    if-nez v3, :cond_1

    .line 103
    .end local v3           #temp:I
    :cond_0
    return-object v2

    .line 98
    .restart local v3       #temp:I
    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decode([BI)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 99
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget v4, v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    iget v5, v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    add-int p1, v4, v5

    .line 101
    goto :goto_0
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    return v0
.end method

.method public getRawValue()[B
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mRawValue:[B

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mTag:I

    return v0
.end method

.method public getValueIndex()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    return v0
.end method

.method public isComprehensionRequired()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mCr:Z

    return v0
.end method
