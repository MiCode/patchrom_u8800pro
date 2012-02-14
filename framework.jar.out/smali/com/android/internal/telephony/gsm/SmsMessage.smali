.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final SMS_GW_VP_ABSOLUTE_FORMAT:I = 0x18

.field public static final SMS_GW_VP_ENHANCED_FORMAT:I = 0x8

.field public static final SMS_GW_VP_RELATIVE_FORMAT:I = 0x10

.field public static final SMS_TOA_UNKNOWN:I = 0x80

.field static final TAG:Ljava/lang/String; = "National"


# instance fields
.field private automaticDeletion:Z

.field private dataCodingScheme:I

.field private dischargeTimeMillis:J

.field private forSubmit:Z

.field private isStatusReportMessage:Z

.field private mVoiceMailCount:I

.field private messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field private mti:I

.field private protocolIdentifier:I

.field private recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private replyPathPresent:Z

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 91
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 136
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 795
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 4
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    const/16 v3, 0x8c

    .line 1193
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .line 1194
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez v1, :cond_0

    .line 1195
    new-instance v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v1           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-direct {v1}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1196
    .restart local v1       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 1197
    .local v0, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1198
    if-le v0, v3, :cond_1

    .line 1199
    add-int/lit16 v2, v0, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1201
    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1207
    :goto_0
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1209
    .end local v0           #octets:I
    :cond_0
    return-object v1

    .line 1204
    .restart local v0       #octets:I
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1205
    sub-int v2, v3, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0
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

    .line 1107
    new-array v2, v5, [I

    .line 1111
    .local v2, ret:[I
    invoke-static {p0, p1, v8, v8}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v3

    .line 1112
    .local v3, septets:I
    const/4 v5, -0x1

    if-eq v5, v3, :cond_1

    .line 1113
    aput v3, v2, v9

    .line 1114
    const/16 v5, 0xa0

    if-le v3, v5, :cond_0

    .line 1116
    add-int/lit16 v5, v3, 0x98

    div-int/lit16 v5, v5, 0x99

    aput v5, v2, v8

    .line 1117
    aget v5, v2, v8

    mul-int/lit16 v5, v5, 0x99

    sub-int/2addr v5, v3

    aput v5, v2, v10

    .line 1123
    :goto_0
    aput v9, v2, v11

    .line 1180
    :goto_1
    return-object v2

    .line 1120
    :cond_0
    aput v9, v2, v8

    .line 1121
    const/16 v5, 0xa0

    sub-int/2addr v5, v3

    aput v5, v2, v10

    goto :goto_0

    .line 1129
    :cond_1
    const/4 v3, 0x0

    .line 1133
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsCodingNational()Ljava/lang/String;

    move-result-object v4

    .line 1135
    .local v4, smsCodingNational:Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1136
    if-nez p1, :cond_3

    move v5, v9

    :goto_2
    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->GSM_7BIT_DEFAULT_TABLE:Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;

    sget-object v7, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->GSM_7BIT_TURKISH_SINGLE_SHIFT_TABLE:Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;

    invoke-static {p0, v5, v6, v7}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v3

    .line 1150
    :cond_2
    :goto_3
    const/4 v5, 0x1

    aput v3, v2, v5

    .line 1151
    const/16 v5, 0x9b

    if-le v3, v5, :cond_8

    .line 1153
    const/4 v5, 0x0

    add-int/lit16 v6, v3, 0x94

    div-int/lit16 v6, v6, 0x95

    aput v6, v2, v5

    .line 1154
    const/4 v5, 0x2

    const/4 v6, 0x0

    aget v6, v2, v6

    mul-int/lit16 v6, v6, 0x95

    sub-int/2addr v6, v3

    aput v6, v2, v5

    .line 1161
    :goto_4
    const/4 v5, 0x3

    const/4 v6, 0x4

    aput v6, v2, v5
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1162
    .end local v4           #smsCodingNational:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1164
    .local v0, ex2:Lcom/android/internal/telephony/EncodeException;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    mul-int/lit8 v1, v5, 0x2

    .line 1165
    .local v1, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    aput v5, v2, v9

    .line 1166
    const/16 v5, 0x8c

    if-le v1, v5, :cond_9

    .line 1169
    add-int/lit16 v5, v1, 0x85

    div-int/lit16 v5, v5, 0x86

    aput v5, v2, v8

    .line 1170
    aget v5, v2, v8

    mul-int/lit16 v5, v5, 0x86

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    aput v5, v2, v10

    .line 1176
    :goto_5
    aput v11, v2, v11

    goto :goto_1

    .end local v0           #ex2:Lcom/android/internal/telephony/EncodeException;
    .end local v1           #octets:I
    .restart local v4       #smsCodingNational:Ljava/lang/String;
    :cond_3
    move v5, v8

    .line 1136
    goto :goto_2

    .line 1139
    :cond_4
    :try_start_1
    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1140
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

    .line 1143
    :cond_6
    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1144
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

    .line 1157
    :cond_8
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v2, v5

    .line 1158
    const/4 v5, 0x2

    const/16 v6, 0x9b

    sub-int/2addr v6, v3

    aput v6, v2, v5
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1173
    .end local v4           #smsCodingNational:Ljava/lang/String;
    .restart local v0       #ex2:Lcom/android/internal/telephony/EncodeException;
    .restart local v1       #octets:I
    :cond_9
    aput v9, v2, v8

    .line 1174
    const/16 v5, 0x8c

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    aput v5, v2, v10

    goto :goto_5
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 8
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "GSM"

    .line 224
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 226
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->indexOnIcc:I

    .line 231
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 232
    const-string v4, "GSM"

    const-string v5, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 249
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v4

    .line 236
    .restart local v1       #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x7

    iput v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->statusOnIcc:I

    .line 239
    array-length v4, p1

    sub-int v3, v4, v5

    .line 243
    .local v3, size:I
    new-array v2, v3, [B

    .line 244
    .local v2, pdu:[B
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    .line 246
    goto :goto_0

    .line 247
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 248
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "GSM"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    .line 249
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    .line 146
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 147
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 151
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    .line 149
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 150
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static encodeSCTimeStamp(Ljava/lang/String;)[B
    .locals 6
    .parameter "mcTimeStamp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 1869
    new-instance v1, Lcom/android/internal/util/BitwiseOutputStream;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 1871
    .local v1, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1872
    :cond_0
    const-string v3, "GSM"

    const-string v4, "bad parm in encodeSCTimeStamp()."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1920
    :goto_0
    return-object v3

    .line 1876
    :cond_1
    new-instance v0, Landroid/text/format/Time;

    const-string v3, "UTC"

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1877
    .local v0, Date:Landroid/text/format/Time;
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 1880
    iget v3, v0, Landroid/text/format/Time;->year:I

    rem-int/lit8 v3, v3, 0x64

    iput v3, v0, Landroid/text/format/Time;->year:I

    .line 1881
    iget v3, v0, Landroid/text/format/Time;->year:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1882
    .local v2, val:B
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1883
    iget v3, v0, Landroid/text/format/Time;->year:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1884
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1887
    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    .line 1888
    iget v3, v0, Landroid/text/format/Time;->month:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1889
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1890
    iget v3, v0, Landroid/text/format/Time;->month:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1891
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1894
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1895
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1896
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1897
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1900
    iget v3, v0, Landroid/text/format/Time;->hour:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1901
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1902
    iget v3, v0, Landroid/text/format/Time;->hour:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1903
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1906
    iget v3, v0, Landroid/text/format/Time;->minute:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1907
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1908
    iget v3, v0, Landroid/text/format/Time;->minute:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1909
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1912
    iget v3, v0, Landroid/text/format/Time;->second:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1913
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1914
    iget v3, v0, Landroid/text/format/Time;->second:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1915
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1918
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1920
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v3

    goto/16 :goto_0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 383
    const-string/jumbo v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 385
    .local v1, textPart:[B
    if-eqz p1, :cond_0

    .line 387
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 389
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 390
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 397
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 398
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    return-object v0

    .line 394
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 5
    .parameter "scAddress"
    .parameter "scTimeStamp"
    .parameter "origAddress"
    .parameter "message"
    .parameter "UDH"

    .prologue
    .line 1740
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1741
    :cond_0
    const-string p0, "SmsMessage"

    .end local p0
    const-string p1, "enter getDeliverPdu()."

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    const/4 p0, 0x0

    .line 1858
    .end local p2
    .end local p3
    .end local p4
    :goto_0
    return-object p0

    .line 1745
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 1746
    .local v1, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb0

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1749
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_2

    .line 1750
    const/4 p0, 0x0

    iput-object p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 1760
    .end local p0
    :goto_1
    if-eqz p4, :cond_3

    const/16 p0, 0x44

    :goto_2
    or-int/lit8 p0, p0, 0x0

    .line 1761
    .local p0, mtiByte:I
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1766
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object p0

    .line 1770
    .local p0, daBytes:[B
    if-nez p0, :cond_4

    .line 1771
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1772
    .end local p0           #daBytes:[B
    const/16 p0, 0x80

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1785
    .end local p2
    :goto_3
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1789
    const/4 p0, 0x0

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p3, p4, p0, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object p2

    .line 1791
    .local p2, userData:[B
    const/4 p0, 0x0

    aget-byte p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    const/16 v2, 0xa0

    if-le p0, v2, :cond_6

    .line 1793
    const-string p0, "SmsMessage"

    const-string p2, "Message too long"

    .end local p2           #userData:[B
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1794
    const/4 p0, 0x0

    goto :goto_0

    .line 1752
    .local p0, scAddress:Ljava/lang/String;
    .local p2, origAddress:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0           #scAddress:Ljava/lang/String;
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_1

    .line 1760
    :cond_3
    const/4 p0, 0x0

    goto :goto_2

    .line 1776
    .local p0, daBytes:[B
    :cond_4
    array-length p2, p0

    .end local p2           #origAddress:Ljava/lang/String;
    const/4 v2, 0x1

    sub-int/2addr p2, v2

    mul-int/lit8 p2, p2, 0x2

    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_4
    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1780
    const/4 p2, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, p2, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 1776
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 1805
    .end local p0           #daBytes:[B
    .local p2, userData:[B
    :cond_6
    const/4 p0, 0x0

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1809
    :try_start_2
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeSCTimeStamp(Ljava/lang/String;)[B

    move-result-object p0

    .line 1810
    .local p0, timeStampArray:[B
    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v0, p0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1821
    .end local p0           #timeStampArray:[B
    :goto_5
    const/4 p0, 0x0

    :try_start_3
    array-length v2, p2

    invoke-virtual {v0, p2, p0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1857
    .end local p1
    .end local p3
    .end local p4
    :goto_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iput-object p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object p0, v1

    .line 1858
    goto/16 :goto_0

    .line 1811
    .restart local p1
    .restart local p3
    .restart local p4
    :catch_0
    move-exception p0

    .line 1812
    .local p0, err:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1813
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1814
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1815
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1816
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1817
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1818
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1819
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encode SC timestamp failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #err:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 1822
    .end local p2           #userData:[B
    :catch_1
    move-exception p0

    .line 1825
    .local p0, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_5
    invoke-static {p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object p2

    .line 1830
    .restart local p2       #userData:[B
    array-length p0, p2

    .end local p0           #ex:Lcom/android/internal/telephony/EncodeException;
    const/16 p3, 0x8d

    if-le p0, p3, :cond_7

    .line 1832
    .end local p3
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1826
    .end local p2           #userData:[B
    .restart local p0       #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local p3
    :catch_2
    move-exception p0

    .line 1827
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "GSM"

    .end local p1
    const-string p2, "Implausible UnsupportedEncodingException"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1828
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1837
    .end local p0           #uex:Ljava/io/UnsupportedEncodingException;
    .end local p3
    .restart local p1
    .restart local p2       #userData:[B
    :cond_7
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1841
    :try_start_6
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeSCTimeStamp(Ljava/lang/String;)[B

    move-result-object p0

    .line 1842
    .local p0, timeStampArray:[B
    const/4 p1, 0x0

    array-length p3, p0

    .end local p1
    invoke-virtual {v0, p0, p1, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1855
    .end local p0           #timeStampArray:[B
    .end local p4
    :goto_7
    const/4 p0, 0x0

    array-length p1, p2

    invoke-virtual {v0, p2, p0, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6

    .line 1843
    .restart local p4
    :catch_3
    move-exception p0

    .line 1844
    .local p0, exception:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1845
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1846
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1847
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1848
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1849
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1850
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1851
    const-string p1, "GSM"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "encode SC timestamp failed."

    .end local p4
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #exception:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/16 v5, 0x6838

    const/16 v8, 0x8c

    const/4 v7, 0x0

    .line 636
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 637
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 639
    if-ne p2, v5, :cond_0

    .line 640
    iput v5, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 645
    :goto_0
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 647
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 648
    .local v3, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 650
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 652
    .local v4, smsHeaderData:[B
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    if-le v5, v8, :cond_1

    .line 653
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    sub-int v7, v8, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v5, 0x0

    .line 681
    :goto_1
    return-object v5

    .line 642
    .end local v3           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v4           #smsHeaderData:[B
    :cond_0
    iput v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    goto :goto_0

    .line 658
    .restart local v3       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .restart local v4       #smsHeaderData:[B
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 659
    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p4, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 666
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 671
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 674
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 675
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 678
    array-length v5, p3

    invoke-virtual {v0, p3, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 680
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v5, v2

    .line 681
    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "header"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/16 v6, 0x8c

    const/4 v5, 0x0

    .line 701
    invoke-static {p2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v2

    .line 703
    .local v2, smsHeaderData:[B
    array-length v3, p3

    array-length v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    if-le v3, v6, :cond_0

    .line 704
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS data message may only contain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    sub-int v5, v6, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v3, 0x0

    .line 730
    :goto_0
    return-object v3

    .line 709
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 710
    .local v1, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v3, 0x41

    invoke-static {p0, p1, v3, p4, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 715
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 720
    array-length v3, p3

    array-length v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 723
    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 724
    array-length v3, v2

    invoke-virtual {v0, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 727
    array-length v3, p3

    invoke-virtual {v0, p3, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 729
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v3, v1

    .line 730
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 17
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "header"
    .parameter "statusReportRequested"

    .prologue
    .line 441
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 442
    :cond_0
    const/16 p0, 0x0

    .line 616
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_0
    return-object p0

    .line 444
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_1
    const/4 v5, 0x0

    .line 445
    .local v5, headerByte:[B
    if-eqz p3, :cond_f

    .line 446
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    move-object v6, v5

    .line 448
    .end local v5           #headerByte:[B
    .local v6, headerByte:[B
    :goto_1
    new-instance v10, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v10}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 451
    .local v10, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p3, :cond_2

    const/16 p3, 0x40

    .end local p3
    :goto_2
    or-int/lit8 p3, p3, 0x1

    move/from16 v0, p3

    int-to-byte v0, v0

    move v7, v0

    .line 452
    .local v7, mtiByte:B
    const/16 p3, 0x0

    .line 458
    .local p3, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, p2

    move-object v1, v6

    move v2, v5

    move v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v5

    .line 460
    .local v5, userData:[B
    const/4 v8, 0x0

    aget-byte v8, v5, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xa0

    if-le v8, v9, :cond_3

    .line 462
    const/16 p0, 0x0

    goto :goto_0

    .line 451
    .end local v5           #userData:[B
    .end local v7           #mtiByte:B
    .local p3, header:Lcom/android/internal/telephony/SmsHeader;
    :cond_2
    const/16 p3, 0x0

    goto :goto_2

    .line 466
    .restart local v5       #userData:[B
    .restart local v7       #mtiByte:B
    .local p3, bo:Ljava/io/ByteArrayOutputStream;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    move/from16 v3, p4

    move-object v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p3

    .line 477
    const/4 v8, 0x0

    move-object/from16 v0, p3

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 481
    const/4 v8, 0x0

    array-length v9, v5

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v8

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p0, p3

    .end local p3           #bo:Ljava/io/ByteArrayOutputStream;
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v7

    .line 615
    .end local v5           #userData:[B
    .end local v6           #headerByte:[B
    .end local v7           #mtiByte:B
    .end local p2
    .local p1, mtiByte:B
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    move-object v1, v10

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 p0, v10

    .line 616
    goto :goto_0

    .line 483
    .restart local v6       #headerByte:[B
    .restart local v7       #mtiByte:B
    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .restart local p2
    .restart local p3       #bo:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v5

    .line 487
    .local v5, ex:Lcom/android/internal/telephony/EncodeException;
    const/4 v5, 0x0

    .line 491
    .local v5, nationalLanguage:B
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsCodingNational()Ljava/lang/String;

    move-result-object v11

    .line 493
    .local v11, smsCodingNational:Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v8

    if-eqz v8, :cond_4

    .line 494
    const/4 v5, 0x1

    move v8, v5

    .line 502
    .end local v5           #nationalLanguage:B
    .local v8, nationalLanguage:B
    :goto_4
    :try_start_2
    new-instance v5, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 503
    .local v5, nationalSmsHeader:Lcom/android/internal/telephony/SmsHeader;
    const/4 v9, 0x3

    new-array v9, v9, [B

    .line 504
    .local v9, nationalSmsHeaderByte:[B
    if-eqz v6, :cond_6

    .line 505
    array-length v9, v6

    .end local v9           #nationalSmsHeaderByte:[B
    add-int/lit8 v9, v9, 0x3

    new-array v9, v9, [B

    .line 506
    .restart local v9       #nationalSmsHeaderByte:[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v6

    invoke-static {v6, v12, v9, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 507
    const/4 v12, 0x3

    new-array v12, v12, [B

    const/4 v13, 0x0

    const/16 v14, 0x24

    aput-byte v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    aput-byte v14, v12, v13

    const/4 v13, 0x2

    aput-byte v8, v12, v13

    const/4 v13, 0x0

    array-length v14, v6

    const/4 v15, 0x3

    invoke-static {v12, v13, v9, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    :goto_5
    const-string v12, "National"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getSubmitPdu:: add ELT_ID_NATIONAL_LANGUAGE_SINGLE_SHIFT SmsHeader="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Lcom/android/internal/telephony/SmsHeader;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v12, 0x0

    .line 520
    .local v12, userData:[B
    const-string v13, "1"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 521
    sget-object v11, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->GSM_7BIT_DEFAULT_TABLE:Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;

    .end local v11           #smsCodingNational:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->GSM_7BIT_TURKISH_SINGLE_SHIFT_TABLE:Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;

    .end local v12           #userData:[B
    move-object/from16 v0, p2

    move-object v1, v9

    move-object v2, v11

    move-object v3, v12

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B

    move-result-object v9

    .line 541
    .local v9, userData:[B
    :goto_6
    const-string v11, "National"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getSubmitPdu:: userData=="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v11, 0x0

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0xa0

    if-le v11, v12, :cond_9

    .line 545
    const-string v5, "National"

    .end local v5           #nationalSmsHeader:Lcom/android/internal/telephony/SmsHeader;
    const-string v9, "(0xff & userData[0]) > MAX_USER_DATA_SEPTETS"

    .end local v9           #userData:[B
    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 546
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 495
    .end local v8           #nationalLanguage:B
    .local v5, nationalLanguage:B
    .restart local v11       #smsCodingNational:Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v8, "2"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 496
    const/4 v5, 0x2

    move v8, v5

    .end local v5           #nationalLanguage:B
    .restart local v8       #nationalLanguage:B
    goto/16 :goto_4

    .line 497
    .end local v8           #nationalLanguage:B
    .restart local v5       #nationalLanguage:B
    :cond_5
    const-string v8, "3"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    if-eqz v8, :cond_e

    .line 498
    const/4 v5, 0x3

    move v8, v5

    .end local v5           #nationalLanguage:B
    .restart local v8       #nationalLanguage:B
    goto/16 :goto_4

    .line 510
    .local v5, nationalSmsHeader:Lcom/android/internal/telephony/SmsHeader;
    .local v9, nationalSmsHeaderByte:[B
    :cond_6
    const/4 v12, 0x3

    :try_start_4
    new-array v12, v12, [B

    const/4 v13, 0x0

    const/16 v14, 0x24

    aput-byte v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    aput-byte v14, v12, v13

    const/4 v13, 0x2

    aput-byte v8, v12, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-static {v12, v13, v9, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_5

    .line 567
    .end local v5           #nationalSmsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #nationalSmsHeaderByte:[B
    .end local v11           #smsCodingNational:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 573
    .local v5, ex2:Lcom/android/internal/telephony/EncodeException;
    :goto_7
    :try_start_5
    const-string/jumbo p3, "utf-16be"

    .end local p3           #bo:Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object p2

    .line 580
    .local p2, textPart:[B
    if-eqz v6, :cond_b

    .line 581
    const-string p3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #ex2:Lcom/android/internal/telephony/EncodeException;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "headerByte.length="

    .end local v8           #nationalLanguage:B
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v8, v6

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " textPart.length="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    array-length v0, v0

    move v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    move-object v0, v6

    array-length v0, v0

    move/from16 p3, v0

    add-int/lit8 p3, p3, 0x1

    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    add-int p3, p3, v5

    move/from16 v0, p3

    new-array v0, v0, [B

    move-object/from16 p3, v0

    .line 583
    .local p3, userData:[B
    const/4 v5, 0x0

    array-length v8, v6

    int-to-byte v8, v8

    aput-byte v8, p3, v5

    .line 584
    const/4 v5, 0x0

    const/4 v8, 0x1

    array-length v9, v6

    move-object v0, v6

    move v1, v5

    move-object/from16 v2, p3

    move v3, v8

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 585
    const/4 v5, 0x0

    array-length v6, v6

    .end local v6           #headerByte:[B
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p2

    array-length v0, v0

    move v8, v0

    move-object/from16 v0, p2

    move v1, v5

    move-object/from16 v2, p3

    move v3, v6

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 p2, p3

    .line 590
    .end local p3           #userData:[B
    .local p2, userData:[B
    :goto_8
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p3, v0

    const/16 v5, 0x8c

    move/from16 v0, p3

    move v1, v5

    if-le v0, v1, :cond_c

    .line 592
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 526
    .local v5, nationalSmsHeader:Lcom/android/internal/telephony/SmsHeader;
    .restart local v6       #headerByte:[B
    .restart local v8       #nationalLanguage:B
    .restart local v9       #nationalSmsHeaderByte:[B
    .restart local v11       #smsCodingNational:Ljava/lang/String;
    .restart local v12       #userData:[B
    .local p2, message:Ljava/lang/String;
    .local p3, bo:Ljava/io/ByteArrayOutputStream;
    :cond_7
    :try_start_6
    const-string v13, "2"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 527
    sget-object v11, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->GSM_7BIT_DEFAULT_TABLE:Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;

    .end local v11           #smsCodingNational:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->GSM_7BIT_SPANISH_SINGLE_SHIFT_TABLE:Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;

    .end local v12           #userData:[B
    move-object/from16 v0, p2

    move-object v1, v9

    move-object v2, v11

    move-object v3, v12

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B

    move-result-object v9

    .local v9, userData:[B
    goto/16 :goto_6

    .line 532
    .local v9, nationalSmsHeaderByte:[B
    .restart local v11       #smsCodingNational:Ljava/lang/String;
    .restart local v12       #userData:[B
    :cond_8
    const-string v13, "3"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .end local v11           #smsCodingNational:Ljava/lang/String;
    if-eqz v11, :cond_d

    .line 533
    sget-object v11, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->GSM_7BIT_DEFAULT_TABLE:Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;

    sget-object v12, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->GSM_7BIT_PORTUGUESE_SINGLE_SHIFT_TABLE:Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;

    .end local v12           #userData:[B
    move-object/from16 v0, p2

    move-object v1, v9

    move-object v2, v11

    move-object v3, v12

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B
    :try_end_6
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v9

    .local v9, userData:[B
    goto/16 :goto_6

    .line 550
    :cond_9
    if-eqz v5, :cond_a

    const/16 v5, 0x40

    .end local v5           #nationalSmsHeader:Lcom/android/internal/telephony/SmsHeader;
    :goto_9
    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    .line 552
    .end local v7           #mtiByte:B
    .local v5, mtiByte:B
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p4

    move-object v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p3

    .line 562
    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 566
    const/4 v7, 0x0

    array-length v11, v9

    move-object/from16 v0, p3

    move-object v1, v9

    move v2, v7

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_7 .. :try_end_7} :catch_4

    move-object/from16 p0, p3

    .end local p3           #bo:Ljava/io/ByteArrayOutputStream;
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v5

    .line 611
    .end local v5           #mtiByte:B
    .local p1, mtiByte:B
    goto/16 :goto_3

    .line 550
    .local v5, nationalSmsHeader:Lcom/android/internal/telephony/SmsHeader;
    .restart local v7       #mtiByte:B
    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .restart local p3       #bo:Ljava/io/ByteArrayOutputStream;
    :cond_a
    const/4 v5, 0x0

    goto :goto_9

    .line 574
    .end local v9           #userData:[B
    .end local p3           #bo:Ljava/io/ByteArrayOutputStream;
    .local v5, ex2:Lcom/android/internal/telephony/EncodeException;
    :catch_2
    move-exception p0

    .line 575
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "GSM"

    .end local p1           #destinationAddress:Ljava/lang/String;
    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2           #message:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 587
    .local p0, scAddress:Ljava/lang/String;
    .restart local p1       #destinationAddress:Ljava/lang/String;
    .local p2, textPart:[B
    :cond_b
    move-object/from16 p2, p2

    .local p2, userData:[B
    goto :goto_8

    .line 597
    .end local v5           #ex2:Lcom/android/internal/telephony/EncodeException;
    .end local v6           #headerByte:[B
    .end local v8           #nationalLanguage:B
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    move/from16 v3, p4

    move-object v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .line 603
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    const/16 p1, 0xb

    invoke-virtual/range {p0 .. p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 608
    .end local p1           #destinationAddress:Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p1, v0

    invoke-virtual/range {p0 .. p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 610
    const/16 p1, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move/from16 p1, v7

    .end local v7           #mtiByte:B
    .local p1, mtiByte:B
    goto/16 :goto_3

    .line 567
    .local v5, nationalLanguage:B
    .restart local v6       #headerByte:[B
    .restart local v7       #mtiByte:B
    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .local p2, message:Ljava/lang/String;
    .restart local p3       #bo:Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v8

    move-object/from16 v16, v8

    move v8, v5

    .end local v5           #nationalLanguage:B
    .restart local v8       #nationalLanguage:B
    move-object/from16 v5, v16

    goto/16 :goto_7

    .end local v7           #mtiByte:B
    .local v5, mtiByte:B
    .restart local v9       #userData:[B
    :catch_4
    move-exception v7

    move-object/from16 v16, v7

    move v7, v5

    .end local v5           #mtiByte:B
    .restart local v7       #mtiByte:B
    move-object/from16 v5, v16

    goto/16 :goto_7

    .local v5, nationalSmsHeader:Lcom/android/internal/telephony/SmsHeader;
    .local v9, nationalSmsHeaderByte:[B
    .restart local v12       #userData:[B
    :cond_d
    move-object v9, v12

    .end local v12           #userData:[B
    .local v9, userData:[B
    goto/16 :goto_6

    .end local v8           #nationalLanguage:B
    .end local v9           #userData:[B
    .local v5, nationalLanguage:B
    .restart local v11       #smsCodingNational:Ljava/lang/String;
    :cond_e
    move v8, v5

    .end local v5           #nationalLanguage:B
    .restart local v8       #nationalLanguage:B
    goto/16 :goto_4

    .end local v6           #headerByte:[B
    .end local v7           #mtiByte:B
    .end local v8           #nationalLanguage:B
    .end local v10           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11           #smsCodingNational:Ljava/lang/String;
    .local v5, headerByte:[B
    .local p3, header:Lcom/android/internal/telephony/SmsHeader;
    :cond_f
    move-object v6, v5

    .end local v5           #headerByte:[B
    .restart local v6       #headerByte:[B
    goto/16 :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    const/4 v2, 0x0

    .line 418
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsCodingNational()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, smsCodingNational:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    invoke-static {p0, p1, p2, v2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 423
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    const/4 v5, 0x0

    .line 276
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 300
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 301
    :cond_0
    const/4 p0, 0x0

    .line 371
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p6
    :goto_0
    return-object p0

    .line 304
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p6
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 306
    .local v1, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_3

    const/16 v0, 0x40

    :goto_1
    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 307
    .local v0, mtiByte:B
    invoke-static {p0, p1, v0, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .line 312
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p5, :cond_2

    .line 314
    const/4 p5, 0x1

    .line 317
    :cond_2
    const/4 p1, 0x1

    if-ne p5, p1, :cond_4

    .line 318
    .end local p1
    :try_start_0
    invoke-static {p2, p4, p6, p7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 344
    .end local p3
    .end local p6
    .local p1, userData:[B
    :goto_2
    const/4 p2, 0x1

    if-ne p5, p2, :cond_6

    .line 345
    .end local p2
    const/4 p2, 0x0

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0xa0

    if-le p2, p3, :cond_5

    .line 347
    const/4 p0, 0x0

    goto :goto_0

    .line 306
    .end local v0           #mtiByte:B
    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .restart local p2
    .restart local p3
    .restart local p6
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 322
    .end local p1           #destinationAddress:Ljava/lang/String;
    .restart local v0       #mtiByte:B
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    :cond_4
    :try_start_1
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .local p1, userData:[B
    goto :goto_2

    .line 323
    .end local p1           #userData:[B
    :catch_0
    move-exception p1

    .line 324
    .local p1, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string p3, "GSM"

    .end local p3
    const-string p6, "Implausible UnsupportedEncodingException "

    .end local p6
    invoke-static {p3, p6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 327
    const/4 p0, 0x0

    goto :goto_0

    .line 330
    .end local p1           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception p1

    .line 334
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object p1

    .line 335
    .local p1, userData:[B
    const/4 p5, 0x3

    goto :goto_2

    .line 336
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :catch_2
    move-exception p0

    .line 337
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "GSM"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    const/4 p0, 0x0

    goto :goto_0

    .line 357
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, userData:[B
    :cond_5
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 369
    :goto_3
    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 370
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object p0, v1

    .line 371
    goto :goto_0

    .line 359
    .restart local p0       #bo:Ljava/io/ByteArrayOutputStream;
    :cond_6
    const/4 p2, 0x0

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x8c

    if-le p2, p3, :cond_7

    .line 361
    const/4 p0, 0x0

    goto :goto_0

    .line 365
    :cond_7
    const/16 p2, 0xb

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 7
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 748
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 752
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 753
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 760
    :goto_0
    if-eqz p3, :cond_0

    .line 762
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 763
    const-string v2, "GSM"

    const-string v3, "SMS status report requested"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 768
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 772
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 776
    .local v1, daBytes:[B
    if-nez v1, :cond_2

    .line 777
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 778
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 791
    :goto_1
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 792
    return-object v0

    .line 755
    .end local v1           #daBytes:[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .line 782
    .restart local v1       #daBytes:[B
    :cond_2
    array-length v2, v1

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_3

    move v3, v6

    :goto_2
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 786
    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    move v3, v5

    .line 782
    goto :goto_2
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .parameter "pdu"

    .prologue
    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 259
    .local v0, len:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 261
    .local v1, smscLen:I
    sub-int v2, v0, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    return v2
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "line"

    .prologue
    .line 194
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 195
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 199
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    .line 197
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 198
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 174
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 175
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 179
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    .line 177
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 178
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    .line 187
    const-string v0, "GSM"

    const-string v1, "newFromCMTI: not yet supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsMessageBase;
    .locals 2
    .parameter "p"

    .prologue
    .line 208
    const-string v0, "GSM"

    const-string v1, "newFromParcel: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method private parsePdu([B)V
    .locals 5
    .parameter "pdu"

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    .line 1297
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1299
    .local v1, p:Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scAddress:Ljava/lang/String;

    .line 1301
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1302
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS SC address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1311
    .local v0, firstByte:I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    .line 1312
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    packed-switch v2, :pswitch_data_0

    .line 1330
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1318
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1332
    :goto_0
    return-void

    .line 1321
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1325
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1384
    and-int/lit16 v1, p2, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    move v1, v6

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 1386
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1388
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_0

    .line 1395
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1399
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1406
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scTimeMillis:J

    .line 1408
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS SC timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scTimeMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    and-int/lit8 v1, p2, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    move v0, v6

    .line 1412
    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1413
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_1
    move v1, v5

    .line 1384
    goto :goto_0

    :cond_2
    move v0, v5

    .line 1410
    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1341
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 1344
    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_0

    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->forSubmit:Z

    .line 1346
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 1348
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1350
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scTimeMillis:J

    .line 1352
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dischargeTimeMillis:J

    .line 1354
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    .line 1357
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1359
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1360
    .local v0, extraParams:I
    move v2, v0

    .line 1361
    .local v2, moreExtraParams:I
    :goto_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    .line 1365
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_1

    .end local v0           #extraParams:I
    .end local v2           #moreExtraParams:I
    :cond_0
    move v3, v6

    .line 1344
    goto :goto_0

    .line 1368
    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 1369
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1372
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    .line 1373
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1376
    :cond_3
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_4

    .line 1377
    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5

    move v1, v5

    .line 1378
    .local v1, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1381
    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_4
    return-void

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_5
    move v1, v6

    .line 1377
    goto :goto_2
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 3
    .parameter "p"
    .parameter "firstByte"

    .prologue
    .line 1705
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 1708
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1712
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1716
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1719
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getValidityPeriod(I)V

    .line 1721
    and-int/lit8 v1, p2, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 1723
    .local v0, hasUserDataHeader:Z
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1725
    return-void

    .line 1721
    .end local v0           #hasUserDataHeader:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 12
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    .line 1423
    const/4 v4, 0x0

    .line 1424
    .local v4, hasMessageClass:Z
    const/4 v8, 0x0

    .line 1426
    .local v8, userDataCompressed:Z
    const/4 v3, 0x0

    .line 1429
    .local v3, encodingType:I
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0x80

    if-nez v9, :cond_5

    .line 1431
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x40

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1432
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    move v8, v9

    .line 1433
    :goto_1
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    move v4, v9

    .line 1435
    :goto_2
    if-eqz v8, :cond_4

    .line 1436
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :goto_3
    const/4 v9, 0x1

    if-ne v3, v9, :cond_f

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {p1, p2, v9}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v1

    .line 1518
    .local v1, count:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userData:[B

    .line 1519
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1523
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->portAddrsID:I

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v10, 0x5

    if-ne v9, v10, :cond_11

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v10, 0x23f4

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v10, 0x23f6

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v10, 0xe2

    if-ne v9, v10, :cond_11

    .line 1530
    :cond_0
    const-string v9, "GSM"

    const-string v10, "gsmSmsMessage this message is vcard message!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :try_start_0
    new-instance v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userData:[B

    const-string v11, "ISO-8859-1"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    .line 1533
    if-nez v4, :cond_10

    .line 1534
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1686
    :goto_5
    return-void

    .line 1431
    .end local v1           #count:I
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1432
    :cond_2
    const/4 v9, 0x0

    move v8, v9

    goto/16 :goto_1

    .line 1433
    :cond_3
    const/4 v9, 0x0

    move v4, v9

    goto/16 :goto_2

    .line 1439
    :cond_4
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_0

    goto :goto_3

    .line 1441
    :pswitch_0
    const/4 v3, 0x1

    .line 1442
    goto :goto_3

    .line 1445
    :pswitch_1
    const/4 v3, 0x3

    .line 1446
    goto :goto_3

    .line 1450
    :pswitch_2
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const/4 v3, 0x2

    goto/16 :goto_3

    .line 1456
    :cond_5
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xf0

    if-ne v9, v10, :cond_7

    .line 1457
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1458
    const/4 v4, 0x1

    .line 1459
    const/4 v8, 0x0

    .line 1461
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_6

    .line 1463
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 1466
    :cond_6
    const/4 v3, 0x2

    goto/16 :goto_3

    .line 1468
    :cond_7
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xc0

    if-eq v9, v10, :cond_8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xd0

    if-eq v9, v10, :cond_8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_e

    .line 1477
    :cond_8
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_9

    .line 1478
    const/4 v3, 0x3

    .line 1483
    :goto_6
    const/4 v8, 0x0

    .line 1484
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_a

    const/4 v9, 0x1

    move v0, v9

    .line 1488
    .local v0, active:Z
    :goto_7
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_d

    .line 1489
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    .line 1490
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    .line 1491
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xc0

    if-ne v9, v10, :cond_b

    const/4 v9, 0x1

    :goto_8
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    .line 1494
    const/4 v9, 0x1

    if-ne v0, v9, :cond_c

    .line 1495
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1500
    :goto_9
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MWI in DCS for Vmail. DCS = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Dont store = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " vmail count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1480
    .end local v0           #active:Z
    :cond_9
    const/4 v3, 0x1

    goto :goto_6

    .line 1484
    :cond_a
    const/4 v9, 0x0

    move v0, v9

    goto :goto_7

    .line 1491
    .restart local v0       #active:Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_8

    .line 1497
    :cond_c
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_9

    .line 1505
    :cond_d
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    .line 1506
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MWI in DCS for fax/email/other: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1511
    .end local v0           #active:Z
    :cond_e
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1516
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 1536
    .restart local v1       #count:I
    :cond_10
    :try_start_1
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_1

    goto/16 :goto_5

    .line 1538
    :pswitch_3
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 1552
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 1553
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "vCard message is error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    .line 1568
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :cond_11
    if-eqz p2, :cond_19

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_19

    .line 1569
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 1570
    .local v6, msg:Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    iget v9, v6, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v7, v9, 0xff

    .line 1577
    .local v7, msgInd:I
    if-eqz v7, :cond_12

    const/16 v9, 0x80

    if-ne v7, v9, :cond_18

    .line 1578
    :cond_12
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    .line 1579
    const/16 v9, 0x80

    if-ne v7, v9, :cond_14

    .line 1581
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    .line 1600
    :cond_13
    :goto_b
    iget v9, v6, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1608
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    if-lez v9, :cond_17

    .line 1609
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    .line 1613
    :goto_c
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Dont store = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Vmail count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1541
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #msg:Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v7           #msgInd:I
    :pswitch_4
    :try_start_2
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_5

    .line 1544
    :pswitch_5
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_5

    .line 1547
    :pswitch_6
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 1582
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #msg:Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .restart local v7       #msgInd:I
    :cond_14
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    if-nez v9, :cond_13

    .line 1590
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xd0

    if-eq v9, v10, :cond_15

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_16

    :cond_15
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x3

    if-eqz v9, :cond_13

    .line 1596
    :cond_16
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    goto :goto_b

    .line 1611
    :cond_17
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    goto :goto_c

    .line 1623
    :cond_18
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1633
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #msg:Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v7           #msgInd:I
    :cond_19
    sget v9, Landroid/telephony/SmsMessage;->singleLanguage:I

    if-nez v9, :cond_1a

    sget v9, Landroid/telephony/SmsMessage;->lockingLanguage:I

    if-eqz v9, :cond_1b

    :cond_1a
    const/4 v9, 0x3

    if-eq v3, v9, :cond_1b

    .line 1636
    const/4 v3, 0x4

    .line 1640
    :cond_1b
    packed-switch v3, :pswitch_data_2

    .line 1664
    :goto_d
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    if-eqz v9, :cond_1c

    .line 1665
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 1668
    :cond_1c
    if-nez v4, :cond_1f

    .line 1669
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_5

    .line 1643
    :pswitch_7
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto :goto_d

    .line 1647
    :pswitch_8
    if-eqz p2, :cond_1d

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    :goto_e
    if-eqz p2, :cond_1e

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v10, v10, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :goto_f
    invoke-virtual {p1, v1, v9, v10}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto :goto_d

    :cond_1d
    const/4 v9, 0x0

    goto :goto_e

    :cond_1e
    const/4 v10, 0x0

    goto :goto_f

    .line 1654
    :pswitch_9
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataNational7Bit(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto :goto_d

    .line 1658
    :pswitch_a
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto :goto_d

    .line 1671
    :cond_1f
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_3

    goto/16 :goto_5

    .line 1673
    :pswitch_b
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_5

    .line 1676
    :pswitch_c
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_5

    .line 1679
    :pswitch_d
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_5

    .line 1682
    :pswitch_e
    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_5

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1536
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1640
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 1671
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getNumOfVoicemails()I
    .locals 1

    .prologue
    .line 1699
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 1214
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1271
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1232
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 1236
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1242
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 1246
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1252
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 1266
    :goto_0
    return v0

    .line 1256
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1260
    const-string v0, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    move v0, v2

    .line 1263
    goto :goto_0

    .line 1266
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 1219
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1281
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
