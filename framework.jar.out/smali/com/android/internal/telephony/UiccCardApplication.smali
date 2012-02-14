.class public Lcom/android/internal/telephony/UiccCardApplication;
.super Ljava/lang/Object;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UiccCardApplication$2;
    }
.end annotation


# static fields
.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0x6

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x2

.field private static final EVENT_CHANGE_PIN1_DONE:I = 0x3

.field private static final EVENT_CHANGE_PIN2_DONE:I = 0x4

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0xa

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x8

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x9

.field private static final EVENT_PIN1PUK1_DONE:I = 0x1

.field private static final EVENT_PIN2PUK2_DONE:I = 0x7

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0x5


# instance fields
.field private mAid:Ljava/lang/String;

.field private mAppLabel:Ljava/lang/String;

.field private mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

.field private mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field protected mDbg:Z

.field private mDesiredFdnEnabled:Z

.field private mDestroyed:Z

.field protected mHandler:Landroid/os/Handler;

.field private mIccFdnAvailable:Z

.field private mIccFdnEnabled:Z

.field private mIccFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mLockedRegistrants:Landroid/os/RegistrantList;

.field private mLogTag:Ljava/lang/String;

.field private mPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field private mPersoSubstateRegistrants:Landroid/os/RegistrantList;

.field private mPin1Replaced:Z

.field private mPin1RetryCount:I

.field private mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

.field private mPin2RetryCount:I

.field private mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

.field private mReadyRegistrants:Landroid/os/RegistrantList;

.field private mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

.field private mUiccCard:Lcom/android/internal/telephony/UiccCard;

