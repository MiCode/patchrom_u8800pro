.class public abstract Lcom/android/internal/telephony/UiccApplicationRecords;
.super Landroid/os/Handler;
.source "UiccApplicationRecords.java"


# static fields
.field protected static final DBG:Z = true

.field protected static final EVENT_APP_READY:I = 0x1

.field public static final EVENT_CFI:I = 0x1

.field public static final EVENT_EONS:I = 0x3

.field protected static final EVENT_ICC_REFRESH:I = 0x2

.field protected static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field public static final EVENT_SPN:I = 0x2

.field protected static final SPN_RULE_SHOW_PLMN:I = 0x2

.field protected static final SPN_RULE_SHOW_SPN:I = 0x1

.field protected static final UNINITIALIZED:I = -0x1

.field protected static final UNKNOWN:I


# instance fields
.field protected adnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field protected bNeedSendRefreshBC:Z

.field public iccid:Ljava/lang/String;

.field protected isVoiceMailFixed:Z

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field protected mDestroyed:Z

.field protected mFh:Lcom/android/internal/telephony/IccFileHandler;

.field protected mIccRefreshRegistrants:Landroid/os/RegistrantList;

.field protected mImsi:Ljava/lang/String;

.field protected mImsiReadyRegistrants:Landroid/os/RegistrantList;

.field protected mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

.field protected mNewSmsRegistrants:Landroid/os/RegistrantList;

.field protected mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

.field protected mParentCard:Lcom/android/internal/telephony/UiccCard;

.field protected mRecordsEventsRegistrants:Landroid/os/RegistrantList;

.field protected mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

.field private mUnavailableRegistrants:Landroid/os/RegistrantList;

.field protected mailboxIndex:I

.field protected mncLength:I

.field protected msisdn:Ljava/lang/String;

.field protected msisdnTag:Ljava/lang/String;

.field protected newVoiceMailNum:Ljava/lang/String;

.field protected newVoiceMailTag:Ljava/lang/String;

.field protected recordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected recordsRequested:Z

.field protected recordsToLoad:I

.field protected spn:Ljava/lang/String;

.field protected spnDisplayCondition:I

.field protected voiceMailNum:Ljava/lang/String;

.field protected voiceMailTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/UiccRecords;)V
    .locals 3
    .parameter "parent"
    .parameter "c"
    .parameter "ci"
    .parameter "ur"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mDestroyed:Z

    .line 53
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    .line 54
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    .line 55
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    .line 56
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    .line 57
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->bNeedSendRefreshBC:Z

    .line 140
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 142
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    .line 160
    iput-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    .line 163
    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdn:Ljava/lang/String;

    .line 164
    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdnTag:Ljava/lang/String;

    .line 165
    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    .line 166
    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailNum:Ljava/lang/String;

    .line 167
    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailTag:Ljava/lang/String;

    .line 168
    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 169
    iput-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 170
    iput-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->isVoiceMailFixed:Z

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    .line 173
    iput v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mailboxIndex:I

    .line 63
    iput-object p2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 65
    iput-object p4, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentCard:Lcom/android/internal/telephony/UiccCard;

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 71
    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mDestroyed:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentCard:Lcom/android/internal/telephony/UiccCard;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    return-object v0
.end method

.method public getCardApplication()Lcom/android/internal/telephony/UiccCardApplication;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    return-object v0
.end method

.method protected abstract getDisplayRule(Ljava/lang/String;)I
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordsLoaded()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 311
    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->spn:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract onAllRecordsLoaded()V
.end method

.method protected abstract onRecordLoaded()V
.end method

.method public abstract onRefresh(Z[I)V
.end method

.method public declared-synchronized registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 146
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 145
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    monitor-exit p0

    return-void

    .line 126
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 119
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 118
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 110
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 102
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :cond_1
    :try_start_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 204
    iget v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 205
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
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
    .line 86
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 91
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 234
    iput-object p2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdn:Ljava/lang/String;

    .line 235
    iput-object p1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdnTag:Ljava/lang/String;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UiccApplicationRecords;->log(Ljava/lang/String;)V

    .line 240
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/UiccApplicationRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 244
    return-void
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceMessageWaiting(IILandroid/os/Message;)V
.end method

.method public declared-synchronized unRegisterForIccRefresh(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterForImsiReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterForNewSms(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterForRecordsEvents(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterForUnavailable(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
