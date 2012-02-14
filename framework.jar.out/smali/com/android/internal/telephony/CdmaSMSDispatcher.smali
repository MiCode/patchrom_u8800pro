.class final Lcom/android/internal/telephony/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "phone"
    .parameter "cm"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 78
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 83
    const-string v0, "CDMA"

    const-string v1, "Register for EVENT_NEW_SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSMS(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method private checkDuplicatePortOmadmWappush([BI)Z
    .locals 8
    .parameter "origPdu"
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    .line 756
    add-int/lit8 p2, p2, 0x4

    .line 757
    array-length v5, p1

    sub-int/2addr v5, p2

    new-array v2, v5, [B

    .line 758
    .local v2, omaPdu:[B
    array-length v5, v2

    invoke-static {p1, p2, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    new-instance v3, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 761
    .local v3, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v4, 0x2

    .line 764
    .local v4, wspIndex:I
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v7

    .line 782
    :goto_0
    return v5

    .line 768
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v4, v5

    .line 771
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v7

    .line 772
    goto :goto_0

    .line 775
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, mimeType:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 777
    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    long-to-int v0, v5

    .line 778
    .local v0, binaryContentType:I
    const/16 v5, 0x45

    if-ne v0, v5, :cond_2

    .line 779
    const/4 v5, 0x1

    goto :goto_0

    .end local v0           #binaryContentType:I
    :cond_2
    move v5, v7

    .line 782
    goto :goto_0
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 7
    .parameter "sms"

    .prologue
    .line 106
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 107
    iget-object v5, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 108
    .local v4, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    if-ne v5, v6, :cond_1

    .line 110
    iget-object v5, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 111
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 112
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v1, fillIn:Landroid/content/Intent;
    const-string v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 114
    const-string v5, "encoding"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getEncoding()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 106
    .restart local v4       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 685
    packed-switch p1, :pswitch_data_0

    .line 696
    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    .line 689
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 691
    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    .line 693
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 685
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 663
    const-string v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, inEcm:Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_0

    .line 669
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->resultToCause(I)I

    move-result v0

    .line 670
    .local v0, causeCode:I
    iget-object v2, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 672
    if-nez v0, :cond_2

    .line 673
    iget-object v2, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v2, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 675
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 15
    .parameter "smsb"

    .prologue
    const/16 v14, 0x1004

    const/16 v13, 0x1002

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 127
    if-nez p1, :cond_0

    .line 128
    const-string v8, "CDMA"

    const-string v9, "dispatchMessage: message is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v8, 0x2

    .line 269
    :goto_0
    return v8

    .line 132
    :cond_0
    const-string v8, "ril.cdma.inecmmode"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, inEcm:Ljava/lang/String;
    const-string/jumbo v8, "true"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v11

    .line 134
    goto :goto_0

    .line 138
    :cond_1
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    move-object v5, v0

    .line 139
    .local v5, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 140
    iget-object v8, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iget-object v9, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v10

    .line 142
    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 146
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v7

    .line 147
    .local v7, teleService:I
    const/4 v1, 0x0

    .line 149
    .local v1, handled:Z
    const/16 v8, 0x1003

    if-eq v8, v7, :cond_3

    const/high16 v8, 0x4

    if-ne v8, v7, :cond_5

    .line 152
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 153
    const/4 v1, 0x1

    .line 166
    :cond_4
    :goto_1
    if-eqz v1, :cond_8

    move v8, v10

    .line 167
    goto :goto_0

    .line 154
    :cond_5
    if-eq v13, v7, :cond_6

    const/16 v8, 0x1005

    if-ne v8, v7, :cond_7

    :cond_6
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 157
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 158
    const/4 v1, 0x1

    goto :goto_1

    .line 159
    :cond_7
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v8

    if-nez v8, :cond_4

    .line 161
    const-string v8, "CDMA"

    const-string v9, "Received SMS without user data"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v1, 0x1

    goto :goto_1

    .line 170
    :cond_8
    sget-boolean v8, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mStorageAvailable:Z

    if-nez v8, :cond_9

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v8

    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v8, v9, :cond_9

    .line 174
    const/4 v8, 0x3

    goto :goto_0

    .line 177
    :cond_9
    if-ne v14, v7, :cond_a

    .line 178
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v8

    iget v9, v5, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v8

    goto/16 :goto_0

    .line 186
    :cond_a
    const v8, 0xfdea

    if-ne v8, v7, :cond_b

    .line 187
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v8

    invoke-static {v8, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BZ)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v3

    .line 188
    .local v3, mCTBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    iget-object v8, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v9, v5, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v8

    goto/16 :goto_0

    .line 196
    .end local v3           #mCTBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    :cond_b
    if-eq v13, v7, :cond_c

    const/16 v8, 0x1005

    if-eq v8, v7, :cond_c

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v8

    if-eq v10, v8, :cond_c

    .line 199
    const/4 v8, 0x4

    goto/16 :goto_0

    .line 213
    :cond_c
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v6

    .line 222
    .local v6, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v6, :cond_d

    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v8, :cond_15

    .line 224
    :cond_d
    new-array v4, v10, [[B

    .line 225
    .local v4, pdus:[[B
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v8

    aput-object v8, v4, v12

    .line 226
    if-eqz v6, :cond_11

    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v8, :cond_11

    .line 227
    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v8, v8, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v9, 0xb84

    if-ne v8, v9, :cond_10

    .line 229
    sget-boolean v8, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v8, :cond_f

    .line 230
    iget-object v8, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/carrieriq/iqagent/client/IQClient;->checkWAPPush([B)Z

    move-result v8

    if-nez v8, :cond_e

    .line 232
    iget-object v8, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v8

    goto/16 :goto_0

    :cond_e
    move v8, v10

    .line 234
    goto/16 :goto_0

    .line 238
    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v8

    goto/16 :goto_0

    .line 244
    :cond_10
    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v8, v8, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v4, v8}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    :goto_2
    move v8, v11

    .line 266
    goto/16 :goto_0

    .line 246
    :cond_11
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v8

    if-ne v8, v10, :cond_12

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v8

    const/16 v9, 0x1000

    if-lt v8, v9, :cond_12

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v8

    if-gt v8, v14, :cond_12

    .line 250
    const-string v8, "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

    invoke-virtual {p0, v8, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchBroadcastPdus(Ljava/lang/String;[[B)V

    goto :goto_2

    .line 253
    :cond_12
    sget-boolean v8, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v8, :cond_14

    .line 254
    iget-object v8, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/carrieriq/iqagent/client/IQClient;->checkSMS(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 256
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_2

    :cond_13
    move v8, v10

    .line 258
    goto/16 :goto_0

    .line 262
    :cond_14
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_2

    .line 269
    .end local v4           #pdus:[[B
    :cond_15
    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v9, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-virtual {p0, v5, v8, v9}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v8

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSMS(Landroid/os/Handler;)V

    .line 91
    return-void
.end method

.method protected getEncoding()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x2

    return v0
.end method

.method protected handleBroadcastSms(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 681
    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-void
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 102
    const-string v0, "CDMA"

    const-string v1, "handleStatusReport is a special GSM function, should never be called in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method protected processCdmaWapPdu([BILjava/lang/String;)I
    .locals 30
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"

    .prologue
    .line 291
    const/16 v18, 0x0

    .line 294
    .local v18, index:I
    const/16 v26, 0x0

    .line 295
    .local v26, sourcePort:I
    const/4 v14, 0x0

    .line 297
    .local v14, destinationPort:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .local v19, index:I
    aget-byte v20, p1, v18

    .line 298
    .local v20, msgType:I
    if-eqz v20, :cond_1

    .line 299
    const-string v4, "CDMA"

    const-string v5, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v4, 0x1

    move/from16 v18, v19

    .line 410
    .end local v19           #index:I
    .restart local v18       #index:I
    :cond_0
    :goto_0
    return v4

    .line 302
    .end local v18           #index:I
    .restart local v19       #index:I
    :cond_1
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v27, p1, v19

    .line 303
    .local v27, totalSegments:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v24, p1, v18

    .line 306
    .local v24, segment:I
    if-nez v24, :cond_2

    .line 308
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v26, v4, 0x8

    .line 309
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    or-int v26, v26, v4

    .line 310
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v14, v4, 0x8

    .line 311
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v14, v4

    .line 314
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    move v4, v0

    if-eqz v4, :cond_b

    .line 315
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->checkDuplicatePortOmadmWappush([BI)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 316
    add-int/lit8 v18, v19, 0x4

    .line 320
    .end local v19           #index:I
    .restart local v18       #index:I
    :goto_1
    const/4 v4, 0x1

    move v0, v4

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    const/16 v4, 0xb84

    if-ne v4, v14, :cond_3

    .line 321
    sget-boolean v4, Lcom/carrieriq/iqagent/client/IQClient;->IQ_ENABLE:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/carrieriq/iqagent/client/IQClient;->checkWAPPush([B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 322
    const/4 v4, 0x1

    goto :goto_0

    .end local v18           #index:I
    .restart local v19       #index:I
    :cond_2
    move/from16 v18, v19

    .line 329
    .end local v19           #index:I
    .restart local v18       #index:I
    :cond_3
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v4, "reference_number ="

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .local v29, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    const-string v4, " AND address = ?"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v8, v4

    .line 334
    .local v8, whereArgs:[Ljava/lang/String;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received WAP PDU. Type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", originator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", src-port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dst-port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", segment# = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/16 v23, 0x0

    check-cast v23, [[B

    .line 339
    .local v23, pdus:[[B
    const/4 v10, 0x0

    .line 341
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/CdmaSMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 342
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 343
    .local v11, cursorCount:I
    const/4 v4, 0x1

    sub-int v4, v27, v4

    if-eq v11, v4, :cond_4

    .line 345
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 346
    .local v28, values:Landroid/content/ContentValues;
    const-string v4, "date"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 347
    const-string v4, "pdu"

    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    sub-int v5, v5, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v4, "address"

    move-object/from16 v0, v28

    move-object v1, v4

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v4, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    const-string v4, "count"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v4, "sequence"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string v4, "destination_port"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    const/4 v4, 0x1

    .line 383
    if-eqz v10, :cond_0

    .end local v11           #cursorCount:I
    .end local v28           #values:Landroid/content/ContentValues;
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 360
    .restart local v11       #cursorCount:I
    :cond_4
    :try_start_1
    const-string v4, "pdu"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 361
    .local v22, pduColumn:I
    const-string v4, "sequence"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 363
    .local v25, sequenceColumn:I
    move/from16 v0, v27

    new-array v0, v0, [[B

    move-object/from16 v23, v0

    .line 364
    const/16 v17, 0x0

    .local v17, i:I
    :goto_3
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_6

    .line 365
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 366
    move-object v0, v10

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v12, v4

    .line 368
    .local v12, cursorSequence:I
    if-nez v12, :cond_5

    .line 369
    const-string v4, "destination_port"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 370
    .local v15, destinationPortColumn:I
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v14, v4

    .line 372
    .end local v15           #destinationPortColumn:I
    :cond_5
    move-object v0, v10

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v23, v12

    .line 364
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 378
    .end local v12           #cursorSequence:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 383
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_7
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 388
    .local v21, output:Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 390
    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 392
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    sub-int v4, v4, v18

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 388
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 379
    .end local v11           #cursorCount:I
    .end local v17           #i:I
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    .end local v22           #pduColumn:I
    .end local v25           #sequenceColumn:I
    :catch_0
    move-exception v4

    move-object/from16 v16, v4

    .line 380
    .local v16, e:Landroid/database/SQLException;
    :try_start_2
    const-string v4, "CDMA"

    const-string v5, "Can\'t access multipart SMS database"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    const/4 v4, 0x2

    .line 383
    if-eqz v10, :cond_0

    goto/16 :goto_2

    .end local v16           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v4

    .line 394
    .restart local v11       #cursorCount:I
    .restart local v17       #i:I
    .restart local v21       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v22       #pduColumn:I
    .restart local v25       #sequenceColumn:I
    :cond_9
    aget-object v4, v23, v17

    const/4 v5, 0x0

    aget-object v6, v23, v17

    array-length v6, v6

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 398
    :cond_a
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 400
    .local v13, datagram:[B
    packed-switch v14, :pswitch_data_0

    .line 406
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [[B

    move-object/from16 v23, v0

    .line 407
    const/4 v4, 0x0

    aput-object v13, v23, v4

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 410
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 403
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v4

    goto/16 :goto_0

    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #cursorCount:I
    .end local v13           #datagram:[B
    .end local v17           #i:I
    .end local v18           #index:I
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    .end local v22           #pduColumn:I
    .end local v23           #pdus:[[B
    .end local v25           #sequenceColumn:I
    .end local v29           #where:Ljava/lang/StringBuilder;
    .restart local v19       #index:I
    :cond_b
    move/from16 v18, v19

    .end local v19           #index:I
    .restart local v18       #index:I
    goto/16 :goto_1

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0xb84
        :pswitch_0
    .end packed-switch
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 418
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v5

    .local v5, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 421
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 422
    .local v6, map:Ljava/util/HashMap;
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v6, p5, p6, v0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .line 424
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 425
    return-void

    .line 418
    .end local v5           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 21
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p4, data:Ljava/util/List;,"Ljava/util/List<[B>;"
    .local p5, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 462
    .local v17, refNumber:I
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v15

    .line 464
    .local v15, msgCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v15, :cond_3

    .line 465
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 466
    .local v11, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v17

    move-object v1, v11

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 467
    add-int/lit8 v5, v13, 0x1

    iput v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 468
    iput v15, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 470
    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 471
    new-instance v16, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 472
    .local v16, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    move/from16 v0, p3

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 473
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 474
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 476
    new-instance v19, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 477
    .local v19, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v11

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 478
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 480
    const/16 v18, 0x0

    .line 481
    .local v18, sentIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v13, :cond_0

    .line 482
    move-object/from16 v0, p5

    move v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #sentIntent:Landroid/app/PendingIntent;
    check-cast v18, Landroid/app/PendingIntent;

    .line 485
    .restart local v18       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    const/4 v12, 0x0

    .line 486
    .local v12, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p6, :cond_1

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v13, :cond_1

    .line 487
    move-object/from16 v0, p6

    move v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v12, Landroid/app/PendingIntent;

    .line 490
    .restart local v12       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_1
    const/4 v10, 0x0

    .line 492
    .local v10, pdus:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p4

    move v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-eqz v12, :cond_2

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object v3, v5

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v10

    .line 496
    move-object/from16 v0, p4

    move v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v14

    .line 497
    .local v14, map:Ljava/util/HashMap;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v18

    move-object v3, v12

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v20

    .line 499
    .local v20, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 464
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 492
    .end local v14           #map:Ljava/util/HashMap;
    .end local v20           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 501
    .end local v10           #pdus:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v11           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v16           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    .end local v18           #sentIntent:Landroid/app/PendingIntent;
    .end local v19           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_3
    return-void
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 656
    const-string v0, "CDMA"

    const-string v1, "TODO: CdmaSMSDispatcher.sendMultipartSms not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 21
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 527
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move v12, v0

    .line 528
    .local v12, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 529
    .local v11, msgCount:I
    const/4 v8, 0x0

    .line 531
    .local v8, encoding:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_2

    .line 532
    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v7

    .line 533
    .local v7, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object v0, v7

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v19, v0

    move v0, v8

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    if-eqz v8, :cond_0

    const/16 v19, 0x1

    move v0, v8

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 536
    :cond_0
    iget v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 531
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 540
    .end local v7           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_8

    .line 541
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 542
    .local v5, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v12, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 543
    add-int/lit8 v19, v9, 0x1

    move/from16 v0, v19

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 544
    iput v11, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 545
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object v1, v5

    iput-boolean v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 546
    new-instance v14, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 547
    .local v14, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v5, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 549
    const/4 v13, 0x0

    .line 550
    .local v13, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    move v1, v9

    if-le v0, v1, :cond_3

    .line 551
    move-object/from16 v0, p4

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .line 554
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    const/4 v6, 0x0

    .line 555
    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    move v1, v9

    if-le v0, v1, :cond_4

    .line 556
    move-object/from16 v0, p5

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 559
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_4
    new-instance v18, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 560
    .local v18, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 561
    move-object v0, v14

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 564
    const-string v19, "ro.cdma.support.latin.sms"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 565
    .local v16, supportLatinSMS:Z
    const/16 v19, 0x1

    move v0, v8

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 570
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 578
    :goto_2
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 584
    if-eqz v6, :cond_7

    const/16 v19, 0x1

    sub-int v19, v11, v19

    move v0, v9

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 587
    .local v15, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .line 589
    .local v10, map:Ljava/util/HashMap;
    sget-object v19, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object v3, v6

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v17

    .line 591
    .local v17, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 540
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 572
    .end local v10           #map:Ljava/util/HashMap;
    .end local v15           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v17           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_5
    if-eqz v16, :cond_6

    .line 573
    const/16 v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_2

    .line 575
    :cond_6
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_2

    .line 584
    :cond_7
    const/16 v19, 0x0

    goto :goto_3

    .line 593
    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    .end local v14           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v16           #supportLatinSMS:Z
    .end local v18           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_8
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .parameter "tracker"

    .prologue
    .line 614
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSms: tracker is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSmsImmediately(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 624
    :cond_0
    return-void
.end method

.method protected sendSmsImmediately(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 8
    .parameter "tracker"

    .prologue
    const-string v7, "CDMA"

    .line 633
    if-nez p1, :cond_0

    .line 634
    const/4 v5, 0x0

    .line 650
    :goto_0
    return v5

    .line 637
    :cond_0
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 640
    .local v1, map:Ljava/util/HashMap;
    const-string v5, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendSmsImmediately: tracker is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v5, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendSmsImmediately: mTrackerList size is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string/jumbo v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 645
    .local v4, smsc:[B
    const-string v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 647
    .local v2, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 649
    .local v3, reply:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    .line 650
    const/4 v5, 0x1

    goto :goto_0
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 596
    const-string v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 599
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :cond_0
    :goto_0
    const-string v0, "CDMA"

    const-string v1, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :goto_1
    return-void

    .line 607
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 600
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 506
    if-eqz p5, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {p2, p1, p3, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 509
    .local v1, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 510
    .local v0, map:Ljava/util/HashMap;
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v0, p4, p5, v3}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 512
    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 513
    return-void

    .line 506
    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected updateIccAvailability()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "CDMA"

    .line 701
    iget-object v1, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccManager;->getCurrentApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 704
    .local v0, newApplication:Lcom/android/internal/telephony/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v1, v0, :cond_2

    .line 705
    iget-object v1, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 706
    const-string v1, "CDMA"

    const-string v1, "Removing stale 3gpp2 Application."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v1, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v1, :cond_0

    .line 708
    iput-object v3, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 710
    :cond_0
    iput-object v3, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 712
    :cond_1
    if-eqz v0, :cond_2

    .line 713
    const-string v1, "CDMA"

    const-string v1, "New 3gpp2 application found"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iput-object v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 715
    iget-object v1, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 718
    :cond_2
    return-void
.end method

.method updateMessageWaitingIndicator(I)V
    .locals 1
    .parameter "mwi"

    .prologue
    .line 731
    if-gez p1, :cond_1

    .line 732
    const/4 p1, -0x1

    .line 739
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 741
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->storeVoiceMailCount()V

    .line 742
    return-void

    .line 733
    :cond_1
    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 736
    const/16 p1, 0x63

    goto :goto_0
.end method

.method updateMessageWaitingIndicator(Z)V
    .locals 1
    .parameter "mwi"

    .prologue
    .line 722
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 723
    return-void

    .line 722
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
