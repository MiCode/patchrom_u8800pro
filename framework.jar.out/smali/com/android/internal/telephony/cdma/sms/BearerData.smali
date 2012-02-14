.class public final Lcom/android/internal/telephony/cdma/sms/BearerData;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/BearerData$1;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    }
.end annotation


# static fields
.field public static final ALERT_DEFAULT:I = 0x0

.field public static final ALERT_HIGH_PRIO:I = 0x3

.field public static final ALERT_LOW_PRIO:I = 0x1

.field public static final ALERT_MEDIUM_PRIO:I = 0x2

.field public static final CMAS_RECORD_TYPE_0:I = 0x0

.field public static final CMAS_RECORD_TYPE_1:I = 0x1

.field public static final CMAS_RECORD_TYPE_2:I = 0x2

.field public static final DISPLAY_MODE_DEFAULT:I = 0x1

.field public static final DISPLAY_MODE_IMMEDIATE:I = 0x0

.field public static final DISPLAY_MODE_USER:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PERMANENT:I = 0x3

.field public static final ERROR_TEMPORARY:I = 0x2

.field public static final ERROR_UNDEFINED:I = 0xff

.field public static final LANGUAGE_CHINESE:I = 0x6

.field public static final LANGUAGE_ENGLISH:I = 0x1

.field public static final LANGUAGE_FRENCH:I = 0x2

.field public static final LANGUAGE_HEBREW:I = 0x7

.field public static final LANGUAGE_JAPANESE:I = 0x4

.field public static final LANGUAGE_KOREAN:I = 0x5

.field public static final LANGUAGE_SPANISH:I = 0x3

.field public static final LANGUAGE_UNKNOWN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field public static final MESSAGE_TYPE_CANCELLATION:I = 0x3

.field public static final MESSAGE_TYPE_DELIVER:I = 0x1

.field public static final MESSAGE_TYPE_DELIVERY_ACK:I = 0x4

.field public static final MESSAGE_TYPE_DELIVER_REPORT:I = 0x7

.field public static final MESSAGE_TYPE_READ_ACK:I = 0x6

.field public static final MESSAGE_TYPE_SUBMIT:I = 0x2

.field public static final MESSAGE_TYPE_SUBMIT_REPORT:I = 0x8

.field public static final MESSAGE_TYPE_USER_ACK:I = 0x5

.field public static final PRIORITY_EMERGENCY:I = 0x3

.field public static final PRIORITY_INTERACTIVE:I = 0x1

.field public static final PRIORITY_NORMAL:I = 0x0

.field public static final PRIORITY_URGENT:I = 0x2

.field public static final PRIVACY_CONFIDENTIAL:I = 0x2

.field public static final PRIVACY_NOT_RESTRICTED:I = 0x0

.field public static final PRIVACY_RESTRICTED:I = 0x1

.field public static final PRIVACY_SECRET:I = 0x3

.field public static final RELATIVE_TIME_DAYS_LIMIT:I = 0xc4

.field public static final RELATIVE_TIME_HOURS_LIMIT:I = 0xa7

.field public static final RELATIVE_TIME_INDEFINITE:I = 0xf5

.field public static final RELATIVE_TIME_MINS_LIMIT:I = 0x8f

.field public static final RELATIVE_TIME_MOBILE_INACTIVE:I = 0xf7

.field public static final RELATIVE_TIME_NOW:I = 0xf6

.field public static final RELATIVE_TIME_RESERVED:I = 0xf8

.field public static final RELATIVE_TIME_WEEKS_LIMIT:I = 0xf4

.field public static final STATUS_ACCEPTED:I = 0x0

.field public static final STATUS_BLOCKED_DESTINATION:I = 0x7

.field public static final STATUS_CANCELLED:I = 0x3

.field public static final STATUS_CANCEL_FAILED:I = 0x6

.field public static final STATUS_DELIVERED:I = 0x2

.field public static final STATUS_DEPOSITED_TO_INTERNET:I = 0x1

.field public static final STATUS_DUPLICATE_MESSAGE:I = 0x9

.field public static final STATUS_INVALID_DESTINATION:I = 0xa

.field public static final STATUS_MESSAGE_EXPIRED:I = 0xd

.field public static final STATUS_NETWORK_CONGESTION:I = 0x4

.field public static final STATUS_NETWORK_ERROR:I = 0x5

.field public static final STATUS_TEXT_TOO_LONG:I = 0x8

.field public static final STATUS_UNDEFINED:I = 0xff

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1f

.field private static final SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field private static final SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final SUBPARAM_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field private static final SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final SUBPARAM_USER_DATA:B = 0x1t

.field private static final SUBPARAM_USER_REPONSE_CODE:B = 0x2t

.field private static final SUBPARAM_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field private static final SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t


# instance fields
.field public alert:I

.field public alertIndicatorSet:Z

.field public callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public deferredDeliveryTimeRelative:I

.field public deferredDeliveryTimeRelativeSet:Z

.field public deliveryAckReq:Z

.field public depositIndex:I

.field public displayMode:I

.field public displayModeSet:Z

.field public errorClass:I

.field public hasUserDataHeader:Z

.field public language:I

.field public languageIndicatorSet:Z

.field public messageId:I

.field public messageStatus:I

.field public messageStatusSet:Z

.field public messageType:I

.field public msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public numberOfMessages:I

.field public priority:I

.field public priorityIndicatorSet:Z

.field public privacy:I

.field public privacyIndicatorSet:Z

.field public readAckReq:Z

.field public reportReq:Z

.field public userAckReq:Z

.field public userData:Lcom/android/internal/telephony/cdma/sms/UserData;

.field public userResponseCode:I

.field public userResponseCodeSet:Z

.field public validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public validityPeriodRelative:I

.field public validityPeriodRelativeSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 119
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 130
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 131
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 142
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    .line 143
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 155
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 174
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 175
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 212
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 213
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 214
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 240
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 581
    return-void
.end method

