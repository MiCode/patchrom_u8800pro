.class public Landroid/hwdrm/drm1/HWDrmContent;
.super Ljava/lang/Object;
.source "HWDrmContent.java"


# static fields
.field private static final HWDRM_DIALOG_ACTION:Ljava/lang/String; = "android.hwdrm.action.dialog.DISPLAY"

.field private static final TAG:Ljava/lang/String; = "DrmContent"


# instance fields
.field private cid:Ljava/lang/String;

.field private drmMimetype:I

.field private drmfileName:Ljava/lang/String;

.field private fileMimeType:Ljava/lang/String;

.field private id:I

.field private inputData:Ljava/io/InputStream;

.field private inputDataLen:I

.field private isCanForward:Z

.field private isCanbeCopy:Z

.field private isCanbeCut:Z

.field private isDrmFile:Z

.field private mStatus:I

.field private rightIssuer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 608
    :try_start_0
    const-string v1, "hwdrm1_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :goto_0
    return-void

    .line 609
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 610
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "DrmContent"

    const-string v2, "WARNING: Could not load libhwdrm1_jni.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .parameter "inputSourceData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hwdrm/drm1/HWDrmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v4, p0, Landroid/hwdrm/drm1/HWDrmContent;->mStatus:I

    .line 24
    iput-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->cid:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmfileName:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->rightIssuer:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->fileMimeType:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputData:Ljava/io/InputStream;

    .line 30
    iput v3, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputDataLen:I

    .line 32
    iput v4, p0, Landroid/hwdrm/drm1/HWDrmContent;->id:I

    .line 33
    iput v3, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmMimetype:I

    .line 34
    iput-boolean v3, p0, Landroid/hwdrm/drm1/HWDrmContent;->isDrmFile:Z

    .line 35
    iput-boolean v3, p0, Landroid/hwdrm/drm1/HWDrmContent;->isCanForward:Z

    .line 36
    iput-boolean v2, p0, Landroid/hwdrm/drm1/HWDrmContent;->isCanbeCopy:Z

    .line 37
    iput-boolean v2, p0, Landroid/hwdrm/drm1/HWDrmContent;->isCanbeCut:Z

    .line 76
    iput-object p1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputData:Ljava/io/InputStream;

    .line 77
    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputData:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Landroid/hwdrm/drm1/HWDrmException;

    const-string v2, "input params error."

    const v3, 0x10004

    invoke-direct {v1, v2, v3}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 81
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputData:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    iput v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputDataLen:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputData:Ljava/io/InputStream;

    iget v2, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputDataLen:I

    invoke-direct {p0, v1, v2, v3}, Landroid/hwdrm/drm1/HWDrmContent;->nativeCreateDrmContent(Ljava/io/InputStream;II)I

    move-result v1

    iput v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->id:I

    .line 88
    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputData:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 90
    :try_start_1
    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputData:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :cond_1
    :goto_1
    iget v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->id:I

    if-ne v4, v1, :cond_2

    .line 96
    new-instance v1, Landroid/hwdrm/drm1/HWDrmException;

    const-string v2, "nativeCreateDrmContent() returned JNI_DRM_FAILURE"

    const v3, 0x10002

    invoke-direct {v1, v2, v3}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 82
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 83
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 92
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 98
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-direct {p0}, Landroid/hwdrm/drm1/HWDrmContent;->initialize()V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hwdrm/drm1/HWDrmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v4, p0, Landroid/hwdrm/drm1/HWDrmContent;->mStatus:I

    .line 24
    iput-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->cid:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmfileName:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->rightIssuer:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->fileMimeType:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputData:Ljava/io/InputStream;

    .line 30
    iput v3, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputDataLen:I

    .line 32
    iput v4, p0, Landroid/hwdrm/drm1/HWDrmContent;->id:I

    .line 33
    iput v3, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmMimetype:I

    .line 34
    iput-boolean v3, p0, Landroid/hwdrm/drm1/HWDrmContent;->isDrmFile:Z

    .line 35
    iput-boolean v3, p0, Landroid/hwdrm/drm1/HWDrmContent;->isCanForward:Z

    .line 36
    iput-boolean v2, p0, Landroid/hwdrm/drm1/HWDrmContent;->isCanbeCopy:Z

    .line 37
    iput-boolean v2, p0, Landroid/hwdrm/drm1/HWDrmContent;->isCanbeCut:Z

    .line 42
    iput-object p1, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmfileName:Ljava/lang/String;

    .line 45
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputData:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputData:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Landroid/hwdrm/drm1/HWDrmException;

    const-string v2, "input params error."

    const v3, 0x10004

    invoke-direct {v1, v2, v3}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 46
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 47
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputData:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    iput v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputDataLen:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    :goto_1
    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputData:Ljava/io/InputStream;

    iget v2, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputDataLen:I

    invoke-direct {p0, v1, v2, v3}, Landroid/hwdrm/drm1/HWDrmContent;->nativeCreateDrmContent(Ljava/io/InputStream;II)I

    move-result v1

    iput v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->id:I

    .line 62
    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputData:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 64
    :try_start_2
    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->inputData:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 69
    :cond_1
    :goto_2
    iget v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->id:I

    if-ne v4, v1, :cond_2

    .line 70
    new-instance v1, Landroid/hwdrm/drm1/HWDrmException;

    const-string v2, "nativeCreateDrmContent() returned JNI_DRM_FAILURE"

    const v3, 0x10002

    invoke-direct {v1, v2, v3}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 54
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 55
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 65
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 66
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 72
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-direct {p0}, Landroid/hwdrm/drm1/HWDrmContent;->initialize()V

    .line 73
    return-void
