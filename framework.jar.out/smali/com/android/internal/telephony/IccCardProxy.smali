.class public Lcom/android/internal/telephony/IccCardProxy;
.super Landroid/os/Handler;
.source "IccCardProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/IccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardProxy$1;
    }
.end annotation


# static fields
.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xb

.field private static final EVENT_ICC_ABSENT:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field private static final EVENT_ICC_REFRESH:I = 0xd

.field private static final EVENT_IMSI_READY:I = 0x8

.field private static final EVENT_PERSO_LOCKED:I = 0x9

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_RECORDS_LOADED:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_IccCardProxy"


# instance fields
.field private cm:Lcom/android/internal/telephony/CommandsInterface;

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

.field private mApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mCdmaSubscriptionFromNv:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

.field private mFirstRun:Z

.field private mInitialized:Z

.field private mIsMultimodeCdmaPhone:Z

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mQuiteMode:Z

.field private mRadioOn:Z

.field private mUiccCard:Lcom/android/internal/telephony/UiccCard;

.field private mUiccManager:Lcom/android/internal/telephony/UiccManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "mContext"
    .parameter "cm"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 74
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 76
    sget-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    .line 77
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 78
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 79
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 80
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 81
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 83
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mFirstRun:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    .line 86
    const-string v0, "ro.config.multimode_cdma"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 99
    new-instance v0, Landroid/os/Registrant;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1, v2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Registrant;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 102
    invoke-static {p1, p2}, Lcom/android/internal/telephony/UiccManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    const/4 v0, 0x2

    invoke-interface {p2, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    invoke-interface {p2, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 106
    return-void
.end method

.method private broadcastPersoSubState(Lcom/android/internal/telephony/UiccConstants$PersoSubState;)V
    .locals 6
    .parameter "state"

    .prologue
    const-string v5, "This Personalization substate is not handled: "

    const-string v4, "Notify SIM  lock block."

    const-string v3, "LOCKED"

    const-string v2, "RIL_IccCardProxy"

    .line 729
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 831
    :pswitch_0
    const-string v0, "RIL_IccCardProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This Personalization substate is not handled: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :goto_0
    :pswitch_1
    return-void

    .line 735
    :pswitch_2
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM network locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v0, "LOCKED"

    const-string v0, "SIM NETWORK"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 740
    :pswitch_3
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM network Subset locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string v0, "LOCKED"

    const-string v0, "SIM NETWORK SUBSET"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :pswitch_4
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM Corporate locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v0, "LOCKED"

    const-string v0, "SIM CORPORATE"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 750
    :pswitch_5
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM Service Provider locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-string v0, "LOCKED"

    const-string v0, "SIM SERVICE PROVIDER"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 755
    :pswitch_6
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM SIM locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const-string v0, "LOCKED"

    const-string v0, "SIM SIM"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 761
    :pswitch_7
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM  lock block."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v0, "LOCKED"

    const-string v0, "SIM LOCK BLOCK"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :pswitch_8
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM  lock block."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string v0, "LOCKED"

    const-string v0, "SIM LOCK NETWORK SUBSET BLOCK"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :pswitch_9
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM  lock block."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v0, "LOCKED"

    const-string v0, "SIM LOCK CORPORATE BLOCK"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :pswitch_a
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify SIM  lock block."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const-string v0, "LOCKED"

    const-string v0, "SIM LOCK  ERVICE PROVIDERBLOCK"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 792
    :pswitch_b
    const-string v0, "RIL_IccCardProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This Personalization substate is not handled: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 795
    :pswitch_c
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM network1 locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const-string v0, "LOCKED"

    const-string v0, "RUIM NETWORK1"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 800
    :pswitch_d
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM network2 locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const-string v0, "LOCKED"

    const-string v0, "RUIM NETWORK2"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 805
    :pswitch_e
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM hrpd locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const-string v0, "LOCKED"

    const-string v0, "RUIM HRPD"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 810
    :pswitch_f
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM Corporate locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const-string v0, "LOCKED"

    const-string v0, "RUIM CORPORATE"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 815
    :pswitch_10
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM Service Provider locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v0, "LOCKED"

    const-string v0, "RUIM SERVICE PROVIDER"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 820
    :pswitch_11
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Notify RUIM RUIM locked."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v0, "LOCKED"

    const-string v0, "RUIM RUIM"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 729
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
    .end packed-switch
.end method

.method private handleCdmaSubscriptionSource()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "RIL_IccCardProxy"

    .line 842
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v1

    .line 843
    .local v1, newSubscriptionSource:I
    if-ne v1, v4, :cond_1

    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    .line 844
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    if-nez v2, :cond_2

    move v0, v4

    .line 846
    .local v0, newQuiteMode:Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    if-nez v2, :cond_0

    if-ne v0, v4, :cond_0

    .line 849
    const-string v2, "RIL_IccCardProxy"

    const-string v2, "Switching to QuiteMode."

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-string v2, "READY"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    .line 853
    const-string v2, "RIL_IccCardProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuiteMode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (app_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nv: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " multimode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 856
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->sendMessage(Landroid/os/Message;)Z

    .line 857
    return-void

    .end local v0           #newQuiteMode:Z
    :cond_1
    move v2, v5

    .line 843
    goto :goto_0

    :cond_2
    move v0, v5

    .line 844
    goto :goto_1
.end method

.method private processLockedState()V
    .locals 4

    .prologue
    const-string v3, "LOCKED"

    .line 397
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-nez v1, :cond_0

    .line 411
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v0

    .line 402
    .local v0, appState:Lcom/android/internal/telephony/UiccConstants$AppState;
    sget-object v1, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 404
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 405
    const-string v1, "LOCKED"

    const-string v1, "PIN"

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :pswitch_1
    const-string v1, "LOCKED"

    const-string v1, "PUK"

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerUiccCardEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForPersoSubstate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccApplicationRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccApplicationRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/16 v1, 0xd

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccApplicationRecords;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 331
    return-void
.end method

.method private unregisterUiccCardEvents()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForPersoSubstate(Landroid/os/Handler;)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccApplicationRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccApplicationRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccApplicationRecords;->unRegisterForIccRefresh(Landroid/os/Handler;)V

    .line 319
    return-void
.end method

.method private updateQuiteMode()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "RIL_IccCardProxy"

    .line 142
    const-string v0, "RIL_IccCardProxy"

    const-string v0, "Updating quite mode"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v1, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v0, v1, :cond_0

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    .line 146
    const-string v0, "RIL_IccCardProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3GPP subscription -> QuiteMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->sendMessage(Landroid/os/Message;)Z

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 153
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->handleCdmaSubscriptionSource()V

    goto :goto_0
.end method

.method private updateStateProperty()V
    .locals 2

    .prologue
    const-string v1, "gsm.sim.state"

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-nez v0, :cond_0

    .line 335
    const-string v0, "gsm.sim.state"

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccConstants$CardState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 338
    :cond_0
    const-string v0, "gsm.sim.state"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "value"
    .parameter "reason"

    .prologue
    const-string v6, "android.permission.READ_PHONE_STATE"

    const-string v5, "RIL_IccCardProxy"

    const-string v4, " reason "

    .line 345
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuiteMode:Z

    if-eqz v2, :cond_1

    .line 346
    const-string v2, "RIL_IccCardProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuiteMode: NOT Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 353
    const-string v2, "phoneName"

    const-string v3, "Phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string/jumbo v2, "ss"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v2, "reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 361
    .local v0, currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    const-string v2, "ABSENT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->is_airpline_mode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    const-string v2, "RIL_IccCardProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v6}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_2
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v6}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    if-eqz p3, :cond_0

    .line 378
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 380
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 386
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    if-eqz p3, :cond_0

    .line 389
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 391
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public closeLogicalChannel(ILandroid/os/Message;)V
    .locals 2
    .parameter "channel"
    .parameter "onComplete"

    .prologue
    .line 884
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 885
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->closeLogicalChannel(ILandroid/os/Message;)V

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    if-eqz p2, :cond_0

    .line 887
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 888
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 889
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 115
    return-void