.field private mUnavailableRegistrants:Landroid/os/RegistrantList;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCard;Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .parameter "uiccCard"
    .parameter "as"
    .parameter "ur"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "RIL_UiccCardApplication"

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    .line 66
    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    .line 67
    iput-boolean v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    .line 68
    iput v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    .line 69
    iput v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    .line 75
    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    .line 81
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    .line 82
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLockedRegistrants:Landroid/os/RegistrantList;

    .line 83
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubstateRegistrants:Landroid/os/RegistrantList;

    .line 661
    new-instance v0, Lcom/android/internal/telephony/UiccCardApplication$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication$1;-><init>(Lcom/android/internal/telephony/UiccCardApplication;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating UiccApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 88
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 89
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 90
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 91
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 92
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 93
    iget v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1_replaced:I

    if-eqz v0, :cond_1

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    .line 94
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 95
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin2:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 97
    iput-object p4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 98
    iput-object p5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 100
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->createUiccFileHandler(Lcom/android/internal/telephony/UiccConstants$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 101
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v0, p3, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->createUiccApplicationRecords(Lcom/android/internal/telephony/UiccConstants$AppType;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v0, v1, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryFdnAvailable()V

    .line 105
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 93
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->onQueryFdnAvailable(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/UiccCardApplication;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/UiccCardApplication;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/UiccCardApplication;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z

    return v0
.end method

.method private createUiccApplicationRecords(Lcom/android/internal/telephony/UiccConstants$AppType;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccApplicationRecords;
    .locals 1
    .parameter "type"
    .parameter "ur"
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 158
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne p1, v0, :cond_1

    .line 159
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 161
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0
.end method

.method private createUiccFileHandler(Lcom/android/internal/telephony/UiccConstants$AppType;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 3
    .parameter "type"

    .prologue
    .line 166
    sget-object v0, Lcom/android/internal/telephony/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/UiccConstants$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 168
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 170
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 172
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/UsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/UsimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 174
    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/CsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/CsimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCard] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return-void
.end method

.method private declared-synchronized notifyAllRegistrants()V
    .locals 1

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyUnavailableRegistrants()V

    .line 227
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyLockedRegistrants()V

    .line 228
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrants()V

    .line 229
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPersoSubstateRegistrants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyLockedRegistrants()V
    .locals 1

    .prologue
    .line 303
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyLockedRegistrants(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyLockedRegistrants(Landroid/os/Registrant;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 261
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v0, v1, :cond_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_4

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Sanity check failed! APPSTATE is locked while PIN1 is not!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 268
    :cond_4
    if-nez p1, :cond_5

    .line 269
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying registrants: LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 272
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying 1 registrant: LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized notifyPersoSubstateRegistrants()V
    .locals 1

    .prologue
    .line 279
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPersoSubstateRegistrants(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyPersoSubstateRegistrants(Landroid/os/Registrant;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 291
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v0, v1, :cond_0

    .line 292
    if-nez p1, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying registrants: PERSO_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubstateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 296
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying 1 registrant: PERSO_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized notifyReadyRegistrants()V
    .locals 1

    .prologue
    .line 331
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrants(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyReadyRegistrants(Landroid/os/Registrant;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 314
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_3

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Sanity check failed! APPSTATE is ready while PIN1 is not verified!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 320
    :cond_3
    if-nez p1, :cond_4

    .line 321
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying registrants: READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying 1 registrant: READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized notifyUnavailableRegistrants()V
    .locals 1

    .prologue
    .line 248
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyUnavailableRegistrants(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyUnavailableRegistrants(Landroid/os/Registrant;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 238
    if-nez p1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 241
    :cond_1
    :try_start_1
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onQueryFdnAvailable(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 604
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 605
    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 610
    .local v1, ints:[I
    array-length v2, v1

    if-eqz v2, :cond_4

    .line 612
    aget v2, v1, v4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 613
    iput-boolean v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    .line 614
    iput-boolean v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    .line 619
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v2, :cond_0

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query facility FDN : FDN service available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_2
    aget v2, v1, v4

    if-ne v2, v5, :cond_3

    move v2, v5

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    .line 617
    iput-boolean v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    goto :goto_1

    :cond_3
    move v2, v4

    .line 616
    goto :goto_2

    .line 624
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v3, "Bogus facility lock response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    .locals 6
    .parameter "ar"
    .parameter "isPin1"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 632
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v1, v0

    .line 633
    .local v1, intArray:[I
    array-length v2, v1

    .line 634
    .local v2, length:I
    iput v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    .line 635
    iput v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    .line 636
    if-lez v2, :cond_0

    .line 637
    if-eqz p2, :cond_1

    .line 638
    aget v3, v1, v5

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    aget v3, v1, v5

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    goto :goto_0
.end method

.method private queryFdnAvailable()V
    .locals 7

    .prologue
    .line 591
    const/4 v4, 0x7

    .line 594
    .local v4, serviceClassX:I
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    const-string v2, "FD"

    const-string v3, ""

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 597
    return-void
.end method


# virtual methods
.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Pin2 old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 566
    return-void
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Pin1 old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 547
    return-void
.end method

.method public closeLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .parameter "channel"
    .parameter "onComplete"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseChannel(ILandroid/os/Message;)V

    .line 658
    return-void
.end method

.method declared-synchronized dispose()V
    .locals 1

    .prologue
    .line 150
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccApplicationRecords;->dispose()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 154
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyUnavailableRegistrants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    .line 648
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 650
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Finalized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    return-void
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCard()Lcom/android/internal/telephony/UiccCard;
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIccFdnAvailable()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    return v0
.end method

.method public getIccFdnEnabled()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    return v0
.end method

.method public declared-synchronized getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIccLockEnabled()Z
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccPin1RetryCount()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    return v0
.end method

.method public getIccPin2Blocked()Z
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccPin2RetryCount()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    return v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPersonalizationState()Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    return-object v0
.end method

.method public getPin1State()Lcom/android/internal/telephony/UiccConstants$PinState;
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getUniversalPinState()Lcom/android/internal/telephony/UiccConstants$PinState;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    goto :goto_0
.end method

.method public getPin2State()Lcom/android/internal/telephony/UiccConstants$PinState;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/UiccConstants$AppState;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    return-object v0
.end method

.method public getType()Lcom/android/internal/telephony/UiccConstants$AppType;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    return-object v0
.end method

.method public openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "AID"
    .parameter "onComplete"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 654
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 382
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 384
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 385
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyLockedRegistrants(Landroid/os/Registrant;)V

    .line 386
    return-void
.end method

.method public registerForPersoSubstate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 368
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 370
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubstateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 371
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPersoSubstateRegistrants(Landroid/os/Registrant;)V

    .line 372
    return-void
.end method

.method public declared-synchronized registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 343
    :goto_0
    monitor-exit p0

    return-void

    .line 339
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 340
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 342
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrants(Landroid/os/Registrant;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 335
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerForUnavailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 355
    :goto_0
    monitor-exit p0

    return-void

    .line 353
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 354
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 349
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 519
    iput-boolean p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z

    .line 520
    const/16 v5, 0xf

    .line 525
    .local v5, serviceClassX:I
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    const-string v2, "FD"

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 528
    return-void
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 496
    const/4 v5, 0x7

    .line 500
    .local v5, serviceClassX:I
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    const-string v2, "SC"

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 503
    return-void
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 416
    return-void
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 426
    return-void
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 421
    return-void
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 431
    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 390
    return-void
.end method

.method public unregisterForPersoSubstate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubstateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 376
    return-void
.end method

.method public declared-synchronized unregisterForReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterForUnavailable(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method update(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .parameter "as"
    .parameter "ur"
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 108
    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    if-eqz v3, :cond_1

    .line 109
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v4, "Application updated after destroyed! Fix me!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " update. New "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object p3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 115
    iput-object p4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 116
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 117
    .local v1, tempAppType:Lcom/android/internal/telephony/UiccConstants$AppType;
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 118
    .local v0, tempAppState:Lcom/android/internal/telephony/UiccConstants$AppState;
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 119
    .local v2, tempPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 120
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 121
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 122
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 123
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_label:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 124
    iget v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1_replaced:I

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    .line 125
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 126
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin2:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 128
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq v3, v1, :cond_2

    .line 129
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccApplicationRecords;->dispose()V

    .line 130
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-direct {p0, v3, p2, p3, p4}, Lcom/android/internal/telephony/UiccCardApplication;->createUiccApplicationRecords(Lcom/android/internal/telephony/UiccConstants$AppType;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 133
    :cond_2
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v3, v2, :cond_3

    .line 134
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPersoSubstateRegistrants()V

    .line 137
    :cond_3
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-eq v3, v0, :cond_0

    .line 138
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changed state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v4, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v3, v4, :cond_4

    .line 142
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryFdnAvailable()V

    .line 144
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyLockedRegistrants()V

    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrants()V

    goto/16 :goto_0

    .line 124
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method
