.class public Lcom/android/internal/telephony/cdma/CDMAPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "CDMAPhone.java"


# static fields
.field static final CANCEL_ECM_TIMER:I = 0x1

.field private static final CRICKET_MIN2_VALUE:Ljava/lang/String; = "999999"

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field private static final EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE:I = 0x64

.field private static final INVALID_SYSTEM_SELECTION_CODE:I = -0x1

.field private static final IS683A_FEATURE_CODE:Ljava/lang/String; = "*228"

.field private static final IS683A_FEATURE_CODE_NUM_DIGITS:I = 0x4

.field private static final IS683A_SYS_SEL_CODE_NUM_DIGITS:I = 0x2

.field private static final IS683A_SYS_SEL_CODE_OFFSET:I = 0x4

.field private static final IS683_CONST_1900MHZ_A_BLOCK:I = 0x2

.field private static final IS683_CONST_1900MHZ_B_BLOCK:I = 0x3

.field private static final IS683_CONST_1900MHZ_C_BLOCK:I = 0x4

.field private static final IS683_CONST_1900MHZ_D_BLOCK:I = 0x5

.field private static final IS683_CONST_1900MHZ_E_BLOCK:I = 0x6

.field private static final IS683_CONST_1900MHZ_F_BLOCK:I = 0x7

.field private static final IS683_CONST_800MHZ_A_BAND:I = 0x0

.field private static final IS683_CONST_800MHZ_B_BAND:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final MDN_NUMBER_CDMA:Ljava/lang/String; = "mdn_number_key_cdma"

.field private static final MEID_LENGTH:I = 0xe

.field private static final PPPUSERINFO:Ljava/lang/String; = "pppuser_preference"

.field static final RESTART_ECM_TIMER:I = 0x0

.field private static final UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field private static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"

.field private static final VALIDLENGTH:I = 0x7f

.field private static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_key_cdma"

.field private static pOtaSpNumSchema:Ljava/util/regex/Pattern;


# instance fields
.field m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

.field mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

.field private mCarrierOtaSpNumSchema:Ljava/lang/String;

.field mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field mCdmaSubscriptionSource:I

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

.field mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

.field private mEsn:Ljava/lang/String;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field private mIsPhoneInEcmState:Z

.field private mMeid:Ljava/lang/String;

.field private mNvLoadedRegistrants:Landroid/os/RegistrantList;

.field private mPESN:Ljava/lang/String;

.field private mPPPInfo:Landroid/content/SharedPreferences;

.field mPendingMmis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field mRuimCard:Lcom/android/internal/telephony/UiccCard;

.field mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

.field mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

