.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mOriginalAddr:Ljava/lang/String;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 1
    .parameter "context"
    .parameter "smsDispatcher"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 54
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private dispatchWapPdu_ConnectWbxml([BIIII[B)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"
    .parameter "secType"
    .parameter "macData"

    .prologue
    const/4 v5, 0x0

    .line 313
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnectWbxml: mOriginalAddr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginalAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", transactionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pduType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dataIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", secType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", macData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    array-length v2, p1

    sub-int/2addr v2, p4

    new-array v0, v2, [B

    .line 319
    .local v0, data:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, p4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string/jumbo v2, "transactionId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    const-string v2, "pduType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 326
    const-string v2, "sec"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    const-string v2, "mac"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 328
    const-string v2, "sender"

    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginalAddr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v2, v1, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 331
    iput-object v5, p0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginalAddr:Ljava/lang/String;

    .line 332
    return-void
.end method

.method private dispatchWapPdu_DRM([BIILjava/lang/String;II)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    .line 357
    add-int v1, p5, p6

    .line 359
    .local v1, dataIndex:I
    array-length v3, p1

    sub-int/2addr v3, v1

    new-array v0, v3, [B

    .line 360
    .local v0, data:[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {p1, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v3, "com.android.hwdrm"

    const-string v4, "com.android.hwdrm.HWDrmPushReceiver"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string/jumbo v3, "transactionId"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    const-string v3, "pduType"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 370
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchWapPdu_DRM intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private dispatchWapPdu_MMS([BIIII)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 337
    new-array v2, p5, [B

    .line 338
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p4, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    add-int v1, p4, p5

    .line 340
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 341
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 348
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 350
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_MMS"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method private dispatchWapPdu_PushCO([BIIII)V
    .locals 4
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    .line 294
    new-array v0, p5, [B

    .line 295
    .local v0, header:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, p4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string/jumbo v2, "transactionId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v2, "pduType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 302
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 304
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method private dispatchWapPdu_default([BIILjava/lang/String;II)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 274
    new-array v2, p6, [B

    .line 275
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    add-int v1, p5, p6

    .line 279
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 280
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    const-string v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 287
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 289
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 290
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 24
    .parameter "pdu"

    .prologue
    .line 69
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/16 v22, 0x0

    .line 72
    .local v22, index:I
    add-int/lit8 v23, v22, 0x1

    .end local v22           #index:I
    .local v23, index:I
    aget-byte v2, p1, v22

    and-int/lit16 v4, v2, 0xff

    .line 73
    .local v4, transactionId:I
    add-int/lit8 v22, v23, 0x1

    .end local v23           #index:I
    .restart local v22       #index:I
    aget-byte v2, p1, v23

    and-int/lit16 v5, v2, 0xff

    .line 74
    .local v5, pduType:I
    const/4 v7, 0x0

    .line 76
    .local v7, headerLength:I
    const/4 v2, 0x6

    if-eq v5, v2, :cond_0

    const/4 v2, 0x7

    if-eq v5, v2, :cond_0

    .line 78
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received non-PUSH WAP PDU. Type = "

    .end local v4           #transactionId:I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v2, 0x1

    .line 253
    :goto_0
    return v2

    .line 82
    .restart local v4       #transactionId:I
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    const-string v2, "WAP PUSH"

    const-string v3, "Received PDU. Header Length error."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v2, 0x2

    goto :goto_0

    .line 94
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v2

    long-to-int v7, v2

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/lit8 v22, v2, 0x2

    .line 97
    move/from16 v6, v22

    .line 111
    .local v6, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    const-string v2, "WAP PUSH"

    const-string v3, "Received PDU. Header Content-Type error."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v2, 0x2

    goto :goto_0

    .line 116
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v12

    .line 117
    .local v12, mimeType:Ljava/lang/String;
    if-nez v12, :cond_5

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v2

    move-wide v0, v2

    long-to-int v0, v0

    move/from16 v20, v0

    .line 120
    .local v20, binaryContentType:I
    sparse-switch v20, :sswitch_data_0

    .line 165
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received PDU. Unsupported Content-Type = "

    .end local v4           #transactionId:I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 122
    .restart local v4       #transactionId:I
    :sswitch_0
    const-string v12, "application/vnd.oma.drm.rights+xml"

    .line 211
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int v22, v22, v2

    .line 213
    const/16 v21, 0x0

    .line 214
    .local v21, dispatchedByApplication:Z
    sparse-switch v20, :sswitch_data_1

    .line 249
    :cond_3
    :goto_2
    if-nez v21, :cond_4

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v4

    move v11, v5

    move v13, v6

    move v14, v7

    .line 250
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_default([BIILjava/lang/String;II)V

    .line 253
    :cond_4
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 125
    .end local v21           #dispatchedByApplication:Z
    :sswitch_1
    const-string v12, "application/vnd.oma.drm.rights+wbxml"

    .line 126
    goto :goto_1

    .line 128
    :sswitch_2
    const-string v12, "application/vnd.wap.sic"

    .line 129
    goto :goto_1

    .line 131
    :sswitch_3
    const-string v12, "application/vnd.wap.slc"

    .line 132
    goto :goto_1

    .line 134
    :sswitch_4
    const-string v12, "application/vnd.wap.coc"

    .line 135
    goto :goto_1

    .line 137
    :sswitch_5
    const-string v12, "application/vnd.wap.mms-message"

    .line 138
    goto :goto_1

    .line 140
    :sswitch_6
    const-string v12, "application/vnd.docomo.pf"

    .line 141
    goto :goto_1

    .line 143
    :sswitch_7
    const-string v12, "application/vnd.omaloc-supl-init"

    .line 144
    goto :goto_1

    .line 147
    :sswitch_8
    const-string v12, "application/vnd.syncml.notification"

    .line 148
    goto :goto_1

    .line 152
    :sswitch_9
    const-string v12, "application/vnd.wap.connectivity-wbxml"

    .line 153
    goto :goto_1

    .line 156
    :sswitch_a
    const-string v12, "application/vnd.syncml.notification"

    .line 157
    goto :goto_1

    .line 160
    :sswitch_b
    const-string v12, "application/vnd.syncml.ds.notification"

    .line 161
    goto :goto_1

    .line 171
    .end local v20           #binaryContentType:I
    :cond_5
    const-string v2, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 172
    const/16 v20, 0x4a

    .restart local v20       #binaryContentType:I
    goto :goto_1

    .line 173
    .end local v20           #binaryContentType:I
    :cond_6
    const-string v2, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 174
    const/16 v20, 0x4b

    .restart local v20       #binaryContentType:I
    goto :goto_1

    .line 175
    .end local v20           #binaryContentType:I
    :cond_7
    const-string v2, "application/vnd.wap.sic"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 176
    const/16 v20, 0x2e

    .restart local v20       #binaryContentType:I
    goto :goto_1

    .line 177
    .end local v20           #binaryContentType:I
    :cond_8
    const-string v2, "application/vnd.wap.slc"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 178
    const/16 v20, 0x30

    .restart local v20       #binaryContentType:I
    goto :goto_1

    .line 179
    .end local v20           #binaryContentType:I
    :cond_9
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 180
    const/16 v20, 0x32

    .restart local v20       #binaryContentType:I
    goto :goto_1

    .line 181
    .end local v20           #binaryContentType:I
    :cond_a
    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 182
    const/16 v20, 0x3e

    .restart local v20       #binaryContentType:I
    goto/16 :goto_1

    .line 183
    .end local v20           #binaryContentType:I
    :cond_b
    const-string v2, "application/vnd.docomo.pf"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 184
    const/16 v20, 0x310

    .restart local v20       #binaryContentType:I
    goto/16 :goto_1

    .line 185
    .end local v20           #binaryContentType:I
    :cond_c
    const-string v2, "application/vnd.omaloc-supl-init"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 186
    const/16 v20, 0x312

    .restart local v20       #binaryContentType:I
    goto/16 :goto_1

    .line 188
    .end local v20           #binaryContentType:I
    :cond_d
    const-string v2, "application/vnd.syncml.notification"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 189
    const/16 v20, 0x44

    .restart local v20       #binaryContentType:I
    goto/16 :goto_1

    .line 192
    .end local v20           #binaryContentType:I
    :cond_e
    const-string v2, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 193
    const/16 v20, 0x36

    .restart local v20       #binaryContentType:I
    goto/16 :goto_1

    .line 195
    .end local v20           #binaryContentType:I
    :cond_f
    const-string v2, "application/vnd.syncml.notification"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 196
    const/16 v20, 0x45

    .restart local v20       #binaryContentType:I
    goto/16 :goto_1

    .line 198
    .end local v20           #binaryContentType:I
    :cond_10
    const-string v2, "application/vnd.syncml.ds.notification"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 204
    const/16 v20, 0x4e

    .restart local v20       #binaryContentType:I
    goto/16 :goto_1

    .line 207
    .end local v20           #binaryContentType:I
    :cond_11
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received PDU. Unknown Content-Type = "

    .end local v4           #transactionId:I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v2, 0x1

    goto/16 :goto_0

    .restart local v4       #transactionId:I
    .restart local v20       #binaryContentType:I
    .restart local v21       #dispatchedByApplication:Z
    :sswitch_c
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 216
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIII)V

    .line 217
    const/16 v21, 0x1

    .line 218
    goto/16 :goto_2

    :sswitch_d
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 220
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIII)V

    .line 221
    const/16 v21, 0x1

    .line 222
    goto/16 :goto_2

    .line 227
    :sswitch_e
    const-string v2, "ro.config.hwdrm"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v4

    move v11, v5

    move v13, v6

    move v14, v7

    .line 228
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DRM([BIILjava/lang/String;II)V

    .line 229
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 235
    :sswitch_f
    const-string v2, "ro.config.hw_omacp"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getSec()I

    move-result v18

    .line 237
    .local v18, sec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getMacByte()[B

    move-result-object v19

    .line 238
    .local v19, macByte:[B
    add-int v17, v6, v7

    .local v17, dataIndex:I
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move v15, v4

    move/from16 v16, v5

    .line 239
    invoke-direct/range {v13 .. v19}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_ConnectWbxml([BIIII[B)V

    .line 240
    const/16 v21, 0x1

    .line 241
    goto/16 :goto_2

    .line 242
    .end local v17           #dataIndex:I
    .end local v18           #sec:I
    .end local v19           #macByte:[B
    :cond_12
    const-string v2, "WAP PUSH"

    const-string v3, "OMACP is not supported and the message will be discarded."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_2
        0x30 -> :sswitch_3
        0x32 -> :sswitch_4
        0x36 -> :sswitch_9
        0x3e -> :sswitch_5
        0x44 -> :sswitch_8
        0x45 -> :sswitch_a
        0x4a -> :sswitch_0
        0x4b -> :sswitch_1
        0x4e -> :sswitch_b
        0x310 -> :sswitch_6
        0x312 -> :sswitch_7
    .end sparse-switch

    .line 214
    :sswitch_data_1
    .sparse-switch
        0x32 -> :sswitch_c
        0x36 -> :sswitch_f
        0x3e -> :sswitch_d
        0x4a -> :sswitch_e
        0x4b -> :sswitch_e
    .end sparse-switch
.end method

.method public dispatchWapPdu([BLjava/lang/String;)I
    .locals 3
    .parameter "pdu"
    .parameter "oriaddress"

    .prologue
    .line 265
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oriaddress ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginalAddr:Ljava/lang/String;

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v0

    return v0
.end method