.end method

.method private initialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hwdrm/drm1/HWDrmException;
        }
    .end annotation

    .prologue
    const v2, 0x10002

    const/4 v1, 0x1

    .line 158
    invoke-direct {p0}, Landroid/hwdrm/drm1/HWDrmContent;->nativeGetRightsAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->rightIssuer:Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Landroid/hwdrm/drm1/HWDrmContent;->nativeGetContentID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->cid:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->cid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Landroid/hwdrm/drm1/HWDrmException;

    const-string v1, "nativeGetContentID() returned JNI_DRM_FAILURE"

    invoke-direct {v0, v1, v2}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 166
    :cond_0
    invoke-direct {p0}, Landroid/hwdrm/drm1/HWDrmContent;->nativeGetContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->fileMimeType:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->fileMimeType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 168
    new-instance v0, Landroid/hwdrm/drm1/HWDrmException;

    const-string v1, "nativeGetContentType() returned JNI_DRM_FAILURE"

    invoke-direct {v0, v1, v2}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 174
    :cond_1
    invoke-direct {p0}, Landroid/hwdrm/drm1/HWDrmContent;->nativeGetDrmMimetype()I

    move-result v0

    iput v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmMimetype:I

    .line 175
    iget v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmMimetype:I

    if-nez v0, :cond_2

    .line 176
    new-instance v0, Landroid/hwdrm/drm1/HWDrmException;

    const-string v1, "nativeGetDrmMimetype() returned JNI_DRM_FAILURE"

    invoke-direct {v0, v1, v2}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 184
    :cond_2
    iget v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmMimetype:I

    if-eq v1, v0, :cond_3

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->isCanForward:Z

    .line 190
    :goto_0
    iput-boolean v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->isDrmFile:Z

    .line 191
    return-void

    .line 187
    :cond_3
    iput-boolean v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->isCanForward:Z

    goto :goto_0
.end method

.method private native nativeCanForward()Z
.end method

.method private native nativeCheckAutoUse(I)Z
.end method

.method private native nativeCheckRights(I)Z
.end method

