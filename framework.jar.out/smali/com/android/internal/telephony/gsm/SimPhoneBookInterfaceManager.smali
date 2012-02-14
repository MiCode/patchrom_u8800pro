.class public Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "SimPhoneBookInterfaceManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 46
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 51
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 53
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 57
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    const-string v2, "GSM"

    .line 61
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    const-string v1, "GSM"

    const-string v1, "SimPhoneBookInterfaceManager finalized"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "GSM"

    const-string v1, "Error while finalizing:"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 6
    .parameter "efid"

    .prologue
    const/4 v5, 0x3

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdnRecordsSize: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 79
    new-array v3, v5, [I

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->recordSize:[I

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 81
    const/16 v3, 0x4f30

    if-ne v3, p1, :cond_1

    .line 83
    const-string v3, "EF_PBR == efid"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    .line 88
    .local v1, fh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v1, :cond_0

    .line 89
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V

    .line 90
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnRecordsSizeFromEF()[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->recordSize:[I

    .line 91
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->recordSize:[I

    if-nez v3, :cond_0

    .line 92
    const-string v3, "null == recordSize"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 93
    new-array v3, v5, [I

    .line 121
    :goto_0
    return-object v3

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->recordSize:[I

    goto :goto_0

    .line 100
    .end local v1           #fh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->checkThread()V

    .line 107
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 109
    .local v2, response:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    .line 111
    .restart local v1       #fh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v1, :cond_2

    .line 112
    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->recordSize:[I

    goto :goto_0

    .line 115
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 116
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #fh:Lcom/android/internal/telephony/IccFileHandler;
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 125
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 129
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public updateSimRecords(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 1
    .parameter "simRecords"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    goto :goto_0
.end method
