.class public Landroid/hwdrm/drm1/HWDrmException;
.super Ljava/lang/Exception;
.source "HWDrmException.java"


# static fields
.field public static final ERROR_COMMON:I = 0x10001

.field public static final ERROR_JNIFAILED:I = 0x10002

.field public static final ERROR_NORIGHTS_NORENEW:I = 0x20002

.field public static final ERROR_NORIGHTS_RENEW:I = 0x20001

.field public static final ERROR_NO_DRMFILE:I = 0x10003

.field public static final ERROR_NO_VALIDPARAM:I = 0x10004


# instance fields
.field private _errorCode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/hwdrm/drm1/HWDrmException;->_errorCode:I

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/hwdrm/drm1/HWDrmException;->_errorCode:I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "errorCode"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/hwdrm/drm1/HWDrmException;->_errorCode:I

    .line 33
    iput p2, p0, Landroid/hwdrm/drm1/HWDrmException;->_errorCode:I

    .line 34
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Landroid/hwdrm/drm1/HWDrmException;->_errorCode:I

    return v0
.end method
