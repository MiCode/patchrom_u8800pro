.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final CDMA_SMS_STATUS_FAILED:I = 0x3

.field private static final CDMA_SMS_STATUS_NO_ERROR:I = 0x0

.field private static final CDMA_SMS_STATUS_PENDING:I = 0x2

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field public static final ENCODING_7BIT_NATIONAL:I = 0x4

.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field public static final MAX_USER_DATA_BYTES_SINGLE:I = 0x9b

.field public static final MAX_USER_DATA_BYTES_SINGLE_WITH_HEADER:I = 0x95

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final RETURN_ACK:I = 0x1

.field private static final RETURN_NO_ACK:I = 0x0

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B

.field public static lockingLanguage:I

.field public static singleLanguage:I


# instance fields
.field private mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field private mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    sput v0, Lcom/android/internal/telephony/cdma/SmsMessage;->singleLanguage:I

    .line 128
    sput v0, Lcom/android/internal/telephony/cdma/SmsMessage;->lockingLanguage:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 133
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 617
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthEx(Ljava/lang/CharSequence;Z)[I
    .locals 12
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    const/4 v5, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 531
    new-array v2, v5, [I

    .line 535
    .local v2, ret:[I
    invoke-static {p0, p1, v8, v8}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v3

    .line 536
    .local v3, septets:I
    const/4 v5, -0x1

    if-eq v5, v3, :cond_1

    .line 537
    aput v3, v2, v9

    .line 538
    const/16 v5, 0xa0

    if-le v3, v5, :cond_0

    .line 540
    add-int/lit16 v5, v3, 0x98

    div-int/lit16 v5, v5, 0x99

    aput v5, v2, v8

    .line 541
    aget v5, v2, v8

    mul-int/lit16 v5, v5, 0x99

    sub-int/2addr v5, v3

    aput v5, v2, v10

    .line 547
    :goto_0
    aput v9, v2, v11

    .line 604
    :goto_1
    return-object v2

    .line 544
    :cond_0
    aput v9, v2, v8

    .line 545
    const/16 v5, 0xa0

    sub-int/2addr v5, v3

    aput v5, v2, v10

    goto :goto_0

    .line 553
    :cond_1
    const/4 v3, 0x0

    .line 557
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsCodingNational()Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, smsCodingNational:Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 560
    if-nez p1, :cond_3

    move v5, v9

    :goto_2
    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->GSM_7BIT_DEFAULT_TABLE:Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;

    sget-object v7, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->GSM_7BIT_TURKISH_SINGLE_SHIFT_TABLE:Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;

    invoke-static {p0, v5, v6, v7}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v3

    .line 574
    :cond_2
    :goto_3
    const/4 v5, 0x1

    aput v3, v2, v5

    .line 575
    const/16 v5, 0x9b

    if-le v3, v5, :cond_8

    .line 577
    const/4 v5, 0x0

    add-int/lit16 v6, v3, 0x94

    div-int/lit16 v6, v6, 0x95

    aput v6, v2, v5

    .line 578
    const/4 v5, 0x2

    const/4 v6, 0x0

    aget v6, v2, v6

    mul-int/lit16 v6, v6, 0x95

    sub-int/2addr v6, v3

    aput v6, v2, v5

    .line 585
    :goto_4
    const/4 v5, 0x3

    const/4 v6, 0x4

    aput v6, v2, v5
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 586
    .end local v4           #smsCodingNational:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 588
    .local v0, ex2:Lcom/android/internal/telephony/EncodeException;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    mul-int/lit8 v1, v5, 0x2

    .line 589
    .local v1, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    aput v5, v2, v9

    .line 590
    const/16 v5, 0x8c

    if-le v1, v5, :cond_9

    .line 593
    add-int/lit16 v5, v1, 0x85

    div-int/lit16 v5, v5, 0x86

    aput v5, v2, v8

    .line 594
    aget v5, v2, v8

    mul-int/lit16 v5, v5, 0x86

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    aput v5, v2, v10

    .line 600
    :goto_5
    aput v11, v2, v11

    goto :goto_1

    .end local v0           #ex2:Lcom/android/internal/telephony/EncodeException;
    .end local v1           #octets:I
    .restart local v4       #smsCodingNational:Ljava/lang/String;
    :cond_3
    move v5, v8

    .line 560
    goto :goto_2

    .line 563
    :cond_4
    :try_start_1
    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 564
    if-nez p1, :cond_5

    move v5, v9

    :goto_6
    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->GSM_7BIT_DEFAULT_TABLE:Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;

    sget-object v7, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->GSM_7BIT_SPANISH_SINGLE_SHIFT_TABLE:Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;

    invoke-static {p0, v5, v6, v7}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v3

    goto :goto_3

    :cond_5
    move v5, v8

    goto :goto_6

    .line 567
    :cond_6
    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 568
    if-nez p1, :cond_7

    move v5, v9

    :goto_7
    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->GSM_7BIT_DEFAULT_TABLE:Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;

    sget-object v7, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->GSM_7BIT_PORTUGUESE_SINGLE_SHIFT_TABLE:Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;

    invoke-static {p0, v5, v6, v7}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v3

    goto :goto_3

    :cond_7
    move v5, v8

    goto :goto_7

    .line 581
    :cond_8
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v2, v5

    .line 582
    const/4 v5, 0x2

    const/16 v6, 0x9b

    sub-int/2addr v6, v3

    aput v6, v2, v5
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 597
    .end local v4           #smsCodingNational:Ljava/lang/String;
    .restart local v0       #ex2:Lcom/android/internal/telephony/EncodeException;
    .restart local v1       #octets:I
    :cond_9
    aput v9, v2, v8

    .line 598
    const/16 v5, 0x8c

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    aput v5, v2, v10

    goto :goto_5
.end method

.method private convertDtmfToAscii(B)B
    .locals 1
    .parameter "dtmfDigit"

    .prologue
    .line 1160
    packed-switch p1, :pswitch_data_0

    .line 1178
    const/16 v0, 0x20

    .line 1182
    .local v0, asciiDigit:B
    :goto_0
    return v0

    .line 1161
    .end local v0           #asciiDigit:B
    :pswitch_0
    const/16 v0, 0x44

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1162
    .end local v0           #asciiDigit:B
    :pswitch_1
    const/16 v0, 0x31

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1163
    .end local v0           #asciiDigit:B
    :pswitch_2
    const/16 v0, 0x32

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1164
    .end local v0           #asciiDigit:B
    :pswitch_3
    const/16 v0, 0x33

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1165
    .end local v0           #asciiDigit:B
    :pswitch_4
    const/16 v0, 0x34

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1166
    .end local v0           #asciiDigit:B
    :pswitch_5
    const/16 v0, 0x35

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1167
    .end local v0           #asciiDigit:B
    :pswitch_6
    const/16 v0, 0x36

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1168
    .end local v0           #asciiDigit:B
    :pswitch_7
    const/16 v0, 0x37

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1169
    .end local v0           #asciiDigit:B
    :pswitch_8
    const/16 v0, 0x38

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1170
    .end local v0           #asciiDigit:B
    :pswitch_9
    const/16 v0, 0x39

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1171
    .end local v0           #asciiDigit:B
    :pswitch_a
    const/16 v0, 0x30

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1172
    .end local v0           #asciiDigit:B
    :pswitch_b
    const/16 v0, 0x2a

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1173
    .end local v0           #asciiDigit:B
    :pswitch_c
    const/16 v0, 0x23

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1174
    .end local v0           #asciiDigit:B
    :pswitch_d
    const/16 v0, 0x41

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1175
    .end local v0           #asciiDigit:B
    :pswitch_e
    const/16 v0, 0x42

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1176
    .end local v0           #asciiDigit:B
    :pswitch_f
    const/16 v0, 0x43

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 8
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const-string v7, "CDMA"

    .line 289
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 291
    .local v1, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->indexOnIcc:I

    .line 296
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 297
    const-string v4, "CDMA"

    const-string v5, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 321
    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_0
    return-object v4

    .line 300
    .restart local v1       #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_0
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x7

    iput v4, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->statusOnIcc:I

    .line 308
    const/4 v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v3, v4, 0xff

    .line 313
    .local v3, size:I
    new-array v2, v3, [B

    .line 314
    .local v2, pdu:[B
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePduFromEfRecord([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    .line 318
    goto :goto_0

    .line 319
    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 320
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "CDMA"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    .line 321
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    .line 141
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 144
    .local v1, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_start_0
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 148
    :goto_0
    return-object v2

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "CDMA"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createPdu()V
    .locals 8

    .prologue
    .line 1113
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1114
    .local v3, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1115
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1116
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1119
    .local v2, dos:Ljava/io/DataOutputStream;
    :try_start_0
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1120
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1121
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1123
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1124
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1125
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1126
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1127
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1128
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1130
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1132
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1133
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1134
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1136
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1137
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1138
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1148
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :goto_0
    return-void

    .line 1149
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1150
    .local v4, ex:Ljava/io/IOException;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static declared-synchronized getNextMessageId()I
    .locals 6

    .prologue
    const-string v2, "CDMA"

    const-string v2, "persist.radio.cdma.msgid"

    .line 1000
    const-class v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    monitor-enter v2

    :try_start_0
    const-string v3, "persist.radio.cdma.msgid"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1001
    .local v0, msgId:I
    const v3, 0xffff

    rem-int v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1002
    .local v1, nextMsgId:Ljava/lang/String;
    const-string v3, "persist.radio.cdma.msgid"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v3, "CDMA:SMS"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1004
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next persist.radio.cdma.msgid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readback gets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.radio.cdma.msgid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    :cond_0
    monitor-exit v2

    return v0

    .line 1000
    .end local v0           #msgId:I
    .end local v1           #nextMsgId:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static getSubmitDeliverPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 4
    .parameter "isSubmitPdu"
    .parameter "mcTimeStamp"
    .parameter "destAddr"
    .parameter "message"
    .parameter "smsHeader"

    .prologue
    .line 1229
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 1230
    :cond_0
    const-string v1, "CDMA/SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";destAddr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mcTimeStamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/4 v1, 0x0

    .line 1237
    :goto_0
    return-object v1

    .line 1234
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1235
    .local v0, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1236
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1237
    invoke-static {p0, p2, p1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitDeliverPdu(ZLjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"

    .prologue
    .line 454
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 4
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v3, 0x0

    .line 397
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 398
    .local v0, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 399
    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 400
    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 402
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 403
    .local v1, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 405
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 406
    .local v2, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 407
    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 408
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 409
    iput-object p3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 411
    invoke-static {p1, p4, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "header"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    .line 432
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 433
    .local v0, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 434
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 435
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 436
    iput-object p3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 438
    invoke-static {p1, p4, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "smsHeader"

    .prologue
    .line 365
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 366
    :cond_0
    const/4 v1, 0x0

    .line 372
    :goto_0
    return-object v1

    .line 369
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 370
    .local v0, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 371
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 372
    invoke-static {p1, p3, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .parameter "pdu"

    .prologue
    .line 330
    const-string v0, "CDMA"

    const-string v1, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    .line 172
    const-string v0, "CDMA"

    const-string v1, "newFromCDS: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 2
    .parameter "lines"

    .prologue
    .line 156
    const-string v0, "CDMA"

    const-string v1, "newFromCMT: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    .line 164
    const-string v0, "CDMA"

    const-string v1, "newFromCMTI: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 10
    .parameter "p"

    .prologue
    .line 182
    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 183
    .local v7, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 184
    .local v5, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 185
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 192
    .local v8, subaddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 194
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-eqz v9, :cond_1

    .line 195
    const/4 v9, 0x1

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 205
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 208
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .local v1, addressDigitMode:I
    and-int/lit16 v9, v1, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 210
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 211
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 212
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 213
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 214
    .local v2, count:B
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 215
    new-array v4, v2, [B

    .line 217
    .local v4, data:[B
    const/4 v6, 0x0

    .local v6, index:I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 218
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 221
    if-nez v1, :cond_0

    .line 222
    aget-byte v9, v4, v6

    invoke-direct {v7, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v9

    aput-byte v9, v4, v6

    .line 217
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 198
    .end local v1           #addressDigitMode:I
    .end local v2           #count:B
    .end local v4           #data:[B
    .end local v6           #index:I
    :cond_1
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-nez v9, :cond_2

    .line 200
    const/4 v9, 0x2

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 202
    :cond_2
    const/4 v9, 0x0

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 226
    .restart local v1       #addressDigitMode:I
    .restart local v2       #count:B
    .restart local v4       #data:[B
    .restart local v6       #index:I
    :cond_3
    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 228
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 229
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    iput-byte v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 230
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 232
    if-gez v2, :cond_4

    .line 233
    const/4 v2, 0x0

    .line 238
    :cond_4
    new-array v4, v2, [B

    .line 240
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_5

    .line 241
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 240
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 244
    :cond_5
    iput-object v4, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 254
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 255
    .local v3, countInt:I
    if-lez v3, :cond_7

    .line 256
    new-array v4, v3, [B

    .line 258
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_6

    .line 259
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 258
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 261
    :cond_6
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 266
    :cond_7
    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 267
    iput-object v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 268
    iput-object v0, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 269
    iput-object v5, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 272
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    .line 274
    return-object v7
.end method

.method private parsePdu([B)V
    .locals 10
    .parameter "pdu"

    .prologue
    .line 698
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 699
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 702
    .local v3, dis:Ljava/io/DataInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 703
    .local v4, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 706
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 707
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 708
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 710
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 711
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 712
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 713
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 715
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 716
    .local v6, length:B
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 717
    new-array v7, v6, [B

    iput-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 718
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 720
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 722
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 723
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 724
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 727
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 728
    .local v2, bearerDataLength:I
    new-array v7, v2, [B

    iput-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 729
    iget-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 730
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .end local v2           #bearerDataLength:I
    .end local v6           #length:B
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 737
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 738
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 739
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    .line 741
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 742
    return-void

    .line 731
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 732
    .local v5, ex:Ljava/lang/Exception;
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parsePduFromEfRecord([B)V
    .locals 26
    .parameter "pdu"

    .prologue
    .line 748
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 749
    .local v7, bais:Ljava/io/ByteArrayInputStream;
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 750
    .local v10, dis:Ljava/io/DataInputStream;
    new-instance v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v11}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 751
    .local v11, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 752
    .local v4, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v19, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 755
    .local v19, subAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v23

    move/from16 v0, v23

    move-object v1, v11

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 757
    :cond_0
    :goto_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->available()I

    move-result v23

    if-lez v23, :cond_9

    .line 758
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v16

    .line 762
    .local v16, parameterId:I
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 764
    .local v17, parameterLen:I
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v15, v0

    .line 766
    .local v15, parameterData:[B
    packed-switch v16, :pswitch_data_0

    .line 866
    new-instance v23, Ljava/lang/Exception;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "unsupported parameterId ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    .end local v15           #parameterData:[B
    .end local v16           #parameterId:I
    .end local v17           #parameterLen:I
    :catch_0
    move-exception v23

    move-object/from16 v12, v23

    .line 872
    .local v12, ex:Ljava/lang/Exception;
    const-string v23, "CDMA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    .end local v12           #ex:Ljava/lang/Exception;
    :goto_1
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 877
    iput-object v4, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 878
    move-object/from16 v0, v19

    move-object v1, v11

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 879
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 880
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 883
    return-void

    .line 773
    .restart local v15       #parameterData:[B
    .restart local v16       #parameterId:I
    .restart local v17       #parameterLen:I
    :pswitch_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v23

    move/from16 v0, v23

    move-object v1, v11

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 774
    const-string v23, "CDMA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "teleservice = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object v0, v11

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 781
    :pswitch_1
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v23

    move/from16 v0, v23

    move-object v1, v11

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    goto/16 :goto_0

    .line 785
    :pswitch_2
    const/16 v23, 0x0

    move-object v0, v10

    move-object v1, v15

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    .line 786
    new-instance v5, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v5, v15}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 787
    .local v5, addrBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v23, 0x1

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v23

    move/from16 v0, v23

    move-object v1, v4

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 788
    const/16 v23, 0x1

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v23

    move/from16 v0, v23

    move-object v1, v4

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 789
    const/4 v14, 0x0

    .line 790
    .local v14, numberType:I
    move-object v0, v4

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 791
    const/16 v23, 0x3

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    .line 792
    iput v14, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 794
    move-object v0, v4

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 795
    const/16 v23, 0x4

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v23

    move/from16 v0, v23

    move-object v1, v4

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 798
    :cond_1
    const/16 v23, 0x8

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v23

    move/from16 v0, v23

    move-object v1, v4

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 800
    move-object v0, v4

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object v9, v0

    .line 801
    .local v9, data:[B
    const/4 v6, 0x0

    .line 803
    .local v6, b:B
    move-object v0, v4

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v23, v0

    if-nez v23, :cond_2

    .line 805
    const/4 v13, 0x0

    .local v13, index:I
    :goto_2
    move-object v0, v4

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v23, v0

    move v0, v13

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 806
    const/16 v23, 0x4

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v23

    and-int/lit8 v23, v23, 0xf

    move/from16 v0, v23

    int-to-byte v0, v0

    move v6, v0

    .line 809
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v23

    aput-byte v23, v9, v13

    .line 805
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 811
    .end local v13           #index:I
    :cond_2
    move-object v0, v4

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 812
    move-object v0, v4

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 813
    const/4 v13, 0x0

    .restart local v13       #index:I
    :goto_3
    move-object v0, v4

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v23, v0

    move v0, v13

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 814
    const/16 v23, 0x8

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move v6, v0

    .line 815
    aput-byte v6, v9, v13

    .line 813
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 818
    .end local v13           #index:I
    :cond_3
    move-object v0, v4

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 819
    const/16 v23, 0x2

    move v0, v14

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 820
    const-string v23, "CDMA"

    const-string v24, "TODO: Originating Addr is email id"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_4
    :goto_4
    iput-object v9, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 831
    const-string v23, "CDMA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Originating Addr="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 822
    :cond_5
    const-string v23, "CDMA"

    const-string v24, "TODO: Originating Addr is data network address"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 825
    :cond_6
    const-string v23, "CDMA"

    const-string v24, "Originating Addr is of incorrect type"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 828
    :cond_7
    const-string v23, "CDMA"

    const-string v24, "Incorrect Digit mode"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 835
    .end local v5           #addrBis:Lcom/android/internal/util/BitwiseInputStream;
    .end local v6           #b:B
    .end local v9           #data:[B
    .end local v14           #numberType:I
    :pswitch_3
    const/16 v23, 0x0

    move-object v0, v10

    move-object v1, v15

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    .line 836
    new-instance v20, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 837
    .local v20, subAddrBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v23, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 838
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v23

    const/16 v24, 0x0

    aget-byte v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-byte v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 839
    const/16 v23, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    .line 840
    .local v21, subAddrLen:I
    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 841
    .local v22, subdata:[B
    const/4 v13, 0x0

    .restart local v13       #index:I
    :goto_5
    move v0, v13

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 842
    const/16 v23, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move v6, v0

    .line 844
    .restart local v6       #b:B
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v23

    aput-byte v23, v22, v13

    .line 841
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 846
    .end local v6           #b:B
    :cond_8
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    goto/16 :goto_0

    .line 849
    .end local v13           #index:I
    .end local v20           #subAddrBis:Lcom/android/internal/util/BitwiseInputStream;
    .end local v21           #subAddrLen:I
    .end local v22           #subdata:[B
    :pswitch_4
    const/16 v23, 0x0

    move-object v0, v10

    move-object v1, v15

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    .line 850
    new-instance v18, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 851
    .local v18, replyOptBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v23, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v23

    move/from16 v0, v23

    move-object v1, v11

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    goto/16 :goto_0

    .line 854
    .end local v18           #replyOptBis:Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_5
    const/16 v23, 0x0

    move-object v0, v10

    move-object v1, v15

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    .line 855
    new-instance v8, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v8, v15}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 856
    .local v8, ccBis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v23, 0x6

    move-object v0, v8

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v23

    const/16 v24, 0x0

    aget-byte v23, v23, v24

    move/from16 v0, v23

    move-object v1, v11

    iput-byte v0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 857
    const/16 v23, 0x2

    move-object v0, v8

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v23

    const/16 v24, 0x0

    aget-byte v23, v23, v24

    move/from16 v0, v23

    move-object v1, v11

    iput-byte v0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 858
    move-object v0, v11

    iget-byte v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 859
    const/16 v23, 0x8

    move-object v0, v8

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v23

    const/16 v24, 0x0

    aget-byte v23, v23, v24

    move/from16 v0, v23

    move-object v1, v11

    iput-byte v0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    goto/16 :goto_0

    .line 862
    .end local v8           #ccBis:Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_6
    const/16 v23, 0x0

    move-object v0, v10

    move-object v1, v15

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    .line 863
    iput-object v15, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    goto/16 :goto_0

    .line 869
    .end local v15           #parameterData:[B
    .end local v16           #parameterId:I
    .end local v17           #parameterLen:I
    :cond_9
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V

    .line 870
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 766
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static privateGetSubmitDeliverPdu(ZLjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "isSubmitPdu"
    .parameter "origAddrStr"
    .parameter "mcTimestamp"
    .parameter "userData"

    .prologue
    .line 1246
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    .line 1247
    .local v0, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 1335
    .end local v0           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_0
    return-object p0

    .line 1249
    .restart local v0       #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    .end local p1
    invoke-direct {p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1251
    .local p1, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v1

    iput v1, p1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1252
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1253
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1254
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1255
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1257
    if-eqz p0, :cond_2

    .line 1258
    const/4 p0, 0x2

    iput p0, p1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1259
    .end local p0
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1260
    const/4 p0, 0x0

    iput p0, p1, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1270
    .end local p2
    :goto_1
    iput-object p3, p1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1272
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object p3

    .line 1273
    .local p3, encodedBearerData:[B
    const-string p0, "CDMA:SMS"

    const/4 p2, 0x2

    invoke-static {p0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1274
    const-string p0, "CDMA"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MO (encoded) BearerData = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const-string p0, "CDMA"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MO raw BearerData = \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_1
    if-nez p3, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    .line 1263
    .restart local p0
    .restart local p1       #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local p2
    .local p3, userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_2
    const/4 p0, 0x1

    iput p0, p1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1265
    .end local p0
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .line 1266
    .local p0, msgTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(J)V

    .line 1267
    iput-object p0, p1, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    goto :goto_1

    .line 1280
    .end local p0           #msgTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    .end local p1           #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .local p3, encodedBearerData:[B
    :cond_3
    const/16 v1, 0x16b

    .line 1281
    .local v1, outputLen:I
    const/16 v2, 0xff

    .line 1282
    .local v2, paddingDigit:I
    const/4 p1, 0x0

    .line 1283
    .local p1, digitCount:I
    const/4 p2, 0x0

    .line 1284
    .local p2, digitNum:I
    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1285
    .local p0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    .end local v1           #outputLen:I
    invoke-direct {v1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1287
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x1002

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1288
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 1289
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1290
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1291
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1292
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1293
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1294
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 1295
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v5, v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1296
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v3, v3

    const/16 v4, 0x24

    if-ge v3, v4, :cond_4

    .line 1297
    const/16 v3, 0x24

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .end local v0           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    array-length p1, v0

    .end local p1           #digitCount:I
    sub-int p1, v3, p1

    .end local p2           #digitNum:I
    .local p1, digitNum:I
    move p2, p1

    .line 1301
    .end local p1           #digitNum:I
    .restart local p2       #digitNum:I
    :goto_2
    const/4 p1, 0x0

    .local p1, digitCount:I
    :goto_3
    if-ge p1, p2, :cond_5

    .line 1302
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 1301
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 1299
    .restart local v0       #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_4
    const-string v0, "CDMA"

    .end local v0           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const-string v3, "destAddr too long"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1332
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .end local p0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local p3           #encodedBearerData:[B
    :catch_0
    move-exception p0

    move-object v6, p0

    move p0, p1

    .end local p1           #digitCount:I
    .local p0, digitCount:I
    move p1, p2

    .end local p2           #digitNum:I
    .local p1, digitNum:I
    move-object p2, v6

    .line 1333
    .end local v2           #paddingDigit:I
    .local p2, ex:Ljava/io/IOException;
    :goto_4
    const-string p0, "CDMA"

    .end local p0           #digitCount:I
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #digitNum:I
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "creating SubmitPdu failed: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1305
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    .restart local v2       #paddingDigit:I
    .local p0, baos:Ljava/io/ByteArrayOutputStream;
    .local p1, digitCount:I
    .local p2, digitNum:I
    .restart local p3       #encodedBearerData:[B
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1306
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1307
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1308
    const/4 p1, 0x0

    :goto_5
    const/16 v0, 0x24

    if-ge p1, v0, :cond_6

    .line 1309
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 1308
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 1311
    :cond_6
    array-length v0, p3

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1312
    const/4 v0, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v0, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1313
    array-length v0, p3

    const/16 v3, 0xff

    if-ge v0, v3, :cond_7

    .line 1314
    const/16 v0, 0xff

    array-length p1, p3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local p1           #digitCount:I
    sub-int p1, v0, p1

    .end local p2           #digitNum:I
    .local p1, digitNum:I
    move p3, p1

    .line 1319
    .end local p1           #digitNum:I
    .local p3, digitNum:I
    :goto_6
    const/4 p1, 0x0

    .local p1, digitCount:I
    move p2, p1

    .end local p1           #digitCount:I
    .local p2, digitCount:I
    :goto_7
    if-ge p2, p3, :cond_8

    .line 1320
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1319
    add-int/lit8 p1, p2, 0x1

    .end local p2           #digitCount:I
    .restart local p1       #digitCount:I
    move p2, p1

    .end local p1           #digitCount:I
    .restart local p2       #digitCount:I
    goto :goto_7

    .line 1316
    .restart local p1       #digitCount:I
    .local p2, digitNum:I
    .local p3, encodedBearerData:[B
    :cond_7
    const/4 p2, 0x0

    .line 1317
    :try_start_3
    const-string p3, "CDMA"

    .end local p3           #encodedBearerData:[B
    const-string v0, "encodedBearerData too long"

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move p3, p2

    .end local p2           #digitNum:I
    .local p3, digitNum:I
    goto :goto_6

    .line 1322
    .end local p1           #digitCount:I
    .local p2, digitCount:I
    :cond_8
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1324
    new-instance v2, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    .end local v2           #paddingDigit:I
    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 1325
    .local v2, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #baos:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v2, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1326
    iget-object p0, v2, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .local p0, arr$:[B
    array-length v1, p0

    .local v1, len$:I
    const/4 p1, 0x0

    .local p1, i$:I
    move v0, p1

    .end local p1           #i$:I
    .local v0, i$:I
    :goto_8
    if-ge v0, v1, :cond_9

    aget-byte p1, p0, v0

    .line 1328
    .local p1, content:B
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pdu is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #content:B
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    add-int/lit8 p1, v0, 0x1

    .end local v0           #i$:I
    .local p1, i$:I
    move v0, p1

    .end local p1           #i$:I
    .restart local v0       #i$:I
    goto :goto_8

    .line 1330
    :cond_9
    const/4 p0, 0x0

    iput-object p0, v2, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local p0           #arr$:[B
    move-object p0, v2

    .line 1331
    goto/16 :goto_0

    .line 1332
    .end local v0           #i$:I
    .end local v1           #len$:I
    .end local v2           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_1
    move-exception p0

    move p1, p3

    .end local p3           #digitNum:I
    .local p1, digitNum:I
    move-object v6, p0

    move p0, p2

    .end local p2           #digitCount:I
    .local p0, digitCount:I
    move-object p2, v6

    goto/16 :goto_4
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 4
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"

    .prologue
    .line 1032
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    .line 1034
    .local v0, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 1105
    .end local v0           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local p1
    .end local p2
    :goto_0
    return-object p0

    .line 1036
    .restart local v0       #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local p1
    .restart local p2
    :cond_0
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1037
    .local p0, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1039
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1041
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1042
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1043
    .end local p1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1044
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1046
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1048
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object p2

    .line 1049
    .local p2, encodedBearerData:[B
    const-string p1, "CDMA:SMS"

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1050
    const-string p1, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MO (encoded) BearerData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const-string p1, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MO raw BearerData = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_1
    if-nez p2, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    .line 1058
    :cond_2
    const/16 p1, 0x1002

    .line 1059
    .local p1, teleservice:I
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasUserDataHeader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .end local p0           #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", teleservice: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1063
    .local v1, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 p0, 0x0

    iput p0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1064
    iput p1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1065
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1066
    const/4 p0, 0x1

    iput p0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 1067
    iput-object p2, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1079
    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 p1, 0x64

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1080
    .end local p1           #teleservice:I
    .local p0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-direct {p1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1081
    .local p1, dos:Ljava/io/DataOutputStream;
    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .end local v1           #envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1082
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1083
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1084
    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1085
    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1086
    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1087
    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1088
    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1089
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .end local v0           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    array-length v0, v0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1091
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1092
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1093
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1094
    array-length v0, p2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1095
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1096
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 1098
    new-instance p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    .end local p1           #dos:Ljava/io/DataOutputStream;
    invoke-direct {p1}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 1099
    .local p1, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #baos:Ljava/io/ByteArrayOutputStream;
    iput-object p0, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1100
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    .line 1101
    goto/16 :goto_0

    .line 1102
    .end local p1           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception p0

    .line 1103
    .local p0, ex:Ljava/io/IOException;
    const-string p1, "CDMA"

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #encodedBearerData:[B
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "creating SubmitPdu failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/4 p0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getCertainty()Landroid/telephony/EmergencyMessage$Certainty;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->certainty:Landroid/telephony/EmergencyMessage$Certainty;

    return-object v0
.end method

.method public getIncomingSmsFingerprint()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1200
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1202
    .local v0, output:Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1203
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1204
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1205
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1208
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->language:I

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    if-nez v0, :cond_0

    .line 981
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    .line 983
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    return v0
.end method

.method public getNumOfVoicemails()I
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 2

    .prologue
    .line 461
    const-string v0, "CDMA"

    const-string v1, "getProtocolIdentifier: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    return v0
.end method

.method public getSeverity()Landroid/telephony/EmergencyMessage$Severity;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->severity:Landroid/telephony/EmergencyMessage$Severity;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    return v0
.end method

.method public getTeleService()I
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public getUrgency()Landroid/telephony/EmergencyMessage$Urgency;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->urgency:Landroid/telephony/EmergencyMessage$Urgency;

    return-object v0
.end method

.method public isCphsMwiMessage()Z
    .locals 2

    .prologue
    .line 479
    const-string v0, "CDMA"

    const-string v1, "isCphsMwiMessage: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 470
    const-string v0, "CDMA"

    const-string v1, "isReplace: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 2

    .prologue
    .line 524
    const-string v0, "CDMA"

    const-string v1, "isReplyPathPresent: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseSms()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "CDMA"

    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 893
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->isCmas()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BZ)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 904
    const-string v0, "CDMA:SMS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MT raw BearerData = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MT (decoded) BearerData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    .line 910
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_3

    .line 911
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->userData:[B

    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 913
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageBody:Ljava/lang/String;

    .line 917
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    if-eqz v0, :cond_4

    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 924
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_5

    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->scTimeMillis:J

    .line 928
    :cond_5
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS SC timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->scTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v0, :cond_8

    .line 940
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->userData:[B

    if-nez v1, :cond_7

    const-string v1, "also missing"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userData)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iput v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 968
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageBody:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 970
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseMessageBody()V

    goto/16 :goto_0

    .line 940
    :cond_7
    const-string v1, "does have"

    goto :goto_1

    .line 946
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    packed-switch v0, :pswitch_data_0

    .line 957
    :pswitch_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_2

    .line 948
    :pswitch_1
    iput v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_2

    .line 951
    :pswitch_2
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_2

    .line 954
    :pswitch_3
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_2

    .line 961
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v0, v5, :cond_6

    .line 964
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported message type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 971
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->userData:[B

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 946
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
