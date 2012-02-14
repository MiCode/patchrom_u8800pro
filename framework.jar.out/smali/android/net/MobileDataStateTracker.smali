.class public Landroid/net/MobileDataStateTracker;
.super Landroid/net/NetworkStateTracker;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MobileDataStateTracker$1;,
        Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;,
        Landroid/net/MobileDataStateTracker$MobileInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "MobileDataStateTracker"


# instance fields
.field private mApnType:Ljava/lang/String;

.field private mApnTypeToWatchFor:Ljava/lang/String;

.field private mEnabled:Z

.field private mIsDefaultOrHipri:Z

.field mMobileInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Phone$IPVersion;",
            "Landroid/net/MobileDataStateTracker$MobileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "target"
    .parameter "netType"
    .parameter "tag"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 102
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V

    .line 91
    iput-boolean v7, p0, Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z

    .line 105
    invoke-static {p3}, Landroid/net/MobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    .line 108
    if-eqz p3, :cond_0

    const/4 v0, 0x5

    if-ne p3, v0, :cond_1

    .line 110
    :cond_0
    iput-boolean v8, p0, Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z

    .line 113
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 114
    if-nez p3, :cond_2

    .line 115
    iput-boolean v8, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    .line 120
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instance created. netType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApnTypeToWatchFor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    .line 124
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    new-instance v2, Landroid/net/MobileDataStateTracker$MobileInfo;

    invoke-direct {v2, p0}, Landroid/net/MobileDataStateTracker$MobileInfo;-><init>(Landroid/net/MobileDataStateTracker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    new-instance v2, Landroid/net/MobileDataStateTracker$MobileInfo;

    invoke-direct {v2, p0}, Landroid/net/MobileDataStateTracker$MobileInfo;-><init>(Landroid/net/MobileDataStateTracker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void

    .line 117
    :cond_2
    iput-boolean v7, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/net/MobileDataStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    return v0
.end method

.method static synthetic access$102(Landroid/net/MobileDataStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    return p1
.end method

.method static synthetic access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->isApnTypeIncluded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/net/MobileDataStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z

    return v0
.end method

.method static synthetic access$400(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->updateMobileInfoFromIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method private getIpVersionFromIntent(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$IPVersion;
    .locals 2
    .parameter "intent"

    .prologue
    .line 170
    const-string v1, "ipVersion"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, str:Ljava/lang/String;
    const-class v1, Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/Phone$IPVersion;

    return-object p0
.end method

.method private getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 3
    .parameter "intent"

    .prologue
    .line 158
    const-string v2, "apnTypeState"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 160
    const-string v2, "apnType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, apnTypeList:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->isApnTypeIncluded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const-class v2, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/Phone$DataState;

    move-object v2, p0

    .line 166
    .end local v0           #apnTypeList:Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local p0
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method private getPhoneService(Z)V
    .locals 1
    .parameter "forceRefresh"

    .prologue
    .line 367
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 368
    :cond_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 370
    :cond_1
    return-void
.end method

.method private isApnTypeIncluded(Ljava/lang/String;)Z
    .locals 5
    .parameter "typeList"

    .prologue
    const/4 v4, 0x0

    .line 176
    if-nez p1, :cond_0

    move v2, v4

    .line 186
    :goto_0
    return v2

    .line 179
    :cond_0
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, list:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 181
    aget-object v2, v1, v0

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v1, v0

    const-string v3, "*"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 180
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v4

    .line 186
    goto :goto_0
.end method

.method public static networkTypeToApnType(I)Ljava/lang/String;
    .locals 3
    .parameter "netType"

    .prologue
    .line 725
    packed-switch p0, :pswitch_data_0

    .line 737
    :pswitch_0
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error mapping networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to apnType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 727
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 729
    :pswitch_2
    const-string v0, "mms"

    goto :goto_0

    .line 731
    :pswitch_3
    const-string/jumbo v0, "supl"

    goto :goto_0

    .line 733
    :pswitch_4
    const-string v0, "dun"

    goto :goto_0

    .line 735
    :pswitch_5
    const-string v0, "hipri"

    goto :goto_0

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setEnableApn(Ljava/lang/String;Z)I
    .locals 5
    .parameter "apnType"
    .parameter "enable"

    .prologue
    const-string v4, "MobileDataStateTracker"

    .line 696
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 701
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 702
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 703
    const-string v2, "MobileDataStateTracker"

    const-string v2, "Ignoring feature request because could not acquire PhoneService"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_0
    const-string v2, "MobileDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_4

    const-string v3, "enable"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v2, 0x3

    :goto_2
    return v2

    .line 709
    :cond_1
    if-eqz p2, :cond_2

    .line 710
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 712
    :cond_2
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 714
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 715
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 701
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 719
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v3, "disable"

    goto :goto_1
.end method

.method private updateMobileInfoFromIntent(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    .line 319
    .local v3, newState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->getIpVersionFromIntent(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$IPVersion;

    move-result-object v1

    .line 321
    .local v1, ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dc state change intent received for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with state  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/MobileDataStateTracker;->logi(Ljava/lang/String;)V

    .line 324
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v4, v4, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v4, v3, :cond_0

    .line 326
    const/4 v4, 0x0

    .line 363
    :goto_0
    return v4

    .line 329
    :cond_0
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/MobileDataStateTracker$MobileInfo;

    .line 330
    .local v2, newInfo:Landroid/net/MobileDataStateTracker$MobileInfo;
    iput-object v3, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    .line 331
    iget-object v4, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v5, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v4, v5, :cond_2

    .line 332
    const-string v4, "apn"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mApnName:Ljava/lang/String;

    .line 333
    const-string v4, "iface"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mInterfaceName:Ljava/lang/String;

    .line 335
    :try_start_0
    const-string v4, "ipaddress"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 337
    const-string v4, "igwaddress"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mGateway:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updated mobile state info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    .line 363
    const/4 v4, 0x1

    goto :goto_0

    .line 339
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 340
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interface connected with invalid parameters : ip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gw="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 344
    .end local v0           #e:Ljava/net/UnknownHostException;
    :cond_2
    iget-object v4, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v5, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v4, v5, :cond_1

    .line 345
    iget-object v4, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mInterfaceName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 346
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v4, v4, Landroid/net/MobileDataStateTracker$MobileInfo;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    .line 355
    :cond_3
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 356
    invoke-virtual {p0, v1}, Landroid/net/MobileDataStateTracker;->removePrivateDnsRoutes(Lcom/android/internal/telephony/Phone$IPVersion;)V

    goto :goto_1
.end method


# virtual methods
.method public getGateway(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/net/InetAddress;
    .locals 1
    .parameter "ipv"

    .prologue
    .line 671
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v0, p0, Landroid/net/MobileDataStateTracker$MobileInfo;->mGateway:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .locals 1
    .parameter "ipv"

    .prologue
    .line 666
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v0, p0, Landroid/net/MobileDataStateTracker$MobileInfo;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAdress(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/net/InetAddress;
    .locals 1
    .parameter "ipv"

    .prologue
    .line 676
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v0, p0, Landroid/net/MobileDataStateTracker$MobileInfo;->mIpAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getNameServers()[Ljava/lang/String;
    .locals 7

    .prologue
    const-string v6, ".dns2"

    const-string v5, ".dns1"

    const-string v4, "net."

    .line 645
    const/16 v1, 0xc

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "net.eth0.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "net.eth0.dns2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "net.eth0.dns3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "net.eth0.dns4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "net.gprs.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "net.gprs.dns2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "net.ppp0.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "net.ppp0.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dns1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dns2"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dns1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dns2"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 661
    .local v0, dnsPropNames:[Ljava/lang/String;
    invoke-static {v0}, Landroid/net/MobileDataStateTracker;->getNameServerList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkSubtype()I
    .locals 1

    .prologue
    .line 402
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 410
    const-string/jumbo v0, "unknown"

    .line 411
    .local v0, networkTypeStr:Ljava/lang/String;
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 413
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 453
    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net.tcp.buffersize."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 415
    :pswitch_1
    const-string v0, "gprs"

    .line 416
    goto :goto_0

    .line 418
    :pswitch_2
    const-string v0, "edge"

    .line 419
    goto :goto_0

    .line 421
    :pswitch_3
    const-string/jumbo v0, "umts"

    .line 422
    goto :goto_0

    .line 424
    :pswitch_4
    const-string v0, "hsdpa"

    .line 425
    goto :goto_0

    .line 427
    :pswitch_5
    const-string v0, "hsupa"

    .line 428
    goto :goto_0

    .line 430
    :pswitch_6
    const-string v0, "hspa"

    .line 431
    goto :goto_0

    .line 433
    :pswitch_7
    const-string v0, "cdma"

    .line 434
    goto :goto_0

    .line 436
    :pswitch_8
    const-string v0, "1xrtt"

    .line 437
    goto :goto_0

    .line 439
    :pswitch_9
    const-string v0, "evdo"

    .line 440
    goto :goto_0

    .line 442
    :pswitch_a
    const-string v0, "evdo"

    .line 443
    goto :goto_0

    .line 445
    :pswitch_b
    const-string v0, "evdo_b"

    .line 446
    goto :goto_0

    .line 448
    :pswitch_c
    const-string v0, "ehrpd"

    .line 449
    goto :goto_0

    .line 451
    :pswitch_d
    const-string v0, "lte"

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_b
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 376
    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 382
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 383
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 393
    :goto_1
    return v2

    .line 386
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 387
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 389
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 382
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method logd(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 751
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return-void
.end method

.method loge(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 743
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return-void
.end method

.method logi(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 761
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void
.end method

.method logv(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 756
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return-void
.end method

.method logw(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 747
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void
.end method

.method public reconnect()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "default"

    .line 478
    invoke-virtual {p0, v2}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 483
    iput-boolean v3, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    .line 489
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MobileDataStateTracker$MobileInfo;

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v1, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    .line 490
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MobileDataStateTracker$MobileInfo;

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v1, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    .line 492
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 525
    const-string v0, "MobileDataStateTracker"

    const-string v1, "Error in reconnect - unexpected response."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iput-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    .line 529
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    :goto_1
    return v0

    .line 494
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dct reports apn already active. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dct reports apn request started "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dct reports apn request failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v1, "default"

    if-ne v0, v4, :cond_1

    .line 512
    iput-boolean v3, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    move v0, v2

    .line 513
    goto :goto_1

    .line 519
    :cond_1
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dct reports apn type not available "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v1, "default"

    if-eq v0, v4, :cond_0

    .line 521
    iput-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    goto :goto_0

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public requestRouteToHost(Ljava/net/InetAddress;)Z
    .locals 7
    .parameter "hostAddress"

    .prologue
    const-string v6, "MobileDataStateTracker"

    .line 610
    const/4 v1, 0x0

    .line 611
    .local v1, interfaceName:Ljava/lang/String;
    instance-of v4, p1, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    .line 612
    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v4}, Landroid/net/MobileDataStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v1

    .line 617
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested host route to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    .line 620
    const/4 v3, 0x0

    .line 621
    .local v3, result:Z
    if-eqz v1, :cond_3

    .line 622
    invoke-virtual {p0}, Landroid/net/MobileDataStateTracker;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 623
    .local v2, nms:Landroid/os/INetworkManagementService;
    if-nez v2, :cond_2

    .line 624
    const-string v4, "MobileDataStateTracker"

    const-string v4, "could not acquire NetworkManagementService."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v4, 0x0

    .line 634
    .end local v2           #nms:Landroid/os/INetworkManagementService;
    :goto_1
    return v4

    .line 613
    .end local v3           #result:Z
    :cond_1
    instance-of v4, p1, Ljava/net/Inet6Address;

    if-eqz v4, :cond_0

    .line 614
    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v4}, Landroid/net/MobileDataStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 628
    .restart local v2       #nms:Landroid/os/INetworkManagementService;
    .restart local v3       #result:Z
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v1, v4, v5}, Landroid/os/INetworkManagementService;->addDstRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v2           #nms:Landroid/os/INetworkManagementService;
    :cond_3
    :goto_2
    move v4, v3

    .line 634
    goto :goto_1

    .line 629
    .restart local v2       #nms:Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 630
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MobileDataStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MobileDataStateTracker failed to request host route. Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public resetTornDownbyConnMgr()V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public setRadio(Z)Z
    .locals 6
    .parameter "turnOn"

    .prologue
    const/4 v4, 0x0

    const-string v5, "MobileDataStateTracker"

    .line 538
    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 543
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 544
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 545
    const-string v2, "MobileDataStateTracker"

    const-string v2, "Ignoring mobile radio request because could not acquire PhoneService"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    const-string v2, "MobileDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set radio power to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string v3, "on"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 558
    :goto_2
    return v2

    .line 551
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 552
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 553
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 543
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v3, "off"

    goto :goto_1
.end method

.method public startMonitoring()V
    .locals 6

    .prologue
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    new-instance v3, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V

    iput-object v3, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 147
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->getIpVersionFromIntent(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$IPVersion;

    move-result-object v2

    .line 150
    .local v2, ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v4

    iput-object v4, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    .line 153
    .end local v2           #ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initial state. v4="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v3, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", v6="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v3, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 583
    const/4 v0, -0x1

    return v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 599
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 467
    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 468
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 681
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Mobile data state: IPV4="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 682
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 683
    const-string v1, ", IPV6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 684
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 685
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
