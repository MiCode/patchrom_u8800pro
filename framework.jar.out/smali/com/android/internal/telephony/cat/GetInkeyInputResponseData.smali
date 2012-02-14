.class Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field public mInData:Ljava/lang/String;

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "inData"
    .parameter "ucs2"
    .parameter "packed"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 76
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 77
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "yesNoResponse"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 88
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    .line 89
    return-void
.end method

.method private static bigToLittleBytes([B)[B
    .locals 5
    .parameter "s"

    .prologue
    .line 96
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 109
    :goto_0
    return-object v3

    .line 98
    :cond_0
    array-length v3, p0

    const/4 v4, 0x2

    sub-int v2, v3, v4

    .line 100
    .local v2, sz:I
    new-array v1, v2, [B

    .line 104
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 105
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p0, v3

    aput-byte v3, v1, v0

    .line 106
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 104
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 109
    goto :goto_0
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 14
    .parameter "buf"

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 116
    if-nez p1, :cond_1

    .line 180
    :cond_0
    return-void

    .line 121
    :cond_1
    sget-object v10, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v10

    or-int/lit16 v7, v10, 0x80

    .line 122
    .local v7, tag:I
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v10, :cond_3

    .line 130
    new-array v2, v11, [B

    .line 131
    .local v2, data:[B
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v10, :cond_2

    move v10, v11

    :goto_0
    aput-byte v10, v2, v13

    .line 166
    :goto_1
    array-length v10, v2

    add-int/lit8 v10, v10, 0x1

    invoke-static {p1, v10}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 169
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v10, :cond_7

    .line 170
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 177
    :goto_2
    move-object v0, v2

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3
    if-ge v4, v5, :cond_0

    aget-byte v1, v0, v4

    .line 178
    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    move v10, v13

    .line 131
    goto :goto_0

    .line 132
    .end local v2           #data:[B
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 134
    :try_start_0
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v10, :cond_4

    .line 140
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v11, "UTF-16"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 141
    .local v9, tmpdata:[B
    invoke-static {v9}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->bigToLittleBytes([B)[B

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_1

    .line 143
    .end local v2           #data:[B
    .end local v9           #tmpdata:[B
    :cond_4
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v10, :cond_5

    .line 144
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    .line 146
    .local v6, size:I
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v8

    .line 148
    .local v8, tempData:[B
    new-array v2, v6, [B

    .line 152
    .restart local v2       #data:[B
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v8, v10, v2, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 156
    .end local v2           #data:[B
    .end local v6           #size:I
    .end local v8           #tempData:[B
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 157
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-array v2, v13, [B

    .line 160
    .restart local v2       #data:[B
    goto :goto_1

    .line 154
    .end local v2           #data:[B
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_5
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_1

    .line 158
    .end local v2           #data:[B
    :catch_1
    move-exception v10

    move-object v3, v10

    .line 159
    .local v3, e:Lcom/android/internal/telephony/EncodeException;
    new-array v2, v13, [B

    .line 160
    .restart local v2       #data:[B
    goto :goto_1

    .line 162
    .end local v2           #data:[B
    .end local v3           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_6
    new-array v2, v13, [B

    .restart local v2       #data:[B
    goto :goto_1

    .line 171
    :cond_7
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v10, :cond_8

    .line 172
    invoke-virtual {p1, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 174
    :cond_8
    const/4 v10, 0x4

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method
