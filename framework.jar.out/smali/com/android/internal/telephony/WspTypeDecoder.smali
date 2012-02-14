.class public Lcom/android/internal/telephony/WspTypeDecoder;
.super Ljava/lang/Object;
.source "WspTypeDecoder.java"


# static fields
.field public static final CONTENT_MIME_TYPE_B_CONNECT_WBXML:Ljava/lang/String; = "application/vnd.wap.connectivity-wbxml"

.field public static final CONTENT_MIME_TYPE_B_DRM_RIGHTS_WBXML:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field public static final CONTENT_MIME_TYPE_B_DRM_RIGHTS_XML:Ljava/lang/String; = "application/vnd.oma.drm.rights+xml"

.field public static final CONTENT_MIME_TYPE_B_MMS:Ljava/lang/String; = "application/vnd.wap.mms-message"

.field public static final CONTENT_MIME_TYPE_B_PUSH_CO:Ljava/lang/String; = "application/vnd.wap.coc"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SI:Ljava/lang/String; = "application/vnd.wap.sic"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SL:Ljava/lang/String; = "application/vnd.wap.slc"

.field public static final CONTENT_MIME_TYPE_B_PUSH_SYNCML_NOTI:Ljava/lang/String; = "application/vnd.syncml.notification"

.field public static final CONTENT_MIME_TYPE_B_SAN:Ljava/lang/String; = "application/vnd.syncml.notification"

.field public static final CONTENT_MIME_TYPE_B_SUPL_INIT:Ljava/lang/String; = "application/vnd.omaloc-supl-init"

.field public static final CONTENT_MIME_TYPE_B_SYNCML_DS_XML:Ljava/lang/String; = "application/vnd.syncml.ds.notification"

.field public static final CONTENT_MIME_TYPE_B_VND_DOCOMO_PF:Ljava/lang/String; = "application/vnd.docomo.pf"

.field public static final CONTENT_TYPE_B_CONNECT_WBXML:I = 0x36

.field public static final CONTENT_TYPE_B_DRM_RIGHTS_WBXML:I = 0x4b

.field public static final CONTENT_TYPE_B_DRM_RIGHTS_XML:I = 0x4a

.field public static final CONTENT_TYPE_B_MMS:I = 0x3e

.field public static final CONTENT_TYPE_B_PUSH_CO:I = 0x32

.field public static final CONTENT_TYPE_B_PUSH_SI:I = 0x2e

.field public static final CONTENT_TYPE_B_PUSH_SL:I = 0x30

.field public static final CONTENT_TYPE_B_PUSH_SYNCML_NOTI:I = 0x45

.field public static final CONTENT_TYPE_B_SAN:I = 0x44

.field public static final CONTENT_TYPE_B_SUPL_INIT:I = 0x312

.field public static final CONTENT_TYPE_B_SYNCML_DS_XML:I = 0x4e

.field public static final CONTENT_TYPE_B_VND_DOCOMO_PF:I = 0x310

.field private static final LOG_TAG:Ljava/lang/String; = "WspTypeDecoder"

.field private static final OMA_CP_HDR_PARAM_MAC:B = 0x12t

.field private static final OMA_CP_HDR_PARAM_SEC:B = 0x11t

.field public static final PARAMETER_ID_X_WAP_APPLICATION_ID:I = 0x2f

.field public static final PDU_TYPE_CONFIRMED_PUSH:I = 0x7

.field public static final PDU_TYPE_PUSH:I = 0x6

.field private static final WAP_PDU_LENGTH_QUOTE:I = 0x1f

.field private static final WAP_PDU_SHORT_LENGTH_MAX:I = 0x1e


# instance fields
.field dataLength:I

