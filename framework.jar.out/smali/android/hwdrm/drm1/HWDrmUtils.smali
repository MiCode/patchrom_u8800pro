.class public Landroid/hwdrm/drm1/HWDrmUtils;
.super Ljava/lang/Object;
.source "HWDrmUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 304
    :try_start_0
    const-string v1, "hwdrm1_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 306
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "DrmUtils"

    const-string v2, "WARNING: Could not load libhwdrm1_jni.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRightsByCid([BI)I
    .locals 1
    .parameter "cid"
    .parameter "roPermission"

    .prologue
    .line 252
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    .line 255
    :cond_0
    const/4 v0, -0x1

    .line 257
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Landroid/hwdrm/drm1/HWDrmUtils;->nativeCheckRightsBycid([BI)I

    move-result v0

    goto :goto_0
.end method

.method public static delAllRights()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, lResult:I
    invoke-static {}, Landroid/hwdrm/drm1/HWDrmUtils;->nativeDelAllRights()I

    move-result v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    const/4 v0, -0x1

    .line 156
    :cond_0
    return v0
.end method

.method public static installDM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "dmFileName"
    .parameter "mimeTypeStr"
    .parameter "outputDcfFileName"

    .prologue
    const-string v3, "DrmUtils"

    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, lResult:I
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 38
    :cond_0
    const-string v2, "DrmUtils"

    const-string v2, "input param is null"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, -0x1

    move v1, v0

    .line 54
    .end local v0           #lResult:I
    .local v1, lResult:I
    :goto_0
    return v1

    .line 43
    .end local v1           #lResult:I
    .restart local v0       #lResult:I
    :cond_1
    const-string v2, "application/vnd.oma.drm.message"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 44
    const-string v2, "DrmUtils"

    const-string v2, "input mimeTypeStr is DRM_MIMETYPE_MESSAGE_STRING"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, -0x1

    move v1, v0

    .line 46
    .end local v0           #lResult:I
    .restart local v1       #lResult:I
    goto :goto_0

    .line 49
    .end local v1           #lResult:I
    .restart local v0       #lResult:I
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/hwdrm/drm1/HWDrmUtils;->nativeInstallDMFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 54
    .end local v0           #lResult:I
    .restart local v1       #lResult:I
    goto :goto_0
.end method

.method public static installRight(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)I
    .locals 6
    .parameter "context"
    .parameter "roStream"
    .parameter "mimeTypeStr"

    .prologue
    const/4 v5, -0x1

    .line 108
    const/4 v3, 0x0

    .line 110
    .local v3, lRoType:I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v4, v5

    .line 138
    :goto_0
    return v4

    .line 113
    :cond_1
    const-string v4, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 114
    const/4 v3, 0x1

    .line 122
    :goto_1
    const/4 v2, 0x0

    .line 124
    .local v2, inputRoDataLen:I
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 129
    :goto_2
    invoke-static {p1, v2, v3}, Landroid/hwdrm/drm1/HWDrmUtils;->nativeInstallRight(Ljava/io/InputStream;II)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, cid:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 132
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    :cond_2
    :goto_3
    const/4 v4, 0x0

    goto :goto_0

    .line 115
    .end local v0           #cid:Ljava/lang/String;
    .end local v2           #inputRoDataLen:I
    :cond_3
    const-string v4, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 117
    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    move v4, v5

    .line 119
    goto :goto_0

    .line 125
    .restart local v2       #inputRoDataLen:I
    :catch_0
    move-exception v1

    .line 126
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 133
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #cid:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 134
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static installRight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "roFileName"
    .parameter "mimeTypeStr"

    .prologue
    const/4 v7, -0x1

    .line 68
    const/4 v5, 0x0

    .line 70
    .local v5, lRoType:I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v6, v7

    .line 102
    :goto_0
    return v6

    .line 74
    :cond_1
    const-string v6, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 75
    const/4 v5, 0x1

    .line 83
    :goto_1
    const/4 v2, 0x0

    .line 84
    .local v2, inputRoData:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 86
    .local v4, inputRoDataLen:I
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    .end local v2           #inputRoData:Ljava/io/InputStream;
    .local v3, inputRoData:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v4

    move-object v2, v3

    .line 94
    .end local v3           #inputRoData:Ljava/io/InputStream;
    .restart local v2       #inputRoData:Ljava/io/InputStream;
    :goto_2
    invoke-static {v2, v4, v5}, Landroid/hwdrm/drm1/HWDrmUtils;->nativeInstallRight(Ljava/io/InputStream;II)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, cid:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 97
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    :cond_2
    :goto_3
    const/4 v6, 0x0

    goto :goto_0

    .line 76
    .end local v0           #cid:Ljava/lang/String;
    .end local v2           #inputRoData:Ljava/io/InputStream;
    .end local v4           #inputRoDataLen:I
    :cond_3
    const-string v6, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 78
    const/4 v5, 0x2

    goto :goto_1

    :cond_4
    move v6, v7

    .line 80
    goto :goto_0

    .line 88
    .restart local v2       #inputRoData:Ljava/io/InputStream;
    .restart local v4       #inputRoDataLen:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 89
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 90
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 91
    .local v1, e:Ljava/io/IOException;
    :goto_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 98
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #cid:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 99
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 90
    .end local v0           #cid:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #inputRoData:Ljava/io/InputStream;
    .restart local v3       #inputRoData:Ljava/io/InputStream;
    :catch_3
    move-exception v6

    move-object v1, v6

    move-object v2, v3

    .end local v3           #inputRoData:Ljava/io/InputStream;
    .restart local v2       #inputRoData:Ljava/io/InputStream;
    goto :goto_5

    .line 88
    .end local v2           #inputRoData:Ljava/io/InputStream;
    .restart local v3       #inputRoData:Ljava/io/InputStream;
    :catch_4
    move-exception v6

    move-object v1, v6

    move-object v2, v3

    .end local v3           #inputRoData:Ljava/io/InputStream;
    .restart local v2       #inputRoData:Ljava/io/InputStream;
    goto :goto_4
.end method

.method public static isDrmFile(Ljava/io/InputStream;)Landroid/hwdrm/drm1/HWDrmContentInfo;
    .locals 7
    .parameter "input"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 211
    if-nez p0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-object v4

    .line 214
    :cond_1
    new-instance v1, Landroid/hwdrm/drm1/HWDrmContentInfo;

    invoke-direct {v1}, Landroid/hwdrm/drm1/HWDrmContentInfo;-><init>()V

    .line 215
    .local v1, info:Landroid/hwdrm/drm1/HWDrmContentInfo;
    const/4 v3, 0x0

    .line 217
    .local v3, size:I
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 221
    :goto_1
    invoke-static {v1, p0, v3}, Landroid/hwdrm/drm1/HWDrmUtils;->nativeCheckFile(Landroid/hwdrm/drm1/HWDrmContentInfo;Ljava/io/InputStream;I)I

    move-result v2

    .line 222
    .local v2, result:I
    if-eqz p0, :cond_2

    .line 224
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    :cond_2
    :goto_2
    if-nez v2, :cond_0

    .line 230
    invoke-virtual {v1}, Landroid/hwdrm/drm1/HWDrmContentInfo;->getDcfMimetype()I

    move-result v4

    if-eq v5, v4, :cond_3

    .line 231
    invoke-virtual {v1, v6}, Landroid/hwdrm/drm1/HWDrmContentInfo;->setCanForward(I)V

    .line 232
    invoke-virtual {v1, v6}, Landroid/hwdrm/drm1/HWDrmContentInfo;->setCanbeCopy(Z)V

    .line 233
    invoke-virtual {v1, v5}, Landroid/hwdrm/drm1/HWDrmContentInfo;->setCanbeCut(Z)V

    :goto_3
    move-object v4, v1

    .line 239
    goto :goto_0

    .line 218
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 225
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #result:I
    :catch_1
    move-exception v0

    .line 226
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 235
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    invoke-virtual {v1, v5}, Landroid/hwdrm/drm1/HWDrmContentInfo;->setCanForward(I)V

    .line 236
    invoke-virtual {v1, v5}, Landroid/hwdrm/drm1/HWDrmContentInfo;->setCanbeCopy(Z)V

    .line 237
    invoke-virtual {v1, v5}, Landroid/hwdrm/drm1/HWDrmContentInfo;->setCanbeCut(Z)V

    goto :goto_3
.end method

.method public static isDrmFile(Ljava/lang/String;)Landroid/hwdrm/drm1/HWDrmContentInfo;
    .locals 10
    .parameter "filePath"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 166
    if-eqz p0, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v6, v9

    .line 200
    :goto_0
    return-object v6

    .line 169
    :cond_1
    const/4 v2, 0x0

    .line 170
    .local v2, input:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 172
    .local v5, size:I
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    .end local v2           #input:Ljava/io/InputStream;
    .local v3, input:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v5

    move-object v2, v3

    .line 179
    .end local v3           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    :goto_1
    new-instance v1, Landroid/hwdrm/drm1/HWDrmContentInfo;

    invoke-direct {v1}, Landroid/hwdrm/drm1/HWDrmContentInfo;-><init>()V

    .line 180
    .local v1, info:Landroid/hwdrm/drm1/HWDrmContentInfo;
    invoke-static {v1, v2, v5}, Landroid/hwdrm/drm1/HWDrmUtils;->nativeCheckFile(Landroid/hwdrm/drm1/HWDrmContentInfo;Ljava/io/InputStream;I)I

    move-result v4

    .line 181
    .local v4, result:I
    if-eqz v2, :cond_2

    .line 183
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 188
    :cond_2
    :goto_2
    if-nez v4, :cond_4

    .line 189
    invoke-virtual {v1}, Landroid/hwdrm/drm1/HWDrmContentInfo;->getDcfMimetype()I

    move-result v6

    if-eq v7, v6, :cond_3

    .line 190
    invoke-virtual {v1, v8}, Landroid/hwdrm/drm1/HWDrmContentInfo;->setCanForward(I)V

    .line 191
    invoke-virtual {v1, v8}, Landroid/hwdrm/drm1/HWDrmContentInfo;->setCanbeCopy(Z)V

    .line 192
    invoke-virtual {v1, v7}, Landroid/hwdrm/drm1/HWDrmContentInfo;->setCanbeCut(Z)V

    :goto_3
    move-object v6, v1

    .line 198
    goto :goto_0

    .line 174
    .end local v1           #info:Landroid/hwdrm/drm1/HWDrmContentInfo;
    .end local v4           #result:I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 175
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 176
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 177
    .local v0, e:Ljava/io/IOException;
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 184
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #info:Landroid/hwdrm/drm1/HWDrmContentInfo;
    .restart local v4       #result:I
    :catch_2
    move-exception v0

    .line 185
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 194
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    invoke-virtual {v1, v7}, Landroid/hwdrm/drm1/HWDrmContentInfo;->setCanForward(I)V

    .line 195
    invoke-virtual {v1, v7}, Landroid/hwdrm/drm1/HWDrmContentInfo;->setCanbeCopy(Z)V

    .line 196
    invoke-virtual {v1, v7}, Landroid/hwdrm/drm1/HWDrmContentInfo;->setCanbeCut(Z)V

    goto :goto_3

    :cond_4
    move-object v6, v9

    .line 200
    goto :goto_0

    .line 176
    .end local v1           #info:Landroid/hwdrm/drm1/HWDrmContentInfo;
    .end local v2           #input:Ljava/io/InputStream;
    .end local v4           #result:I
    .restart local v3       #input:Ljava/io/InputStream;
    :catch_3
    move-exception v6

    move-object v0, v6

    move-object v2, v3

    .end local v3           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    goto :goto_5

    .line 174
    .end local v2           #input:Ljava/io/InputStream;
    .restart local v3       #input:Ljava/io/InputStream;
    :catch_4
    move-exception v6

    move-object v0, v6

    move-object v2, v3

    .end local v3           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    goto :goto_4
.end method

.method private static native nativeCheckFile(Landroid/hwdrm/drm1/HWDrmContentInfo;Ljava/io/InputStream;I)I
.end method

.method private static native nativeCheckRightsBycid([BI)I
.end method

.method private static native nativeDelAllRights()I
.end method

.method private static native nativeInstallDMFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeInstallRight(Ljava/io/InputStream;II)Ljava/lang/String;
.end method
