.class Lcom/android/internal/telephony/CdmaNAI;
.super Lcom/android/internal/telephony/DataProfile;
.source "CdmaNAI.java"


# instance fields
.field private mProfileId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfile;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CdmaNAI;->mProfileId:I

    return-void
.end method


# virtual methods
.method canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z
    .locals 1
    .parameter "ipv"

    .prologue
    .line 35
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_1

    .line 36
    :cond_0
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP2_NAI:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    return-object v0
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/internal/telephony/CdmaNAI;->mProfileId:I

    return v0
.end method

.method toHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaNAI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "CDMA NAI"

    return-object v0
.end method
