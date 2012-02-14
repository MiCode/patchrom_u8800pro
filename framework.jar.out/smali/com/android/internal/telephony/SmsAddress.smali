.class public abstract Lcom/android/internal/telephony/SmsAddress;
.super Ljava/lang/Object;
.source "SmsAddress.java"


# static fields
.field public static final TON_ABBREVIATED:I = 0x6

.field public static final TON_ALPHANUMERIC:I = 0x5

.field public static final TON_INTERNATIONAL:I = 0x1

.field public static final TON_NATIONAL:I = 0x2

.field public static final TON_NETWORK:I = 0x3

.field public static final TON_SUBSCRIBER:I = 0x4

.field public static final TON_UNKNOWN:I


# instance fields
.field public address:Ljava/lang/String;

.field public origBytes:[B

.field public ton:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public couldBeEmailGateway()Z
    .locals 5

    .prologue
    const/16 v4, 0x35

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    const/16 v0, 0x99

    const-string v1, "ro.config.hw_opta"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 72
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v4, v0, :cond_0

    move v0, v3

    .line 78
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    .line 78
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v4, v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getAddressString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public isAlphanumeric()Z
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkSpecific()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
