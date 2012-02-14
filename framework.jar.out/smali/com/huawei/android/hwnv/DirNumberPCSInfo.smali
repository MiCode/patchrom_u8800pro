.class public Lcom/huawei/android/hwnv/DirNumberPCSInfo;
.super Ljava/lang/Object;
.source "DirNumberPCSInfo.java"


# static fields
.field private static final NVDIRNUMBPCSSIZ:I = 0xf


# instance fields
.field private digitn:[B

.field private mNam:B

.field private nDigits:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/huawei/android/hwnv/DirNumberPCSInfo;->digitn:[B

    return-void
.end method


# virtual methods
.method public getDigitn()[B
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huawei/android/hwnv/DirNumberPCSInfo;->digitn:[B

    return-object v0
.end method

.method public getDigits()B
    .locals 1

    .prologue
    .line 24
    iget-byte v0, p0, Lcom/huawei/android/hwnv/DirNumberPCSInfo;->nDigits:B

    return v0
.end method

.method public getNam()B
    .locals 1

    .prologue
    .line 21
    iget-byte v0, p0, Lcom/huawei/android/hwnv/DirNumberPCSInfo;->mNam:B

    return v0
.end method
