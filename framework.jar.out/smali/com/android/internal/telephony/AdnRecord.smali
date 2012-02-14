.class public Lcom/android/internal/telephony/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field alphaTag:Ljava/lang/String;

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field number:Ljava/lang/String;

.field recordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/android/internal/telephony/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 46
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 127
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 128
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 129
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 132
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 46
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 119
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 120
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 121
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 122
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 123
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 124
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 46
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 105
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 106
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 107
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AdnRecord;->parseRecord([B)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 115
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 102
    return-void
.end method

.method private parseRecord([B)V
    .locals 8
    .parameter "record"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xe

    const-string v5, ""

    .line 512
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    sub-int/2addr v4, v6

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 515
    array-length v3, p1

    sub-int v1, v3, v6

    .line 517
    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 519
    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 521
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 546
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .line 532
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 536
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 538
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 541
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    const-string v3, ""

    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 543
    const-string v3, ""

    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 544
    iput-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 199
    if-ne p0, p1, :cond_0

    .line 200
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    .line 202
    :cond_0
    if-nez p0, :cond_1

    .line 203
    const-string p0, ""

    .line 205
    :cond_1
    if-nez p1, :cond_2

    .line 206
    const-string p1, ""

    .line 208
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 480
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 489
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 500
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 42
    .parameter "recordSize"

    .prologue
    .line 255
    const/16 v39, 0xe

    sub-int v22, p1, v39

    .line 257
    .local v22, footerOffset:I
    const/16 v24, 0x0

    .line 258
    .local v24, gsm7Len:I
    const/16 v23, 0x0

    .line 259
    .local v23, gsm7Converts:I
    const/16 v31, 0x1

    .line 260
    .local v31, ucs80Len:I
    const/16 v30, 0x0

    .line 261
    .local v30, ucs80Converts:I
    const/16 v33, 0x3

    .line 262
    .local v33, ucs81Len:I
    const/16 v32, 0x0

    .line 263
    .local v32, ucs81Converts:I
    const/16 v35, 0x4

    .line 264
    .local v35, ucs82Len:I
    const/16 v34, 0x0

    .line 273
    .local v34, ucs82Converts:I
    const/16 v11, 0x20

    .line 274
    .local v11, baser81:C
    const/16 v13, 0x20

    .line 275
    .local v13, baser82Low:C
    const/16 v12, 0x20

    .line 276
    .local v12, baser82High:C
    const/16 v36, 0x1

    .line 277
    .local v36, useGsm7:Z
    const/16 v37, 0x1

    .line 278
    .local v37, usePattern81:Z
    const/16 v28, 0x0

    .line 279
    .local v28, setPattern81:Z
    const/16 v38, 0x1

    .line 280
    .local v38, usePattern82:Z
    const/16 v29, 0x0

    .line 282
    .local v29, setPattern82:Z
    const/4 v5, 0x0

    .line 283
    .local v5, SIM_CODING_GSM7:I
    const/16 v6, 0x80

    .line 284
    .local v6, SIM_CODING_PURE_UCS2:I
    const/16 v7, 0x81

    .line 285
    .local v7, SIM_CODING_UCS2_HALF_PAGE_1:I
    const/16 v8, 0x82

    .line 287
    .local v8, SIM_CODING_UCS2_HALF_PAGE_2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v39, v0

    if-eqz v39, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v39, v0

    if-nez v39, :cond_2

    .line 288
    :cond_0
    const-string v39, "GSM"

    const-string v40, "[buildAdnString] Empty alpha tag or number"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move/from16 v0, p1

    new-array v0, v0, [B

    move-object v9, v0

    .line 290
    .local v9, adnString:[B
    const/16 v25, 0x0

    .local v25, i:I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 291
    const/16 v39, -0x1

    aput-byte v39, v9, v25

    .line 290
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    :cond_1
    move-object v10, v9

    .line 471
    .end local v9           #adnString:[B
    .local v10, adnString:[B
    :goto_1
    return-object v10

    .line 295
    .end local v10           #adnString:[B
    .end local v25           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    const/16 v40, 0x14

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_3

    .line 297
    const-string v39, "GSM"

    const-string v40, "[buildAdnString] Max length of dialing number is 20"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x14

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 303
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v27

    .line 304
    .local v27, lenTag:I
    const/16 v26, 0x0

    .line 305
    .local v26, index:I
    :goto_2
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    if-nez v36, :cond_4

    if-nez v37, :cond_4

    if-nez v38, :cond_4

    move/from16 v0, v31

    move/from16 v1, v22

    if-gt v0, v1, :cond_b

    .line 307
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    .line 308
    .local v19, c:C
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/GsmAlphabet;->UCStoGsm7(C)I

    move-result v20

    .line 309
    .local v20, currGsm7Length:I
    const/16 v39, -0x1

    move/from16 v0, v20

    move/from16 v1, v39

    if-eq v0, v1, :cond_10

    .line 310
    if-eqz v36, :cond_5

    .line 311
    add-int v24, v24, v20

    .line 312
    add-int/lit8 v23, v23, 0x1

    .line 318
    :cond_5
    :goto_3
    if-eqz v37, :cond_7

    move/from16 v0, v33

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 319
    const/16 v39, -0x1

    move/from16 v0, v39

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 320
    const v39, 0x8000

    and-int v39, v39, v19

    const v40, 0x8000

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_11

    .line 321
    const/16 v37, 0x0

    .line 333
    :cond_6
    :goto_4
    if-eqz v37, :cond_7

    .line 334
    add-int/lit8 v32, v32, 0x1

    .line 335
    const/16 v39, -0x1

    move/from16 v0, v39

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 336
    add-int/lit8 v33, v33, 0x1

    .line 343
    :cond_7
    :goto_5
    if-eqz v38, :cond_9

    move/from16 v0, v35

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 344
    const/16 v39, -0x1

    move/from16 v0, v39

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 345
    if-nez v29, :cond_14

    .line 346
    const/16 v29, 0x1

    .line 347
    move/from16 v13, v19

    .line 348
    move/from16 v12, v19

    .line 361
    :cond_8
    :goto_6
    if-eqz v38, :cond_9

    .line 362
    add-int/lit8 v34, v34, 0x1

    .line 363
    const/16 v39, -0x1

    move/from16 v0, v39

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 364
    add-int/lit8 v35, v35, 0x1

    .line 371
    :cond_9
    :goto_7
    move/from16 v0, v31

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 372
    add-int/lit8 v31, v31, 0x2

    .line 373
    add-int/lit8 v30, v30, 0x1

    .line 376
    :cond_a
    if-eqz v36, :cond_18

    .line 377
    move/from16 v0, v24

    move/from16 v1, v22

    if-lt v0, v1, :cond_19

    .line 394
    .end local v19           #c:C
    .end local v20           #currGsm7Length:I
    :cond_b
    :goto_8
    move/from16 v15, v23

    .line 395
    .local v15, bestConverts:I
    const/16 v17, 0x0

    .line 396
    .local v17, bestMode:I
    move/from16 v16, v24

    .line 397
    .local v16, bestLen:I
    move v0, v15

    move/from16 v1, v32

    if-ge v0, v1, :cond_c

    .line 398
    move/from16 v15, v32

    .line 399
    const/16 v17, 0x81

    .line 400
    move/from16 v16, v33

    .line 402
    :cond_c
    move v0, v15

    move/from16 v1, v34

    if-ge v0, v1, :cond_d

    .line 403
    move/from16 v15, v34

    .line 404
    const/16 v17, 0x82

    .line 405
    move/from16 v16, v35

    .line 407
    :cond_d
    move v0, v15

    move/from16 v1, v30

    if-ge v0, v1, :cond_e

    .line 408
    move/from16 v15, v30

    .line 409
    const/16 v17, 0x80

    .line 410
    move/from16 v16, v31

    .line 414
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 415
    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_f

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x1

    sub-int v41, v15, v41

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 417
    add-int/lit8 v16, v16, -0x2

    .line 419
    :cond_f
    move/from16 v0, p1

    new-array v0, v0, [B

    move-object v9, v0

    .line 420
    .restart local v9       #adnString:[B
    const/16 v25, 0x0

    .restart local v25       #i:I
    :goto_9
    move/from16 v0, v25

    move/from16 v1, p1

    if-ge v0, v1, :cond_1c

    .line 421
    const/16 v39, -0x1

    aput-byte v39, v9, v25

    .line 420
    add-int/lit8 v25, v25, 0x1

    goto :goto_9

    .line 315
    .end local v9           #adnString:[B
    .end local v15           #bestConverts:I
    .end local v16           #bestLen:I
    .end local v17           #bestMode:I
    .end local v25           #i:I
    .restart local v19       #c:C
    .restart local v20       #currGsm7Length:I
    :cond_10
    const/16 v36, 0x0

    goto/16 :goto_3

    .line 323
    :cond_11
    if-nez v28, :cond_12

    .line 324
    const/16 v28, 0x1

    .line 325
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x7f80

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-char v0, v0

    move v11, v0

    goto/16 :goto_4

    .line 327
    :cond_12
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x7f80

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-char v0, v0

    move/from16 v39, v0

    move v0, v11

    move/from16 v1, v39

    if-eq v0, v1, :cond_6

    .line 328
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 338
    :cond_13
    add-int v33, v33, v20

    goto/16 :goto_5

    .line 350
    :cond_14
    move v0, v13

    move/from16 v1, v19

    if-le v0, v1, :cond_16

    .line 351
    move/from16 v13, v19

    .line 355
    :cond_15
    :goto_a
    sub-int v39, v12, v13

    const/16 v40, 0x7f

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_8

    .line 356
    const/16 v38, 0x0

    goto/16 :goto_6

    .line 352
    :cond_16
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_15

    .line 353
    move/from16 v12, v19

    goto :goto_a

    .line 366
    :cond_17
    add-int v35, v35, v20

    goto/16 :goto_7

    .line 380
    :cond_18
    if-eqz v37, :cond_1a

    .line 381
    move/from16 v0, v33

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 306
    :cond_19
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_2

    .line 384
    :cond_1a
    if-eqz v38, :cond_1b

    .line 385
    move/from16 v0, v35

    move/from16 v1, v22

    if-lt v0, v1, :cond_19

    goto/16 :goto_8

    .line 388
    :cond_1b
    move/from16 v0, v31

    move/from16 v1, v22

    if-lt v0, v1, :cond_19

    goto/16 :goto_8

    .line 423
    .end local v19           #c:C
    .end local v20           #currGsm7Length:I
    .restart local v9       #adnString:[B
    .restart local v15       #bestConverts:I
    .restart local v16       #bestLen:I
    .restart local v17       #bestMode:I
    .restart local v25       #i:I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    if-lez v39, :cond_1d

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v14

    .line 425
    .local v14, bcdNumber:[B
    const-string v39, "AdnRecord"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "buildAdnString bcdNumber.length = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object v0, v14

    array-length v0, v0

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/16 v39, 0x0

    add-int/lit8 v40, v22, 0x1

    move-object v0, v14

    array-length v0, v0

    move/from16 v41, v0

    move-object v0, v14

    move/from16 v1, v39

    move-object v2, v9

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    add-int/lit8 v39, v22, 0x0

    move-object v0, v14

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-byte v0, v0

    move/from16 v40, v0

    aput-byte v40, v9, v39

    .line 432
    .end local v14           #bcdNumber:[B
    :cond_1d
    add-int/lit8 v39, v22, 0xc

    const/16 v40, -0x1

    aput-byte v40, v9, v39

    .line 434
    add-int/lit8 v39, v22, 0xd

    const/16 v40, -0x1

    aput-byte v40, v9, v39

    .line 437
    sparse-switch v17, :sswitch_data_0

    :goto_b
    move-object v10, v9

    .line 471
    .end local v9           #adnString:[B
    .restart local v10       #adnString:[B
    goto/16 :goto_1

    .line 439
    .end local v10           #adnString:[B
    .restart local v9       #adnString:[B
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v18

    .line 440
    .local v18, byteTag:[B
    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v18

    move/from16 v1, v39

    move-object v2, v9

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    .line 445
    .end local v18           #byteTag:[B
    :sswitch_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v39, v0

    const-string v40, "UTF-16BE"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 449
    .restart local v18       #byteTag:[B
    :goto_c
    const/16 v39, 0x0

    const/16 v40, -0x80

    aput-byte v40, v9, v39

    .line 450
    const/16 v39, 0x0

    const/16 v40, 0x1

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v18

    move/from16 v1, v39

    move-object v2, v9

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    .line 446
    .end local v18           #byteTag:[B
    :catch_0
    move-exception v39

    move-object/from16 v21, v39

    .line 447
    .local v21, e:Ljava/io/UnsupportedEncodingException;
    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .restart local v18       #byteTag:[B
    goto :goto_c

    .line 454
    .end local v18           #byteTag:[B
    .end local v21           #e:Ljava/io/UnsupportedEncodingException;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    sub-int v40, v16, v40

    move-object/from16 v0, v39

    move v1, v11

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToUCS81Packed(Ljava/lang/String;CI)[B

    move-result-object v18

    .line 455
    .restart local v18       #byteTag:[B
    const/16 v39, 0x0

    const/16 v40, -0x7f

    aput-byte v40, v9, v39

    .line 456
    const/16 v39, 0x1

    const/16 v40, 0x3

    sub-int v40, v16, v40

    move/from16 v0, v40

    int-to-byte v0, v0

    move/from16 v40, v0

    aput-byte v40, v9, v39

    .line 457
    const/16 v39, 0x0

    const/16 v40, 0x2

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v18

    move/from16 v1, v39

    move-object v2, v9

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_b

    .line 461
    .end local v18           #byteTag:[B
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    sub-int v40, v16, v40

    move-object/from16 v0, v39

    move v1, v13

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToUCS82Packed(Ljava/lang/String;CI)[B

    move-result-object v18

    .line 462
    .restart local v18       #byteTag:[B
    const/16 v39, 0x0

    const/16 v40, -0x7e

    aput-byte v40, v9, v39

    .line 463
    const/16 v39, 0x1

    const/16 v40, 0x4

    sub-int v40, v16, v40

    move/from16 v0, v40

    int-to-byte v0, v0

    move/from16 v40, v0

    aput-byte v40, v9, v39

    .line 464
    const/16 v39, 0x0

    const/16 v40, 0x2

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v18

    move/from16 v1, v39

    move-object v2, v9

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_b

    .line 437
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80 -> :sswitch_1
        0x81 -> :sswitch_2
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public equalAdn(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 226
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEfid()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEfid()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    return v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordNumber()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    return v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEfid(I)V
    .locals 0
    .parameter "efid"

    .prologue
    .line 156
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 157
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setRecordNumber(I)V
    .locals 0
    .parameter "RecordNumber"

    .prologue
    .line 165
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 236
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 241
    return-void
.end method
