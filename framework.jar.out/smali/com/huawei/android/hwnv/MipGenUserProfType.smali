.class public Lcom/huawei/android/hwnv/MipGenUserProfType;
.super Ljava/lang/Object;
.source "MipGenUserProfType.java"


# static fields
.field public static final NV_MAX_MIP_INDEX:I = 0x6

.field public static final NV_MAX_NAI_LENGTH:I = 0x48


# instance fields
.field public mHomeAddr:I

.field private mIndex:B

.field private mMnAaaSpi:I

.field private mMnAaaSpiSet:B

.field private mMnHaSpi:I

.field private mMnHaSpiSet:B

.field private mNai:[B

.field private mNaiLength:B

.field public mPrimaryHaAddr:I

.field private mRevTunPref:B

.field public mSecondaryHaAddr:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x48

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mNai:[B

    .line 46
    iput-byte v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mIndex:B

    .line 47
    iput-byte v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mNaiLength:B

    .line 48
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mNai:[B

    .line 49
    iput-byte v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnHaSpiSet:B

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnHaSpi:I

    .line 51
    iput-byte v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnAaaSpiSet:B

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnAaaSpi:I

    .line 53
    iput-byte v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mRevTunPref:B

    .line 54
    iput v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mHomeAddr:I

    .line 55
    iput v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mPrimaryHaAddr:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mSecondaryHaAddr:I

    .line 57
    return-void
.end method


# virtual methods
.method public getAAASPI()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnAaaSpi:I

    return v0
.end method

.method public getAaaSpiSet()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 104
    iget-byte v0, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnAaaSpiSet:B

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHASPI()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnHaSpi:I

    return v0
.end method

.method public getHaSpiSet()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 100
    iget-byte v0, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnHaSpiSet:B

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHomeAddr()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    new-array v0, v2, [I

    .line 114
    .local v0, ipAddress:[I
    iget v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mHomeAddr:I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    .line 115
    iget v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mHomeAddr:I

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v5

    .line 116
    iget v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mHomeAddr:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v6

    .line 117
    iget v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mHomeAddr:I

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v7

    .line 119
    const-string v1, "%d.%d.%d.%d"

    new-array v2, v2, [Ljava/lang/Object;

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aget v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aget v3, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aget v3, v0, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIndex()B
    .locals 1

    .prologue
    .line 80
    iget-byte v0, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mIndex:B

    return v0
.end method

.method public getNaiLength()B
    .locals 1

    .prologue
    .line 84
    iget-byte v0, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mNaiLength:B

    return v0
.end method

.method public getPrimaryHAIP()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    new-array v0, v2, [I

    .line 125
    .local v0, ipAddress:[I
    iget v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mPrimaryHaAddr:I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    .line 126
    iget v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mPrimaryHaAddr:I

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v5

    .line 127
    iget v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mPrimaryHaAddr:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v6

    .line 128
    iget v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mPrimaryHaAddr:I

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v7

    .line 130
    const-string v1, "%d.%d.%d.%d"

    new-array v2, v2, [Ljava/lang/Object;

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aget v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aget v3, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aget v3, v0, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRevTuneling()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 108
    iget-byte v0, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mRevTunPref:B

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondaryHAIP()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    new-array v0, v2, [I

    .line 136
    .local v0, ipAddress:[I
    iget v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mSecondaryHaAddr:I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    .line 137
    iget v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mSecondaryHaAddr:I

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v5

    .line 138
    iget v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mSecondaryHaAddr:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v6

    .line 139
    iget v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mSecondaryHaAddr:I

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v7

    .line 141
    const-string v1, "%d.%d.%d.%d"

    new-array v2, v2, [Ljava/lang/Object;

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aget v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aget v3, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aget v3, v0, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUsername()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mNai:[B

    const/4 v2, 0x0

    iget-byte v3, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mNaiLength:B

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public setAllData([B)V
    .locals 4
    .parameter "bArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mIndex:B

    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mNaiLength:B

    .line 65
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x48

    if-ge v1, v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mNai:[B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnHaSpiSet:B

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnHaSpi:I

    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnAaaSpiSet:B

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnAaaSpi:I

    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mRevTunPref:B

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mHomeAddr:I

    .line 75
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mPrimaryHaAddr:I

    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mSecondaryHaAddr:I

    .line 77
    return-void
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    const-string v0, "Index:%d, NaiLength:%d, Nai:%s, MnHaSpiSet:%d, MnHaSpi:%d, MnAaaSpiSet:%d, MnAaaSpi:%d, RevTunPref:%d, HomeAddr:%s, PrimaryHaAddr:%s, mSecondaryHaAddr%s"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-byte v3, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mIndex:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-byte v3, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mNaiLength:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/MipGenUserProfType;->getUsername()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-byte v3, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnHaSpiSet:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnHaSpi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-byte v3, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnAaaSpiSet:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mMnAaaSpi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-byte v3, p0, Lcom/huawei/android/hwnv/MipGenUserProfType;->mRevTunPref:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/MipGenUserProfType;->getHomeAddr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/MipGenUserProfType;->getPrimaryHAIP()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/MipGenUserProfType;->getSecondaryHAIP()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
