.class public Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "RuimPhoneBookInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 36
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 44
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    const-string v2, "CDMA"

    .line 48
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    const-string v1, "CDMA"

    const-string v1, "RuimPhoneBookInterfaceManager finalized"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "CDMA"

    const-string v1, "Error while finalizing:"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 6
    .parameter "efid"

    .prologue
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdnRecordsSize: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->checkThread()V

    .line 67
    const/4 v4, 0x3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->recordSize:[I

    .line 70
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 72
    .local v2, response:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    .line 74
    .local v1, fh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->recordSize:[I

    return-object v3

    .line 78
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 79
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "interrupted while trying to load from the RUIM"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 82
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
    .line 88
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 92
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public updateRuimRecords(Lcom/android/internal/telephony/cdma/RuimRecords;)V
    .locals 1
    .parameter "ruimRecords"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/RuimRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    goto :goto_0
.end method
