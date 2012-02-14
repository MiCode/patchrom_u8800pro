.class public Lcom/android/internal/telephony/UiccManager;
.super Landroid/os/Handler;
.source "UiccManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UiccManager$AppFamily;
    }
.end annotation


# static fields
.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x3

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x2

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x4

.field private static final EVENT_RADIO_ON:I = 0x1

.field private static mInstance:Lcom/android/internal/telephony/UiccManager;


# instance fields
.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field mCi:Lcom/android/internal/telephony/CommandsInterface;

.field mContext:Landroid/content/Context;

.field private mIccChangedRegistrants:Landroid/os/RegistrantList;

.field private mLogTag:Ljava/lang/String;

.field private mRadioOn:Z

.field mUiccCard:Lcom/android/internal/telephony/UiccCard;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    const-string v0, "RIL_UiccManager"

    iput-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mLogTag:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccManager;->mRadioOn:Z

    .line 55
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mLogTag:Ljava/lang/String;

    const-string v1, "Creating"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/UiccManager;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/internal/telephony/UiccManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1, v2, v2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/UiccApplicationRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 87
    return-void
.end method

.method private declared-synchronized disposeCards()V
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->dispose()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mCatService:Lcom/android/internal/telephony/cat/CatService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/UiccManager;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/internal/telephony/UiccManager;->mInstance:Lcom/android/internal/telephony/UiccManager;

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/UiccManager;->mInstance:Lcom/android/internal/telephony/UiccManager;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccManager;
    .locals 1
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/telephony/UiccManager;->mInstance:Lcom/android/internal/telephony/UiccManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/android/internal/telephony/UiccManager;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/UiccManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/UiccManager;->mInstance:Lcom/android/internal/telephony/UiccManager;

    .line 65
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/UiccManager;->mInstance:Lcom/android/internal/telephony/UiccManager;

    return-object v0

    .line 62
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/UiccManager;->mInstance:Lcom/android/internal/telephony/UiccManager;

    iput-object p1, v0, Lcom/android/internal/telephony/UiccManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 63
    sget-object v0, Lcom/android/internal/telephony/UiccManager;->mInstance:Lcom/android/internal/telephony/UiccManager;

    iput-object p0, v0, Lcom/android/internal/telephony/UiccManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mLogTag:Ljava/lang/String;

    const-string v2, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :goto_0
    monitor-exit p0

    return-void

    .line 146
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/UiccCardStatusResponse;

    .line 149
    .local v0, status:Lcom/android/internal/telephony/UiccCardStatusResponse;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    iget-object v2, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v3, p0, Lcom/android/internal/telephony/UiccManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/UiccCard;->update(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    if-nez v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->dispose()V

    .line 156
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    if-eqz v1, :cond_3

    .line 161
    new-instance v1, Lcom/android/internal/telephony/UiccCard;

    iget-object v2, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v3, p0, Lcom/android/internal/telephony/UiccManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/telephony/UiccCard;-><init>(Lcom/android/internal/telephony/UiccManager;Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mLogTag:Ljava/lang/String;

    const-string v2, "Notifying IccChangedRegistrants"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    .end local v0           #status:Lcom/android/internal/telephony/UiccCardStatusResponse;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getCurrentApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;
    .locals 5
    .parameter "family"

    .prologue
    const/4 v4, 0x0

    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_1

    :cond_0
    move-object v2, v4

    .line 202
    :goto_0
    monitor-exit p0

    return-object v2

    .line 191
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne p1, v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCard;->getSubscription3gppAppIndex()[I

    move-result-object v1

    .line 196
    .local v1, subscriptions:[I
    :goto_1
    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    .line 198
    iget-object v2, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccCard;->getUiccCardApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .local v0, app:Lcom/android/internal/telephony/UiccCardApplication;
    move-object v2, v0

    .line 199
    goto :goto_0

    .line 194
    .end local v0           #app:Lcom/android/internal/telephony/UiccCardApplication;
    .end local v1           #subscriptions:[I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCard;->getSubscription3gpp2AppIndex()[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .restart local v1       #subscriptions:[I
    goto :goto_1

    :cond_3
    move-object v2, v4

    .line 202
    goto :goto_0

    .line 187
    .end local v1           #subscriptions:[I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getIccCard()Lcom/android/internal/telephony/UiccCard;
    .locals 1

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mUiccCard:Lcom/android/internal/telephony/UiccCard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 93
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 133
    iget-object v3, p0, Lcom/android/internal/telephony/UiccManager;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Unknown Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccManager;->mRadioOn:Z

    .line 96
    iget-object v3, p0, Lcom/android/internal/telephony/UiccManager;->mLogTag:Ljava/lang/String;

    const-string v4, "Radio on -> Forcing sim status update"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/UiccManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/UiccManager;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 100
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccManager;->mRadioOn:Z

    if-eqz v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/android/internal/telephony/UiccManager;->mLogTag:Ljava/lang/String;

    const-string v4, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v3, p0, Lcom/android/internal/telephony/UiccManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/UiccManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/UiccManager;->mLogTag:Ljava/lang/String;

    const-string v4, "Received EVENT_ICC_STATUS_CHANGED while radio is not ON. Ignoring"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 110
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccManager;->onGetIccCardStatusDone(Landroid/os/AsyncResult;)V

    .line 114
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/AsyncResult;

    if-eqz v3, :cond_2

    .line 115
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 116
    .local v1, internalAr:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 118
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 119
    .local v2, onComplete:Landroid/os/Message;
    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 123
    .end local v1           #internalAr:Landroid/os/AsyncResult;
    .end local v2           #onComplete:Landroid/os/Message;
    :cond_2
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 124
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 125
    .restart local v2       #onComplete:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 129
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #onComplete:Landroid/os/Message;
    :pswitch_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccManager;->mRadioOn:Z

    .line 130
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccManager;->disposeCards()V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 208
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 209
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 211
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 215
    return-void

    .line 211
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public triggerIccStatusUpdate(Ljava/lang/Object;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 178
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UiccManager;->sendMessage(Landroid/os/Message;)Z

    .line 179
    return-void
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/UiccManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/UiccManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 219
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