.method public static calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 14
    .parameter "msg"
    .parameter "force7BitEncoding"

    .prologue
    const/16 v13, 0x86

    const/16 v12, 0x8c

    const/4 v11, 0x1

    .line 431
    new-instance v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 433
    .local v8, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const-string v9, "ro.cdma.support.latin.sms"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 435
    .local v7, supportLatinSMS:Z
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v4

    .line 437
    .local v4, septets:I
    sget-boolean v9, Landroid/telephony/SmsMessage;->CREKET_DIVIDE_SMSMESSAGE:Z

    if-eqz v9, :cond_0

    const/16 v9, 0x96

    move v6, v9

    .line 439
    .local v6, singleSeptets:I
    :goto_0
    sget-boolean v9, Landroid/telephony/SmsMessage;->CREKET_DIVIDE_SMSMESSAGE:Z

    if-eqz v9, :cond_1

    const/16 v9, 0x8f

    move v2, v9

    .line 441
    .local v2, multiSeptets:I
    :goto_1
    sget-boolean v9, Landroid/telephony/SmsMessage;->CREKET_DIVIDE_SMSMESSAGE:Z

    if-eqz v9, :cond_2

    const/16 v9, 0x82

    move v5, v9

    .line 443
    .local v5, singleEights:I
    :goto_2
    sget-boolean v9, Landroid/telephony/SmsMessage;->CREKET_DIVIDE_SMSMESSAGE:Z

    if-eqz v9, :cond_3

    const/16 v9, 0x7c

    move v1, v9

    .line 446
    .local v1, multiEights:I
    :goto_3
    const/4 v9, -0x1

    if-eq v4, v9, :cond_5

    .line 447
    iput v4, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 448
    if-le v4, v6, :cond_4

    .line 449
    div-int v9, v4, v2

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 450
    rem-int v9, v4, v2

    sub-int v9, v2, v9

    iput v9, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 455
    :goto_4
    iput v11, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 509
    :goto_5
    return-object v8

    .line 437
    .end local v1           #multiEights:I
    .end local v2           #multiSeptets:I
    .end local v5           #singleEights:I
    .end local v6           #singleSeptets:I
    :cond_0
    const/16 v9, 0xa0

    move v6, v9

    goto :goto_0

    .line 439
    .restart local v6       #singleSeptets:I
    :cond_1
    const/16 v9, 0x99

    move v2, v9

    goto :goto_1

    .restart local v2       #multiSeptets:I
    :cond_2
    move v5, v12

    .line 441
    goto :goto_2

    .restart local v5       #singleEights:I
    :cond_3
    move v1, v13

    .line 443
    goto :goto_3

    .line 452
    .restart local v1       #multiEights:I
    :cond_4
    iput v11, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 453
    sub-int v9, v6, v4

    iput v9, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_4

    .line 478
    :cond_5
    if-eqz v7, :cond_7

    .line 479
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 480
    .local v0, latins:I
    iput v0, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 482
    if-le v0, v5, :cond_6

    .line 484
    div-int v9, v0, v1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 485
    rem-int v9, v0, v1

    sub-int v9, v1, v9

    iput v9, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 490
    :goto_6
    const/4 v9, 0x2

    iput v9, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_5

    .line 487
    :cond_6
    iput v11, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 488
    sub-int v9, v5, v0

    iput v9, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_6

    .line 493
    .end local v0           #latins:I
    :cond_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    mul-int/lit8 v3, v9, 0x2

    .line 494
    .local v3, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 495
    if-le v3, v12, :cond_8

    .line 496
    div-int/lit16 v9, v3, 0x86

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 497
    rem-int/lit16 v9, v3, 0x86

    sub-int v9, v13, v9

    div-int/lit8 v9, v9, 0x2

    iput v9, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 503
    :goto_7
    const/4 v9, 0x3

    iput v9, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_5

    .line 500
    :cond_8
    iput v11, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 501
    sub-int v9, v12, v3

    div-int/lit8 v9, v9, 0x2

    iput v9, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_7
.end method

.method private static countAsciiSeptets(Ljava/lang/CharSequence;Z)I
    .locals 5
    .parameter "msg"
    .parameter "force"

    .prologue
    const/4 v4, -0x1

    .line 410
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 411
    .local v1, msgLen:I
    if-eqz p1, :cond_0

    move v2, v1

    .line 417
    :goto_0
    return v2

    .line 412
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 413
    sget-object v2, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v4, :cond_1

    move v2, v4

    .line 414
    goto :goto_0

    .line 412
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    .line 417
    goto :goto_0
.end method

