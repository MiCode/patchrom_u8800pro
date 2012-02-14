.class public Lcom/android/internal/telephony/MMDataConnection;
.super Lcom/android/internal/telephony/DataConnection;
.source "MMDataConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DATA"


# instance fields
.field DBG:Z

.field mDct:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mOmhEnabled:Z


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)V
    .locals 2
    .parameter "dct"
    .parameter "context"
    .parameter "ci"
    .parameter "name"

    .prologue
    .line 42
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/DataConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnection;->DBG:Z

    .line 36
    const-string v0, "persist.omh.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnection;->mOmhEnabled:Z

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/MMDataConnection;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 44
    return-void
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 154
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    iget-object p0, p0, Lcom/android/internal/telephony/MMDataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/ApnSetting;

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method static makeDataConnection(Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/MMDataConnection;
    .locals 5
    .parameter "dct"

    .prologue
    .line 47
    sget-object v1, Lcom/android/internal/telephony/MMDataConnection;->mCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    sget v2, Lcom/android/internal/telephony/MMDataConnection;->mCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/MMDataConnection;->mCount:I

    .line 49
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    new-instance v0, Lcom/android/internal/telephony/MMDataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMDC -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/MMDataConnection;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/MMDataConnection;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)V

    .line 52
    .local v0, dc:Lcom/android/internal/telephony/MMDataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/MMDataConnection;->start()V

    .line 53
    return-object v0

    .line 49
    .end local v0           #dc:Lcom/android/internal/telephony/MMDataConnection;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "httpProxy"
    .parameter "httpPort"

    .prologue
    const-string v2, "net.gprs.http-proxy"

    .line 118
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    const-string v0, "net.gprs.http-proxy"

    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 124
    :cond_2
    const-string p2, "8080"

    .line 127
    :cond_3
    const-string v0, "net.gprs.http-proxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected isDnsOk([Ljava/lang/String;)Z
    .locals 4
    .parameter "domainNameServers"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "0.0.0.0"

    .line 133
    const-string v0, "0.0.0.0"

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0"

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MMS:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataProfile;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MMDataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 146
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MMDataConnection;->logv(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method logd(Ljava/lang/String;)V
    .locals 3
    .parameter "logString"

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnection;->DBG:Z

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DC cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/MMDataConnection;->cid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    return-void
.end method

.method loge(Ljava/lang/String;)V
    .locals 3
    .parameter "logString"

    .prologue
    .line 174
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DC cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/MMDataConnection;->cid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method logi(Ljava/lang/String;)V
    .locals 3
    .parameter "logString"

    .prologue
    .line 170
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DC cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/MMDataConnection;->cid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method logv(Ljava/lang/String;)V
    .locals 3
    .parameter "logString"

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnection;->DBG:Z

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DC cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/MMDataConnection;->cid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void
.end method

.method protected onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
    .locals 13
    .parameter "cp"

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting : dataProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnection;->logi(Ljava/lang/String;)V

    .line 66
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->radioTech:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v12, v0

    .line 69
    .local v12, radioTech:I
    :goto_0
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v0, v1, :cond_6

    .line 70
    iget-object v9, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    check-cast v9, Lcom/android/internal/telephony/ApnSetting;

    .line 73
    .local v9, apn:Lcom/android/internal/telephony/ApnSetting;
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/ApnSetting;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default type setprop net.gprs.http-proxy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnection;->logd(Ljava/lang/String;)V

    .line 76
    iget-object v0, v9, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v1, v9, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/MMDataConnection;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_1
    iget v10, v9, Lcom/android/internal/telephony/ApnSetting;->authType:I

    .line 84
    .local v10, authType:I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_0

    .line 85
    iget-object v0, v9, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    move v10, v0

    .line 88
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v9, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    iget-object v5, v9, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    sget-object v8, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {p0, v8, p1}, Lcom/android/internal/telephony/MMDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 115
    .end local v9           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v10           #authType:I
    :cond_1
    :goto_4
    return-void

    .line 66
    .end local v12           #radioTech:I
    :cond_2
    const/4 v0, 0x1

    move v12, v0

    goto :goto_0

    .line 79
    .restart local v9       #apn:Lcom/android/internal/telephony/ApnSetting;
    .restart local v12       #radioTech:I
    :cond_3
    const-string v0, "can not handle default type "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnection;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 85
    .restart local v10       #authType:I
    :cond_4
    const/4 v0, 0x0

    move v10, v0

    goto :goto_2

    .line 88
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 93
    .end local v9           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v10           #authType:I
    :cond_6
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_NAI:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v0, v1, :cond_8

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    sget-object v8, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne v7, v8, :cond_7

    const/4 v7, 0x1

    :goto_5
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {p0, v8, p1}, Lcom/android/internal/telephony/MMDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    .line 100
    :cond_8
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v0, v1, :cond_1

    .line 101
    iget-boolean v0, p0, Lcom/android/internal/telephony/MMDataConnection;->mOmhEnabled:Z

    if-eqz v0, :cond_1

    .line 102
    iget-object v11, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    check-cast v11, Lcom/android/internal/telephony/DataProfileOmh;

    .line 105
    .local v11, dp:Lcom/android/internal/telephony/DataProfileOmh;
    invoke-virtual {v11}, Lcom/android/internal/telephony/DataProfileOmh;->getProfileId()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, profileId:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OMH profileId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MMDataConnection;->logd(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/MMDataConnection;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    sget-object v8, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne v7, v8, :cond_9

    const/4 v7, 0x1

    :goto_6
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {p0, v8, p1}, Lcom/android/internal/telephony/MMDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_4

    :cond_9
    const/4 v7, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/MMDataConnection;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/MMDataConnection;->getStateAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ipv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnection;->mIpv:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", create="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/MMDataConnection;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/MMDataConnection;->lastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnectionFailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MMDataConnection;->mDataProfile:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
