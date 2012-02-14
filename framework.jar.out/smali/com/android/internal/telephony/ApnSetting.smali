.class public Lcom/android/internal/telephony/ApnSetting;
.super Lcom/android/internal/telephony/DataProfile;
.source "ApnSetting.java"


# static fields
.field static final V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"


# instance fields
.field apn:Ljava/lang/String;

.field authType:I

.field carrier:Ljava/lang/String;

.field id:I

.field mmsPort:Ljava/lang/String;

.field mmsProxy:Ljava/lang/String;

.field mmsc:Ljava/lang/String;

.field numeric:Ljava/lang/String;

.field password:Ljava/lang/String;

.field port:Ljava/lang/String;

.field proxy:Ljava/lang/String;

.field serviceTypes:[Lcom/android/internal/telephony/DataServiceType;

.field supportsIPv4:Z

.field supportsIPv6:Z

.field types:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field user:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "id"
    .parameter "numeric"
    .parameter "carrier"
    .parameter "apn"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsc"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "ipVersion"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfile;-><init>()V

    .line 45
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv4:Z

    .line 46
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv6:Z

    .line 53
    iput p1, p0, Lcom/android/internal/telephony/ApnSetting;->id:I

    .line 54
    iput-object p2, p0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    .line 59
    iput-object p7, p0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    .line 60
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 61
    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 62
    move-object/from16 v0, p10

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    .line 63
    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    .line 64
    move/from16 v0, p12

    move-object v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ApnSetting;->authType:I

    .line 65
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .line 67
    if-nez p14, :cond_1

    .line 68
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv4:Z

    .line 81
    :cond_0
    return-void

    .line 70
    :cond_1
    const-string v7, ","

    move-object/from16 v0, p14

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, verList:[Ljava/lang/String;
    move-object v2, v5

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v2, v3

    .line 72
    .local v6, version:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 73
    const-string v7, "6"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 74
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv6:Z

    .line 76
    :cond_2
    const-string v7, "4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 77
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv4:Z

    .line 71
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/telephony/ApnSetting;
    .locals 15
    .parameter "data"

    .prologue
    .line 107
    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 160
    .end local p0
    :goto_0
    return-object p0

    .line 111
    .restart local p0
    :cond_0
    const-string v0, "^\\[ApnSettingV2\\]\\s*.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const/4 v0, 0x2

    .line 113
    .local v0, version:I
    const-string v1, "^\\[ApnSettingV2\\]\\s*"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move v1, v0

    .line 118
    .end local v0           #version:I
    .local v1, version:I
    :goto_1
    const-string v0, "\\s*,\\s*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 119
    .local p0, a:[Ljava/lang/String;
    array-length v0, p0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_2

    .line 120
    const/4 p0, 0x0

    goto :goto_0

    .line 115
    .end local v1           #version:I
    .local p0, data:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #version:I
    move v1, v0

    .end local v0           #version:I
    .restart local v1       #version:I
    goto :goto_1

    .line 125
    .local p0, a:[Ljava/lang/String;
    :cond_2
    const/16 v0, 0xc

    :try_start_0
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 132
    .local v12, authType:I
    :goto_2
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    .line 133
    array-length v0, p0

    const/16 v1, 0xd

    sub-int/2addr v0, v1

    new-array v13, v0, [Ljava/lang/String;

    .line 134
    .end local v1           #version:I
    .local v13, typeArray:[Ljava/lang/String;
    const/16 v0, 0xd

    const/4 v1, 0x0

    array-length v2, p0

    const/16 v3, 0xd

    sub-int/2addr v2, v3

    invoke-static {p0, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    const-string v14, "4"

    .line 136
    .local v14, protocol:Ljava/lang/String;
    const-string v0, "IP"

    .line 146
    .local v0, roamingProtocol:Ljava/lang/String;
    :goto_3
    new-instance v0, Lcom/android/internal/telephony/ApnSetting;

    .end local v0           #roamingProtocol:Ljava/lang/String;
    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p0, v3

    const/4 v4, 0x1

    aget-object v4, p0, v4

    const/4 v5, 0x2

    aget-object v5, p0, v5

    const/4 v6, 0x3

    aget-object v6, p0, v6

    const/4 v7, 0x7

    aget-object v7, p0, v7

    const/16 v8, 0x8

    aget-object v8, p0, v8

    const/16 v9, 0x9

    aget-object v9, p0, v9

    const/4 v10, 0x4

    aget-object v10, p0, v10

    const/4 v11, 0x5

    aget-object v11, p0, v11

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    invoke-static {v13}, Lcom/android/internal/telephony/ApnSetting;->parseServiceTypes([Ljava/lang/String;)[Lcom/android/internal/telephony/DataServiceType;

    move-result-object p0

    .end local p0           #a:[Ljava/lang/String;
    iput-object p0, v0, Lcom/android/internal/telephony/ApnSetting;->serviceTypes:[Lcom/android/internal/telephony/DataServiceType;

    move-object p0, v0

    .line 160
    goto/16 :goto_0

    .line 126
    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v12           #authType:I
    .end local v13           #typeArray:[Ljava/lang/String;
    .end local v14           #protocol:Ljava/lang/String;
    .restart local v1       #version:I
    .restart local p0       #a:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    const/4 v12, 0x0

    .restart local v12       #authType:I
    goto :goto_2

    .line 138
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    .line 139
    .end local v1           #version:I
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 141
    :cond_4
    const/16 v0, 0xd

    aget-object v0, p0, v0

    const-string v1, "\\s*\\|\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 142
    .restart local v13       #typeArray:[Ljava/lang/String;
    const/16 v0, 0xe

    aget-object v14, p0, v0

    .line 143
    .restart local v14       #protocol:Ljava/lang/String;
    const/16 v0, 0xf

    aget-object v0, p0, v0

    .local v0, roamingProtocol:Ljava/lang/String;
    goto :goto_3
.end method

.method private static parseServiceTypes([Ljava/lang/String;)[Lcom/android/internal/telephony/DataServiceType;
    .locals 8
    .parameter "types"

    .prologue
    .line 164
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataServiceType;>;"
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 167
    .local v5, ts:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 168
    invoke-static {v5}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v5           #ts:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Lcom/android/internal/telephony/DataServiceType;

    .line 173
    .local v6, typeArray:[Lcom/android/internal/telephony/DataServiceType;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/internal/telephony/DataServiceType;

    move-object v0, p0

    check-cast v0, [Lcom/android/internal/telephony/DataServiceType;

    move-object v6, v0

    .line 175
    return-object v6
.end method


# virtual methods
.method canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSetting;->serviceTypes:[Lcom/android/internal/telephony/DataServiceType;

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 231
    .local v3, t:Lcom/android/internal/telephony/DataServiceType;
    if-ne v3, p1, :cond_0

    .line 232
    const/4 v4, 0x1

    .line 234
    .end local v3           #t:Lcom/android/internal/telephony/DataServiceType;
    :goto_1
    return v4

    .line 230
    .restart local v3       #t:Lcom/android/internal/telephony/DataServiceType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v3           #t:Lcom/android/internal/telephony/DataServiceType;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method canHandleType(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 222
    .local v3, t:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    :cond_0
    const/4 v4, 0x1

    .line 226
    .end local v3           #t:Ljava/lang/String;
    :goto_1
    return v4

    .line 221
    .restart local v3       #t:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v3           #t:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z
    .locals 1
    .parameter "ipv"

    .prologue
    .line 243
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_0

    .line 244
    iget-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv6:Z

    .line 248
    :goto_0
    return v0

    .line 245
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_1

    .line 246
    iget-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv4:Z

    goto :goto_0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    return-object v0
.end method

.method toHash()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const-string v8, "]"

    const-string v7, ", "

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/ApnSetting;->authType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv4:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv6:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 203
    .local v4, t:Ljava/lang/String;
    const-string v5, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v4           #t:Ljava/lang/String;
    :cond_0
    const-string v5, "]"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v5, "]"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