.field macData:[B

.field secType:I

.field stringValue:Ljava/lang/String;

.field unsigned32bit:J

.field wspData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "pdu"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    .line 99
    return-void
.end method


# virtual methods
.method public decodeConnectwb(IJ)Z
    .locals 8
    .parameter "startIndex"
    .parameter "dataTypeLength"

    .prologue
    const/4 v6, 0x0

    const-string v7, "WspTypeDecoder"

    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, index:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    const-wide/16 v4, 0x36

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 263
    :cond_0
    const-string v2, "WspTypeDecoder"

    const-string v2, "decodeConnectwb: decodeIntegerValue fail!!"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 294
    :goto_0
    return v2

    .line 267
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/2addr v0, v2

    .line 269
    :goto_1
    int-to-long v2, v0

    cmp-long v2, v2, p2

    if-gez v2, :cond_2

    .line 270
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int v3, p1, v0

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x7f

    packed-switch v2, :pswitch_data_0

    .line 288
    const-string v2, "WspTypeDecoder"

    const-string v2, "decodeConnectwb:: error into default"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 289
    goto :goto_0

    .line 272
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 273
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int v3, p1, v0

    aget-byte v2, v2, v3

    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->secType:I

    .line 274
    iget v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->secType:I

    and-int/lit8 v2, v2, 0x7f

    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->secType:I

    .line 275
    add-int/lit8 v0, v0, 0x1

    .line 276
    goto :goto_1

    .line 278
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 279
    move v1, v0

    .line 281
    .local v1, start:I
    int-to-long v2, v1

    sub-long v2, p2, v2

    long-to-int v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->macData:[B

    .line 282
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int v3, p1, v1

    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->macData:[B

    long-to-int v5, p2

    sub-int/2addr v5, v1

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    long-to-int v0, p2

    .line 285
    iput v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    goto :goto_1

    .line 293
    .end local v1           #start:I
    :cond_2
    const-string v2, "WspTypeDecoder"

    const-string v2, "decodeConnectwb finish!!!"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v2, 0x1

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public decodeConstrainedEncoding(I)Z
    .locals 2
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x1

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v0, v1

    .line 312
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v0

    goto :goto_0
.end method

.method public decodeContentLength(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v0

    return v0
.end method

.method public decodeContentLocation(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeContentType(I)Z
    .locals 6
    .parameter "startIndex"

    .prologue
    const/4 v5, 0x1

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeValueLength(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeConstrainedEncoding(I)Z

    move-result v3

    .line 351
    :goto_0
    return v3

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    .line 332
    .local v2, mediaPrefixLength:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v0

    .line 334
    .local v0, mediaFieldLength:J
    const-string v3, "ro.config.hw_omacp"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    add-int v3, p1, v2

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeConnectwb(IJ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 337
    const-string v3, "application/vnd.wap.connectivity-wbxml"

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v3, v5

    .line 338
    goto :goto_0

    .line 342
    :cond_1
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 343
    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 344
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v3, v5

    .line 345
    goto :goto_0

    .line 347
    :cond_2
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 348
    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    move v3, v5

    .line 349
    goto :goto_0

    .line 351
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public decodeExtensionMedia(I)Z
    .locals 7
    .parameter "startIndex"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 240
    move v0, p1

    .line 241
    .local v0, index:I
    iput v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 242
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    .line 243
    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    array-length v1, v3

    .line 244
    .local v1, length:I
    if-ge v0, v1, :cond_0

    move v2, v6

    .line 246
    .local v2, rtrn:Z
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_1

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #rtrn:Z
    :cond_0
    move v2, v4

    .line 244
    goto :goto_0

    .line 250
    .restart local v2       #rtrn:Z
    :cond_1
    sub-int v3, v0, p1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 251
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    iget v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, p1, v5}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    .line 253
    return v2
.end method

.method public decodeIntegerValue(I)Z
    .locals 2
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x1

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 178
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeLongInteger(I)Z

    move-result v0

    goto :goto_0
.end method

.method public decodeLongInteger(I)Z
    .locals 6
    .parameter "startIndex"

    .prologue
    .line 152
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v2, v2, p1

    and-int/lit16 v1, v2, 0xff

    .line 154
    .local v1, lengthMultiOctet:I
    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    .line 155
    const/4 v2, 0x0

    .line 162
    :goto_0
    return v2

    .line 157
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 158
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-gt v0, v1, :cond_1

    .line 159
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int v5, p1, v0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_1
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 162
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public decodeShortInteger(I)Z
    .locals 3
    .parameter "startIndex"

    .prologue
    const/4 v2, 0x1

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x7f

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 138
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    move v0, v2

    .line 139
    goto :goto_0
.end method

.method public decodeTextString(I)Z
    .locals 7
    .parameter "startIndex"

    .prologue
    const/4 v6, 0x1

    .line 111
    move v0, p1

    .line 112
    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 116
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v1, v1, p1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_1

    .line 117
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    .line 121
    :goto_1
    return v6

    .line 119
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    sub-int/2addr v3, v6

    invoke-direct {v1, v2, p1, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    goto :goto_1
.end method

.method public decodeUintvarInteger(I)Z
    .locals 6
    .parameter "startIndex"

    .prologue
    const/4 v5, 0x7

    .line 191
    move v0, p1

    .line 193
    .local v0, index:I
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 194
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 195
    sub-int v1, v0, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 203
    :goto_1
    return v1

    .line 198
    :cond_0
    iget-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    shl-long/2addr v1, v5

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0x7f

    int-to-long v3, v3

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_1
    iget-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    shl-long/2addr v1, v5

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0x7f

    int-to-long v3, v3

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 202
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    .line 203
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public decodeValueLength(I)Z
    .locals 3
    .parameter "startIndex"

    .prologue
    const/16 v1, 0x1f

    const/4 v2, 0x1

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v1, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    if-ge v0, v1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->wspData:[B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    .line 221
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    :goto_1
    move v0, v2

    .line 226
    goto :goto_0

    .line 223
    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    .line 224
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    goto :goto_1
.end method

.method public decodeXWapApplicationId(I)Z
    .locals 2
    .parameter "startIndex"

    .prologue
    const/4 v1, 0x1

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    move v0, v1

    .line 394
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    goto :goto_0
.end method

.method public decodeXWapContentURI(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeXWapInitiatorURI(I)Z
    .locals 1
    .parameter "startIndex"

    .prologue
    .line 420
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public getDecodedDataLength()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->dataLength:I

    return v0
.end method

.method public getMacByte()[B
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->macData:[B

    return-object v0
.end method

.method public getSec()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->secType:I

    return v0
.end method

.method public getValue32()J
    .locals 2

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->unsigned32bit:J

    return-wide v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->stringValue:Ljava/lang/String;

    return-object v0
.end method