.field mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field private mVmNumber:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1355
    const-string v0, "[,\\s]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 6
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "dct"

    .prologue
    .line 174
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZLcom/android/internal/telephony/DataConnectionTracker;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZLcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 9
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"
    .parameter "dct"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 111
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    .line 122
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 123
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    .line 124
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimCard:Lcom/android/internal/telephony/UiccCard;

    .line 125
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 126
    iput v7, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSubscriptionSource:I

    .line 128
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    .line 135
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    .line 138
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    .line 141
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 163
    new-instance v4, Lcom/android/internal/telephony/cdma/CDMAPhone$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone$1;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 181
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 182
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 183
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 184
    iput-object p5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 185
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/DataConnectionTracker;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 186
    new-instance v4, Landroid/os/Registrant;

    const/16 v5, 0x1c

    invoke-direct {v4, p0, v5, v6}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {p1, p2, v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Registrant;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 190
    new-instance v4, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    .line 191
    new-instance v4, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 192
    new-instance v4, Lcom/android/internal/telephony/cdma/EriManager;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 194
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x8

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 197
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x5

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 198
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 199
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v5, 0x13

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForNetworkAttach(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 200
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x19

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 203
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/16 v5, 0x1d

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 205
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 207
    .local v3, pm:Landroid/os/PowerManager;
    const-string v4, "CDMA"

    invoke-virtual {v3, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 210
    const-string v4, "gsm.current.phone-type"

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v4, "ril.cdma.inecmmode"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, inEcm:Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 216
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-eqz v4, :cond_0

    .line 218
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x64

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 222
    :cond_0
    const-string v4, "ro.cdma.otaspnumschema"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    .line 226
    const-string v4, "ro.cdma.home.operator.alpha"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, operatorAlpha:Ljava/lang/String;
    const-string v4, "gsm.sim.operator.alpha"

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v4, "ro.cdma.home.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, operatorNumeric:Ljava/lang/String;
    const-string v4, "gsm.sim.operator.numeric"

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    .line 240
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateVoiceMail()V

    .line 241
    return-void
.end method

.method private checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z
    .locals 8
    .parameter "sysSelCodeInt"
    .parameter "sch"

    .prologue
    .line 1329
    const/4 v2, 0x0

    .line 1332
    .local v2, isOtaSpNum:Z
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1333
    .local v5, selRc:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 1334
    add-int/lit8 v6, v1, 0x2

    aget-object v6, p2, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v6, v1, 0x3

    aget-object v6, p2, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1335
    add-int/lit8 v6, v1, 0x2

    aget-object v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1336
    .local v4, selMin:I
    add-int/lit8 v6, v1, 0x3

    aget-object v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1339
    .local v3, selMax:I
    if-lt p1, v4, :cond_1

    if-gt p1, v3, :cond_1

    .line 1340
    const/4 v2, 0x1

    .line 1350
    .end local v1           #i:I
    .end local v3           #selMax:I
    .end local v4           #selMin:I
    .end local v5           #selRc:I
    :cond_0
    :goto_1
    return v2

    .line 1333
    .restart local v1       #i:I
    .restart local v5       #selRc:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1345
    .end local v1           #i:I
    .end local v5           #selRc:I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 1348
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v6, "CDMA"

    const-string v7, "checkOtaSpNumBasedOnSysSelCode, error"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private extractSelCodeFromOtaSpNum(Ljava/lang/String;)I
    .locals 6
    .parameter "dialStr"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1305
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1306
    .local v0, dialStrLen:I
    const/4 v1, -0x1

    .line 1308
    .local v1, sysSelCodeInt:I
    const-string v2, "*228"

    invoke-virtual {p1, v3, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lt v0, v5, :cond_0

    .line 1314
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1318
    :cond_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractSelCodeFromOtaSpNum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    return v1
.end method

.method private getStoredVoiceMessageCount()I
    .locals 3

    .prologue
    .line 1612
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1613
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string/jumbo v1, "vm_count_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private handleCdmaSubscriptionSource()V
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSubscriptionSource:I

    .line 1141
    iget v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSubscriptionSource:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1143
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendMessage(Landroid/os/Message;)Z

    .line 1145
    :cond_0
    return-void
.end method

.method private handleEnterEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 913
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-nez v2, :cond_0

    .line 918
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 920
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyCallbackModeChange()V

    .line 921
    const-string v2, "ril.cdma.inecmmode"

    const-string/jumbo v3, "true"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v2, "ro.cdma.ecmexittimer"

    const-wide/32 v3, 0x493e0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 927
    .local v0, delayInMillis:J
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 929
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 931
    .end local v0           #delayInMillis:J
    :cond_0
    return-void
.end method

.method private handleExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 934
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 936
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleExitEmergencyCallbackMode,ar.exception , mIsPhoneInEcmState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 942
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 943
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 946
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 947
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-eqz v1, :cond_2

    .line 948
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 949
    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyCallbackModeChange()V

    .line 953
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->enableDataCall()V

    .line 956
    :cond_2
    return-void
.end method

.method private isCarrierOtaSpNum(Ljava/lang/String;)Z
    .locals 12
    .parameter "dialStr"

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x0

    const-string v10, "CDMA"

    .line 1376
    const/4 v2, 0x0

    .line 1377
    .local v2, isOtaSpNum:Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v6

    .line 1378
    .local v6, sysSelCodeInt:I
    if-ne v6, v11, :cond_0

    move v3, v2

    .line 1421
    .end local v2           #isOtaSpNum:Z
    .local v3, isOtaSpNum:I
    :goto_0
    return v3

    .line 1382
    .end local v3           #isOtaSpNum:I
    .restart local v2       #isOtaSpNum:Z
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1383
    sget-object v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1385
    .local v4, m:Ljava/util/regex/Matcher;
    const-string v7, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCarrierOtaSpNum,schema"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1389
    sget-object v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 1391
    .local v5, sch:[Ljava/lang/String;
    aget-object v7, v5, v9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v5, v9

    const-string v8, "SELC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1392
    if-eq v6, v11, :cond_1

    .line 1393
    invoke-direct {p0, v6, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z

    move-result v2

    .end local v4           #m:Ljava/util/regex/Matcher;
    .end local v5           #sch:[Ljava/lang/String;
    :goto_1
    move v3, v2

    .line 1421
    .restart local v3       #isOtaSpNum:I
    goto :goto_0

    .line 1396
    .end local v3           #isOtaSpNum:I
    .restart local v4       #m:Ljava/util/regex/Matcher;
    .restart local v5       #sch:[Ljava/lang/String;
    :cond_1
    const-string v7, "CDMA"

    const-string v7, "isCarrierOtaSpNum,sysSelCodeInt is invalid"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1399
    :cond_2
    aget-object v7, v5, v9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    aget-object v7, v5, v9

    const-string v8, "FC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1400
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1401
    .local v1, fcLen:I
    const/4 v7, 0x2

    aget-object v0, v5, v7

    .line 1402
    .local v0, fc:Ljava/lang/String;
    invoke-virtual {p1, v9, v0, v9, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1403
    const/4 v2, 0x1

    goto :goto_1

    .line 1405
    :cond_3
    const-string v7, "CDMA"

    const-string v7, "isCarrierOtaSpNum,not otasp number"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1409
    .end local v0           #fc:Ljava/lang/String;
    .end local v1           #fcLen:I
    :cond_4
    const-string v7, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCarrierOtaSpNum,ota schema not supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1414
    .end local v5           #sch:[Ljava/lang/String;
    :cond_5
    const-string v7, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCarrierOtaSpNum,ota schema pattern not right"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1419
    .end local v4           #m:Ljava/util/regex/Matcher;
    :cond_6
    const-string v7, "CDMA"

    const-string v7, "isCarrierOtaSpNum,ota schema pattern empty"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isIs683OtaSpDialStr(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialStr"

    .prologue
    .line 1275
    const/4 v1, 0x0

    .line 1276
    .local v1, isOtaspDialString:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1278
    .local v0, dialStrLen:I
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 1279
    const-string v3, "*228"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1280
    const/4 v1, 0x1

    .line 1299
    :cond_0
    :goto_0
    return v1

    .line 1283
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v2

    .line 1284
    .local v2, sysSelCodeInt:I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1293
    :pswitch_0
    const/4 v1, 0x1

    .line 1294
    goto :goto_0

    .line 1284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerForRuimRecordEvents()V
    .locals 3

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1603
    return-void
.end method

.method private setIsoCountryProperty(Ljava/lang/String;)V
    .locals 7
    .parameter "operatorNumeric"

    .prologue
    const-string v6, "gsm.sim.operator.iso-country"

    const-string v5, "countryCodeForMcc error"

    const-string v4, "CDMA"

    .line 1494
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1495
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v2, ""

    invoke-virtual {p0, v6, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    :goto_0
    return-void

    .line 1497
    :cond_0
    const-string v1, ""

    .line 1499
    .local v1, iso:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1507
    :goto_1
    const-string v2, "gsm.sim.operator.iso-country"

    invoke-virtual {p0, v6, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1501
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1502
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countryCodeForMcc error"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1503
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1504
    .local v0, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countryCodeForMcc error"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 1483
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1484
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1485
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "vm_number_key_cdma"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1486
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1487
    return-void
.end method

.method private unregisterForRuimRecordEvents()V
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 1607
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1608
    return-void
.end method

.method private updateVoiceMail()V
    .locals 1

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getStoredVoiceMessageCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setVoiceMessageCount(I)V

    .line 771
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->acceptCall()V

    .line 412
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1234
    const-string v0, "CDMA"

    const-string v1, "[CDMAPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1236
    return-void
.end method

.method public canConference()Z
    .locals 2

    .prologue
    .line 484
    const-string v0, "CDMA"

    const-string v1, "canConference: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 2

    .prologue
    .line 324
    const-string v0, "CDMA"

    const-string v1, "canTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    .line 355
    return-void
.end method

.method public conference()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 342
    const-string v0, "CDMA"

    const-string v1, "conference: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, newDialString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Sending UUS information NOT supported in CDMA!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->disableLocationUpdates()V

    .line 684
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 248
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 250
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 251
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForNetworkAttach(Landroid/os/Handler;)V

    .line 252
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 253
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 254
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 259
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dispose()V

    .line 260
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dispose()V

    .line 261
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->dispose()V

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 263
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/EriManager;->dispose()V

    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 267
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v1, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForRuimRecordEvents()V

    .line 270
    :cond_0
    monitor-exit v0

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredVoicePrivacy(ZLandroid/os/Message;)V

    .line 347
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->enableLocationUpdates()V

    .line 680
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 909
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2

    .prologue
    .line 818
    const-string v0, "CDMA"

    const-string v1, "explicitCallTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v1, "CDMA"

    .line 290
    const-string v0, "CDMA"

    const-string v0, "CDMAPhone finalized"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "CDMA"

    const-string v0, "UNEXPECTED; mWakeLock is held when finalizing."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 295
    :cond_0
    return-void
.end method

.method public getAcceptSecondInCall()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->acceptSecondInCall:Z

    return v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 671
    const-string v0, "CDMA"

    const-string v1, "getAvailableNetworks: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 2

    .prologue
    .line 813
    const-string v0, "CDMA"

    const-string v1, "getCallForwardingIndicator: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 795
    const-string v0, "CDMA"

    const-string v1, "getCallForwardingOption: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 442
    return-void
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1457
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1465
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v1

    .line 1466
    .local v1, roamInd:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v0

    .line 1467
    .local v0, defRoamInd:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriText(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCdmaEriVersion()I
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->getEriFileVersion()I

    move-result v0

    return v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1244
    const-string v0, "CDMA"

    const-string v1, "[CDMAPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1246
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getMeid()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "^0*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    :cond_0
    const-string v1, "CDMA"

    const-string v2, "getDeviceId(): MEID is not initialized use ESN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    .line 471
    :cond_1
    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 475
    const-string v0, "CDMA"

    const-string v1, "getDeviceSvn(): return 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v0, "0"

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredVoicePrivacy(Landroid/os/Message;)V

    .line 351
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEsn:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 2

    .prologue
    .line 547
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getIccCard function in phone object should never be called. Use PhoneProxy instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 1224
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRecordsLoaded()Z

    move-result v0

    .line 791
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->iccid:Ljava/lang/String;

    .line 554
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 822
    const-string v0, "CDMA"

    const-string v1, "getLine1AlphaTag: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 619
    if-eqz p1, :cond_0

    .line 620
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 622
    .local v0, ce:Lcom/android/internal/telephony/CommandException;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 623
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 625
    .end local v0           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 808
    const-string v0, "CDMA"

    const-string v1, "getOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPesn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPESN:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    const-string v0, "CDMA"

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getRingingCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->combineVoiceDataServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 312
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/UiccCard;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimCard:Lcom/android/internal/telephony/UiccCard;

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 775
    const-string v0, ""

    .line 779
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 780
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    const v2, 0x1040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 784
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v11, 0x1

    const-string v12, "mdn_number_key_cdma"

    const-string v10, ""

    const-string/jumbo v9, "vm_number_key_cdma"

    .line 707
    const/4 v5, 0x0

    .line 708
    .local v5, number:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 711
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v7, "ro.voicemail.number"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, default_number:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v11, v7, :cond_4

    .line 715
    const-string v7, "ro.config.hw_setMDNasVMnum"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 716
    .local v0, IfUseMDNAsVMNum:Z
    if-ne v11, v0, :cond_3

    .line 719
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, MdnNumber:Ljava/lang/String;
    const-string v7, "mdn_number_key_cdma"

    const-string v7, ""

    invoke-interface {v6, v12, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, OldMdnNumber:Ljava/lang/String;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 724
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_2

    .line 726
    const-string v7, ""

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v11, v7, :cond_0

    .line 730
    const-string v7, "mdn_number_key_cdma"

    invoke-interface {v4, v12, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 731
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 733
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 737
    const-string v7, "mdn_number_key_cdma"

    invoke-interface {v4, v12, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 738
    const-string/jumbo v7, "vm_number_key_cdma"

    invoke-interface {v4, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 739
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 742
    :cond_1
    const-string/jumbo v7, "vm_number_key_cdma"

    invoke-interface {v6, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 765
    .end local v0           #IfUseMDNAsVMNum:Z
    .end local v1           #MdnNumber:Ljava/lang/String;
    .end local v2           #OldMdnNumber:Ljava/lang/String;
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-object v5

    .line 746
    .restart local v0       #IfUseMDNAsVMNum:Z
    .restart local v1       #MdnNumber:Ljava/lang/String;
    .restart local v2       #OldMdnNumber:Ljava/lang/String;
    .restart local v4       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string/jumbo v7, "vm_number_key_cdma"

    const-string v7, ""

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 754
    .end local v1           #MdnNumber:Ljava/lang/String;
    .end local v2           #OldMdnNumber:Ljava/lang/String;
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string/jumbo v7, "vm_number_key_cdma"

    const-string v7, "*86"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 761
    .end local v0           #IfUseMDNAsVMNum:Z
    :cond_4
    const-string/jumbo v7, "vm_number_key_cdma"

    invoke-interface {v6, v9, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getVoiceServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"

    .prologue
    .line 387
    const-string v0, "CDMA"

    const-string v1, "method handleInCallMmiCommands is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0x15

    const/16 v8, 0xe

    const-string v7, "CDMA"

    .line 999
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v5, :cond_1

    .line 1000
    const-string v5, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] while being destroyed. Ignoring."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1129
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1006
    :sswitch_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 1008
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    goto :goto_0

    .line 1013
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1015
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1019
    const-string v5, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Baseband version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const-string v6, "gsm.version.baseband"

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v6, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1025
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1027
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1030
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 1031
    .local v4, respId:[Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v5, v4, v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEsn:Ljava/lang/String;

    .line 1032
    const/4 v5, 0x3

    aget-object v5, v4, v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    .line 1033
    const/4 v5, 0x4

    aget-object v5, v4, v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPESN:Ljava/lang/String;

    .line 1035
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_0

    .line 1037
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    goto/16 :goto_0

    .line 1044
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v4           #respId:[Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateIccAvailability()V

    goto/16 :goto_0

    .line 1048
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1049
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1050
    .local v2, enter:Z
    if-eqz v2, :cond_2

    .line 1051
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleEnterEmergencyCallbackMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1053
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1058
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #enter:Z
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1063
    :sswitch_6
    const-string v5, "CDMA"

    const-string v5, "Event EVENT_RUIM_RECORDS_LOADED Received"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1068
    :sswitch_7
    const-string v5, "CDMA"

    const-string v5, "Event EVENT_RADIO_OFF_OR_NOT_AVAILABLE Received"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1073
    :sswitch_8
    const-string v5, "CDMA"

    const-string v5, "Event EVENT_RADIO_ON Received"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleCdmaSubscriptionSource()V

    goto/16 :goto_0

    .line 1079
    :sswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleCdmaSubscriptionSource()V

    .line 1082
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1087
    :sswitch_a
    const-string v5, "CDMA"

    const-string v5, "Event EVENT_SSN Received"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1092
    :sswitch_b
    const-string v5, "CDMA"

    const-string v5, "Event EVENT_REGISTERED_TO_NETWORK Received"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1097
    :sswitch_c
    const-string v5, "CDMA"

    const-string v5, "Event EVENT_NV_READY Received"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFile()V

    .line 1100
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1101
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1103
    const-string v5, "CDMA"

    const-string v5, "ERI read, notify registrants"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 1110
    :sswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1111
    .restart local v1       #ar:Landroid/os/AsyncResult;
    const-class v5, Lcom/android/internal/telephony/IccException;

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1112
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1113
    const/4 v5, 0x0

    iput-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1115
    :cond_3
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    .line 1116
    .local v3, onComplete:Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 1117
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1118
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1124
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #onComplete:Landroid/os/Message;
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1004
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_a
        0x5 -> :sswitch_8
        0x6 -> :sswitch_1
        0x8 -> :sswitch_7
        0x13 -> :sswitch_b
        0x14 -> :sswitch_d
        0x15 -> :sswitch_2
        0x16 -> :sswitch_6
        0x17 -> :sswitch_c
        0x19 -> :sswitch_4
        0x1a -> :sswitch_5
        0x1c -> :sswitch_9
        0x1d -> :sswitch_3
        0x64 -> :sswitch_e
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialString"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v4, "CDMA"

    .line 507
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    move-result-object v0

    .line 509
    .local v0, mmi:Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    if-nez v0, :cond_0

    .line 510
    const-string v1, "CDMA"

    const-string v1, "Mmi is NULL!"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 519
    :goto_0
    return v1

    .line 512
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPukCommand()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 515
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->processCode()V

    .line 516
    const/4 v1, 0x1

    goto :goto_0

    .line 518
    :cond_1
    const-string v1, "CDMA"

    const-string v1, "Unrecognized mmi!"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 519
    goto :goto_0
.end method

.method handleTimerInEmergencyCallbackMode(I)V
    .locals 5
    .parameter "action"

    .prologue
    .line 964
    packed-switch p1, :pswitch_data_0

    .line 976
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTimerInEmergencyCallbackMode, unsupported action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :goto_0
    return-void

    .line 966
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 967
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 970
    :pswitch_1
    const-string v2, "ro.cdma.ecmexittimer"

    const-wide/32 v3, 0x493e0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 972
    .local v0, delayInMillis:J
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 973
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 964
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 393
    .local v1, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 394
    .local v0, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getRingingCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 396
    .local v2, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialStr"

    .prologue
    .line 1433
    const/4 v1, 0x0

    .line 1434
    .local v1, isOtaSpNum:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1435
    .local v0, dialableStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1436
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isIs683OtaSpDialStr(Ljava/lang/String;)Z

    move-result v1

    .line 1437
    if-nez v1, :cond_0

    .line 1438
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isCarrierOtaSpNum(Ljava/lang/String;)Z

    move-result v1

    .line 1441
    :cond_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOtaSpNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    return v1
.end method

.method needsOtaServiceProvisioning()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    const-string v8, "1111110111"

    const-string v7, "000000"

    .line 876
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, cdmaMin:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_1

    .line 879
    :cond_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needsOtaServiceProvisioning: illegal cdmaMin=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' assume provisioning needed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v1, 0x1

    .line 897
    .local v1, needsProvisioning:Z
    :goto_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needsOtaServiceProvisioning: ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cdmaMin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return v1

    .line 885
    .end local v1           #needsProvisioning:Z
    :cond_1
    const-string v2, "ro.config.hw_opta"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "153"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 886
    const-string v2, "1111110111"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "000000"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "999999"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "test_cdma_setup"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v6

    .restart local v1       #needsProvisioning:Z
    :goto_1
    goto :goto_0

    .end local v1           #needsProvisioning:Z
    :cond_3
    move v1, v4

    goto :goto_1

    .line 891
    :cond_4
    const-string v2, "1111110111"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "000000"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "test_cdma_setup"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v1, v6

    .restart local v1       #needsProvisioning:Z
    :goto_2
    goto :goto_0

    .end local v1           #needsProvisioning:Z
    :cond_6
    move v1, v4

    goto :goto_2
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "cn"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 857
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 848
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 852
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 853
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 831
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 839
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 840
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "ss"

    .prologue
    .line 843
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 844
    return-void
.end method

.method notifyUnknownConnection()V
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 861
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V
    .locals 3
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 536
    :cond_0
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 591
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 567
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 988
    return-void
.end method

.method public registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1201
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1202
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1203
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 599
    const-string v0, "CDMA"

    const-string/jumbo v1, "some apk registerForLineControlInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 602
    return-void
.end method

.method public registerForNvLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1192
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1193
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1194
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 575
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 379
    const-string v0, "CDMA"

    const-string v1, "method registerForSuppServiceNotification is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->rejectCall()V

    .line 417
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 274
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    .line 275
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 277
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 278
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 279
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 283
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    .line 284
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 285
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 286
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimCard:Lcom/android/internal/telephony/UiccCard;

    .line 287
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/gsm/NetworkInfo;Landroid/os/Message;)V
    .locals 2
    .parameter "network"
    .parameter "response"

    .prologue
    .line 499
    const-string v0, "CDMA"

    const-string v1, "selectNetworkManually: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 5
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 656
    const/4 v0, 0x1

    .line 657
    .local v0, check:Z
    const/4 v1, 0x0

    .local v1, itr:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 658
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 659
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDtmf called with invalid character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v0, 0x0

    .line 665
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 666
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 668
    :cond_1
    return-void

    .line 657
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 632
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method sendEmergencyCallbackModeChange()V
    .locals 3

    .prologue
    .line 865
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "phoneinECMState"

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 867
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 868
    const-string v1, "CDMA"

    const-string v2, "sendEmergencyCallbackModeChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 2
    .parameter "ussdMessge"

    .prologue
    .line 628
    const-string v0, "CDMA"

    const-string v1, "sendUssdResponse: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 803
    const-string v0, "CDMA"

    const-string v1, "setCallForwardingOption: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 558
    const-string v0, "CDMA"

    const-string v1, "method setCallWaiting is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 1254
    const-string v0, "CDMA"

    const-string v1, "[CDMAPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1256
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 539
    const-string v0, "CDMA"

    const-string/jumbo v1, "setLine1Number: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    .line 334
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 402
    const-string v0, "CDMA"

    const-string v1, "method setNetworkSelectionModeAutomatic is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 582
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    .line 583
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 503
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 504
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 675
    const-string v0, "CDMA"

    const-string/jumbo v1, "setOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void
.end method

.method public final setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "property"
    .parameter "value"

    .prologue
    .line 1214
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    const/4 v3, 0x0

    .line 690
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v2, :cond_1

    .line 692
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    .line 693
    const/16 v2, 0x14

    invoke-virtual {p0, v2, v3, v3, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 694
    .local v1, resp:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 704
    .end local v1           #resp:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    if-eqz p3, :cond_0

    .line 699
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Ruim is absent."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 700
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 701
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 643
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 653
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 422
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 595
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 571
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 992
    return-void
.end method

.method public unregisterForEriFileLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1207
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 604
    const-string v0, "CDMA"

    const-string/jumbo v1, "some apk unregisterForLineControlInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 606
    return-void
.end method

.method public unregisterForNvLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1198
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 579
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 406
    const-string v0, "CDMA"

    const-string v1, "method unregisterForSuppServiceNotification is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 587
    return-void
.end method

.method updateApnFromNV(Ljava/lang/String;)Z
    .locals 20
    .parameter "operatorNumeric"

    .prologue
    .line 1545
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1548
    :try_start_0
    sget-object v17, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v18, "current"

    invoke-static/range {v17 .. v18}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1550
    .local v13, uri:Landroid/net/Uri;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1552
    .local v14, user_map:Landroid/content/ContentValues;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1555
    .local v8, passward_map:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "pppuser_preference"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPPPInfo:Landroid/content/SharedPreferences;

    .line 1558
    const/16 v17, 0x7f

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v12, v0

    .line 1559
    .local v12, pppUser:[B
    invoke-static {v12}, Lcom/huawei/android/hwnv/HWNVFuncation;->getPPPUser([B)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move v7, v0

    .line 1560
    .local v7, iUserLength:I
    const-string v15, " "

    .line 1561
    .local v15, username:Ljava/lang/String;
    const/16 v17, -0x1

    move/from16 v0, v17

    move v1, v7

    if-eq v0, v1, :cond_0

    .line 1562
    new-instance v15, Ljava/lang/String;

    .end local v15           #username:Ljava/lang/String;
    const/16 v17, 0x0

    move-object v0, v15

    move-object v1, v12

    move/from16 v2, v17

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1564
    .restart local v15       #username:Ljava/lang/String;
    :cond_0
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ppp username is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPPPInfo:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string/jumbo v18, "usernameInfoSaved"

    const-string v19, " "

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1568
    .local v16, usernameSaved:Ljava/lang/String;
    if-eqz v15, :cond_1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1569
    const-string/jumbo v17, "user"

    move-object v0, v14

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "numeric = \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPPPInfo:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string/jumbo v18, "usernameInfoSaved"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1576
    :cond_1
    const/16 v17, 0x7f

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v11, v0

    .line 1577
    .local v11, pppPassword:[B
    invoke-static {v11}, Lcom/huawei/android/hwnv/HWNVFuncation;->getPPPPassword([B)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move v6, v0

    .line 1578
    .local v6, iPasswordLength:I
    const-string v9, " "

    .line 1579
    .local v9, password:Ljava/lang/String;
    const/16 v17, -0x1

    move/from16 v0, v17

    move v1, v6

    if-eq v0, v1, :cond_2

    .line 1580
    new-instance v9, Ljava/lang/String;

    .end local v9           #password:Ljava/lang/String;
    const/16 v17, 0x0

    move-object v0, v9

    move-object v1, v11

    move/from16 v2, v17

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1582
    .restart local v9       #password:Ljava/lang/String;
    :cond_2
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ppp password is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPPPInfo:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "passwordInfoSaved"

    const-string v19, " "

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1585
    .local v10, passwordSaved:Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1586
    const-string v17, "password"

    move-object v0, v8

    move-object/from16 v1, v17

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "numeric = \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object v1, v13

    move-object v2, v8

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPPPInfo:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "passwordInfoSaved"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    :cond_3
    const/16 v17, 0x1

    .line 1596
    .end local v6           #iPasswordLength:I
    .end local v7           #iUserLength:I
    .end local v8           #passward_map:Landroid/content/ContentValues;
    .end local v9           #password:Ljava/lang/String;
    .end local v10           #passwordSaved:Ljava/lang/String;
    .end local v11           #pppPassword:[B
    .end local v12           #pppUser:[B
    .end local v13           #uri:Landroid/net/Uri;
    .end local v14           #user_map:Landroid/content/ContentValues;
    .end local v15           #username:Ljava/lang/String;
    .end local v16           #usernameSaved:Ljava/lang/String;
    :goto_0
    return v17

    .line 1592
    :catch_0
    move-exception v17

    move-object/from16 v5, v17

    .line 1593
    .local v5, e:Landroid/database/SQLException;
    const-string v17, "CDMA"

    const-string v18, "Can\'t store current operator"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1596
    .end local v5           #e:Landroid/database/SQLException;
    :cond_4
    const/16 v17, 0x0

    goto :goto_0
.end method

.method updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 5
    .parameter "operatorNumeric"

    .prologue
    .line 1518
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1520
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "current"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1521
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1522
    .local v1, map:Landroid/content/ContentValues;
    const-string v3, "numeric"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1526
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1528
    const/4 v3, 0x1

    .line 1533
    .end local v1           #map:Landroid/content/ContentValues;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return v3

    .line 1529
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1530
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "CDMA"

    const-string v4, "Can\'t store current operator"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1533
    .end local v0           #e:Landroid/database/SQLException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method updateIccAvailability()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "CDMA"

    .line 1148
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    if-nez v1, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccManager;->getCurrentApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 1155
    .local v0, new3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 1156
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_3

    .line 1157
    const-string v1, "CDMA"

    const-string v1, "Removing stale 3gpp Application."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v1, :cond_2

    .line 1159
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForRuimRecordEvents()V

    .line 1160
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 1161
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->updateRuimRecords(Lcom/android/internal/telephony/cdma/RuimRecords;)V

    .line 1163
    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    .line 1164
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimCard:Lcom/android/internal/telephony/UiccCard;

    .line 1166
    :cond_3
    if-eqz v0, :cond_0

    .line 1167
    const-string v1, "CDMA"

    const-string v1, "New 3gpp application found"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    .line 1169
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimCard:Lcom/android/internal/telephony/UiccCard;

    .line 1170
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->m3gpp2Application:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/RuimRecords;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 1171
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->updateRuimRecords(Lcom/android/internal/telephony/cdma/RuimRecords;)V

    .line 1172
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForRuimRecordEvents()V

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->enableSingleLocationUpdate()V

    .line 563
    return-void
.end method