.end method

.method public exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/UiccCardApplication;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    if-eqz p8, :cond_0

    .line 865
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v0, "ICC card is absent."

    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 866
    .local v9, e:Ljava/lang/Exception;
    invoke-static/range {p8 .. p8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 867
    invoke-virtual/range {p8 .. p8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public getIccCardState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public getIccFdnAvailable()Z
    .locals 2

    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFdnAvailable()Z

    move-result v1

    move v0, v1

    .line 543
    .local v0, retValue:Z
    :goto_0
    return v0

    .line 542
    .end local v0           #retValue:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    .prologue
    .line 547
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFdnEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 548
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 547
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccLockEnabled()Z
    .locals 2

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 554
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 553
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getIccPin1RetryCount()I
    .locals 2

    .prologue
    .line 558
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin1RetryCount()I

    move-result v1

    move v0, v1

    .line 559
    .local v0, retValue:I
    :goto_0
    return v0

    .line 558
    .end local v0           #retValue:I
    :cond_0
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getIccPin2Blocked()Z
    .locals 2

    .prologue
    .line 564
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 565
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 564
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPin2RetryCount()I
    .locals 2

    .prologue
    .line 569
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin2RetryCount()I

    move-result v1

    move v0, v1

    .line 570
    .local v0, retValue:I
    :goto_0
    return v0

    .line 569
    .end local v0           #retValue:I
    :cond_0
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getIccPuk2Blocked()Z
    .locals 2

    .prologue
    .line 575
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPuk2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 576
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 575
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .locals 6

    .prologue
    .line 443
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 444
    .local v3, retState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    .line 445
    .local v1, cardState:Lcom/android/internal/telephony/UiccConstants$CardState;
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 446
    .local v0, appState:Lcom/android/internal/telephony/UiccConstants$AppState;
    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 448
    .local v2, persoState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v4, :cond_0

    .line 449
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v0

    .line 450
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    .line 451
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getPersonalizationState()Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    move-result-object v2

    .line 454
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$CardState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$CardState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 538
    :goto_0
    return-object v3

    .line 456
    :pswitch_0
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .line 457
    goto :goto_0

    .line 459
    :pswitch_1
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    .line 460
    goto :goto_0

    .line 462
    :pswitch_2
    sget-object v4, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 471
    :pswitch_3
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .line 472
    goto :goto_0

    .line 465
    :pswitch_4
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 466
    goto :goto_0

    .line 468
    :pswitch_5
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .line 469
    goto :goto_0

    .line 474
    :pswitch_6
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .line 475
    goto :goto_0

    .line 477
    :pswitch_7
    sget-object v4, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    goto :goto_0

    .line 480
    :pswitch_8
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 481
    goto :goto_0

    .line 484
    :pswitch_9
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 485
    goto :goto_0

    .line 488
    :pswitch_a
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 489
    goto :goto_0

    .line 492
    :pswitch_b
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 493
    goto :goto_0

    .line 496
    :pswitch_c
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 497
    goto :goto_0

    .line 500
    :pswitch_d
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 501
    goto :goto_0

    .line 504
    :pswitch_e
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 505
    goto :goto_0

    .line 508
    :pswitch_f
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 509
    goto :goto_0

    .line 512
    :pswitch_10
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 513
    goto :goto_0

    .line 516
    :pswitch_11
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 517
    goto :goto_0

    .line 520
    :pswitch_12
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 521
    goto :goto_0

    .line 524
    :pswitch_13
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 525
    goto :goto_0

    .line 528
    :pswitch_14
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 534
    :pswitch_15
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 462
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_15
    .end packed-switch

    .line 477
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const-string v3, "RIL_IccCardProxy"

    .line 158
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 229
    :pswitch_0
    const-string v1, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message with number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 160
    :pswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 163
    const-string v1, "NOT_READY"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateStateProperty()V

    goto :goto_0

    .line 168
    :pswitch_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 169
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-nez v1, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuiteMode()V

    goto :goto_0

    .line 174
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateIccAvailability()V

    .line 176
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateStateProperty()V

    goto :goto_0

    .line 180
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 188
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->processLockedState()V

    goto :goto_0

    .line 191
    :pswitch_6
    const-string v1, "READY"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :pswitch_7
    const-string v1, "LOADED"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :pswitch_8
    const-string v1, "IMSI"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :pswitch_9
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getPersonalizationState()Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    move-result-object v0

    .line 204
    .local v0, subState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-ne v0, v1, :cond_2

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 215
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastPersoSubState(Lcom/android/internal/telephony/UiccConstants$PersoSubState;)V

    goto :goto_0

    .line 220
    .end local v0           #subState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    :pswitch_a
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuiteMode()V

    goto :goto_0

    .line 224
    :pswitch_b
    const-string v1, "RIL_IccCardProxy"

    const-string v1, "handleMessage get message EVENT_ICC_REFRESH"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v1, "SIM_REFRESH"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public hasIccCard()Z
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v0, v1, :cond_0

    .line 586
    const/4 v0, 0x1

    .line 588
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 593
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 592
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isCardFaulty()Z
    .locals 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccManager;->getIccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    .line 237
    .local v0, card:Lcom/android/internal/telephony/UiccCard;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$CardState;->ERROR:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v1, v2, :cond_0

    .line 238
    const-string v1, "RIL_IccCardProxy"

    const-string v2, "Card is faulty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v1, 0x1

    .line 242
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "AID"
    .parameter "onComplete"

    .prologue
    .line 873
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 874
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    if-eqz p2, :cond_0

    .line 876
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 877
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 878
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 600
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 602
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 604
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 605
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 607
    :cond_0
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 634
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 636
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 641
    :cond_0
    return-void
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 617
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 619
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 621
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 622
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 624
    :cond_0
    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .parameter "DefaultPhone"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 120
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 648
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 649
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    if-eqz p3, :cond_0

    .line 651
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 652
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 653
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 659
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 660
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    if-eqz p3, :cond_0

    .line 662
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 663
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 664
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceRadioTech(Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)V
    .locals 3
    .parameter "mVoiceRadioFamily"

    .prologue
    .line 128
    const-string v0, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting radio tech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    if-ne p1, v0, :cond_0

    .line 130
    sget-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    .line 134
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mFirstRun:Z

    .line 135
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuiteMode()V

    .line 136
    return-void

    .line 132
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    goto :goto_0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 674
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_1

    .line 675
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->cm:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v2

    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    if-eqz p2, :cond_0

    .line 677
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CommandsInterface is not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 678
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 679
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    if-eqz p2, :cond_0

    .line 688
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 689
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 690
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 696
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 697
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    if-eqz p2, :cond_0

    .line 699
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 700
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 701
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 707
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    if-eqz p3, :cond_0

    .line 710
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 711
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 712
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 719
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    if-eqz p3, :cond_0

    .line 721
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 722
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 723
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 611
    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 645
    return-void
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 628
    return-void
.end method

.method updateIccAvailability()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const-string v6, "CARD_IO_ERROR"

    const-string v5, "ABSENT"

    const-string v4, "NOT_READY"

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccManager;->getCurrentApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 249
    .local v0, newApplication:Lcom/android/internal/telephony/UiccCardApplication;
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mFirstRun:Z

    if-eqz v1, :cond_1

    .line 250
    if-nez v0, :cond_0

    .line 253
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    if-eqz v1, :cond_6

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->isCardFaulty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 255
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {p0, v6, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mFirstRun:Z

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-ne v1, v0, :cond_2

    if-nez v0, :cond_4

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_3

    .line 271
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForUnavailable(Landroid/os/Handler;)V

    .line 272
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterUiccCardEvents()V

    .line 273
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 274
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 275
    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 277
    :cond_3
    if-nez v0, :cond_b

    .line 278
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    if-eqz v1, :cond_a

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->isCardFaulty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 280
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {p0, v6, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_4
    :goto_1
    return-void

    .line 257
    :cond_5
    const-string v1, "ABSENT"

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_6
    const-string v1, "NOT_READY"

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccManager;->getIccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccManager;->getIccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-eq v1, v2, :cond_9

    .line 285
    :cond_8
    const-string v1, "NOT_READY"

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 287
    :cond_9
    const-string v1, "ABSENT"

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :cond_a
    const-string v1, "NOT_READY"

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 295
    :cond_b
    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 302
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 303
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 304
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->registerUiccCardEvents()V

    goto :goto_1
.end method
