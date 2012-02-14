.class public Lcom/huawei/android/hwnv/AKeyTypeInfo;
.super Ljava/lang/Object;
.source "AKeyTypeInfo.java"


# static fields
.field private static final NV_A_KEY_DIGITS_SIZE:I = 0x1a


# instance fields
.field private aKeyDigits:[B

.field private mNam:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x1a

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/huawei/android/hwnv/AKeyTypeInfo;->aKeyDigits:[B

    return-void
.end method


# virtual methods
.method public getAKeyDigits()[B
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/huawei/android/hwnv/AKeyTypeInfo;->aKeyDigits:[B

    return-object v0
.end method

.method public getNam()B
    .locals 1

    .prologue
    .line 21
    iget-byte v0, p0, Lcom/huawei/android/hwnv/AKeyTypeInfo;->mNam:B

    return v0
.end method

.method public setAKeyDigits(Ljava/lang/String;)V
    .locals 6
    .parameter "aKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1a

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v5, v3, :cond_0

    .line 35
    new-instance v3, Ljava/security/InvalidParameterException;

    invoke-direct {v3}, Ljava/security/InvalidParameterException;-><init>()V

    throw v3

    .line 37
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 39
    .local v1, c:Ljava/lang/Character;
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 40
    new-instance v3, Ljava/security/InvalidParameterException;

    invoke-direct {v3}, Ljava/security/InvalidParameterException;-><init>()V

    throw v3

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v1           #c:Ljava/lang/Character;
    :cond_2
    const-string v3, "18446744073709551615"

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 45
    new-instance v3, Ljava/security/InvalidParameterException;

    invoke-direct {v3}, Ljava/security/InvalidParameterException;-><init>()V

    throw v3

    .line 48
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 49
    .local v0, aKeyBytes:[B
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    .line 51
    iget-object v3, p0, Lcom/huawei/android/hwnv/AKeyTypeInfo;->aKeyDigits:[B

    aget-byte v4, v0, v2

    aput-byte v4, v3, v2

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    :cond_4
    return-void
.end method

.method public setNam(B)V
    .locals 0
    .parameter "mNam"

    .prologue
    .line 29
    iput-byte p1, p0, Lcom/huawei/android/hwnv/AKeyTypeInfo;->mNam:B

    .line 30
    return-void
.end method
