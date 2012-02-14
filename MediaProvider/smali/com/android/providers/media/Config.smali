.class public final Lcom/android/providers/media/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static final USE_HW_VIRTUAL_SD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "ro.config.hw_virtualsdcard"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/media/Config;->USE_HW_VIRTUAL_SD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasExternalSdCard()Z
    .locals 2

    .prologue
    const-string v1, "/dev/hw_extern_sdcard"

    .line 18
    sget-boolean v0, Lcom/android/providers/media/Config;->USE_HW_VIRTUAL_SD:Z

    if-eqz v0, :cond_2

    .line 19
    const-string v0, "/dev/hw_extern_sdcard"

    invoke-static {v1}, Lcom/android/providers/media/Config;->hasExternalSdCard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/dev/hw_extern_sdcardMounted"

    invoke-static {v0}, Lcom/android/providers/media/Config;->hasExternalSdCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 21
    :goto_0
    return v0

    .line 19
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 21
    :cond_2
    const-string v0, "/dev/hw_extern_sdcard"

    invoke-static {v1}, Lcom/android/providers/media/Config;->hasExternalSdCard(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hasExternalSdCard(Ljava/lang/String;)Z
    .locals 8
    .parameter "filePath"

    .prologue
    const/4 v7, 0x0

    .line 27
    const/4 v2, 0x0

    .line 30
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 33
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v5, 0x2

    :try_start_1
    new-array v0, v5, [B

    .line 34
    .local v0, buff:[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v4

    .line 36
    .local v4, len:I
    if-gez v4, :cond_1

    .line 47
    if-eqz v3, :cond_0

    .line 48
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    move v5, v7

    .line 52
    .end local v0           #buff:[B
    .end local v4           #len:I
    :goto_1
    return v5

    .line 50
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v0       #buff:[B
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #len:I
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 40
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    :try_start_3
    aget-byte v5, v0, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    int-to-char v5, v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    .line 47
    :goto_2
    if-eqz v3, :cond_2

    .line 48
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    move-object v2, v3

    .line 52
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_3
    move v5, v7

    .line 40
    goto :goto_2

    .line 50
    :catch_1
    move-exception v1

    .line 51
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 41
    .end local v0           #buff:[B
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #len:I
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 42
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 47
    if-eqz v2, :cond_4

    .line 48
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_5
    move v5, v7

    .line 52
    goto :goto_1

    .line 50
    :catch_3
    move-exception v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 46
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 47
    :goto_6
    if-eqz v2, :cond_5

    .line 48
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 52
    :cond_5
    :goto_7
    throw v5

    .line 50
    :catch_4
    move-exception v1

    .line 51
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 46
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 41
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    move-object v1, v5

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public static hasInternalSdCard()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v0, Ljava/io/File;

    const-string v1, "/HWUserData/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, internalSdcard:Ljava/io/File;
    const-string v1, "hw_internal_sd"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
