.class Lcom/android/internal/telephony/DataProfileOmh;
.super Lcom/android/internal/telephony/DataProfile;
.source "DataProfileOmh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataProfileOmh$1;,
        Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    }
.end annotation


# instance fields
.field private DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

.field private DATA_PROFILE_OMH_PRIORITY_LOWEST:I

.field private mDataProfileModem:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

.field private mPriority:I

.field private mProfileId:I

.field private serviceTypeMasks:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfile;-><init>()V

    .line 102
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_LOWEST:I

    .line 104
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

    .line 108
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->serviceTypeMasks:I

    .line 111
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    .line 114
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    .line 117
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    .line 118
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    .line 119
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "profileId"
    .parameter "priority"

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfile;-><init>()V

    .line 102
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_LOWEST:I

    .line 104
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

    .line 108
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->serviceTypeMasks:I

    .line 111
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    .line 114
    iput v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    .line 122
    iput p1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    .line 123
    iput p2, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    .line 124
    return-void
.end method

.method private isValidPriority(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 198
    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_LOWEST:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addServiceType(Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;)V
    .locals 2
    .parameter "modemProfile"

    .prologue
    .line 210
    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->serviceTypeMasks:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->serviceTypeMasks:I

    .line 211
    return-void
.end method

.method canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->serviceTypeMasks:I

    invoke-static {p1}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z
    .locals 1
    .parameter "ipv"

    .prologue
    .line 134
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_1

    .line 135
    :cond_0
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    return-object v0
.end method

.method public getDataProfileTypeModem()Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->mDataProfileModem:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    return v0
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    return v0
.end method

.method public isPriorityHigher(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPriorityLower(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidPriority()Z
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    return v0
.end method

.method public setDataProfileTypeModem(Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;)V
    .locals 0
    .parameter "modemProfile"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mDataProfileModem:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 168
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 179
    iput p1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    .line 180
    return-void
.end method

.method public setProfileId(I)V
    .locals 0
    .parameter "profileId"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    .line 176
    return-void
.end method

.method toHash()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataProfileOmh;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "DataProfile OMH"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DataProfileOmh;->mProfileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DataProfileOmh;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