.method public static decode([BZ)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 12
    .parameter "smsData"
    .parameter "isCmas"

    .prologue
    const/4 v8, 0x1

    const-string v11, "BearerData decode failed: "

    const-string v7, ")"

    const-string v10, "SMS"

    .line 1986
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v4, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1987
    .local v4, inStream:Lcom/android/internal/util/BitwiseInputStream;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1988
    .local v0, bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v3, 0x0

    .line 1989
    .local v3, foundSubparamMask:I
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    if-lez v7, :cond_2

    .line 1990
    const/4 v1, 0x0

    .line 1991
    .local v1, decodeSuccess:Z
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 1992
    .local v5, subparamId:I
    shl-int v6, v8, v5

    .line 1993
    .local v6, subparamIdBit:I
    and-int v7, v3, v6

    if-eqz v7, :cond_1

    .line 1994
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal duplicate subparameter ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2081
    .end local v0           #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v1           #decodeSuccess:Z
    .end local v3           #foundSubparamMask:I
    .end local v4           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v5           #subparamId:I
    .end local v6           #subparamIdBit:I
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 2082
    .local v2, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v7, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BearerData decode failed: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    .end local v2           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_1
    const/4 v7, 0x0

    :goto_2
    return-object v7

    .line 1997
    .restart local v0       #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v1       #decodeSuccess:Z
    .restart local v3       #foundSubparamMask:I
    .restart local v4       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5       #subparamId:I
    .restart local v6       #subparamIdBit:I
    :cond_1
    packed-switch v5, :pswitch_data_0

    .line 2059
    :goto_3
    :pswitch_0
    if-eqz v1, :cond_0

    or-int/2addr v3, v6

    goto :goto_0

    .line 1999
    :pswitch_1
    :try_start_1
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2000
    goto :goto_3

    .line 2002
    :pswitch_2
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2003
    goto :goto_3

    .line 2005
    :pswitch_3
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2006
    goto :goto_3

    .line 2008
    :pswitch_4
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2009
    goto :goto_3

    .line 2011
    :pswitch_5
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2012
    goto :goto_3

    .line 2014
    :pswitch_6
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2015
    goto :goto_3

    .line 2017
    :pswitch_7
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2018
    goto :goto_3

    .line 2020
    :pswitch_8
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2021
    goto :goto_3

    .line 2023
    :pswitch_9
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2024
    goto :goto_3

    .line 2026
    :pswitch_a
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2027
    goto :goto_3

    .line 2029
    :pswitch_b
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2030
    goto :goto_3

    .line 2032
    :pswitch_c
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2033
    goto :goto_3

    .line 2035
    :pswitch_d
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2036
    goto :goto_3

    .line 2038
    :pswitch_e
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2039
    goto :goto_3

    .line 2041
    :pswitch_f
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2042
    goto :goto_3

    .line 2044
    :pswitch_10
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2045
    goto :goto_3

    .line 2047
    :pswitch_11
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2048
    goto :goto_3

    .line 2050
    :pswitch_12
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2051
    goto :goto_3

    .line 2061
    .end local v1           #decodeSuccess:Z
    .end local v5           #subparamId:I
    .end local v6           #subparamIdBit:I
    :cond_2
    and-int/lit8 v7, v3, 0x1

    if-nez v7, :cond_3

    .line 2062
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v8, "missing MESSAGE_IDENTIFIER subparam"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2083
    .end local v0           #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v3           #foundSubparamMask:I
    .end local v4           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 2084
    .local v2, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v7, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BearerData decode failed: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2064
    .end local v2           #ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    .restart local v0       #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v3       #foundSubparamMask:I
    .restart local v4       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    :cond_3
    :try_start_2
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v7, :cond_5

    .line 2065
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v7, v8, :cond_6

    .line 2066
    xor-int/lit8 v7, v3, 0x1

    xor-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4

    .line 2070
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 must occur without extra subparams ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    :cond_4
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    :cond_5
    :goto_4
    move-object v7, v0

    .line 2080
    goto/16 :goto_2

    .line 2074
    :cond_6
    if-eqz p1, :cond_7

    .line 2075
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    goto :goto_4

    .line 2077
    :cond_7
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 1997
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_d
        :pswitch_4
        :pswitch_5
        :pswitch_11
        :pswitch_e
        :pswitch_6
        :pswitch_f
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private static decode7bitAscii([BII)Ljava/lang/String;
    .locals 13
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xd

    const/16 v11, 0xa

    const/16 v10, 0x20

    .line 1235
    mul-int/lit8 v7, p1, 0x8

    add-int/lit8 v7, v7, 0x6

    :try_start_0
    div-int/lit8 v4, v7, 0x7

    .line 1236
    .local v4, offsetSeptets:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1237
    .local v5, strBuf:Ljava/lang/StringBuffer;
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1240
    .local v3, inStream:Lcom/android/internal/util/BitwiseInputStream;
    mul-int/lit8 v6, p2, 0x7

    .line 1241
    .local v6, wantedBits:I
    sub-int/2addr p2, v4

    .line 1243
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wantedBits"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", inStream.available(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    if-ge v7, v6, :cond_0

    .line 1245
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insufficient data (wanted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bits, but only have "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    .end local v3           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v4           #offsetSeptets:I
    .end local v5           #strBuf:Ljava/lang/StringBuffer;
    .end local v6           #wantedBits:I
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1267
    .local v1, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "7bit ASCII decode failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1249
    .end local v1           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .restart local v3       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v4       #offsetSeptets:I
    .restart local v5       #strBuf:Ljava/lang/StringBuffer;
    .restart local v6       #wantedBits:I
    :cond_0
    mul-int/lit8 v7, v4, 0x7

    :try_start_1
    invoke-virtual {v3, v7}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1251
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p2, :cond_4

    .line 1252
    const/4 v7, 0x7

    invoke-virtual {v3, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    .line 1253
    .local v0, charCode:I
    if-lt v0, v10, :cond_1

    sget v7, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    if-gt v0, v7, :cond_1

    .line 1255
    sget-object v7, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    sub-int v8, v0, v10

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1251
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1256
    :cond_1
    if-ne v0, v11, :cond_2

    .line 1257
    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1258
    :cond_2
    if-ne v0, v12, :cond_3

    .line 1259
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1262
    :cond_3
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1265
    .end local v0           #charCode:I
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    return-object v7
.end method

.method private static decode7bitGsm([BII)Ljava/lang/String;
    .locals 9
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1275
    mul-int/lit8 v6, p1, 0x8

    .line 1276
    .local v6, offsetBits:I
    add-int/lit8 v0, v6, 0x6

    div-int/lit8 v7, v0, 0x7

    .line 1277
    .local v7, offsetSeptets:I
    sub-int/2addr p2, v7

    .line 1278
    mul-int/lit8 v0, v7, 0x7

    sub-int v3, v0, v6

    .local v3, paddingBits:I
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    .line 1279
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v8

    .line 1281
    .local v8, result:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 1282
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v1, "7bit GSM decoding failed"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1284
    :cond_0
    return-object v8
.end method

.method private static decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 11
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    .line 1688
    const/16 v0, 0x8

    .line 1689
    .local v0, EXPECTED_PARAM_SIZE:I
    invoke-virtual {p1, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    mul-int/lit8 v6, v8, 0x8

    .line 1690
    .local v6, paramBits:I
    if-ge v6, v10, :cond_0

    .line 1691
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1692
    const/4 v8, 0x0

    .line 1718
    :goto_0
    return v8

    .line 1694
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1695
    .local v1, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1696
    const/4 v4, 0x4

    .line 1697
    .local v4, fieldBits:B
    const/4 v2, 0x1

    .line 1698
    .local v2, consumedBits:B
    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v8, v9, :cond_1

    .line 1699
    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 1700
    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1701
    const/16 v4, 0x8

    .line 1702
    add-int/lit8 v8, v2, 0x7

    int-to-byte v2, v8

    .line 1704
    :cond_1
    invoke-virtual {p1, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1705
    add-int/lit8 v8, v2, 0x8

    int-to-byte v2, v8

    .line 1706
    sub-int v7, v6, v2

    .line 1707
    .local v7, remainingBits:I
    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int v3, v8, v4

    .line 1708
    .local v3, dataBits:I
    sub-int v5, v7, v3

    .line 1709
    .local v5, paddingBits:I
    if-ge v7, v3, :cond_2

    .line 1710
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CALLBACK_NUMBER subparam encoding size error (remainingBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dataBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", paddingBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1714
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v8

    iput-object v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1715
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1716
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1717
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move v8, v9

    .line 1718
    goto :goto_0
.end method

.method private static decodeCmaeRecordType0(Lcom/android/internal/telephony/cdma/sms/UserData;Lcom/android/internal/util/BitwiseInputStream;I)Z
    .locals 8
    .parameter "userData"
    .parameter "inStream"
    .parameter "recordLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1300
    mul-int/lit8 v0, p2, 0x8

    .line 1302
    .local v0, bitsLeft:I
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .line 1303
    .local v2, cmaeCharSet:I
    add-int/lit8 v0, v0, -0x5

    .line 1304
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v1

    .line 1307
    .local v1, cmaeAlertTextData:[B
    packed-switch v2, :pswitch_data_0

    .line 1313
    :try_start_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cmae encoding not supported: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 1316
    .local v3, e:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cmae record type 0 coding exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    .end local v3           #e:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 1309
    :pswitch_0
    :try_start_1
    array-length v5, v1

    mul-int/lit8 v5, v5, 0x8

    div-int/lit8 v4, v5, 0x7

    .line 1310
    .local v4, numChars:I
    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitAscii([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1307
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeCmaeRecordType1(Lcom/android/internal/telephony/cdma/sms/UserData;Lcom/android/internal/util/BitwiseInputStream;I)Z
    .locals 6
    .parameter "userData"
    .parameter "inStream"
    .parameter "recordLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x4

    .line 1324
    mul-int/lit8 v0, p2, 0x8

    .line 1325
    .local v0, bitsLeft:I
    if-ge p2, v5, :cond_0

    .line 1327
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1328
    const/4 v3, 0x0

    .line 1343
    :goto_0
    return v3

    .line 1331
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    .line 1332
    .local v1, cmaeCategory:I
    add-int/lit8 v0, v0, -0x8

    .line 1333
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .line 1334
    .local v2, cmaeResponseType:I
    add-int/lit8 v0, v0, -0x8

    .line 1335
    invoke-static {}, Landroid/telephony/EmergencyMessage$Severity;->values()[Landroid/telephony/EmergencyMessage$Severity;

    move-result-object v3

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->severity:Landroid/telephony/EmergencyMessage$Severity;

    .line 1336
    add-int/lit8 v0, v0, -0x4

    .line 1337
    invoke-static {}, Landroid/telephony/EmergencyMessage$Urgency;->values()[Landroid/telephony/EmergencyMessage$Urgency;

    move-result-object v3

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->urgency:Landroid/telephony/EmergencyMessage$Urgency;

    .line 1338
    add-int/lit8 v0, v0, -0x4

    .line 1339
    invoke-static {}, Landroid/telephony/EmergencyMessage$Certainty;->values()[Landroid/telephony/EmergencyMessage$Certainty;

    move-result-object v3

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->certainty:Landroid/telephony/EmergencyMessage$Certainty;

    .line 1340
    add-int/lit8 v0, v0, -0x4

    .line 1342
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1343
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static decodeCmaeRecordType2(Lcom/android/internal/telephony/cdma/sms/UserData;Lcom/android/internal/util/BitwiseInputStream;I)Z
    .locals 12
    .parameter "userData"
    .parameter "inStream"
    .parameter "recordLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x8

    .line 1349
    mul-int/lit8 v0, p2, 0x8

    .line 1350
    .local v0, bitsLeft:I
    const/16 v9, 0xa

    if-ge p2, v9, :cond_0

    .line 1352
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1353
    const/4 v9, 0x0

    .line 1372
    :goto_0
    return v9

    .line 1356
    :cond_0
    invoke-virtual {p1, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    invoke-virtual {p1, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    or-int v8, v9, v10

    .line 1357
    .local v8, cmaeIdentifier:I
    add-int/lit8 v0, v0, -0x10

    .line 1358
    invoke-virtual {p1, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    .line 1359
    .local v1, cmaeAlertHandling:I
    add-int/lit8 v0, v0, -0x8

    .line 1361
    invoke-virtual {p1, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 1362
    .local v7, cmaeExpiresYear:I
    invoke-virtual {p1, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 1363
    .local v5, cmaeExpiresMonth:I
    invoke-virtual {p1, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .line 1364
    .local v2, cmaeExpiresDay:I
    invoke-virtual {p1, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    .line 1365
    .local v3, cmaeExpiresHours:I
    invoke-virtual {p1, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    .line 1366
    .local v4, cmaeExpiresMinutes:I
    invoke-virtual {p1, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 1367
    .local v6, cmaeExpiresSeconds:I
    add-int/lit8 v0, v0, -0x30

    .line 1368
    invoke-virtual {p1, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->language:I

    .line 1369
    add-int/lit8 v0, v0, -0x8

    .line 1371
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1372
    const/4 v9, 0x1

    goto :goto_0
.end method

.method private static decodeCmasUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 11
    .parameter "userData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const-string v10, "SMS"

    const-string v9, "Cmae user data decode failed: "

    const-string v6, ")"

    .line 1379
    :try_start_0
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1381
    .local v2, inStream:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    .line 1382
    .local v0, cmaeProtocolVersion:I
    if-eqz v0, :cond_1

    .line 1384
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unsupported cmae protocol version ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1411
    .end local v0           #cmaeProtocolVersion:I
    .end local v2           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1412
    .local v1, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v6, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cmae user data decode failed: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    .end local v1           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :cond_0
    :goto_0
    return-void

    .line 1388
    .restart local v0       #cmaeProtocolVersion:I
    .restart local v2       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    :cond_1
    const/4 v5, 0x0

    .line 1389
    .local v5, typeZeroFound:Z
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v6

    const/16 v7, 0x10

    if-le v6, v7, :cond_2

    .line 1390
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    .line 1391
    .local v4, recordType:I
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    .line 1392
    .local v3, recordLen:I
    packed-switch v4, :pswitch_data_0

    .line 1404
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unsupported cmas user data record type ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1413
    .end local v0           #cmaeProtocolVersion:I
    .end local v2           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v3           #recordLen:I
    .end local v4           #recordType:I
    .end local v5           #typeZeroFound:Z
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 1414
    .local v1, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v6, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cmae user data decode failed: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1394
    .end local v1           #ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    .restart local v0       #cmaeProtocolVersion:I
    .restart local v2       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v3       #recordLen:I
    .restart local v4       #recordType:I
    .restart local v5       #typeZeroFound:Z
    :pswitch_0
    const/4 v5, 0x1

    .line 1395
    :try_start_2
    invoke-static {p0, v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmaeRecordType0(Lcom/android/internal/telephony/cdma/sms/UserData;Lcom/android/internal/util/BitwiseInputStream;I)Z

    goto :goto_1

    .line 1398
    :pswitch_1
    invoke-static {p0, v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmaeRecordType1(Lcom/android/internal/telephony/cdma/sms/UserData;Lcom/android/internal/util/BitwiseInputStream;I)Z

    goto :goto_1

    .line 1401
    :pswitch_2
    invoke-static {p0, v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmaeRecordType2(Lcom/android/internal/telephony/cdma/sms/UserData;Lcom/android/internal/util/BitwiseInputStream;I)Z

    goto :goto_1

    .line 1408
    .end local v3           #recordLen:I
    .end local v4           #recordType:I
    :cond_2
    if-nez v5, :cond_0

    .line 1409
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v7, "missing type 0 record"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 1786
    const/16 v0, 0x30

    .line 1787
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1788
    .local v1, decodeSuccess:Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1789
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1790
    add-int/lit8 v2, v2, -0x30

    .line 1791
    const/4 v1, 0x1

    .line 1792
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1795
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1796
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEFERRED_DELIVERY_TIME_ABSOLUTE decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1801
    return v1

    .line 1796
    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1828
    const/16 v0, 0x8

    .line 1829
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1830
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1831
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1832
    add-int/lit8 v2, v2, -0x8

    .line 1833
    const/4 v1, 0x1

    .line 1834
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    .line 1836
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1837
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEFERRED_DELIVERY_TIME_RELATIVE decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1842
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    .line 1843
    return v1

    .line 1837
    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1637
    const/16 v0, 0x10

    .line 1638
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1639
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1640
    .local v2, paramBits:I
    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1641
    add-int/lit8 v2, v2, -0x10

    .line 1642
    const/4 v1, 0x1

    .line 1643
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    .line 1645
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1646
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_DEPOSIT_INDEX decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1651
    return v1

    .line 1646
    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1892
    const/16 v0, 0x8

    .line 1893
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1894
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1895
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1896
    add-int/lit8 v2, v2, -0x8

    .line 1897
    const/4 v1, 0x1

    .line 1898
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 1899
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1901
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1902
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISPLAY_MODE decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1907
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 1908
    return v1

    .line 1902
    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodeDtmfSmsAddress([BI)Ljava/lang/String;
    .locals 7
    .parameter "rawData"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    .line 1659
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1660
    .local v1, strBuf:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_4

    .line 1661
    div-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    const/4 v4, 0x4

    rem-int/lit8 v5, v0, 0x2

    mul-int/lit8 v5, v5, 0x4

    sub-int/2addr v4, v5

    ushr-int/2addr v3, v4

    and-int/lit8 v2, v3, 0xf

    .line 1662
    .local v2, val:I
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/16 v3, 0x9

    if-gt v2, v3, :cond_0

    invoke-static {v2, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1660
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1663
    :cond_0
    if-ne v2, v6, :cond_1

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1664
    :cond_1
    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1665
    :cond_2
    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1666
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid SMS address DTMF code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1668
    .end local v2           #val:I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 3
    .parameter "bData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    packed-switch v0, :pswitch_data_0

    .line 1585
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported IS-91 message type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1575
    :pswitch_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1588
    :goto_0
    return-void

    .line 1578
    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_0

    .line 1582
    :pswitch_2
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_0

    .line 1573
    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 6
    .parameter "bData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1556
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v2, v4}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1557
    .local v2, inStream:Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    div-int/lit8 v1, v4, 0x4

    .line 1558
    .local v1, dataLen:I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1559
    .local v3, numFields:I
    const/16 v4, 0xe

    if-gt v1, v4, :cond_0

    const/4 v4, 0x3

    if-lt v1, v4, :cond_0

    if-ge v1, v3, :cond_1

    .line 1560
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v5, "IS-91 voicemail status decoding failed"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1562
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1563
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1564
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1565
    int-to-byte v4, v3

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1566
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1567
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1568
    return-void
.end method

.method private static decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 7
    .parameter "bData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1534
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1535
    .local v2, inStream:Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v5

    div-int/lit8 v0, v5, 0x6

    .line 1536
    .local v0, dataLen:I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1537
    .local v3, numFields:I
    const/16 v5, 0xe

    if-gt v0, v5, :cond_0

    if-ge v0, v3, :cond_1

    .line 1538
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v6, "IS-91 voicemail status decoding failed"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1540
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1541
    .local v4, strbuf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1542
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1541
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1544
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1545
    return-void
.end method

.method private static decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 12
    .parameter "bData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x3

    const-string v11, "IS-91 voicemail status decoding failed: "

    .line 1491
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v3, v7}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1492
    .local v3, inStream:Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    div-int/lit8 v1, v7, 0x6

    .line 1493
    .local v1, dataLen:I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1494
    .local v4, numFields:I
    const/16 v7, 0xe

    if-gt v1, v7, :cond_0

    if-lt v1, v9, :cond_0

    if-ge v1, v4, :cond_1

    .line 1495
    :cond_0
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v8, "IS-91 voicemail status decoding failed"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1498
    :cond_1
    :try_start_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1499
    .local v6, strbuf:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    if-lt v7, v10, :cond_2

    .line 1500
    sget-object v7, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    const/4 v8, 0x6

    invoke-virtual {v3, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1515
    .end local v6           #strbuf:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 1516
    .local v2, ex:Ljava/lang/NumberFormatException;
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 voicemail status decoding failed: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1502
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    .restart local v6       #strbuf:Ljava/lang/StringBuffer;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1503
    .local v0, data:Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1504
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1505
    .local v5, prioCode:C
    const/16 v7, 0x20

    if-ne v5, v7, :cond_3

    .line 1506
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1513
    :goto_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1514
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v8, 0x3

    sub-int v9, v4, v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1520
    return-void

    .line 1507
    :cond_3
    const/16 v7, 0x21

    if-ne v5, v7, :cond_4

    .line 1508
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1517
    .end local v0           #data:Ljava/lang/String;
    .end local v5           #prioCode:C
    .end local v6           #strbuf:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 1518
    .local v2, ex:Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 voicemail status decoding failed: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1510
    .end local v2           #ex:Ljava/lang/IndexOutOfBoundsException;
    .restart local v0       #data:Ljava/lang/String;
    .restart local v5       #prioCode:C
    .restart local v6       #strbuf:Ljava/lang/StringBuffer;
    :cond_4
    :try_start_2
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 voicemail status decoding failed: illegal priority setting ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method private static decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1871
    const/16 v0, 0x8

    .line 1872
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1873
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1874
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1875
    add-int/lit8 v2, v2, -0x8

    .line 1876
    const/4 v1, 0x1

    .line 1877
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 1879
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1880
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LANGUAGE_INDICATOR decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1885
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 1886
    return v1

    .line 1880
    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodeLatin([BII)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1291
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sub-int v2, p2, p1

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, p0, p1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1292
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1293
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISO-8859-1 decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x1

    .line 1162
    const/16 v0, 0x18

    .line 1163
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1164
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1165
    .local v2, paramBits:I
    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 1166
    add-int/lit8 v2, v2, -0x18

    .line 1167
    const/4 v1, 0x1

    .line 1168
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1169
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1170
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1171
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v5, :cond_3

    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1172
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1174
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1175
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_IDENTIFIER decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    const-string/jumbo v5, "succeeded"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1180
    return v1

    .line 1171
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1175
    :cond_4
    const-string v5, "failed"

    goto :goto_1
.end method

.method private static decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 1746
    const/16 v0, 0x30

    .line 1747
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1748
    .local v1, decodeSuccess:Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1749
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1750
    add-int/lit8 v2, v2, -0x30

    .line 1751
    const/4 v1, 0x1

    .line 1752
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1754
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1755
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_CENTER_TIME_STAMP decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1760
    return v1

    .line 1755
    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1617
    const/16 v0, 0x8

    .line 1618
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1619
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1620
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1621
    add-int/lit8 v2, v2, -0x8

    .line 1622
    const/4 v1, 0x1

    .line 1623
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1625
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1626
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NUMBER_OF_MESSAGES decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1631
    return v1

    .line 1626
    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1936
    const/16 v0, 0x8

    .line 1937
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1938
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1939
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1940
    add-int/lit8 v2, v2, -0x8

    .line 1941
    const/4 v1, 0x1

    .line 1942
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 1943
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1945
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1946
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALERT_ON_MESSAGE_DELIVERY decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1951
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    .line 1952
    return v1

    .line 1946
    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1724
    const/16 v0, 0x8

    .line 1725
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1726
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1727
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1728
    add-int/lit8 v2, v2, -0x8

    .line 1729
    const/4 v1, 0x1

    .line 1730
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 1731
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 1733
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1734
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_STATUS decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1739
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 1740
    return v1

    .line 1734
    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1914
    const/16 v0, 0x8

    .line 1915
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1916
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1917
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1918
    add-int/lit8 v2, v2, -0x8

    .line 1919
    const/4 v1, 0x1

    .line 1920
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1921
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1923
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1924
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRIORITY_INDICATOR decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1929
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1930
    return v1

    .line 1924
    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1849
    const/16 v0, 0x8

    .line 1850
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1851
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1852
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1853
    add-int/lit8 v2, v2, -0x8

    .line 1854
    const/4 v1, 0x1

    .line 1855
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 1856
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1858
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1859
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRIVACY_INDICATOR decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1864
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 1865
    return v1

    .line 1859
    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1593
    const/16 v0, 0x8

    .line 1594
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1595
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1596
    .local v2, paramBits:I
    if-lt v2, v6, :cond_0

    .line 1597
    add-int/lit8 v2, v2, -0x8

    .line 1598
    const/4 v1, 0x1

    .line 1599
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1600
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1601
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1602
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1603
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1605
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1606
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REPLY_OPTION decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_7

    const-string/jumbo v5, "succeeded"

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1611
    return v1

    :cond_3
    move v3, v5

    .line 1599
    goto :goto_0

    :cond_4
    move v3, v5

    .line 1600
    goto :goto_1

    :cond_5
    move v3, v5

    .line 1601
    goto :goto_2

    :cond_6
    move v3, v5

    .line 1602
    goto :goto_3

    .line 1606
    :cond_7
    const-string v5, "failed"

    goto :goto_4
.end method

.method private static decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 6
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1672
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1676
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v4, v4

    const-string v5, "US-ASCII"

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    :goto_0
    return-void

    .line 1677
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1678
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v2, "invalid SMS address ASCII code"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1681
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDtmfSmsAddress([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    goto :goto_0
.end method

.method private static decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 1186
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1187
    .local v2, paramBits:I
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1188
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1189
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1190
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1191
    const/4 v0, 0x5

    .line 1192
    .local v0, consumedBits:I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 1194
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1195
    add-int/lit8 v0, v0, 0x8

    .line 1197
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1198
    add-int/lit8 v0, v0, 0x8

    .line 1199
    sub-int v1, v2, v0

    .line 1200
    .local v1, dataBits:I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1201
    return v5
.end method

.method private static decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V
    .locals 9
    .parameter "userData"
    .parameter "hasUserDataHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1421
    const/4 v3, 0x0

    .line 1422
    .local v3, offset:I
    if-eqz p1, :cond_0

    .line 1423
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    aget-byte v6, v6, v8

    and-int/lit16 v5, v6, 0xff

    .line 1424
    .local v5, udhLen:I
    add-int/lit8 v6, v5, 0x1

    add-int/2addr v3, v6

    .line 1425
    new-array v2, v5, [B

    .line 1426
    .local v2, headerData:[B
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v7, 0x1

    invoke-static {v6, v7, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1427
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1429
    .end local v2           #headerData:[B
    .end local v5           #udhLen:I
    :cond_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    packed-switch v6, :pswitch_data_0

    .line 1469
    :pswitch_0
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unsupported user data encoding ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1434
    :pswitch_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10d0015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1440
    .local v1, decodingtypeUTF8:Z
    iget v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    new-array v4, v6, [B

    .line 1441
    .local v4, payload:[B
    iget v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v7, v7

    if-ge v6, v7, :cond_1

    iget v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    move v0, v6

    .line 1444
    .local v0, copyLen:I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v6, v8, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1445
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1447
    if-nez v1, :cond_2

    .line 1450
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1472
    .end local v0           #copyLen:I
    .end local v1           #decodingtypeUTF8:Z
    .end local v4           #payload:[B
    :goto_1
    return-void

    .line 1441
    .restart local v1       #decodingtypeUTF8:Z
    .restart local v4       #payload:[B
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, v6

    move v0, v6

    goto :goto_0

    .line 1452
    .restart local v0       #copyLen:I
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1457
    .end local v0           #copyLen:I
    .end local v1           #decodingtypeUTF8:Z
    .end local v4           #payload:[B
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitAscii([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1460
    :pswitch_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1463
    :pswitch_4
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1466
    :pswitch_5
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1429
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1958
    const/16 v0, 0x8

    .line 1959
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1960
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1961
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1962
    add-int/lit8 v2, v2, -0x8

    .line 1963
    const/4 v1, 0x1

    .line 1964
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCode:I

    .line 1966
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1967
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER_REPONSE_CODE decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1972
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 1973
    return v1

    .line 1967
    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodeUtf16([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1218
    rem-int/lit8 v1, p1, 0x2

    .line 1219
    .local v1, padding:I
    add-int v2, p1, v1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    .line 1221
    :try_start_0
    new-instance v2, Ljava/lang/String;

    mul-int/lit8 v3, p2, 0x2

    const-string/jumbo v4, "utf-16be"

    invoke-direct {v2, p0, p1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1222
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1223
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UTF-16 decode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static decodeUtf8([BII)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1208
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1209
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1210
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-8 decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 1766
    const/16 v0, 0x30

    .line 1767
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1768
    .local v1, decodeSuccess:Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1769
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1770
    add-int/lit8 v2, v2, -0x30

    .line 1771
    const/4 v1, 0x1

    .line 1772
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1774
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1775
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALIDITY_PERIOD_ABSOLUTE decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1780
    return v1

    .line 1775
    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1807
    const/16 v0, 0x8

    .line 1808
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1809
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1810
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1811
    add-int/lit8 v2, v2, -0x8

    .line 1812
    const/4 v1, 0x1

    .line 1813
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    .line 1815
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1816
    :cond_1
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALIDITY_PERIOD_RELATIVE decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1821
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    .line 1822
    return v1

    .line 1816
    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method public static encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B
    .locals 7
    .parameter "bData"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "SMS"

    const-string v5, "BearerData encode failed: "

    .line 1094
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v2, :cond_d

    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1097
    :try_start_0
    new-instance v1, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 1098
    .local v1, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1099
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1100
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v2, :cond_0

    .line 1101
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1102
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1104
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v2, :cond_1

    .line 1105
    const/16 v2, 0x8

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1106
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1108
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v2, :cond_3

    .line 1109
    :cond_2
    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1110
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1112
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-eqz v2, :cond_4

    .line 1113
    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1114
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1116
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v2, :cond_5

    .line 1117
    const/16 v2, 0x8

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1118
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1120
    :cond_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v2, :cond_6

    .line 1121
    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1122
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1124
    :cond_6
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v2, :cond_7

    .line 1125
    const/16 v2, 0x8

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1126
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1128
    :cond_7
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v2, :cond_8

    .line 1129
    const/16 v2, 0x8

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1130
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1132
    :cond_8
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v2, :cond_9

    .line 1133
    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1134
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1136
    :cond_9
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v2, :cond_a

    .line 1137
    const/16 v2, 0x8

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1138
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1140
    :cond_a
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v2, :cond_b

    .line 1141
    const/16 v2, 0x8

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1142
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1145
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_c

    .line 1146
    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1147
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1150
    :cond_c
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1156
    .end local v1           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :goto_1
    return-object v2

    :cond_d
    move v2, v3

    .line 1094
    goto/16 :goto_0

    .line 1151
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1152
    .local v0, ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string v2, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BearerData encode failed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    .end local v0           #ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1153
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1154
    .local v0, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v2, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BearerData encode failed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .locals 9
    .parameter "uData"
    .parameter "udhData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 678
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    .line 679
    .local v0, payload:[B
    array-length v5, p1

    add-int/lit8 v2, v5, 0x1

    .line 680
    .local v2, udhBytes:I
    add-int/lit8 v5, v2, 0x1

    div-int/lit8 v3, v5, 0x2

    .line 681
    .local v3, udhCodeUnits:I
    rem-int/lit8 v4, v2, 0x2

    .line 682
    .local v4, udhPadding:I
    array-length v5, v0

    div-int/lit8 v1, v5, 0x2

    .line 683
    .local v1, payloadCodeUnits:I
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 684
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 685
    add-int v5, v3, v1

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 686
    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 687
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p1

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 688
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p1

    invoke-static {p1, v8, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 689
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    add-int v6, v2, v4

    array-length v7, v0

    invoke-static {v0, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 690
    return-void
.end method

.method private static encode7bitAscii(Ljava/lang/String;IZ)[B
    .locals 9
    .parameter "msg"
    .parameter "septetOffset"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 519
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, p1

    invoke-direct {v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 520
    .local v4, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 522
    .local v3, msgLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 523
    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 522
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 527
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 528
    .local v0, charCode:I
    if-ne v0, v8, :cond_2

    .line 529
    if-eqz p2, :cond_1

    .line 530
    const/4 v5, 0x7

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 526
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 532
    :cond_1
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot ASCII encode ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v0           #charCode:I
    .end local v2           #i:I
    .end local v3           #msgLen:I
    .end local v4           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 540
    .local v1, ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "7bit ASCII encode failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 535
    .end local v1           #ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    .restart local v0       #charCode:I
    .restart local v2       #i:I
    .restart local v3       #msgLen:I
    .restart local v4       #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :cond_2
    const/4 v5, 0x7

    :try_start_1
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_2

    .line 538
    .end local v0           #charCode:I
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method private static encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 7
    .parameter "uData"
    .parameter "udhData"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 620
    array-length v3, p1

    add-int/lit8 v1, v3, 0x1

    .line 621
    .local v1, udhBytes:I
    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x6

    div-int/lit8 v2, v3, 0x7

    .line 622
    .local v2, udhSeptets:I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v0

    .line 623
    .local v0, gcr:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 624
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 625
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 626
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 627
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 628
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    invoke-static {p1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 629
    return-void
.end method

.method private static encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .locals 8
    .parameter "msg"
    .parameter "septetOffset"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 606
    if-nez p2, :cond_0

    move v3, v7

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, p1, v3, v4, v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v1

    .line 607
    .local v1, fullData:[B
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/sms/BearerData$1;)V

    .line 608
    .local v2, result:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    array-length v3, v1

    sub-int/2addr v3, v7

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    .line 609
    const/4 v3, 0x1

    iget-object v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    const/4 v5, 0x0

    array-length v6, v1

    sub-int/2addr v6, v7

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 610
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    return-object v2

    .line 612
    .end local v1           #fullData:[B
    .end local v2           #result:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 613
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "7bit GSM encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static encode7bitMultiSms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 6
    .parameter "uData"
    .parameter "udhData"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 636
    array-length v2, p1

    add-int/lit8 v0, v2, 0x1

    .line 637
    .local v0, udhBytes:I
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x6

    div-int/lit8 v1, v2, 0x7

    .line 639
    .local v1, udhSeptets:I
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 640
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 642
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2, v1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;IZ)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 645
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 647
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 649
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, p1

    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 651
    return-void
.end method

.method private static encode8bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .locals 7
    .parameter "uData"
    .parameter "udhData"

    .prologue
    const/4 v6, 0x0

    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 664
    .local v0, payload:[B
    array-length v3, p1

    add-int/lit8 v2, v3, 0x1

    .line 666
    .local v2, udhBytes:I
    array-length v1, v0

    .line 667
    .local v1, payloadCodeUnits:I
    add-int v3, v2, v1

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 668
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 669
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    .line 670
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v4, 0x1

    array-length v5, p1

    invoke-static {p1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 671
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v0

    invoke-static {v0, v6, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 672
    return-void
.end method

.method private static encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 953
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 954
    const/16 v3, 0x9

    .line 955
    .local v3, paramBits:I
    const/4 v1, 0x0

    .line 956
    .local v1, dataBits:I
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v5, v7, :cond_2

    .line 957
    add-int/lit8 v3, v3, 0x7

    .line 958
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v5, 0x8

    .line 962
    :goto_0
    add-int/2addr v3, v1

    .line 963
    div-int/lit8 v5, v3, 0x8

    rem-int/lit8 v6, v3, 0x8

    if-lez v6, :cond_3

    move v6, v7

    :goto_1
    add-int v4, v5, v6

    .line 964
    .local v4, paramBytes:I
    mul-int/lit8 v5, v4, 0x8

    sub-int v2, v5, v3

    .line 965
    .local v2, paddingBits:I
    invoke-virtual {p1, v9, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 966
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v7, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 967
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v5, v7, :cond_0

    .line 968
    const/4 v5, 0x3

    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 969
    const/4 v5, 0x4

    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 971
    :cond_0
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v9, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 972
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {p1, v1, v5}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 973
    if-lez v2, :cond_1

    invoke-virtual {p1, v2, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 974
    :cond_1
    return-void

    .line 960
    .end local v2           #paddingBits:I
    .end local v4           #paramBytes:I
    :cond_2
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v5, 0x4

    goto :goto_0

    :cond_3
    move v6, v8

    .line 963
    goto :goto_1
.end method

.method private static encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 3
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 938
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 940
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :goto_0
    return-void

    .line 941
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 942
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v2, "invalid SMS address, cannot convert to ASCII"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 945
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    goto :goto_0
.end method

.method private static encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1016
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1017
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1018
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1019
    return-void
.end method

.method private static encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .locals 12
    .parameter "address"

    .prologue
    const/16 v11, 0x30

    .line 913
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 914
    .local v3, digits:I
    mul-int/lit8 v1, v3, 0x4

    .line 915
    .local v1, dataBits:I
    div-int/lit8 v2, v1, 0x8

    .line 916
    .local v2, dataBytes:I
    rem-int/lit8 v7, v1, 0x8

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    add-int/2addr v2, v7

    .line 917
    new-array v5, v2, [B

    .line 918
    .local v5, rawData:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_5

    .line 919
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 920
    .local v0, c:C
    const/4 v6, 0x0

    .line 921
    .local v6, val:I
    const/16 v7, 0x31

    if-lt v0, v7, :cond_1

    const/16 v7, 0x39

    if-gt v0, v7, :cond_1

    sub-int v6, v0, v11

    .line 926
    :goto_2
    div-int/lit8 v7, v4, 0x2

    aget-byte v8, v5, v7

    const/4 v9, 0x4

    rem-int/lit8 v10, v4, 0x2

    mul-int/lit8 v10, v10, 0x4

    sub-int/2addr v9, v10

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 918
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 916
    .end local v0           #c:C
    .end local v4           #i:I
    .end local v5           #rawData:[B
    .end local v6           #val:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 922
    .restart local v0       #c:C
    .restart local v4       #i:I
    .restart local v5       #rawData:[B
    .restart local v6       #val:I
    :cond_1
    if-ne v0, v11, :cond_2

    const/16 v6, 0xa

    goto :goto_2

    .line 923
    :cond_2
    const/16 v7, 0x2a

    if-ne v0, v7, :cond_3

    const/16 v6, 0xb

    goto :goto_2

    .line 924
    :cond_3
    const/16 v7, 0x23

    if-ne v0, v7, :cond_4

    const/16 v6, 0xc

    goto :goto_2

    .line 925
    :cond_4
    const/4 v7, 0x0

    .line 928
    .end local v0           #c:C
    .end local v6           #val:I
    :goto_3
    return-object v7

    :cond_5
    move-object v7, v5

    goto :goto_3
.end method

.method private static encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 6
    .parameter "uData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 712
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v1

    .line 715
    .local v1, headerData:[B
    const-string v3, "ro.cdma.support.latin.sms"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 717
    .local v2, supportLatinSMS:Z
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v3, :cond_5

    .line 721
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    .line 722
    invoke-static {p0, v1, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    .line 766
    :goto_0
    return-void

    .line 725
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 726
    invoke-static {p0, v1, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitMultiSms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_0

    .line 730
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    .line 731
    invoke-static {p0, v1, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeLatinMultiSms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_0

    .line 734
    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 735
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0

    .line 738
    :cond_3
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v3, :cond_4

    .line 739
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode8bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0

    .line 742
    :cond_4
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported EMS user data encoding ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 751
    :cond_5
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitMultiSms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 753
    :catch_0
    move-exception v0

    .line 756
    .local v0, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    if-eqz v2, :cond_6

    .line 757
    const-string v3, "SMS"

    const-string v4, "encode multi sms with latin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-static {p0, v1, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeLatinMultiSms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_0

    .line 761
    :cond_6
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0
.end method

.method private static encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1009
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1010
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1011
    return-void
.end method

.method private static encodeLatin(Ljava/lang/String;Z)[B
    .locals 7
    .parameter "msg"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 550
    .local v2, msgLen:I
    new-array v3, v2, [B

    .line 552
    .local v3, value:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 553
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 554
    .local v0, data:C
    const/16 v4, 0xff

    if-lt v0, v4, :cond_0

    .line 555
    if-eqz p1, :cond_1

    .line 556
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "force this charater encoding with Latin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v0, 0x1

    .line 563
    :cond_0
    int-to-byte v4, v0

    aput-byte v4, v3, v1

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot Latin encode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 566
    .end local v0           #data:C
    :cond_2
    return-object v3
.end method

.method private static encodeLatinMultiSms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 6
    .parameter "uData"
    .parameter "udhData"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 697
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeLatin(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 698
    .local v0, payload:[B
    array-length v2, p1

    add-int/lit8 v1, v2, 0x1

    .line 699
    .local v1, udhBytes:I
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 700
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 701
    array-length v2, v0

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 702
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 703
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 704
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, p1

    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 705
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, v0

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 706
    return-void
.end method

.method private static encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 5
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v2, 0x8

    .line 401
    invoke-virtual {p1, v2, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 402
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 403
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 404
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 405
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 406
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 407
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 4
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 1045
    const/16 v1, 0x8

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1048
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    rem-int/lit8 v2, v2, 0x64

    iput v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    .line 1049
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    div-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 1050
    .local v0, val:B
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1051
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 1052
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1055
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    .line 1056
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    div-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 1057
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1058
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 1059
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1062
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    div-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 1063
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1064
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 1065
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1068
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    div-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 1069
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1070
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 1071
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1074
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    div-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 1075
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1076
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 1077
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1080
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    div-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 1081
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1082
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 1083
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1084
    return-void
.end method

.method private static encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 987
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 988
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 989
    return-void
.end method

.method private static encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1032
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1033
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1034
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1035
    return-void
.end method

.method private static encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 979
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 980
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 981
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 982
    return-void
.end method

.method private static encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1024
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1025
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1026
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1027
    return-void
.end method

.method private static encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1001
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1002
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1003
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1004
    return-void
.end method

.method private static encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 3
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 904
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 905
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 906
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 907
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 908
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 909
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 910
    return-void

    :cond_0
    move v0, v2

    .line 905
    goto :goto_0

    :cond_1
    move v0, v2

    .line 906
    goto :goto_1

    :cond_2
    move v0, v2

    .line 907
    goto :goto_2

    :cond_3
    move v0, v2

    .line 908
    goto :goto_3
.end method

.method private static encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 11
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8c

    const/16 v9, 0xa

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 866
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 867
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v4, :cond_0

    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 869
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    if-le v4, v10, :cond_1

    .line 870
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded user data too large ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move v4, v7

    .line 867
    goto :goto_0

    .line 882
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x8

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    sub-int v0, v4, v5

    .line 883
    .local v0, dataBits:I
    add-int/lit8 v2, v0, 0xd

    .line 884
    .local v2, paramBits:I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v6, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_3

    .line 886
    :cond_2
    add-int/lit8 v2, v2, 0x8

    .line 888
    :cond_3
    div-int/lit8 v4, v2, 0x8

    rem-int/lit8 v5, v2, 0x8

    if-lez v5, :cond_7

    move v5, v6

    :goto_1
    add-int v3, v4, v5

    .line 889
    .local v3, paramBytes:I
    mul-int/lit8 v4, v3, 0x8

    sub-int v1, v4, v2

    .line 890
    .local v1, paddingBits:I
    invoke-virtual {p1, v8, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 891
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 892
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v6, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_5

    .line 894
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {p1, v8, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 896
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {p1, v8, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 897
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-virtual {p1, v0, v4}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 898
    if-lez v1, :cond_6

    invoke-virtual {p1, v1, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 899
    :cond_6
    return-void

    .end local v1           #paddingBits:I
    .end local v3           #paramBytes:I
    :cond_7
    move v5, v7

    .line 888
    goto :goto_1
.end method

.method private static encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 10
    .parameter "uData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v6, "SMS"

    .line 771
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v3, :cond_0

    .line 772
    const-string v3, "SMS"

    const-string/jumbo v3, "user data with null payloadStr"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 776
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v3, :cond_1

    .line 777
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 856
    :goto_0
    return-void

    .line 782
    :cond_1
    const-string v3, "ro.cdma.support.latin.sms"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 785
    .local v2, supportLatinSMS:Z
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v3, :cond_9

    .line 786
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v3, :cond_3

    .line 787
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v3, :cond_2

    .line 788
    const-string v3, "SMS"

    const-string/jumbo v3, "user data with octet encoding but null payload"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-array v3, v5, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 790
    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 792
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 793
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 796
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 797
    const-string v3, "SMS"

    const-string v3, "non-octet user data with null payloadStr"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 802
    :cond_4
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_5

    .line 803
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v5, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v1

    .line 804
    .local v1, gcr:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 805
    iget v3, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 806
    .end local v1           #gcr:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_5
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v3, v8, :cond_6

    .line 810
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v5, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;IZ)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 812
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 814
    :cond_6
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    if-eqz v2, :cond_7

    .line 815
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeLatin(Ljava/lang/String;Z)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 816
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 818
    const-string v3, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numFields = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 820
    :cond_7
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v3, v9, :cond_8

    .line 821
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 822
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_0

    .line 824
    :cond_8
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported user data encoding ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 834
    :cond_9
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;IZ)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 836
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 854
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    goto/16 :goto_0

    .line 837
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 840
    .local v0, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    if-eqz v2, :cond_a

    .line 841
    const-string v3, "SMS"

    const-string v3, "encoding ENCODING_LATIN"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeLatin(Ljava/lang/String;Z)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 843
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_1

    .line 847
    :cond_a
    const-string v3, "SMS"

    const-string v3, "encoding UNICODE_16"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 849
    iput v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_1
.end method

.method private static encodeUtf16(Ljava/lang/String;)[B
    .locals 4
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 575
    :try_start_0
    const-string/jumbo v1, "utf-16be"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 576
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 577
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-16 encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 994
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 995
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 996
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v3, "unset"

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "BearerData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ messageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", privacy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", alert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", displayMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", errorClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgCenterTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deliveryAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", readAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", reportReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberOfMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", callbackNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", depositIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hasUserDataHeader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 368
    :cond_0
    const-string/jumbo v2, "unset"

    move-object v2, v3

    goto/16 :goto_0

    .line 369
    :cond_1
    const-string/jumbo v2, "unset"

    move-object v2, v3

    goto/16 :goto_1

    .line 370
    :cond_2
    const-string/jumbo v2, "unset"

    move-object v2, v3

    goto/16 :goto_2

    .line 371
    :cond_3
    const-string/jumbo v2, "unset"

    move-object v2, v3

    goto/16 :goto_3

    .line 372
    :cond_4
    const-string/jumbo v2, "unset"

    move-object v2, v3

    goto/16 :goto_4

    .line 373
    :cond_5
    const-string/jumbo v2, "unset"

    move-object v2, v3

    goto/16 :goto_5

    .line 374
    :cond_6
    const-string/jumbo v2, "unset"

    move-object v2, v3

    goto/16 :goto_6

    .line 375
    :cond_7
    const-string/jumbo v2, "unset"

    move-object v2, v3

    goto/16 :goto_7

    .line 377
    :cond_8
    const-string/jumbo v2, "unset"

    move-object v2, v3

    goto/16 :goto_8

    .line 379
    :cond_9
    const-string/jumbo v2, "unset"

    move-object v2, v3

    goto/16 :goto_9

    .line 381
    :cond_a
    const-string/jumbo v2, "unset"

    move-object v2, v3

    goto/16 :goto_a

    .line 383
    :cond_b
    const-string/jumbo v2, "unset"

    move-object v2, v3

    goto/16 :goto_b
.end method
