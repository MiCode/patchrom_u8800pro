.class public Lcom/android/internal/telephony/DataServiceStateTracker;
.super Landroid/os/Handler;
.source "DataServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataServiceStateTracker$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xf

.field private static final EVENT_DATA_NETWORK_STATE_CHANGED:I = 0x2

.field private static final EVENT_ICC_CHANGED:I = 0xa

.field private static final EVENT_NV_READY:I = 0x1b

.field private static final EVENT_POLL_STATE_REGISTRATION:I = 0x3

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field private static final EVENT_RESTRICTED_STATE_CHANGED:I = 0x14

.field private static final EVENT_RUIM_READY:I = 0x1a

.field private static final EVENT_RUIM_RECORDS_LOADED:I = 0x1d

.field private static final EVENT_SIM_READY:I = 0x19

.field private static final EVENT_SIM_RECORDS_LOADED:I = 0x1c

.field private static final LOG_TAG:Ljava/lang/String; = "DATA"

.field private static final Non_USANetworkWithUSAMCC:[Ljava/lang/String; = null

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field private static final REGISTRATION_DENIED_AUTH:Ljava/lang/String; = "Authentication Failure"

.field private static final REGISTRATION_DENIED_GEN:Ljava/lang/String; = "General"


# instance fields
.field private UseUSA_gsmroaming_cmp:Z

.field private cm:Lcom/android/internal/telephony/CommandsInterface;

.field m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

.field m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

.field private mCdmaRoaming:Z

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field public mCdmaSubscriptionSource:I

.field private mContext:Landroid/content/Context;

.field private mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

.field private mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

.field private mDataConnectionState:I

.field private mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

.field private mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

.field private mDataServiceStateRegistrants:Landroid/os/RegistrantList;

.field private mDct:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mGsmRoaming:Z

.field private mNewDataConnectionState:I

.field private mNewSS:Landroid/telephony/ServiceState;

.field private mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private mPollingContext:[I

.field private mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field private mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field private mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

.field private mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field private mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

.field mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

.field mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field private mSs:Landroid/telephony/ServiceState;

.field private mUiccManager:Lcom/android/internal/telephony/UiccManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "310470"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "310370"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "310032"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "310140"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "310250"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "310400"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "311170"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/DataServiceStateTracker;->Non_USANetworkWithUSAMCC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .parameter "dct"
    .parameter "context"
    .parameter "notifier"
    .parameter "ci"

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 53
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 54
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 55
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    .line 56
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    .line 57
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 58
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 59
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 60
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    .line 61
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    .line 106
    iput v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    .line 107
    iput v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 111
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    .line 112
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 113
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 116
    iput v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    .line 117
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 118
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaRoaming:Z

    .line 121
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->UseUSA_gsmroaming_cmp:Z

    .line 126
    iput-boolean v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mGsmRoaming:Z

    .line 132
    iput-object p1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 133
    iput-object p4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 134
    iput-object p2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    .line 135
    iput-object p3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2, v0}, Lcom/android/internal/telephony/UiccManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 140
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    .line 141
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 144
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p0, v4, v2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {p2, p4, v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Registrant;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 147
    new-instance v0, Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/RestrictedState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x14

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 160
    const-string v0, "ro.config.USA_gsmroaming_cmp"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->UseUSA_gsmroaming_cmp:Z

    .line 162
    return-void
.end method

.method private containsPlmn(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .parameter "plmn"
    .parameter "plmnArray"

    .prologue
    const/4 v5, 0x0

    .line 767
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v4, v5

    .line 777
    :goto_0
    return v4

    .line 771
    :cond_1
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 772
    .local v1, h:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 773
    const/4 v4, 0x1

    goto :goto_0

    .line 771
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #h:Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 777
    goto :goto_0
.end method

.method private handleCdmaSubscriptionSource()V
    .locals 2

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    .line 231
    .local v0, newSubscriptionSource:I
    iget v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    if-eq v0, v1, :cond_1

    .line 232
    iput v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    .line 233
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 235
    const/16 v1, 0x1b

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 237
    :cond_0
    const-string v1, "cdma subscription source changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    .line 239
    :cond_1
    return-void
.end method

.method private isAmericanNetwork(Ljava/lang/String;)Z
    .locals 4
    .parameter "plmn"

    .prologue
    .line 830
    const/4 v1, 0x1

    .line 831
    .local v1, isAmericanNetwork:Z
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 832
    .local v0, AmericanMCC:I
    const/16 v2, 0x136

    if-lt v0, v2, :cond_0

    const/16 v2, 0x13c

    if-gt v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataServiceStateTracker;->isNonUSAoperatorWithUSAMCC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 833
    :cond_0
    const/4 v1, 0x0

    .line 835
    :cond_1
    return v1
.end method

.method private isCdmaRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 9
    .parameter "cdmaRoaming"
    .parameter "s"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 666
    const-string v5, "gsm.sim.operator.alpha"

    const-string v6, "empty"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 672
    .local v4, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .line 675
    .local v3, onss:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v8

    .line 676
    .local v0, equalsOnsl:Z
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v8

    .line 678
    .local v1, equalsOnss:Z
    :goto_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    move v5, v8

    :goto_2
    return v5

    .end local v0           #equalsOnsl:Z
    .end local v1           #equalsOnss:Z
    :cond_0
    move v0, v7

    .line 675
    goto :goto_0

    .restart local v0       #equalsOnsl:Z
    :cond_1
    move v1, v7

    .line 676
    goto :goto_1

    .restart local v1       #equalsOnss:Z
    :cond_2
    move v5, v7

    .line 678
    goto :goto_2
.end method

.method private isGsmRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 13
    .parameter "gsmRoaming"
    .parameter "s"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 689
    const-string v8, "gsm.sim.operator.alpha"

    const-string v9, "empty"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 691
    .local v7, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .line 692
    .local v3, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    .line 694
    .local v4, onss:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v1, v12

    .line 695
    .local v1, equalsOnsl:Z
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v12

    .line 697
    .local v2, equalsOnss:Z
    :goto_1
    const-string v8, "gsm.sim.operator.numeric"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 699
    .local v6, simNumeric:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 701
    .local v5, operatorNumeric:Ljava/lang/String;
    const/4 v0, 0x1

    .line 703
    .local v0, equalsMcc:Z
    const/4 v8, 0x0

    const/4 v9, 0x3

    :try_start_0
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 708
    :goto_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    :cond_0
    move v8, v12

    :goto_3
    return v8

    .end local v0           #equalsMcc:Z
    .end local v1           #equalsOnsl:Z
    .end local v2           #equalsOnss:Z
    .end local v5           #operatorNumeric:Ljava/lang/String;
    .end local v6           #simNumeric:Ljava/lang/String;
    :cond_1
    move v1, v11

    .line 694
    goto :goto_0

    .restart local v1       #equalsOnsl:Z
    :cond_2
    move v2, v11

    .line 695
    goto :goto_1

    .restart local v0       #equalsMcc:Z
    .restart local v2       #equalsOnss:Z
    .restart local v5       #operatorNumeric:Ljava/lang/String;
    .restart local v6       #simNumeric:Ljava/lang/String;
    :cond_3
    move v8, v11

    .line 708
    goto :goto_3

    .line 705
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private isGsmRoaminginAmericannetwork(ZLandroid/telephony/ServiceState;)Z
    .locals 7
    .parameter "roaming"
    .parameter "ss"

    .prologue
    const/4 v6, 0x5

    const-string v5, "DATA"

    .line 804
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 805
    .local v2, operatorNumeric:Ljava/lang/String;
    move v0, p1

    .line 806
    .local v0, Gsm_Roaming:Z
    const/4 v1, 0x0

    .line 807
    .local v1, SimNumeric:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v3, :cond_0

    .line 808
    iget-object v3, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 809
    const-string v3, "DATA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ss.getOperatorNumeric()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SimNumeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_1

    .line 814
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->isAmericanNetwork(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->isAmericanNetwork(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 815
    const/4 v0, 0x0

    .line 819
    :goto_0
    const-string v3, "DATA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Whether the UE is roaming or not:roaming is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_1
    return v0

    .line 817
    :cond_2
    const-string v3, "DATA"

    const-string v3, "Using google java source."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNonUSAoperatorWithUSAMCC(Ljava/lang/String;)Z
    .locals 8
    .parameter "operatorNumeric"

    .prologue
    .line 788
    const-string v5, "DATA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "access in the judgement of roamimgoperatorNumeric = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v1, 0x0

    .line 790
    .local v1, bResult:Z
    sget-object v0, Lcom/android/internal/telephony/DataServiceStateTracker;->Non_USANetworkWithUSAMCC:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 791
    .local v4, mccmncCodes:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 792
    const/4 v1, 0x1

    .line 796
    .end local v4           #mccmncCodes:Ljava/lang/String;
    :cond_0
    return v1

    .line 790
    .restart local v4       #mccmncCodes:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static networkTypeToString(I)Ljava/lang/String;
    .locals 4
    .parameter "type"

    .prologue
    .line 389
    const-string/jumbo v0, "unknown"

    .line 391
    .local v0, ret:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 433
    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return-object v0

    .line 393
    :pswitch_0
    const-string v0, "GPRS"

    .line 394
    goto :goto_0

    .line 396
    :pswitch_1
    const-string v0, "EDGE"

    .line 397
    goto :goto_0

    .line 399
    :pswitch_2
    const-string v0, "UMTS"

    .line 400
    goto :goto_0

    .line 403
    :pswitch_3
    const-string v0, "CDMA"

    .line 404
    goto :goto_0

    .line 406
    :pswitch_4
    const-string v0, "CDMA - 1xRTT"

    .line 407
    goto :goto_0

    .line 409
    :pswitch_5
    const-string v0, "CDMA - EvDo rev. 0"

    .line 410
    goto :goto_0

    .line 412
    :pswitch_6
    const-string v0, "CDMA - EvDo rev. A"

    .line 413
    goto :goto_0

    .line 415
    :pswitch_7
    const-string v0, "HSDPA"

    .line 416
    goto :goto_0

    .line 418
    :pswitch_8
    const-string v0, "HSUPA"

    .line 419
    goto :goto_0

    .line 421
    :pswitch_9
    const-string v0, "HSPA"

    .line 422
    goto :goto_0

    .line 424
    :pswitch_a
    const-string v0, "CDMA - EvDo rev. B"

    .line 425
    goto :goto_0

    .line 427
    :pswitch_b
    const-string v0, "CDMA - EHRPD"

    .line 428
    goto :goto_0

    .line 430
    :pswitch_c
    const-string v0, "LTE"

    .line 431
    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .end packed-switch
.end method

.method private notifyDataServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "ss"

    .prologue
    const/4 v3, 0x0

    .line 505
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    .line 506
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, p1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 508
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 510
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object p0, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 511
    return-void
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    const/4 v6, 0x0

    .line 857
    new-instance v2, Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;-><init>()V

    .line 859
    .local v2, newRs:Lcom/android/internal/telephony/gsm/RestrictedState;
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 860
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v1, v0

    .line 861
    .local v1, ints:[I
    aget v3, v1, v6

    .line 863
    .local v3, state:I
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v4, v5, :cond_0

    .line 864
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->setPsRestricted(Z)V

    .line 868
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 869
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 870
    const/16 v4, 0x3e9

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DataServiceStateTracker;->setNotification(I)V

    .line 876
    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    .line 878
    .end local v1           #ints:[I
    .end local v3           #state:I
    :cond_2
    return-void

    .restart local v1       #ints:[I
    .restart local v3       #state:I
    :cond_3
    move v4, v6

    .line 864
    goto :goto_0

    .line 871
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 872
    iget-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 873
    const/16 v4, 0x3ea

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DataServiceStateTracker;->setNotification(I)V

    goto :goto_1
.end method

.method private pollState(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    const/4 v2, 0x0

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pollstate() : reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    aput v2, v0, v2

    .line 255
    sget-object v0, Lcom/android/internal/telephony/DataServiceStateTracker$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 273
    :goto_0
    return-void

    .line 257
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 258
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 263
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pollStateDone()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 441
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Poll ServiceState done: oldSS=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] newSS=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 443
    iget v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    if-eqz v8, :cond_8

    iget v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    if-nez v8, :cond_8

    move v1, v11

    .line 446
    .local v1, hasDataConnectionAttached:Z
    :goto_0
    iget v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    if-nez v8, :cond_9

    iget v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    if-eqz v8, :cond_9

    move v3, v11

    .line 449
    .local v3, hasDataConnectionDetached:Z
    :goto_1
    if-eqz v1, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne v8, v9, :cond_0

    .line 452
    const-string v8, "Data connection has attached when data technology is uknown."

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataServiceStateTracker;->logw(Ljava/lang/String;)V

    .line 455
    :cond_0
    iget v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    iget v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    if-eq v8, v9, :cond_a

    move v2, v11

    .line 456
    .local v2, hasDataConnectionChanged:Z
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v8, v9}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    move v0, v11

    .line 457
    .local v0, hasChanged:Z
    :goto_3
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v8

    if-eqz v8, :cond_c

    move v6, v11

    .line 458
    .local v6, hasRoamingOn:Z
    :goto_4
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v8

    if-nez v8, :cond_d

    move v5, v11

    .line 459
    .local v5, hasRoamingOff:Z
    :goto_5
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v9

    if-eq v8, v9, :cond_e

    move v4, v11

    .line 462
    .local v4, hasRadioTechChanged:Z
    :goto_6
    iget-object v7, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    .line 463
    .local v7, tss:Landroid/telephony/ServiceState;
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iput-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    .line 464
    iput-object v7, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 467
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 469
    iget v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    iput v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionState:I

    .line 471
    if-eqz v0, :cond_1

    .line 472
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/DataServiceStateTracker;->notifyDataServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 475
    :cond_1
    if-eqz v1, :cond_2

    .line 476
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 479
    :cond_2
    if-eqz v3, :cond_3

    .line 480
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 483
    :cond_3
    if-eqz v2, :cond_4

    .line 484
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v9, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    .line 487
    :cond_4
    if-eqz v4, :cond_5

    .line 488
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 490
    const-string v8, "gsm.network.type"

    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v9

    invoke-static {v9}, Lcom/android/internal/telephony/DataServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_5
    if-eqz v6, :cond_6

    .line 495
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 498
    :cond_6
    if-eqz v5, :cond_7

    .line 499
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 501
    :cond_7
    return-void

    .end local v0           #hasChanged:Z
    .end local v1           #hasDataConnectionAttached:Z
    .end local v2           #hasDataConnectionChanged:Z
    .end local v3           #hasDataConnectionDetached:Z
    .end local v4           #hasRadioTechChanged:Z
    .end local v5           #hasRoamingOff:Z
    .end local v6           #hasRoamingOn:Z
    .end local v7           #tss:Landroid/telephony/ServiceState;
    :cond_8
    move v1, v10

    .line 443
    goto/16 :goto_0

    .restart local v1       #hasDataConnectionAttached:Z
    :cond_9
    move v3, v10

    .line 446
    goto/16 :goto_1

    .restart local v3       #hasDataConnectionDetached:Z
    :cond_a
    move v2, v10

    .line 455
    goto/16 :goto_2

    .restart local v2       #hasDataConnectionChanged:Z
    :cond_b
    move v0, v10

    .line 456
    goto/16 :goto_3

    .restart local v0       #hasChanged:Z
    :cond_c
    move v6, v10

    .line 457
    goto/16 :goto_4

    .restart local v6       #hasRoamingOn:Z
    :cond_d
    move v5, v10

    .line 458
    goto :goto_5

    .restart local v5       #hasRoamingOff:Z
    :cond_e
    move v4, v10

    .line 459
    goto :goto_6
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 654
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 4
    .parameter "code"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 618
    packed-switch p1, :pswitch_data_0

    .line 635
    :pswitch_0
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 636
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v3

    .line 620
    goto :goto_0

    :pswitch_3
    move v0, v3

    .line 630
    goto :goto_0

    .line 618
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private setNotification(I)V
    .locals 9
    .parameter "notifyType"

    .prologue
    .line 887
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 888
    .local v2, notification:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 889
    const/16 v6, 0x10

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 890
    const v6, 0x108008a

    iput v6, v2, Landroid/app/Notification;->icon:I

    .line 891
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 893
    .local v1, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 896
    const-string v0, ""

    .line 897
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const v7, 0x10400d9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 898
    .local v5, title:Ljava/lang/CharSequence;
    const/16 v3, 0x378

    .line 900
    .local v3, notificationId:I
    packed-switch p1, :pswitch_data_0

    .line 908
    :goto_0
    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 909
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    iget-object v7, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v5, v0, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 911
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 914
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const/16 v6, 0x3ea

    if-ne p1, v6, :cond_0

    .line 916
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 921
    :goto_1
    return-void

    .line 902
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    const v7, 0x10400da

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 903
    goto :goto_0

    .line 919
    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    invoke-virtual {v4, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected cancelPollState()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    .line 517
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 926
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 927
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRestrictedStateChanged(Landroid/os/Handler;)V

    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 931
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 933
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForUnavailable(Landroid/os/Handler;)V

    .line 936
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 941
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v0, :cond_2

    .line 945
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 946
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 949
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v0, :cond_3

    .line 950
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 951
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 954
    :cond_3
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 955
    return-void
.end method

.method public getDataServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 167
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 169
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 219
    const-string v1, "DATA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message with number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 171
    :sswitch_0
    const-string v1, "radio state changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->handleCdmaSubscriptionSource()V

    goto :goto_0

    .line 178
    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->handleCdmaSubscriptionSource()V

    goto :goto_0

    .line 182
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->updateIccAvailability()V

    .line 183
    const-string v1, "icc status changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :sswitch_3
    const-string v1, "ruim ready"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :sswitch_4
    const-string v1, "nv ready"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :sswitch_5
    const-string/jumbo v1, "sim ready"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :sswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 201
    const-string v1, "records loaded"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :sswitch_7
    const-string v1, "data network state changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollState(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 211
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 215
    :sswitch_9
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 169
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0xa -> :sswitch_2
        0xf -> :sswitch_1
        0x14 -> :sswitch_9
        0x19 -> :sswitch_5
        0x1a -> :sswitch_3
        0x1b -> :sswitch_4
        0x1c -> :sswitch_6
        0x1d -> :sswitch_6
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 12
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 277
    iget-object v8, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    if-eq v8, v9, :cond_1

    .line 386
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 280
    .restart local p1
    :cond_1
    iget-object v8, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_8

    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    iget-object v8, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/internal/telephony/CommandException;

    if-eqz v8, :cond_2

    .line 284
    iget-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 287
    :cond_2
    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v8, :cond_3

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 293
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v8

    if-nez v8, :cond_4

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 299
    :cond_4
    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v8, :cond_5

    .line 301
    const-string v8, "DATA"

    const-string v9, "RIL implementation has returned an error where it must succeed"

    iget-object v10, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    const/4 v9, 0x0

    aget v10, v8, v9

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aput v10, v8, v9

    .line 377
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPollingContext:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-nez v8, :cond_0

    .line 378
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 379
    iget-boolean v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaRoaming:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaSubscriptionSource:I

    iget-object v10, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/internal/telephony/DataServiceStateTracker;->updateCdmaRoamingInfoInServiceState(Ljava/lang/Boolean;ILandroid/telephony/ServiceState;)V

    .line 381
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 382
    iget-boolean v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mGsmRoaming:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/DataServiceStateTracker;->updateGsmRoamingInfoInServiceState(Ljava/lang/Boolean;Landroid/telephony/ServiceState;)V

    .line 384
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 305
    .restart local p1
    :cond_8
    packed-switch p1, :pswitch_data_0

    .line 365
    :try_start_0
    const-string v8, "DATA"

    const-string v9, "RIL response handle in wrong phone! Expected CDMA RIL request and get GSM RIL request."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 370
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 371
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v8, "DATA"

    const-string v9, "Exception while polling service state. Probably malformed RIL response."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 307
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :pswitch_0
    :try_start_1
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/RegStateResponse;

    .line 308
    .local v3, r:Lcom/android/internal/telephony/RegStateResponse;
    invoke-virtual {v3}, Lcom/android/internal/telephony/RegStateResponse;->getValues()[Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, states:[Ljava/lang/String;
    const/4 v6, 0x4

    .line 311
    .local v6, registrationState:I
    const/4 v4, -0x1

    .line 312
    .local v4, radioTechnology:I
    const/4 v5, 0x0

    .line 314
    .local v5, reasonForDenial:I
    array-length v8, v7

    const/4 v9, 0x6

    if-eq v8, v9, :cond_9

    .line 315
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Warning! Wrong number of parameters returned from RIL_REQUEST_DATA_REGISTRATION_STATE: expected 6 got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    :cond_9
    const/4 v8, 0x0

    :try_start_2
    aget-object v8, v7, v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    .line 323
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 325
    :cond_a
    const/4 v8, 0x3

    aget-object v8, v7, v8

    if-eqz v8, :cond_b

    const/4 v8, 0x3

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    .line 326
    const/4 v8, 0x3

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 328
    :cond_b
    const/4 v8, 0x4

    aget-object v8, v7, v8

    if-eqz v8, :cond_c

    const/4 v8, 0x4

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_c

    .line 329
    const/4 v8, 0x4

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    .line 336
    :cond_c
    :goto_2
    :try_start_3
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeToServiceState(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/telephony/ServiceState;->setState(I)V

    .line 337
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8, v4}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 339
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeToServiceState(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mNewDataConnectionState:I

    .line 341
    invoke-static {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 342
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mCdmaRoaming:Z

    .line 345
    :cond_d
    invoke-static {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 346
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/DataServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mGsmRoaming:Z

    .line 349
    :cond_e
    const/4 v8, 0x3

    if-ne v6, v8, :cond_5

    .line 350
    const-string v2, ""

    .line 351
    .local v2, mRegistrationDeniedReason:Ljava/lang/String;
    if-nez v5, :cond_f

    .line 352
    const-string v2, "General"

    .line 360
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data Registration denied : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataServiceStateTracker;->logi(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 332
    .end local v2           #mRegistrationDeniedReason:Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 333
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v8, "DATA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error parsing RegistrationState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 353
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .restart local v2       #mRegistrationDeniedReason:Ljava/lang/String;
    :cond_f
    const/4 v8, 0x1

    if-ne v5, v8, :cond_10

    .line 354
    const-string v2, "Authentication Failure"

    goto :goto_3

    .line 357
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Other : reasonForDenial = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    goto :goto_3

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method isConcurrentVoiceAndData()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 545
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v0

    .line 546
    .local v0, r:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EDGE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GPRS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v1, :cond_0

    move v1, v2

    .line 558
    :goto_0
    return v1

    .line 551
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_1xRTT:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq v0, v1, :cond_1

    const-string v1, "ro.config.svlte1x"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 554
    goto :goto_0

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method logd(Ljava/lang/String;)V
    .locals 3
    .parameter "logString"

    .prologue
    .line 1120
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void
.end method

.method loge(Ljava/lang/String;)V
    .locals 3
    .parameter "logString"

    .prologue
    .line 1139
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return-void
.end method

.method logi(Ljava/lang/String;)V
    .locals 3
    .parameter "logString"

    .prologue
    .line 1131
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return-void
.end method

.method logv(Ljava/lang/String;)V
    .locals 3
    .parameter "logString"

    .prologue
    .line 1126
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    return-void
.end method

.method logw(Ljava/lang/String;)V
    .locals 3
    .parameter "logString"

    .prologue
    .line 1135
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    return-void
.end method

.method public reRegisterNetwork(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 532
    return-void
.end method

.method registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1006
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1007
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1009
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1010
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1012
    :cond_0
    return-void
.end method

.method registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1026
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1027
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1029
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1030
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1032
    :cond_0
    return-void
.end method

.method public registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 986
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 987
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 989
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 990
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 992
    :cond_0
    return-void
.end method

.method public registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 966
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 967
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 969
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSs:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 972
    :cond_0
    return-void
.end method

.method registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1079
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1080
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1082
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1083
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1085
    :cond_0
    return-void
.end method

.method registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1098
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1099
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1101
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1102
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1104
    :cond_0
    return-void
.end method

.method public registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1063
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1064
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1065
    return-void
.end method

.method registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1046
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1047
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1049
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1050
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1053
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1054
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1056
    :cond_1
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1112
    return-void
.end method

.method public unRegisterForRadioTechnologyChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1069
    return-void
.end method

.method unregisterForDataConnectionAttached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1016
    return-void
.end method

.method unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1036
    return-void
.end method

.method public unregisterForDataRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 996
    return-void
.end method

.method public unregisterForDataRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 976
    return-void
.end method

.method unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1089
    return-void
.end method

.method unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1108
    return-void
.end method

.method unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1060
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mDataServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1116
    return-void
.end method

.method public updateCdmaRoamingInfoInServiceState(Ljava/lang/Boolean;ILandroid/telephony/ServiceState;)V
    .locals 1
    .parameter "roaming"
    .parameter "cdmaSubscriptionSource"
    .parameter "ss"

    .prologue
    .line 842
    if-nez p2, :cond_0

    .line 843
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/telephony/DataServiceStateTracker;->isCdmaRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 847
    :goto_0
    return-void

    .line 845
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    goto :goto_0
.end method

.method public updateGsmRoamingInfoInServiceState(Ljava/lang/Boolean;Landroid/telephony/ServiceState;)V
    .locals 13
    .parameter "roaming"
    .parameter "ss"

    .prologue
    const/4 v12, 0x0

    const-string v10, ""

    const-string v11, "DATA"

    .line 712
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/DataServiceStateTracker;->isGsmRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 713
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 716
    :cond_0
    iget-boolean v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->UseUSA_gsmroaming_cmp:Z

    if-eqz v8, :cond_1

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_1

    .line 717
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/DataServiceStateTracker;->isGsmRoaminginAmericannetwork(ZLandroid/telephony/ServiceState;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 721
    :cond_1
    const/4 v6, 0x0

    .line 722
    .local v6, regplmnCustomString:Ljava/lang/String;
    const/4 v4, 0x0

    .line 723
    .local v4, regplmnCustomArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 724
    .local v3, regplmnCustomArrEleBuf:[Ljava/lang/String;
    const-string v8, "gsm.sim.operator.numeric"

    const-string v9, ""

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 726
    .local v7, simNumeric:Ljava/lang/String;
    const-string v8, "gsm.operator.numeric"

    const-string v9, ""

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, opsNumeric:Ljava/lang/String;
    const-string v8, "DATA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "simNumeric = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " operatorNumeric = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "reg_plmn_custom"

    invoke-static {v8, v9}, Landroid/provider/Settings$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 731
    const-string v8, "DATA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isGsmRoamingBetweenOperators plmnCustomString = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 737
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 740
    if-eqz v7, :cond_2

    if-eqz v2, :cond_2

    .line 741
    array-length v5, v4

    .line 743
    .local v5, regplmnCustomArrayLen:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 744
    aget-object v8, v4, v1

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 746
    invoke-direct {p0, v7, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->containsPlmn(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/DataServiceStateTracker;->containsPlmn(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 747
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 748
    const-string v8, "DATA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " do not show roaming"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    .end local v1           #i:I
    .end local v5           #regplmnCustomArrayLen:I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p2, v8}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 757
    return-void

    .line 732
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 733
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "DATA"

    const-string v8, "Exception when got name value"

    invoke-static {v11, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 751
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v5       #regplmnCustomArrayLen:I
    :cond_3
    const/4 v3, 0x0

    .line 743
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method updateIccAvailability()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 566
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccManager;->getCurrentApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v1

    .line 568
    .local v1, new3gppApp:Lcom/android/internal/telephony/UiccCardApplication;
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v2, v1, :cond_2

    .line 569
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v2, :cond_0

    .line 570
    const-string v2, "Removing stale 3gpp Application."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 571
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 572
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v2, :cond_0

    .line 573
    const-string v2, "Removing stale sim application records."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 574
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 575
    iput-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 578
    :cond_0
    if-eqz v1, :cond_1

    .line 579
    const-string v2, "New 3gpp application found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 580
    const/16 v2, 0x19

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 581
    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 582
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v2, :cond_1

    .line 583
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/16 v3, 0x1c

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 586
    :cond_1
    iput-object v1, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gppApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 590
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccManager;->getCurrentApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 593
    .local v0, new3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v2, v0, :cond_5

    .line 594
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v2, :cond_3

    .line 595
    const-string v2, "Removing stale 3gpp2 Application."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 596
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 597
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v2, :cond_3

    .line 598
    const-string v2, "Removing stale ruim application records."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 599
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 600
    iput-object v4, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 603
    :cond_3
    if-eqz v0, :cond_4

    .line 604
    const-string v2, "New 3gpp2 application found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 605
    const/16 v2, 0x1a

    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 606
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/RuimRecords;

    iput-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 607
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v2, :cond_4

    .line 608
    const-string v2, "New ruim application records found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataServiceStateTracker;->logv(Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    const/16 v3, 0x1d

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 612
    :cond_4
    iput-object v0, p0, Lcom/android/internal/telephony/DataServiceStateTracker;->m3gpp2App:Lcom/android/internal/telephony/UiccCardApplication;

    .line 614
    :cond_5
    return-void
.end method