.method private native nativeCreateDrmContent(Ljava/io/InputStream;II)I
.end method

.method private native nativeEndConsume()I
.end method

.method private native nativeGetContentID()Ljava/lang/String;
.end method

.method private native nativeGetContentIDForByteArray()[B
.end method

.method private native nativeGetContentType()Ljava/lang/String;
.end method

.method private native nativeGetDrmMimetype()I
.end method

.method private native nativeGetRightInfo(ILandroid/hwdrm/drm1/HWDrmRightInfo;)I
.end method

.method private native nativeGetRightsAddress()Ljava/lang/String;
.end method

.method private native nativePauseConsume()I
.end method

.method private native nativeResumeConsume()I
.end method

.method private native nativeStartConsume(Ljava/io/InputStream;II)Ljava/lang/String;
.end method

.method private native nativeStartConsume(Ljava/lang/String;II)Ljava/lang/String;
.end method


# virtual methods
.method public checkForward()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->isCanForward:Z

    return v0
.end method

.method public endConsume()I
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 413
    .local v0, returnValue:I
    invoke-direct {p0}, Landroid/hwdrm/drm1/HWDrmContent;->nativeEndConsume()I

    move-result v0

    .line 414
    if-eqz v0, :cond_0

    .line 416
    const/4 v0, -0x1

    .line 419
    :cond_0
    return v0
.end method

.method protected native finalize()V
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getCidBytes()[B
    .locals 1

    .prologue
    .line 470
    invoke-direct {p0}, Landroid/hwdrm/drm1/HWDrmContent;->nativeGetContentIDForByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getDcfMimetype()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmMimetype:I

    return v0
.end method

.method public getFileMimetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->fileMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRightInfo(I)Landroid/hwdrm/drm1/HWDrmRightInfo;
    .locals 5
    .parameter "roPermission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hwdrm/drm1/HWDrmException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    const/4 v2, 0x4

    if-le p1, v2, :cond_1

    .line 260
    :cond_0
    new-instance v2, Landroid/hwdrm/drm1/HWDrmException;

    const-string v3, "no valid parameter"

    const v4, 0x10004

    invoke-direct {v2, v3, v4}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 262
    :cond_1
    const/4 v1, -0x1

    .line 263
    .local v1, lResult:I
    new-instance v0, Landroid/hwdrm/drm1/HWDrmRightInfo;

    invoke-direct {v0}, Landroid/hwdrm/drm1/HWDrmRightInfo;-><init>()V

    .line 266
    .local v0, ROInfo:Landroid/hwdrm/drm1/HWDrmRightInfo;
    invoke-direct {p0, p1, v0}, Landroid/hwdrm/drm1/HWDrmContent;->nativeGetRightInfo(ILandroid/hwdrm/drm1/HWDrmRightInfo;)I

    move-result v1

    .line 268
    if-eqz v1, :cond_2

    .line 269
    new-instance v2, Landroid/hwdrm/drm1/HWDrmException;

    const-string v3, "nativeGetRightInfo() returned JNI_DRM_FAILURE"

    const v4, 0x10002

    invoke-direct {v2, v3, v4}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 272
    :cond_2
    return-object v0
.end method

.method public getRightIssuer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->rightIssuer:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoUse(I)Z
    .locals 3
    .parameter "roPermission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hwdrm/drm1/HWDrmException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 202
    :cond_0
    new-instance v0, Landroid/hwdrm/drm1/HWDrmException;

    const-string v1, "no valid parameter"

    const v2, 0x10004

    invoke-direct {v0, v1, v2}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 204
    :cond_1
    invoke-direct {p0, p1}, Landroid/hwdrm/drm1/HWDrmContent;->nativeCheckAutoUse(I)Z

    move-result v0

    return v0
.end method

.method public isCanbeCopy()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 427
    invoke-virtual {p0}, Landroid/hwdrm/drm1/HWDrmContent;->getDcfMimetype()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->isCanbeCopy:Z

    .line 432
    :goto_0
    iget-boolean v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->isCanbeCopy:Z

    return v0

    .line 430
    :cond_0
    iput-boolean v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->isCanbeCopy:Z

    goto :goto_0
.end method

.method public isCanbeCut()Z
    .locals 2

    .prologue
    .line 440
    const/4 v0, 0x4

    invoke-virtual {p0}, Landroid/hwdrm/drm1/HWDrmContent;->getDcfMimetype()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 445
    :goto_0
    iget-boolean v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->isCanbeCut:Z

    return v0

    .line 443
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->isCanbeCut:Z

    goto :goto_0
.end method

.method public isDrmFile()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/hwdrm/drm1/HWDrmContent;->isDrmFile:Z

    return v0
.end method

.method public isValidRight(I)Z
    .locals 3
    .parameter "roPermission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hwdrm/drm1/HWDrmException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 216
    :cond_0
    new-instance v0, Landroid/hwdrm/drm1/HWDrmException;

    const-string v1, "no valid parameter"

    const v2, 0x10004

    invoke-direct {v0, v1, v2}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 218
    :cond_1
    invoke-direct {p0, p1}, Landroid/hwdrm/drm1/HWDrmContent;->nativeCheckRights(I)Z

    move-result v0

    return v0
.end method

.method public pauseConsume()I
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 375
    .local v0, returnValue:I
    invoke-direct {p0}, Landroid/hwdrm/drm1/HWDrmContent;->nativePauseConsume()I

    move-result v0

    .line 376
    if-eqz v0, :cond_0

    .line 378
    const/4 v0, -0x1

    .line 381
    :cond_0
    return v0
.end method

.method public resumeConsume()I
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 394
    .local v0, returnValue:I
    invoke-direct {p0}, Landroid/hwdrm/drm1/HWDrmContent;->nativeResumeConsume()I

    move-result v0

    .line 395
    if-eqz v0, :cond_0

    .line 397
    const/4 v0, -0x1

    .line 400
    :cond_0
    return v0
.end method

.method public roUpdate(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x1

    const-string v5, "android.hwdrm.action.dialog.DISPLAY"

    .line 230
    if-nez p1, :cond_0

    .line 231
    const/4 v1, 0x0

    .line 246
    :goto_0
    return v1

    .line 233
    :cond_0
    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->rightIssuer:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p0, Landroid/hwdrm/drm1/HWDrmContent;->rightIssuer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hwdrm.action.dialog.DISPLAY"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    const-string v1, "sdnonrighturl"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    .line 238
    goto :goto_0

    .line 241
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hwdrm.action.dialog.DISPLAY"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 243
    const-string v1, "rightIssuer"

    iget-object v2, p0, Landroid/hwdrm/drm1/HWDrmContent;->rightIssuer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    .line 246
    goto :goto_0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 453
    iput-object p1, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmfileName:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public startConsume(II)Ljava/lang/String;
    .locals 5
    .parameter "roPermission"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hwdrm/drm1/HWDrmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const-string v4, "no valid rights"

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, targetPath:Ljava/lang/String;
    if-eq p2, v3, :cond_0

    if-eqz p2, :cond_0

    .line 288
    const/4 p2, 0x0

    .line 291
    :cond_0
    if-lt p1, v3, :cond_1

    const/4 v1, 0x4

    if-le p1, v1, :cond_2

    .line 292
    :cond_1
    new-instance v1, Landroid/hwdrm/drm1/HWDrmException;

    const-string v2, "no valid parameter"

    const v3, 0x10004

    invoke-direct {v1, v2, v3}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 295
    :cond_2
    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmfileName:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ""

    iget-object v2, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 296
    iget-object v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmfileName:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2}, Landroid/hwdrm/drm1/HWDrmContent;->nativeStartConsume(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 298
    :cond_3
    if-eqz v0, :cond_4

    .line 314
    :goto_0
    return-object v0

    .line 301
    :cond_4
    iget v1, p0, Landroid/hwdrm/drm1/HWDrmContent;->mStatus:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 305
    :sswitch_0
    invoke-virtual {p0}, Landroid/hwdrm/drm1/HWDrmContent;->getDcfMimetype()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 306
    new-instance v1, Landroid/hwdrm/drm1/HWDrmException;

    const-string v2, "no valid rights"

    const v2, 0x20001

    invoke-direct {v1, v4, v2}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 303
    :sswitch_1
    new-instance v1, Landroid/hwdrm/drm1/HWDrmException;

    const-string v2, "call nativeStartConsume() fail"

    const v3, 0x10002

    invoke-direct {v1, v2, v3}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 308
    :cond_5
    new-instance v1, Landroid/hwdrm/drm1/HWDrmException;

    const-string v2, "no valid rights"

    const v2, 0x20002

    invoke-direct {v1, v4, v2}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 301
    nop

    :sswitch_data_0
    .sparse-switch
        -0xa -> :sswitch_0
        -0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public startConsume(Landroid/content/Context;II)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "roPermission"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hwdrm/drm1/HWDrmException;
        }
    .end annotation

    .prologue
    const v6, 0x20002

    const/4 v4, 0x1

    const-string v5, "no valid rights"

    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, targetPath:Ljava/lang/String;
    if-eq p3, v4, :cond_0

    if-eqz p3, :cond_0

    .line 330
    const/4 p3, 0x0

    .line 333
    :cond_0
    if-lt p2, v4, :cond_1

    const/4 v2, 0x4

    if-le p2, v2, :cond_2

    .line 334
    :cond_1
    new-instance v2, Landroid/hwdrm/drm1/HWDrmException;

    const-string v3, "no valid parameter"

    const v4, 0x10004

    invoke-direct {v2, v3, v4}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 337
    :cond_2
    iget-object v2, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmfileName:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, ""

    iget-object v3, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 338
    iget-object v2, p0, Landroid/hwdrm/drm1/HWDrmContent;->drmfileName:Ljava/lang/String;

    invoke-direct {p0, v2, p2, p3}, Landroid/hwdrm/drm1/HWDrmContent;->nativeStartConsume(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 340
    :cond_3
    if-eqz v1, :cond_4

    .line 362
    :goto_0
    return-object v1

    .line 343
    :cond_4
    iget v2, p0, Landroid/hwdrm/drm1/HWDrmContent;->mStatus:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 347
    :sswitch_0
    invoke-virtual {p0}, Landroid/hwdrm/drm1/HWDrmContent;->getDcfMimetype()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 348
    new-instance v2, Landroid/hwdrm/drm1/HWDrmException;

    const-string v3, "no valid rights"

    const v3, 0x20001

    invoke-direct {v2, v5, v3}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 345
    :sswitch_1
    new-instance v2, Landroid/hwdrm/drm1/HWDrmException;

    const-string v3, "call nativeStartConsume() fail"

    const v4, 0x10002

    invoke-direct {v2, v3, v4}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 349
    :cond_5
    invoke-virtual {p0}, Landroid/hwdrm/drm1/HWDrmContent;->getDcfMimetype()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.hwdrm.action.dialog.DISPLAY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    const-string v2, "cdnorights"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 354
    new-instance v2, Landroid/hwdrm/drm1/HWDrmException;

    const-string v3, "no valid rights"

    invoke-direct {v2, v5, v6}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 356
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    new-instance v2, Landroid/hwdrm/drm1/HWDrmException;

    const-string v3, "no valid rights"

    invoke-direct {v2, v5, v6}, Landroid/hwdrm/drm1/HWDrmException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 343
    :sswitch_data_0
    .sparse-switch
        -0xa -> :sswitch_0
        -0x1 -> :sswitch_1
    .end sparse-switch
.end method
