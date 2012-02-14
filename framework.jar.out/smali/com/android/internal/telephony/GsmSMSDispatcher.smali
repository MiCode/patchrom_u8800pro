.class final Lcom/android/internal/telephony/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "phone"
    .parameter "cm"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 696
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 63
    const-string v0, "GSM"

    const-string v1, "Register for EVENT_NEW_SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewSMS(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/BaseCommands;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method private resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 563
    packed-switch p1, :pswitch_data_0

    .line 572
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 567
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 569
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 563
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 27
    .parameter "destinationAddress"
    .parameter "scAddress"
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
    .line 407
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    sget-object v5, Lcom/android/internal/telephony/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v25

    .line 409
    .local v25, ss:I
    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->isIms()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v25, :cond_1

    .line 410
    const/16 v17, 0x0

    .local v17, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, count:I
    :goto_0
    move/from16 v0, v17

    move v1, v14

    if-ge v0, v1, :cond_a

    .line 411
    const/16 v22, 0x0

    .line 412
    .local v22, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 413
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    check-cast v22, Landroid/app/PendingIntent;

    .line 415
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v22

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v26

    .line 417
    .local v26, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 410
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 422
    .end local v14           #count:I
    .end local v17           #i:I
    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    .end local v26           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 423
    .local v21, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 424
    .local v19, msgCount:I
    const/4 v10, 0x0

    .line 426
    .local v10, encoding:I
    sput v19, Lcom/android/internal/telephony/GsmSMSDispatcher;->mRemainingMessages:I

    .line 428
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 429
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v16

    .line 430
    .local v16, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move v5, v0

    if-eq v10, v5, :cond_3

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    if-ne v10, v5, :cond_3

    .line 433
    :cond_2
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move v10, v0

    .line 428
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 439
    .end local v16           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsCodingNational()Ljava/lang/String;

    move-result-object v23

    .line 442
    .local v23, smsCodingNational:Ljava/lang/String;
    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 443
    new-instance v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v13}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 444
    .local v13, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v21

    move-object v1, v13

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 445
    add-int/lit8 v5, v17, 0x1

    iput v5, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 446
    move/from16 v0, v19

    move-object v1, v13

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 447
    const/4 v5, 0x0

    iput-boolean v5, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 448
    new-instance v24, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 449
    .local v24, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v13

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 451
    const/16 v22, 0x0

    .line 452
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 453
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    check-cast v22, Landroid/app/PendingIntent;

    .line 456
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    :cond_5
    const/4 v15, 0x0

    .line 457
    .local v15, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    .line 458
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v15, Landroid/app/PendingIntent;

    .line 463
    .restart local v15       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6
    const/16 v20, 0x0

    .line 465
    .local v20, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const-string v5, "0"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 467
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v15, :cond_7

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, v24

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v20

    .line 478
    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v18

    .line 480
    .local v18, map:Ljava/util/HashMap;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    move-object v3, v15

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v26

    .line 482
    .restart local v26       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 442
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 467
    .end local v18           #map:Ljava/util/HashMap;
    .end local v26           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 470
    :cond_8
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v15, :cond_9

    const/4 v5, 0x1

    move v8, v5

    :goto_5
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v11, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v12, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v20

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    move v8, v5

    goto :goto_5

    .line 484
    .end local v10           #encoding:I
    .end local v13           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v19           #msgCount:I
    .end local v20           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v21           #refNumber:I
    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    .end local v23           #smsCodingNational:Ljava/lang/String;
    .end local v24           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_a
    return-void
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 560
    :cond_0
    return-void
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 10
    .parameter "smsb"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "GSM"

    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v5, 0x2

    .line 179
    :goto_0
    return v5

    .line 121
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    move-object v3, v0

    .line 122
    .local v3, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v1, 0x0

    .line 124
    .local v1, handled:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    const-string v5, "GSM"

    const-string v5, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 128
    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 133
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 134
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v1

    .line 136
    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_2
    :goto_2
    if-eqz v1, :cond_6

    move v5, v7

    .line 147
    goto :goto_0

    :cond_3
    move v6, v8

    .line 136
    goto :goto_1

    .line 138
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 139
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/GsmSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 140
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v1

    .line 142
    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move v6, v8

    goto :goto_3

    .line 150
    :cond_6
    sget-boolean v5, Lcom/android/internal/telephony/GsmSMSDispatcher;->mStorageAvailable:Z

    if-nez v5, :cond_7

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v5

    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v5, v6, :cond_7

    .line 153
    const/4 v5, 0x3

    goto :goto_0

    .line 156
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    .line 158
    .local v4, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v4, :cond_8

    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v5, :cond_b

    .line 160
    :cond_8
    new-array v2, v7, [[B

    .line 161
    .local v2, pdus:[[B
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v5

    aput-object v5, v2, v8

    .line 163
    if-eqz v4, :cond_a

    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v5, :cond_a

    .line 164
    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v6, 0xb84

    if-ne v5, v6, :cond_9

    .line 166
    iget-object v5, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 170
    :cond_9
    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 176
    :goto_4
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 174
    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_4

    .line 179
    .end local v2           #pdus:[[B
    :cond_b
    iget-object v5, v4, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/internal/telephony/GsmSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v5

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewSMS(Landroid/os/Handler;)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 74
    return-void
.end method

.method protected getEncoding()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method protected handleBroadcastSms(Landroid/os/AsyncResult;)V
    .locals 23
    .parameter "ar"

    .prologue
    .line 701
    const/16 v17, 0x0

    :try_start_0
    check-cast v17, [[B

    .line 702
    .local v17, pdus:[[B
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object/from16 v19, v0

    .line 705
    .local v19, receivedPdu:[B
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move v0, v11

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 706
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "SMS CB pdu data: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 707
    .local v20, sb:Ljava/lang/StringBuilder;
    move v15, v11

    .local v15, j:I
    :goto_1
    add-int/lit8 v21, v11, 0x8

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 708
    aget-byte v21, v19, v15

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    .line 709
    .local v5, b:I
    const/16 v21, 0x10

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 710
    const-string v21, "0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 714
    .end local v5           #b:I
    :cond_1
    const-string v21, "GSM"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    add-int/lit8 v11, v11, 0x8

    goto :goto_0

    .line 718
    .end local v15           #j:I
    .end local v20           #sb:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v10, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 719
    .local v10, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v21, "gsm.operator.numeric"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 720
    .local v18, plmn:Ljava/lang/String;
    sget-object v21, Lcom/android/internal/telephony/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 721
    .local v6, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v16

    .line 722
    .local v16, lac:I
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v7

    .line 724
    .local v7, cid:I
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 726
    new-instance v8, Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;

    move-object v0, v8

    move-object v1, v10

    move-object/from16 v2, v18

    move/from16 v3, v16

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Ljava/lang/String;II)V

    .line 729
    .local v8, concatInfo:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pdus:[[B
    check-cast v17, [[B

    .line 731
    .restart local v17       #pdus:[[B
    if-nez v17, :cond_3

    .line 734
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    :cond_3
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    aput-object v19, v17, v21

    .line 742
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move v0, v11

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 743
    aget-object v21, v17, v11

    if-nez v21, :cond_5

    .line 779
    .end local v6           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #cid:I
    .end local v8           #concatInfo:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v10           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v11           #i:I
    .end local v16           #lac:I
    .end local v17           #pdus:[[B
    .end local v18           #plmn:Ljava/lang/String;
    .end local v19           #receivedPdu:[B
    :cond_4
    :goto_3
    return-void

    .line 742
    .restart local v6       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #cid:I
    .restart local v8       #concatInfo:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    .restart local v10       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11       #i:I
    .restart local v16       #lac:I
    .restart local v17       #pdus:[[B
    .restart local v18       #plmn:Ljava/lang/String;
    .restart local v19       #receivedPdu:[B
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 750
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .end local v8           #concatInfo:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    :goto_4
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage(I)Z

    move-result v13

    .line 761
    .local v13, isEmergencyMessage:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatchBroadcastPdus([[BZ)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 769
    .local v14, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    :cond_7
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 770
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;

    .line 772
    .local v12, info:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object v0, v12

    move-object/from16 v1, v18

    move/from16 v2, v16

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v21

    if-nez v21, :cond_7

    .line 773
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 776
    .end local v6           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #cid:I
    .end local v10           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v11           #i:I
    .end local v12           #info:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v13           #isEmergencyMessage:Z
    .end local v14           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    .end local v16           #lac:I
    .end local v17           #pdus:[[B
    .end local v18           #plmn:Ljava/lang/String;
    .end local v19           #receivedPdu:[B
    :catch_0
    move-exception v21

    move-object/from16 v9, v21

    .line 777
    .local v9, e:Ljava/lang/RuntimeException;
    const-string v21, "GSM"

    const-string v22, "Error in decoding SMS CB pdu"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 753
    .end local v9           #e:Ljava/lang/RuntimeException;
    .restart local v6       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #cid:I
    .restart local v10       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11       #i:I
    .restart local v16       #lac:I
    .restart local v17       #pdus:[[B
    .restart local v18       #plmn:Ljava/lang/String;
    .restart local v19       #receivedPdu:[B
    :cond_8
    const/16 v21, 0x1

    :try_start_1
    move/from16 v0, v21

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    .line 754
    const/16 v21, 0x0

    aput-object v19, v17, v21
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v11, 0x1

    .line 84
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 85
    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 87
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v6, :cond_2

    .line 88
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 89
    .local v7, tpStatus:I
    iget v4, v6, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 90
    .local v4, messageRef:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 91
    iget-object v9, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 92
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_3

    .line 94
    const/16 v9, 0x40

    if-ge v7, v9, :cond_0

    const/16 v9, 0x20

    if-ge v7, v9, :cond_1

    .line 95
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 97
    :cond_1
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 98
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v1, fillIn:Landroid/content/Intent;
    const-string v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 100
    const-string v9, "encoding"

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getEncoding()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0           #count:I
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v2           #i:I
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #messageRef:I
    .end local v7           #tpStatus:I
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {p0, v11, v11, v9}, Lcom/android/internal/telephony/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 111
    return-void

    .line 90
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v4       #messageRef:I
    .restart local v7       #tpStatus:I
    .restart local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    goto :goto_1
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
    .line 191
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v5

    .local v5, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 194
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 195
    .local v6, map:Ljava/util/HashMap;
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v6, p5, p6, v0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .line 197
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 198
    return-void

    .line 191
    .end local v5           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
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
    .line 234
    .local p4, data:Ljava/util/List;,"Ljava/util/List<[B>;"
    .local p5, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 235
    .local v17, refNumber:I
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v15

    .line 237
    .local v15, msgCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v15, :cond_3

    .line 238
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 239
    .local v11, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v17

    move-object v1, v11

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 240
    add-int/lit8 v5, v13, 0x1

    iput v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 241
    iput v15, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 243
    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 244
    new-instance v16, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 245
    .local v16, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    move/from16 v0, p3

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 246
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 247
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 249
    new-instance v19, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 250
    .local v19, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v11

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 251
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 253
    const/16 v18, 0x0

    .line 254
    .local v18, sentIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v13, :cond_0

    .line 255
    move-object/from16 v0, p5

    move v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #sentIntent:Landroid/app/PendingIntent;
    check-cast v18, Landroid/app/PendingIntent;

    .line 258
    .restart local v18       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    const/4 v12, 0x0

    .line 259
    .local v12, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p6, :cond_1

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v13, :cond_1

    .line 260
    move-object/from16 v0, p6

    move v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v12, Landroid/app/PendingIntent;

    .line 263
    .restart local v12       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_1
    const/4 v10, 0x0

    .line 265
    .local v10, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
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

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v10

    .line 269
    move-object/from16 v0, p4

    move v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v14

    .line 270
    .local v14, map:Ljava/util/HashMap;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v18

    move-object v3, v12

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v20

    .line 272
    .local v20, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 237
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 265
    .end local v14           #map:Ljava/util/HashMap;
    .end local v20           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 274
    .end local v10           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v16           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    .end local v18           #sentIntent:Landroid/app/PendingIntent;
    .end local v19           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_3
    return-void
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    .line 540
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 542
    .local v6, map:Ljava/util/HashMap;
    const-string v0, "destination"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 543
    .local v1, destinationAddress:Ljava/lang/String;
    const-string v0, "scaddress"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 545
    .local v2, scAddress:Ljava/lang/String;
    const-string v0, "parts"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 546
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "sentIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 547
    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    .line 549
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 552
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 27
    .parameter "destinationAddress"
    .parameter "scAddress"
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
    .line 293
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 294
    .local v21, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 295
    .local v19, msgCount:I
    const/4 v10, 0x0

    .line 297
    .local v10, encoding:I
    sput v19, Lcom/android/internal/telephony/GsmSMSDispatcher;->mRemainingMessages:I

    .line 301
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsCodingNational()Ljava/lang/String;

    move-result-object v24

    .line 304
    .local v24, smsCodingNational:Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 307
    const/16 v16, 0x0

    .line 308
    .local v16, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/4 v5, 0x4

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 309
    .local v22, ret:[I
    const/4 v13, 0x0

    .line 311
    .local v13, codeUnitSize:I
    const-string v5, "0"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 313
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v16

    .line 314
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move v13, v0

    .line 320
    :goto_1
    if-eq v10, v13, :cond_1

    if-eqz v10, :cond_0

    const/4 v5, 0x1

    if-ne v10, v5, :cond_1

    .line 323
    :cond_0
    move v10, v13

    .line 304
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 316
    :cond_2
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthEx(Ljava/lang/CharSequence;Z)[I

    move-result-object v22

    .line 318
    const/4 v5, 0x3

    aget v13, v22, v5

    goto :goto_1

    .line 329
    .end local v13           #codeUnitSize:I
    .end local v16           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v22           #ret:[I
    :cond_3
    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 330
    new-instance v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 331
    .local v14, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v21

    move-object v1, v14

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 332
    add-int/lit8 v5, v17, 0x1

    iput v5, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 333
    move/from16 v0, v19

    move-object v1, v14

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 340
    const/4 v5, 0x1

    iput-boolean v5, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 341
    new-instance v25, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v25 .. v25}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 342
    .local v25, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v14

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 344
    const/16 v23, 0x0

    .line 345
    .local v23, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 346
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    check-cast v23, Landroid/app/PendingIntent;

    .line 349
    .restart local v23       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v15, 0x0

    .line 350
    .local v15, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 351
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v15, Landroid/app/PendingIntent;

    .line 356
    .restart local v15       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    const/16 v20, 0x0

    .line 358
    .local v20, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const-string v5, "0"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 360
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v15, :cond_6

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, v25

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v20

    .line 369
    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v18

    .line 371
    .local v18, map:Ljava/util/HashMap;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move-object v3, v15

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v26

    .line 373
    .local v26, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 329
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 360
    .end local v18           #map:Ljava/util/HashMap;
    .end local v26           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 363
    :cond_7
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v15, :cond_8

    const/4 v5, 0x1

    move v8, v5

    :goto_5
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v11, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v12, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v20

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    move v8, v5

    goto :goto_5

    .line 375
    .end local v14           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v15           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v20           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    .end local v25           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_9
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .parameter "tracker"

    .prologue
    .line 490
    const-string v0, "GSM"

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

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendSmsImmediately(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 500
    :cond_0
    return-void
.end method

.method protected sendSmsImmediately(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 8
    .parameter "tracker"

    .prologue
    const-string v7, "GSM"

    .line 509
    if-nez p1, :cond_0

    .line 510
    const/4 v5, 0x0

    .line 526
    :goto_0
    return v5

    .line 513
    :cond_0
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 516
    .local v1, map:Ljava/util/HashMap;
    const-string v5, "GSM"

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

    .line 517
    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendSmsImmediately: mTrackerList size is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mTrackerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string/jumbo v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 521
    .local v4, smsc:[B
    const-string v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 523
    .local v2, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 524
    .local v3, reply:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 526
    const/4 v5, 0x1

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 279
    if-eqz p5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 282
    .local v1, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 283
    .local v0, map:Ljava/util/HashMap;
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v0, p4, p5, v3}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 285
    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 286
    return-void

    .line 279
    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected updateIccAvailability()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "GSM"

    .line 577
    iget-object v1, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccManager;->getCurrentApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 580
    .local v0, newApplication:Lcom/android/internal/telephony/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v1, v0, :cond_2

    .line 581
    iget-object v1, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 582
    const-string v1, "GSM"

    const-string v1, "Removing stale 3gpp Application."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v1, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UiccApplicationRecords;->unregisterForNewSms(Landroid/os/Handler;)V

    .line 585
    iput-object v3, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 587
    :cond_0
    iput-object v3, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 589
    :cond_1
    if-eqz v0, :cond_2

    .line 590
    const-string v1, "GSM"

    const-string v1, "New 3gpp application found"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iput-object v0, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 592
    iget-object v1, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 593
    iget-object v1, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/16 v2, 0x11

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/UiccApplicationRecords;->registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 596
    :cond_2
    return-void
.end method

.method updateMessageWaitingIndicator(I)V
    .locals 3
    .parameter "mwi"

    .prologue
    .line 601
    if-gez p1, :cond_1

    .line 602
    const/4 p1, -0x1

    .line 609
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 611
    iget-object v1, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v1, :cond_2

    .line 612
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 613
    .local v0, onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/internal/telephony/UiccApplicationRecords;->setVoiceMessageWaiting(IILandroid/os/Message;)V

    .line 617
    .end local v0           #onComplete:Landroid/os/Message;
    :goto_1
    return-void

    .line 603
    :cond_1
    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    .line 606
    const/16 p1, 0xff

    goto :goto_0

    .line 615
    :cond_2
    const-string v1, "GSM"

    const-string v2, "SIM Records not found, MWI not updated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
