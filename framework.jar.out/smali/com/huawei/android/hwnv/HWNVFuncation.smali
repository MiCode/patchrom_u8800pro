.class public Lcom/huawei/android/hwnv/HWNVFuncation;
.super Ljava/lang/Object;
.source "HWNVFuncation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwnv/HWNVFuncation$1;,
        Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;
    }
.end annotation


# static fields
.field private static final BC10_BIT_MASK:S = 0x4000s

.field private static final HW_MIP_MAX_ACTIVE_VALUE:I = 0x5

.field private static final HW_RAPI_MAX_BUF:I = 0x80

.field private static final HW_RAPI_PPP_PASSWORD_LEN:I = 0x7f

.field private static final HW_RAPI_PPP_USER_LEN:I = 0x7f

.field private static final NV_BAND_PREF3216_BUFSIZE:I = 0x5

.field private static final NV_BAND_PREF_16_31_I:I = 0x3b2

.field private static final NV_BAND_PREF_32_63_I:I = 0xb8a

.field private static final NV_BAND_PREF_BUFSIZE:I = 0x3

.field private static final NV_BAND_PREF_I:I = 0x1b9

.field private static final TAG:Ljava/lang/String; = "HWNVFuncation"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 695
    :try_start_0
    const-string v1, "hwnv"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 698
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HWNVFuncation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "may be can\'t load so."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAMSSVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcom/huawei/android/hwnv/HWNVFuncation;->get_AMSS_VERSION()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBCBandValue(I)I
    .locals 8
    .parameter "BCNvitem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "getNVBandPref failed"

    const-string v6, "getBCBandValue IOException"

    const-string v5, "HWNVFuncation"

    .line 346
    const/4 v1, 0x0

    .line 347
    .local v1, bandPref:S
    const/4 v0, 0x0

    .line 348
    .local v0, RFBCConfig:I
    const/4 v3, 0x0

    .line 350
    .local v3, returnValue:I
    sparse-switch p1, :sswitch_data_0

    .line 379
    new-instance v4, Ljava/security/InvalidParameterException;

    const-string v5, "Invalid param"

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 353
    :sswitch_0
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNVBandPref(B)S
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 354
    move v3, v1

    .line 382
    :goto_0
    return v3

    .line 355
    :catch_0
    move-exception v2

    .line 356
    .local v2, e:Ljava/io/IOException;
    const-string v4, "HWNVFuncation"

    const-string v4, "getBCBandValue IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v4, Ljava/io/IOException;

    const-string v5, "getNVBandPref failed"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 362
    .end local v2           #e:Ljava/io/IOException;
    :sswitch_1
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNVBandPref1631(B)S
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 363
    move v3, v1

    goto :goto_0

    .line 364
    :catch_1
    move-exception v2

    .line 365
    .restart local v2       #e:Ljava/io/IOException;
    const-string v4, "HWNVFuncation"

    const-string v4, "getBCBandValue IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v4, Ljava/io/IOException;

    const-string v5, "getNVBandPref failed"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 371
    .end local v2           #e:Ljava/io/IOException;
    :sswitch_2
    const/4 v4, 0x0

    :try_start_2
    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNVBandPref3263(B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 372
    move v3, v0

    goto :goto_0

    .line 373
    :catch_2
    move-exception v2

    .line 374
    .restart local v2       #e:Ljava/io/IOException;
    const-string v4, "HWNVFuncation"

    const-string v4, "getBCBandValue IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v4, Ljava/io/IOException;

    const-string v5, "getNVBandPref failed"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 350
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b9 -> :sswitch_0
        0x3b2 -> :sswitch_1
        0xb8a -> :sswitch_2
    .end sparse-switch
.end method

.method private getBandClassMask(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;)I
    .locals 3
    .parameter "BandClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 270
    .local v0, returnValue:I
    sget-object v1, Lcom/huawei/android/hwnv/HWNVFuncation$1;->$SwitchMap$com$huawei$android$hwnv$HWNVFuncation$BandClassType:[I

    invoke-virtual {p1}, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 275
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Invalid param"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :pswitch_0
    const/16 v0, 0x4000

    .line 278
    return v0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getBandClassNVType(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;)I
    .locals 2
    .parameter "BandClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 254
    sget-object v0, Lcom/huawei/android/hwnv/HWNVFuncation$1;->$SwitchMap$com$huawei$android$hwnv$HWNVFuncation$BandClassType:[I

    invoke-virtual {p1}, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 258
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid param"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :pswitch_0
    const/16 v0, 0x1b9

    return v0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getHardwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV_HARD_VERSION()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMipActiveProfile()B
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV_MIP_ACTIVE_PROFILE()B

    move-result v0

    return v0
.end method

.method public static getMipGenUserProf(Lcom/huawei/android/hwnv/MipGenUserProfType;I)Z
    .locals 9
    .parameter "mipUser"
    .parameter "index"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, "HWNVFuncation"

    .line 140
    if-ltz p1, :cond_0

    const/4 v3, 0x6

    if-gt v3, p1, :cond_1

    .line 141
    :cond_0
    const-string v3, "HWNVFuncation"

    const-string v3, "getMipGenUserProf Invalid index"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 163
    :goto_0
    return v3

    .line 146
    :cond_1
    const/16 v3, 0x80

    :try_start_0
    new-array v1, v3, [B

    .line 147
    .local v1, mipUserSz:[B
    int-to-byte v2, p1

    .line 149
    .local v2, nIndex:B
    invoke-static {v2, v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV_MIP_GEN_USER_PROF(B[B)Z

    move-result v3

    if-ne v8, v3, :cond_2

    .line 151
    invoke-virtual {p0, v1}, Lcom/huawei/android/hwnv/MipGenUserProfType;->setAllData([B)V

    .line 152
    const-string v3, "HWNVFuncation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMipGenUserProf return mip index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/MipGenUserProfType;->getIndex()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v8

    .line 163
    goto :goto_0

    :cond_2
    move v3, v6

    .line 156
    goto :goto_0

    .line 158
    .end local v1           #mipUserSz:[B
    .end local v2           #nIndex:B
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 159
    .local v0, e:Ljava/io/IOException;
    const-string v3, "HWNVFuncation"

    const-string v3, "getMipGenUserProf IOException"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 160
    goto :goto_0
.end method

.method private static getNVBandPref(B)S
    .locals 4
    .parameter "nam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 617
    .local v0, buf:[B
    const/4 v2, 0x0

    aput-byte p0, v0, v2

    .line 618
    invoke-static {v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV_BANDPREF([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    const-string v2, "HWNVFuncation"

    const-string v3, "getNV_BANDPREF failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v2, Ljava/io/IOException;

    const-string v3, "getNV_BANDPREF error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 623
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 624
    .local v1, buftmp:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 625
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 626
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    return v2
.end method

.method private static getNVBandPref1631(B)S
    .locals 4
    .parameter "nam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 632
    .local v0, buf:[B
    const/4 v2, 0x0

    aput-byte p0, v0, v2

    .line 633
    invoke-static {v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV_BANDPREF1631([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 634
    const-string v2, "HWNVFuncation"

    const-string v3, "getNV_BANDPREF failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-instance v2, Ljava/io/IOException;

    const-string v3, "getNV_BANDPREF error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 639
    .local v1, buftmp:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 640
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 641
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    return v2
.end method

.method private static getNVBandPref3263(B)I
    .locals 4
    .parameter "nam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 647
    .local v0, buf:[B
    const/4 v2, 0x0

    aput-byte p0, v0, v2

    .line 648
    invoke-static {v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV_BANDPREF3263([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 649
    const-string v2, "HWNVFuncation"

    const-string v3, "getNV_BANDPREF failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v2, Ljava/io/IOException;

    const-string v3, "getNV_BANDPREF error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 653
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 654
    .local v1, buftmp:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 655
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 656
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    return v2
.end method

.method public static getNVCallLog(Lcom/huawei/android/hwnv/CallLogTypeInfo;)Z
    .locals 1
    .parameter "callLog"

    .prologue
    .line 104
    invoke-static {p0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV_CALL_LOG(Lcom/huawei/android/hwnv/CallLogTypeInfo;)Z

    move-result v0

    return v0
.end method

.method public static getNVDirNumberPCS(Lcom/huawei/android/hwnv/DirNumberPCSInfo;)Z
    .locals 1
    .parameter "mobDirNumberInfo"

    .prologue
    .line 116
    invoke-static {p0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV_DIR_NUMBER_PCS(Lcom/huawei/android/hwnv/DirNumberPCSInfo;)Z

    move-result v0

    return v0
.end method

.method public static getNVRefurbishCounter(Lcom/huawei/android/hwnv/RefurbishTypeInfo;)Z
    .locals 1
    .parameter "refurbishInfo"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV_REFURBISH_COUNTER(Lcom/huawei/android/hwnv/RefurbishTypeInfo;)Z

    move-result v0

    return v0
.end method

.method public static getNVSecCode([B)Z
    .locals 1
    .parameter "NvSecCodeTypeInfo"

    .prologue
    .line 127
    invoke-static {p0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV_SEC_CODE([B)Z

    move-result v0

    return v0
.end method

.method public static getNVSmsBcUserPref()B
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV_SMS_BC_USER_PREF()B

    move-result v0

    return v0
.end method

.method public static getNVWarrantyDate()J
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV_WARRANTY_DATE()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native getNV_BANDPREF([B)Z
.end method

.method private static native getNV_BANDPREF1631([B)Z
.end method

.method private static native getNV_BANDPREF3263([B)Z
.end method

.method private static native getNV_CALL_LOG(Lcom/huawei/android/hwnv/CallLogTypeInfo;)Z
.end method

.method private static native getNV_DIR_NUMBER_PCS(Lcom/huawei/android/hwnv/DirNumberPCSInfo;)Z
.end method

.method private static native getNV_HARD_VERSION()Ljava/lang/String;
.end method

.method private static native getNV_MIP_ACTIVE_PROFILE()B
.end method

.method private static native getNV_MIP_GEN_USER_PROF(B[B)Z
.end method

.method private static native getNV_PPP_PASSWORD([B)J
.end method

.method private static native getNV_PPP_USER_ID([B)J
.end method

.method private static native getNV_REFURBISH_COUNTER(Lcom/huawei/android/hwnv/RefurbishTypeInfo;)Z
.end method

.method private static native getNV_RFBCCONFIG()J
.end method

.method private static native getNV_SEC_CODE([B)Z
.end method

.method private static native getNV_SMS_BC_USER_PREF()B
.end method

.method private static native getNV_WARRANTY_DATE()J
.end method

.method public static getPPPPassword([B)J
    .locals 2
    .parameter "pppPassword"

    .prologue
    .line 473
    invoke-static {p0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV_PPP_PASSWORD([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPPPUser([B)J
    .locals 2
    .parameter "pppUser"

    .prologue
    .line 462
    invoke-static {p0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV_PPP_USER_ID([B)J

    move-result-wide v0

    return-wide v0
.end method

.method private getRFBConfigBit(II)J
    .locals 5
    .parameter "BCNvitem"
    .parameter "mask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 287
    const-wide/16 v0, 0x0

    .line 289
    .local v0, resValue:J
    sparse-switch p1, :sswitch_data_0

    .line 300
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "Invalid param"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    :sswitch_0
    int-to-long v0, p2

    .line 303
    :goto_0
    return-wide v0

    .line 294
    :sswitch_1
    shl-int/lit8 v2, p2, 0x10

    int-to-long v0, v2

    .line 295
    goto :goto_0

    .line 297
    :sswitch_2
    int-to-long v2, p2

    const/16 v4, 0x20

    shl-long v0, v2, v4

    .line 298
    goto :goto_0

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b9 -> :sswitch_0
        0x3b2 -> :sswitch_1
        0xb8a -> :sswitch_2
    .end sparse-switch
.end method

.method private static native get_AMSS_VERSION()Ljava/lang/String;
.end method

.method public static registerResetPRI(Ljava/lang/String;)Z
    .locals 1
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p0}, Lcom/huawei/android/hwnv/HWNVFuncation;->reset_PRI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native reset_PRI(Ljava/lang/String;)Z
.end method

.method public static setMipActiveProfile(B)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 197
    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-le p0, v0, :cond_1

    .line 198
    :cond_0
    const-string v0, "HWNVFuncation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMipActiveProfile Invalid value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV_MIP_ACTIVE_PROFILE(B)Z

    move-result v0

    goto :goto_0
.end method

.method public static setNVAKey(Lcom/huawei/android/hwnv/AKeyTypeInfo;)Z
    .locals 2
    .parameter "aKeyInfo"

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/AKeyTypeInfo;->getNam()B

    move-result v0

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/AKeyTypeInfo;->getAKeyDigits()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV_A_KEY_DIGITS(B[B)Z

    move-result v0

    return v0
.end method

.method private static setNVBandPref(BS)Z
    .locals 2
    .parameter "nam"
    .parameter "band"

    .prologue
    .line 660
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 661
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 662
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 663
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 664
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV_BANDPREF([B)Z

    move-result v1

    return v1
.end method

.method private static setNVBandPref1631(BS)Z
    .locals 2
    .parameter "nam"
    .parameter "band"

    .prologue
    .line 667
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 668
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 669
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 670
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 671
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV_BANDPREF1631([B)Z

    move-result v1

    return v1
.end method

.method private static setNVBandPref3263(BI)Z
    .locals 2
    .parameter "nam"
    .parameter "band"

    .prologue
    .line 674
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 675
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 676
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 677
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 678
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV_BANDPREF3263([B)Z

    move-result v1

    return v1
.end method

.method public static setNVCallLog(Lcom/huawei/android/hwnv/CallLogTypeInfo;)Z
    .locals 6
    .parameter "callLog"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/CallLogTypeInfo;->getCallLogCounter()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/CallLogTypeInfo;->getCallLogTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/CallLogTypeInfo;->getDataTraffic()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV_CALL_LOG(JJJ)Z

    move-result v0

    return v0
.end method

.method public static setNVWarrantyDate(J)Z
    .locals 1
    .parameter "date"

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV_WARRANTY_DATE(J)Z

    move-result v0

    return v0
.end method

.method private static native setNV_A_KEY_DIGITS(B[B)Z
.end method

.method private static native setNV_BANDPREF([B)Z
.end method

.method private static native setNV_BANDPREF1631([B)Z
.end method

.method private static native setNV_BANDPREF3263([B)Z
.end method

.method private static native setNV_CALL_LOG(JJJ)Z
.end method

.method private static native setNV_MIP_ACTIVE_PROFILE(B)Z
.end method

.method private static native setNV_RFBCCONFIG(J)Z
.end method

.method private static native setNV_WARRANTY_DATE(J)Z
.end method


# virtual methods
.method public getBCSupport(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;)Z
    .locals 8
    .parameter "BCValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const-string v7, "HWNVFuncation"

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, BCMask:I
    const/4 v2, 0x0

    .line 318
    .local v2, band:I
    const-string v4, "HWNVFuncation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maning:getBCSupport BCValue =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :try_start_0
    invoke-direct {p0, p1}, Lcom/huawei/android/hwnv/HWNVFuncation;->getBandClassNVType(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;)I

    move-result v1

    .line 322
    .local v1, BCNvitem:I
    invoke-direct {p0, p1}, Lcom/huawei/android/hwnv/HWNVFuncation;->getBandClassMask(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;)I

    move-result v0

    .line 323
    const-string v4, "maning"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBCSupport BCNvitem = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " BCMask = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct {p0, v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->getBCBandValue(I)I
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 333
    and-int v4, v2, v0

    if-eqz v4, :cond_0

    .line 334
    const/4 v4, 0x1

    .line 336
    :goto_0
    return v4

    .line 325
    .end local v1           #BCNvitem:I
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 326
    .local v3, e:Ljava/security/InvalidParameterException;
    const-string v4, "HWNVFuncation"

    const-string v4, "getBCSupport InvalidParameterException"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v4, Ljava/security/InvalidParameterException;

    const-string v5, "Invalid param"

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 328
    .end local v3           #e:Ljava/security/InvalidParameterException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 329
    .local v3, e:Ljava/io/IOException;
    const-string v4, "HWNVFuncation"

    const-string v4, "getBCSupport IOException"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v4, Ljava/io/IOException;

    const-string v5, "get nv failed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 336
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #BCNvitem:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setBCSupport(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;Z)Z
    .locals 13
    .parameter "BCValue"
    .parameter "setValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "Invalid param"

    const-string v9, "HWNVFuncation"

    .line 396
    const-wide/16 v2, 0x0

    .line 397
    .local v2, RFBCConfigValue:J
    const/4 v6, 0x0

    .line 398
    .local v6, bandClassValue:I
    const/4 v0, 0x0

    .line 399
    .local v0, BCMask:I
    const-wide/16 v4, 0x0

    .line 402
    .local v4, RFBCMask:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/huawei/android/hwnv/HWNVFuncation;->getBandClassNVType(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;)I

    move-result v1

    .line 403
    .local v1, BCNvitem:I
    invoke-direct {p0, p1}, Lcom/huawei/android/hwnv/HWNVFuncation;->getBandClassMask(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;)I

    move-result v0

    .line 404
    invoke-direct {p0, v1, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getRFBConfigBit(II)J

    move-result-wide v4

    .line 405
    invoke-static {}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV_RFBCCONFIG()J

    move-result-wide v2

    .line 406
    invoke-direct {p0, v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->getBCBandValue(I)I
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 415
    if-ne v11, p2, :cond_0

    .line 416
    or-int/2addr v6, v0

    .line 417
    or-long/2addr v2, v4

    .line 423
    :goto_0
    invoke-static {v2, v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV_RFBCCONFIG(J)Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v10

    .line 447
    :goto_1
    return v8

    .line 407
    .end local v1           #BCNvitem:I
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 408
    .local v7, e:Ljava/security/InvalidParameterException;
    const-string v8, "HWNVFuncation"

    const-string v8, "getBCSupport InvalidParameterException"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v8, Ljava/security/InvalidParameterException;

    const-string v9, "Invalid param"

    invoke-direct {v8, v12}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 410
    .end local v7           #e:Ljava/security/InvalidParameterException;
    :catch_1
    move-exception v8

    move-object v7, v8

    .line 411
    .local v7, e:Ljava/io/IOException;
    const-string v8, "HWNVFuncation"

    const-string v8, "setBCSupport IOException"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v8, Ljava/io/IOException;

    const-string v9, "get nv failed"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 419
    .end local v7           #e:Ljava/io/IOException;
    .restart local v1       #BCNvitem:I
    :cond_0
    xor-int/lit8 v8, v0, -0x1

    and-int/2addr v6, v8

    .line 420
    const-wide/16 v8, -0x1

    xor-long/2addr v8, v4

    and-long/2addr v2, v8

    goto :goto_0

    .line 427
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 444
    new-instance v8, Ljava/security/InvalidParameterException;

    const-string v9, "Invalid param"

    invoke-direct {v8, v12}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 429
    :sswitch_0
    int-to-short v8, v6

    invoke-static {v10, v8}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNVBandPref(BS)Z

    move-result v8

    if-nez v8, :cond_2

    move v8, v10

    .line 430
    goto :goto_1

    .line 434
    :sswitch_1
    int-to-short v8, v6

    invoke-static {v10, v8}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNVBandPref1631(BS)Z

    move-result v8

    if-nez v8, :cond_2

    move v8, v10

    .line 435
    goto :goto_1

    .line 439
    :sswitch_2
    invoke-static {v10, v6}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNVBandPref3263(BI)Z

    move-result v8

    if-nez v8, :cond_2

    move v8, v10

    .line 440
    goto :goto_1

    :cond_2
    move v8, v11

    .line 447
    goto :goto_1

    .line 427
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b9 -> :sswitch_0
        0x3b2 -> :sswitch_1
        0xb8a -> :sswitch_2
    .end sparse-switch
.end method
