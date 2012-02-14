.class final Lcom/android/internal/telephony/ImsSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "ImsSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RIL_IMS"


# instance fields
.field private mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "phone"
    .parameter "cm"

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 44
    new-instance v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/GsmSMSDispatcher;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 51
    const/16 v0, 0xf

    invoke-virtual {p0, p0, v0, v2}, Lcom/android/internal/telephony/ImsSMSDispatcher;->registerSendRetry(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method private updateImsInfo(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "RIL_IMS"

    .line 107
    iget-object p0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, [I

    move-object v0, p0

    check-cast v0, [I

    move-object v2, v0

    .line 108
    .local v2, responseArray:[I
    aget v3, v2, v4

    if-ne v3, v5, :cond_1

    .line 109
    const-string v3, "RIL_IMS"

    const-string v3, "IMS is registered!"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sput-boolean v5, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    .line 116
    :goto_0
    aget v3, v2, v5

    invoke-static {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->getRadioTechFamilyFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-result-object v1

    .line 118
    .local v1, newImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    sput-object v1, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    .line 119
    sget-object v3, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isUnknown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    const-string v3, "RIL_IMS"

    const-string v3, "IMS encoding was unknown!"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sput-boolean v4, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    .line 125
    :cond_0
    return-void

    .line 112
    .end local v1           #newImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    :cond_1
    const-string v3, "RIL_IMS"

    const-string v3, "IMS is NOT registered!"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sput-boolean v4, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    goto :goto_0
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 131
    const-string v0, "RIL_IMS"

    const-string v1, "acknowledgeLastIncomingSms should never be called from here!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 2
    .parameter "sms"

    .prologue
    .line 137
    const-string v0, "RIL_IMS"

    const-string v1, "dispatchMessage should never be called from here!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x2

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsFull(Landroid/os/Handler;)V

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 61
    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->unregisterSendRetry(Landroid/os/Handler;)V

    .line 62
    return-void
.end method

.method protected getEncoding()I
    .locals 2

    .prologue
    .line 144
    const-string v0, "RIL_IMS"

    const-string v1, "getEncoding should never be called from here!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, -0x1

    return v0
.end method

.method protected getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->updateIccAvailability()V

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleBroadcastSms(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 327
    const-string v0, "RIL_IMS"

    const-string v1, "Error! Not implemented for IMS."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-string v3, "RIL_IMS"

    .line 71
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 75
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 84
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 85
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->updateImsInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 87
    :cond_0
    const-string v1, "RIL_IMS"

    const-string v1, "IMS State query failed!"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v1, "RIL_IMS"

    const-string v1, "EVENT_PROCESS_SEND_RETRY received"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 95
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 96
    const-string v1, "RIL_IMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception processing send retry request. Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 151
    const-string v0, "RIL_IMS"

    const-string v1, "handleStatusReport is a special GSM function, should never be called from here!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
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
    .line 172
    .local p4, data:Ljava/util/List;,"Ljava/util/List<[B>;"
    .local p5, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 185
    const-string v0, "RIL_IMS"

    const-string v1, "sendSms should never be called from here!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
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
    .line 192
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 16
    .parameter "tracker"

    .prologue
    .line 222
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object v9, v0

    .line 225
    .local v9, oldEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    const/4 v13, 0x2

    sget-object v14, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    if-ne v13, v14, :cond_1

    sget-object v13, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object v8, v13

    .line 231
    .local v8, newEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    :goto_0
    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isCdma()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isCdma()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 232
    const-string v13, "RIL_IMS"

    const-string v14, "old encoding matched new encoding (cdma)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 307
    .end local p0
    :cond_0
    :goto_1
    return-void

    .line 225
    .end local v8           #newEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    .restart local p0
    :cond_1
    sget-object v13, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object v8, v13

    goto :goto_0

    .line 236
    .restart local v8       #newEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    :cond_2
    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isGsm()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isGsm()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 237
    const-string v13, "RIL_IMS"

    const-string v14, "old encoding matched new encoding (gsm)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 243
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    move-object v7, v0

    .line 248
    .local v7, map:Ljava/util/HashMap;
    const-string v13, "scAddr"

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "destAddr"

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string/jumbo v13, "text"

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "data"

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "destPort"

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 252
    :cond_4
    const-string v13, "RIL_IMS"

    const-string v14, "sendRetrySms failed to re-encode per missing fields!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object v13, v0

    if-eqz v13, :cond_0

    .line 254
    const/4 v6, 0x1

    .line 257
    .local v6, error:I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v6, v15}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 258
    :catch_0
    move-exception v13

    goto :goto_1

    .line 262
    .end local v6           #error:I
    :cond_5
    const-string v13, "scAddr"

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 263
    .local v11, scAddr:Ljava/lang/String;
    const-string v13, "destAddr"

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 265
    .local v3, destAddr:Ljava/lang/String;
    const/4 v10, 0x0

    .line 266
    .local v10, pdu:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isCdma()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v13, v0

    move-object v5, v13

    .line 270
    .local v5, dispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    :goto_2
    const-string/jumbo v13, "text"

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 271
    const-string v13, "RIL_IMS"

    const-string/jumbo v14, "sms failed was text"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string/jumbo v13, "text"

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 274
    .local v12, text:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isCdma()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 275
    const-string v13, "RIL_IMS"

    const-string v14, "old encoding (gsm) ==> new encoding (cdma)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    move-object v13, v0

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    :goto_3
    const/4 v14, 0x0

    invoke-static {v11, v3, v12, v13, v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v10

    .line 302
    .end local v12           #text:Ljava/lang/String;
    .end local p0
    :cond_6
    :goto_4
    const-string/jumbo v13, "smsc"

    iget-object v14, v10, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v7, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v13, "pdu"

    iget-object v14, v10, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v7, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    move-object v0, v8

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    .line 306
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_1

    .line 266
    .end local v5           #dispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    .restart local p0
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v13, v0

    move-object v5, v13

    goto :goto_2

    .line 276
    .restart local v5       #dispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    .restart local v12       #text:Ljava/lang/String;
    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    .line 279
    :cond_9
    const-string v13, "RIL_IMS"

    const-string v14, "old encoding (cdma) ==> new encoding (gsm)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    move-object v13, v0

    if-eqz v13, :cond_a

    const/4 v13, 0x1

    :goto_5
    const/4 v14, 0x0

    invoke-static {v11, v3, v12, v13, v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v10

    goto :goto_4

    :cond_a
    const/4 v13, 0x0

    goto :goto_5

    .line 283
    .end local v12           #text:Ljava/lang/String;
    :cond_b
    const-string v13, "data"

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 284
    const-string v13, "RIL_IMS"

    const-string/jumbo v14, "sms failed was data"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v13, "data"

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    move-object/from16 v0, p0

    check-cast v0, [B

    move-object v2, v0

    .line 286
    .local v2, data:[B
    const-string v13, "destPort"

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 288
    .local v4, destPort:Ljava/lang/Integer;
    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isCdma()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 289
    const-string v13, "RIL_IMS"

    const-string v14, "old encoding (gsm) ==> new encoding (cdma)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    move-object v14, v0

    if-eqz v14, :cond_c

    const/4 v14, 0x1

    :goto_6
    invoke-static {v11, v3, v13, v2, v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v10

    goto :goto_4

    :cond_c
    const/4 v14, 0x0

    goto :goto_6

    .line 294
    :cond_d
    const-string v13, "RIL_IMS"

    const-string v14, "old encoding (cdma) ==> new encoding (gsm)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    move-object v14, v0

    if-eqz v14, :cond_e

    const/4 v14, 0x1

    :goto_7
    invoke-static {v11, v3, v13, v2, v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v10

    goto/16 :goto_4

    :cond_e
    const/4 v14, 0x0

    goto :goto_7
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 205
    const-string v0, "RIL_IMS"

    const-string v1, "sendSms should never be called from here!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 211
    const-string v0, "RIL_IMS"

    const-string v1, "sendText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 219
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected updateIccAvailability()V
    .locals 2

    .prologue
    .line 310
    const/4 v0, 0x2

    sget-object v1, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 313
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    goto :goto_0
.end method
