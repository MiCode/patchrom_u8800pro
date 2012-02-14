.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# static fields
.field private static final DRMPATH_COUNT:I = 0x1

.field private static final DRMPATH_INDEX:I = 0x1

.field private static final DRM_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mAudio:Landroid/media/MediaPlayer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDrmContent:Landroid/hwdrm/drm1/HWDrmContent;

.field private mDrmContentID:I

.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private mHWDrmServiceProxy:Landroid/media/HWDrmServiceProxy;

.field private mStreamType:I

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "_data"

    .line 50
    const-string v0, "Ringtone"

    sput-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    .line 55
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v6, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 61
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v6, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mDrmContent:Landroid/hwdrm/drm1/HWDrmContent;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/Ringtone;->mDrmContentID:I

    .line 91
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 92
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 93
    return-void
.end method

.method private getDrmpath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "uri"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 255
    const/4 v10, 0x0

    .line 256
    .local v10, targetPath:Ljava/lang/String;
    const-string/jumbo v0, "settings"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v6

    .line 261
    .local v6, actualUri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v11

    .line 310
    .end local v6           #actualUri:Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 265
    .restart local v6       #actualUri:Landroid/net/Uri;
    :cond_0
    invoke-direct {p0, v6}, Landroid/media/Ringtone;->getDrmpath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 266
    .end local v6           #actualUri:Landroid/net/Uri;
    :cond_1
    const-string v0, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    :try_start_0
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 272
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v12, v0, :cond_2

    .line 273
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 274
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 276
    .local v9, path:Ljava/lang/String;
    iget-object v0, p0, Landroid/media/Ringtone;->mHWDrmServiceProxy:Landroid/media/HWDrmServiceProxy;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/Ringtone;->mHWDrmServiceProxy:Landroid/media/HWDrmServiceProxy;

    invoke-virtual {v0}, Landroid/media/HWDrmServiceProxy;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    iget-object v0, p0, Landroid/media/Ringtone;->mHWDrmServiceProxy:Landroid/media/HWDrmServiceProxy;

    invoke-virtual {v0, v9}, Landroid/media/HWDrmServiceProxy;->newDrmContent(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/Ringtone;->mDrmContentID:I

    .line 278
    iget v0, p0, Landroid/media/Ringtone;->mDrmContentID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 279
    iget-object v0, p0, Landroid/media/Ringtone;->mHWDrmServiceProxy:Landroid/media/HWDrmServiceProxy;

    iget v1, p0, Landroid/media/Ringtone;->mDrmContentID:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/HWDrmServiceProxy;->startConsume(III)Ljava/lang/String;

    move-result-object v10

    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #path:Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v0, v10

    .line 310
    goto :goto_0

    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #path:Ljava/lang/String;
    :cond_3
    move-object v0, v11

    .line 281
    goto :goto_0

    .line 288
    :cond_4
    new-instance v0, Landroid/hwdrm/drm1/HWDrmContent;

    invoke-direct {v0, v9}, Landroid/hwdrm/drm1/HWDrmContent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/Ringtone;->mDrmContent:Landroid/hwdrm/drm1/HWDrmContent;

    .line 289
    iget-object v0, p0, Landroid/media/Ringtone;->mDrmContent:Landroid/hwdrm/drm1/HWDrmContent;

    invoke-virtual {v0}, Landroid/hwdrm/drm1/HWDrmContent;->isDrmFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 290
    iget-object v0, p0, Landroid/media/Ringtone;->mDrmContent:Landroid/hwdrm/drm1/HWDrmContent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hwdrm/drm1/HWDrmContent;->startConsume(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_1

    :cond_5
    move-object v0, v11

    .line 292
    goto :goto_0

    .line 304
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 305
    .local v8, e:Ljava/lang/Exception;
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v1, "getDrmpath catch exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    .line 306
    goto :goto_0
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "uri"
    .parameter "followSettingsUri"

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 137
    const/4 v9, 0x0

    .line 138
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 142
    .local v10, title:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, authority:Ljava/lang/String;
    const-string/jumbo v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    if-eqz p2, :cond_0

    .line 147
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 149
    .local v7, actualUri:Landroid/net/Uri;
    invoke-static {p0, v7, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, actualTitle:Ljava/lang/String;
    const v1, 0x104031d

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v6, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 177
    .end local v6           #actualTitle:Ljava/lang/String;
    .end local v7           #actualUri:Landroid/net/Uri;
    .end local v8           #authority:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    .line 178
    const v1, 0x1040320

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 180
    if-nez v10, :cond_1

    .line 181
    const-string v10, ""

    :cond_1
    move-object v1, v10

    .line 185
    :cond_2
    :goto_1
    return-object v1

    .line 156
    .restart local v8       #authority:Ljava/lang/String;
    :cond_3
    const-string v1, "drm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 157
    sget-object v2, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 163
    :cond_4
    :goto_2
    if-eqz v9, :cond_6

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v11, :cond_6

    .line 164
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 165
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 170
    if-eqz v9, :cond_2

    .line 171
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 158
    :cond_5
    const-string v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    sget-object v2, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_2

    .line 167
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 170
    if-eqz v9, :cond_0

    .line 171
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_7

    .line 171
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method

.method private openMediaPlayer()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string/jumbo v10, "true"

    const-string v9, "ro.config.hwdrm"

    const-string v8, "false"

    .line 189
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 190
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 192
    const-string v0, "ro.config.hwdrm"

    const-string v0, "false"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/media/Ringtone;->getDrmpath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, targetPath:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 195
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 219
    .end local v7           #targetPath:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 220
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 223
    const-string v0, "ro.config.hwdrm"

    const-string v0, "false"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, packageName:Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroid/media/Ringtone;->mHWDrmServiceProxy:Landroid/media/HWDrmServiceProxy;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/media/Ringtone;->mHWDrmServiceProxy:Landroid/media/HWDrmServiceProxy;

    invoke-virtual {v0}, Landroid/media/HWDrmServiceProxy;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/media/Ringtone;->mDrmContentID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 228
    iget-object v0, p0, Landroid/media/Ringtone;->mHWDrmServiceProxy:Landroid/media/HWDrmServiceProxy;

    iget v1, p0, Landroid/media/Ringtone;->mDrmContentID:I

    invoke-virtual {v0, v1}, Landroid/media/HWDrmServiceProxy;->endConsume(I)I

    .line 237
    .end local v6           #packageName:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 197
    .restart local v7       #targetPath:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 200
    .end local v7           #targetPath:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_4

    .line 204
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 205
    :cond_4
    iget-object v0, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 210
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 212
    :cond_5
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto/16 :goto_0

    .line 217
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No data source set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    .restart local v6       #packageName:Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Landroid/media/Ringtone;->mDrmContent:Landroid/hwdrm/drm1/HWDrmContent;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/media/Ringtone;->mDrmContent:Landroid/hwdrm/drm1/HWDrmContent;

    invoke-virtual {v0}, Landroid/hwdrm/drm1/HWDrmContent;->endConsume()I

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mDrmContent:Landroid/hwdrm/drm1/HWDrmContent;

    goto :goto_1
.end method


# virtual methods
.method public getStreamType()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Landroid/media/Ringtone;->mStreamType:I

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 132
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method open(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    iput-object p1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 246
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 247
    return-void
.end method

.method open(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 251
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 252
    return-void
.end method

.method open(Ljava/io/FileDescriptor;)V
    .locals 0
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    iput-object p1, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 241
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 242
    return-void
.end method

.method public play()V
    .locals 3

    .prologue
    .line 318
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 320
    :try_start_0
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 333
    :cond_1
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v2, "play() caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public setHWDrmServiceProxy(Landroid/media/HWDrmServiceProxy;)V
    .locals 0
    .parameter "hwDrmServiceProxy"

    .prologue
    .line 86
    iput-object p1, p0, Landroid/media/Ringtone;->mHWDrmServiceProxy:Landroid/media/HWDrmServiceProxy;

    .line 87
    return-void
.end method

.method public setStreamType(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 101
    iput p1, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 103
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t set the stream type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 369
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 341
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 342
    iput-object v2, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 346
    :cond_0
    const-string v0, "ro.config.hwdrm"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Landroid/media/Ringtone;->mHWDrmServiceProxy:Landroid/media/HWDrmServiceProxy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/Ringtone;->mHWDrmServiceProxy:Landroid/media/HWDrmServiceProxy;

    invoke-virtual {v0}, Landroid/media/HWDrmServiceProxy;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/media/Ringtone;->mDrmContentID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 349
    iget-object v0, p0, Landroid/media/Ringtone;->mHWDrmServiceProxy:Landroid/media/HWDrmServiceProxy;

    iget v1, p0, Landroid/media/Ringtone;->mDrmContentID:I

    invoke-virtual {v0, v1}, Landroid/media/HWDrmServiceProxy;->endConsume(I)I

    .line 357
    :cond_1
    :goto_0
    return-void

    .line 350
    :cond_2
    iget-object v0, p0, Landroid/media/Ringtone;->mDrmContent:Landroid/hwdrm/drm1/HWDrmContent;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Landroid/media/Ringtone;->mDrmContent:Landroid/hwdrm/drm1/HWDrmContent;

    invoke-virtual {v0}, Landroid/hwdrm/drm1/HWDrmContent;->endConsume()I

    .line 352
    iput-object v2, p0, Landroid/media/Ringtone;->mDrmContent:Landroid/hwdrm/drm1/HWDrmContent;

    goto :goto_0
.end method
