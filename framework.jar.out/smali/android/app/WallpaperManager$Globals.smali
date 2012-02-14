.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 193
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 194
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 195
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 196
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 209
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/WallpaperManager$Globals;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 184
    invoke-direct {p0}, Landroid/app/WallpaperManager$Globals;->delDrmCidFile()V

    return-void
.end method

.method static synthetic access$700(Landroid/app/WallpaperManager$Globals;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->saveDrmCidFile([B)V

    return-void
.end method

.method private checkValidRights([B)Z
    .locals 5
    .parameter "cid"

    .prologue
    const/4 v4, 0x1

    .line 349
    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/hwdrm/drm1/HWDrmUtils;->checkRightsByCid([BI)I

    move-result v0

    .line 351
    .local v0, result:I
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValidRights() cidResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-ne v0, v4, :cond_0

    move v1, v4

    .line 355
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private delDrmCidFile()V
    .locals 4

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, is_file_delete:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 385
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delDrmCidFile()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    return-void
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x0

    .line 250
    :try_start_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v7, params:Landroid/os/Bundle;
    iget-object v10, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v10, p0, v7}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 252
    .local v4, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_0

    .line 253
    const-string/jumbo v10, "width"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 254
    .local v8, width:I
    const-string v10, "height"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 256
    .local v5, height:I
    const-string v10, "ro.config.hwdrm"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 257
    invoke-direct {p0}, Landroid/app/WallpaperManager$Globals;->getWallpaperCid()[B

    move-result-object v1

    .line 258
    .local v1, cid:[B
    if-eqz v1, :cond_1

    .line 260
    invoke-direct {p0, v1}, Landroid/app/WallpaperManager$Globals;->checkValidRights([B)Z

    move-result v10

    if-nez v10, :cond_1

    .line 261
    invoke-direct {p0}, Landroid/app/WallpaperManager$Globals;->delDrmCidFile()V

    .line 264
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 267
    .local v2, defaultBitmap:Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v9, Landroid/app/WallpaperManager;

    iget-object v10, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, p1, v10}, Landroid/app/WallpaperManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 268
    .local v9, wm:Landroid/app/WallpaperManager;
    invoke-virtual {v9, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v9           #wm:Landroid/app/WallpaperManager;
    :goto_0
    move-object v10, v13

    .line 310
    .end local v1           #cid:[B
    .end local v2           #defaultBitmap:Landroid/graphics/Bitmap;
    .end local v4           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v5           #height:I
    .end local v7           #params:Landroid/os/Bundle;
    .end local v8           #width:I
    :goto_1
    return-object v10

    .line 269
    .restart local v1       #cid:[B
    .restart local v2       #defaultBitmap:Landroid/graphics/Bitmap;
    .restart local v4       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v5       #height:I
    .restart local v7       #params:Landroid/os/Bundle;
    .restart local v8       #width:I
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 270
    .local v3, e:Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "set defaultWallpaper IOException."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    .end local v1           #cid:[B
    .end local v2           #defaultBitmap:Landroid/graphics/Bitmap;
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v5           #height:I
    .end local v7           #params:Landroid/os/Bundle;
    .end local v8           #width:I
    :catch_1
    move-exception v10

    :cond_0
    move-object v10, v13

    .line 310
    goto :goto_1

    .line 279
    .restart local v4       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v5       #height:I
    .restart local v7       #params:Landroid/os/Bundle;
    .restart local v8       #width:I
    :cond_1
    if-lez v8, :cond_2

    if-gtz v5, :cond_4

    .line 282
    :cond_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 285
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 288
    :goto_2
    if-eqz v0, :cond_3

    .line 289
    :try_start_4
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_3
    move-object v10, v0

    .line 291
    goto :goto_1

    .line 296
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_4
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 297
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x0

    iput-boolean v10, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 298
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 299
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 302
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :try_start_5
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 306
    :goto_3
    :try_start_6
    invoke-static {p1, v0, v8, v5}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v10

    goto :goto_1

    .line 286
    .end local v6           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v10

    goto :goto_2

    .line 303
    .restart local v6       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v10

    goto :goto_3
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 393
    const/4 v3, 0x0

    .line 395
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v7, "/data/cust/wallpaper/wallpaper1.jpg"

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    move-object v3, v4

    .line 401
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_3

    .line 402
    :try_start_1
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v6

    .line 403
    .local v6, width:I
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7}, Landroid/app/IWallpaperManager;->getHeightHint()I

    move-result v2

    .line 405
    .local v2, height:I
    if-lez v6, :cond_0

    if-gtz v2, :cond_2

    .line 408
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 410
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 413
    :goto_1
    if-eqz v0, :cond_1

    .line 414
    :try_start_3
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_1
    move-object v7, v0

    .line 439
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #height:I
    .end local v6           #width:I
    :goto_2
    return-object v7

    .line 396
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 397
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080154

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 421
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #height:I
    .restart local v6       #width:I
    :cond_2
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 422
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 423
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 424
    const/4 v7, 0x0

    invoke-static {v3, v7, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 426
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 431
    :goto_3
    :try_start_5
    invoke-static {p1, v0, v6, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v7

    goto :goto_2

    .line 432
    :catch_1
    move-exception v1

    .line 433
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_6
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Can\'t generate default bitmap"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v7, v0

    .line 434
    goto :goto_2

    .line 437
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #height:I
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #width:I
    :catch_2
    move-exception v7

    :cond_3
    move-object v7, v9

    .line 439
    goto :goto_2

    .line 411
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #height:I
    .restart local v6       #width:I
    :catch_3
    move-exception v7

    goto :goto_1

    .line 427
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v7

    goto :goto_3
.end method

.method private getWallpaperCid()[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 316
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 317
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getWallpaperCid() file not exists!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 344
    :goto_0
    return-object v5

    .line 322
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/io/File;

    move-result-object v5

    const/high16 v6, 0x1000

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 324
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 325
    .local v3, in:Ljava/io/FileInputStream;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWallpaperCid() in size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 327
    .local v4, size:I
    if-gtz v4, :cond_1

    .line 328
    invoke-direct {p0}, Landroid/app/WallpaperManager$Globals;->delDrmCidFile()V

    .line 330
    :cond_1
    new-array v0, v4, [B

    .line 332
    .local v0, buffer:[B
    const/4 v5, -0x1

    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 333
    if-eqz v0, :cond_2

    array-length v5, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v5, :cond_3

    :cond_2
    move-object v5, v8

    .line 334
    goto :goto_0

    :cond_3
    move-object v5, v0

    .line 337
    goto :goto_0

    .line 339
    .end local v0           #buffer:[B
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v4           #size:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 340
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v8

    .line 341
    goto :goto_0

    .line 343
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #buffer:[B
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #in:Ljava/io/FileInputStream;
    .restart local v4       #size:I
    :cond_4
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getWallpaperCid() return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 344
    goto :goto_0
.end method

.method private saveDrmCidFile([B)V
    .locals 6
    .parameter "cidBytes"

    .prologue
    .line 360
    const/4 v2, 0x0

    .line 362
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "saveDrmCidFile()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/io/File;

    move-result-object v4

    const v5, 0x38000003

    invoke-static {v4, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 366
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 371
    if-eqz v3, :cond_0

    .line 373
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    .line 378
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 368
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 369
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 371
    if-eqz v2, :cond_1

    .line 373
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 374
    :catch_1
    move-exception v4

    goto :goto_1

    .line 371
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_2

    .line 373
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 371
    :cond_2
    :goto_4
    throw v4

    .line 374
    :catch_2
    move-exception v5

    goto :goto_4

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_0

    .line 371
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 368
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public onWallpaperChanged()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 221
    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 244
    :goto_0
    return-object v1

    .line 229
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 234
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 240
    :goto_1
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 241
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 242
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 238
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 244
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
