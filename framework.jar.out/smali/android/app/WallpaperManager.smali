.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$1;,
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;
    }
.end annotation


# static fields
.field public static final ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field private static DEBUG:Z = false

.field private static final FILE_DRMCID:Ljava/io/File; = null

.field private static final MAX_BYTE_SIZE:I = 0x100

.field private static TAG:Ljava/lang/String;

.field private static mSync:Ljava/lang/Object;

.field private static sGlobals:Landroid/app/WallpaperManager$Globals;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWallpaperXStep:F

.field private mWallpaperYStep:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const-string v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/WallpaperManager;->DEBUG:Z

    .line 94
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/drm/rights"

    const-string v2, "drmcid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/WallpaperManager;->FILE_DRMCID:Ljava/io/File;

    .line 443
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/WallpaperManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    const/high16 v0, -0x4080

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 68
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 455
    iput-object p1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 456
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/os/Looper;)V

    .line 457
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/io/File;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/app/WallpaperManager;->FILE_DRMCID:Ljava/io/File;

    return-object v0
.end method

.method static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "bm"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v10, 0x1

    .line 863
    if-nez p1, :cond_0

    move-object v8, p1

    .line 907
    :goto_0
    return-object v8

    .line 866
    :cond_0
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {p1, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 871
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 873
    .local v3, newbm:Landroid/graphics/Bitmap;
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v3, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 874
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 875
    .local v0, c:Landroid/graphics/Canvas;
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 876
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 877
    .local v5, targetRect:Landroid/graphics/Rect;
    const/4 v8, 0x0

    iput v8, v5, Landroid/graphics/Rect;->top:I

    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 878
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 879
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 881
    const/4 v2, 0x0

    .line 882
    .local v2, deltaw:I
    const/4 v1, 0x0

    .line 884
    .local v1, deltah:I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    if-lez v8, :cond_1

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    if-lez v8, :cond_1

    .line 887
    int-to-float v8, p2

    iget v9, v5, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 888
    .local v6, xScale:F
    int-to-float v8, p3

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 889
    .local v7, yScale:F
    cmpl-float v8, v6, v7

    if-lez v8, :cond_2

    .line 890
    iget v8, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v8, v8

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 891
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v8, v8

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 896
    :goto_1
    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v8

    .line 897
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v8

    .line 900
    .end local v6           #xScale:F
    .end local v7           #yScale:F
    :cond_1
    div-int/lit8 v8, v2, 0x2

    div-int/lit8 v9, v1, 0x2

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 901
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 902
    .local v4, paint:Landroid/graphics/Paint;
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 903
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 904
    const/4 v8, 0x0

    invoke-virtual {v0, p1, v8, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 906
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v8, v3

    .line 907
    goto :goto_0

    .line 893
    .end local v4           #paint:Landroid/graphics/Paint;
    .restart local v6       #xScale:F
    .restart local v7       #yScale:F
    :cond_2
    iget v8, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 894
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 463
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static initGlobals(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 447
    sget-object v0, Landroid/app/WallpaperManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v1, :cond_0

    .line 449
    new-instance v1, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v1, p0}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    .line 451
    :cond_0
    monitor-exit v0

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .parameter "data"
    .parameter "fos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    const v2, 0x8000

    new-array v1, v2, [B

    .line 703
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, amt:I
    if-lez v0, :cond_0

    .line 704
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 706
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    const v0, 0x1080154

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 860
    return-void
.end method

.method public clearWallpaperOffsets(Landroid/os/IBinder;)V
    .locals 6
    .parameter "windowToken"

    .prologue
    .line 843
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    const/high16 v2, -0x4080

    const/high16 v3, -0x4080

    const/high16 v4, -0x4080

    const/high16 v5, -0x4080

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDesiredMinimumHeight()I
    .locals 2

    .prologue
    .line 747
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 750
    :goto_0
    return v1

    .line 748
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 750
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDesiredMinimumWidth()I
    .locals 2

    .prologue
    .line 724
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWidthHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 727
    :goto_0
    return v1

    .line 725
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 727
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 482
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 483
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 484
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 485
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    move-object v2, v1

    .line 488
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 524
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 525
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 526
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v5}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .local v1, dr:Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    .line 529
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v5

    goto :goto_0
.end method

.method public getIWallpaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    .prologue
    .line 469
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 2

    .prologue
    .line 555
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 557
    :goto_0
    return-object v1

    .line 556
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 557
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public peekDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 501
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 502
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 503
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 504
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    move-object v2, v1

    .line 507
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 540
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 541
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 542
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v5}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .local v1, dr:Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    .line 545
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v5

    goto :goto_0
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 8
    .parameter "windowToken"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"

    .prologue
    .line 823
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :goto_0
    return-void

    .line 826
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    :try_start_0
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 611
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_1

    .line 630
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 615
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    const-string v3, "ro.config.hwdrm"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 616
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #calls: Landroid/app/WallpaperManager$Globals;->delDrmCidFile()V
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$600(Landroid/app/WallpaperManager$Globals;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_2
    const/4 v1, 0x0

    .line 621
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 624
    if-eqz v2, :cond_0

    .line 625
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 628
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 624
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_3

    .line 625
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 624
    :cond_3
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setResource(I)V
    .locals 7
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    :try_start_0
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 576
    .local v3, resources:Landroid/content/res/Resources;
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 578
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_1

    .line 580
    const-string v4, "ro.config.hwdrm"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 581
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #calls: Landroid/app/WallpaperManager$Globals;->delDrmCidFile()V
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$600(Landroid/app/WallpaperManager$Globals;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :cond_0
    const/4 v1, 0x0

    .line 586
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 589
    if-eqz v2, :cond_1

    .line 590
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 596
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_0
    return-void

    .line 589
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #resources:Landroid/content/res/Resources;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_2

    .line 590
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 589
    :cond_2
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 594
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 589
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #resources:Landroid/content/res/Resources;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 9
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    :try_start_0
    sget-object v7, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v7}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 647
    .local v3, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v3, :cond_1

    .line 697
    .end local v3           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 650
    .restart local v3       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/4 v4, 0x0

    .line 652
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v5, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 654
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_2
    const-string v7, "ro.config.hwdrm"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eqz v7, :cond_6

    .line 655
    if-eqz p1, :cond_5

    .line 657
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v6

    .line 658
    .local v6, size:I
    const/16 v7, 0x100

    if-gt v6, v7, :cond_4

    .line 660
    if-gtz v6, :cond_2

    .line 691
    if-eqz v5, :cond_0

    .line 692
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 695
    .end local v3           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #size:I
    :catch_0
    move-exception v7

    goto :goto_0

    .line 664
    .restart local v3       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #size:I
    :cond_2
    :try_start_5
    new-array v0, v6, [B

    .line 666
    .local v0, buffer:[B
    const/4 v7, -0x1

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eq v7, v8, :cond_4

    .line 667
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 668
    .local v1, cidStr:Ljava/lang/String;
    const-string v7, "cid"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 670
    sget-object v7, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #calls: Landroid/app/WallpaperManager$Globals;->saveDrmCidFile([B)V
    invoke-static {v7, v0}, Landroid/app/WallpaperManager$Globals;->access$700(Landroid/app/WallpaperManager$Globals;[B)V

    .line 671
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 691
    if-eqz v5, :cond_0

    .line 692
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 675
    :cond_3
    :try_start_7
    sget-object v7, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #calls: Landroid/app/WallpaperManager$Globals;->delDrmCidFile()V
    invoke-static {v7}, Landroid/app/WallpaperManager$Globals;->access$600(Landroid/app/WallpaperManager$Globals;)V

    .line 676
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 691
    if-eqz v5, :cond_0

    .line 692
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    .line 681
    .end local v0           #buffer:[B
    .end local v1           #cidStr:Ljava/lang/String;
    .end local v6           #size:I
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 682
    .local v2, e:Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 684
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    invoke-direct {p0, p1, v5}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 691
    :cond_5
    :goto_1
    if-eqz v5, :cond_0

    .line 692
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_0

    .line 687
    :cond_6
    :try_start_b
    invoke-direct {p0, p1, v5}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 691
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v4, :cond_7

    .line 692
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 691
    :cond_7
    throw v7
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0

    :catchall_1
    move-exception v7

    goto :goto_2
.end method

.method public setWallpaperOffsetSteps(FF)V
    .locals 0
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 802
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 803
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 804
    return-void
.end method

.method public setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .locals 6
    .parameter "windowToken"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 785
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :goto_0
    return-void

    .line 788
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public suggestDesiredDimensions(II)V
    .locals 1
    .parameter "minimumWidth"
    .parameter "minimumHeight"

    .prologue
    .line 764
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->setDimensionHints(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :goto_0
    return-void

    .line 765
    :catch_0
    move-exception v0

    goto :goto_0
.end method
