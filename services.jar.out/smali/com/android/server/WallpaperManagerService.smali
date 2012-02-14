.class Lcom/android/server/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "WallpaperService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_DIR:Ljava/io/File;

.field static final WALLPAPER_FILE:Ljava/io/File;


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mHeight:I

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mImageWallpaperComponent:Landroid/content/ComponentName;

.field mLastDiedTime:J

.field mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

.field mName:Ljava/lang/String;

.field mNextWallpaperComponent:Landroid/content/ComponentName;

.field mWallpaperComponent:Landroid/content/ComponentName;

.field mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

.field private final mWallpaperObserver:Landroid/os/FileObserver;

.field mWallpaperUpdating:Z

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.settings/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    .line 95
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 299
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 101
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 110
    new-instance v0, Lcom/android/server/WallpaperManagerService$1;

    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x708

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/WallpaperManagerService$1;-><init>(Lcom/android/server/WallpaperManagerService;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    .line 136
    iput v3, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 137
    iput v3, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 158
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/service/wallpaper/ImageWallpaper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    .line 301
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 302
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 304
    new-instance v0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    .line 305
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mMonitor:Lcom/android/server/WallpaperManagerService$MyPackageMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 306
    sget-object v0, Lcom/android/server/WallpaperManagerService;->WALLPAPER_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 307
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked()V

    .line 308
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 309
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WallpaperManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WallpaperManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .parameter "permission"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_0
    return-void
.end method

.method private loadSettingsLocked()V
    .locals 13

    .prologue
    .line 686
    invoke-static {}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v3

    .line 687
    .local v3, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v5, 0x0

    .line 688
    .local v5, stream:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v2

    .line 689
    .local v2, file:Ljava/io/File;
    const/4 v7, 0x0

    .line 691
    .local v7, success:Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 692
    .end local v5           #stream:Ljava/io/FileInputStream;
    .local v6, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 693
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v4, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 697
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 698
    .local v9, type:I
    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 699
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 700
    .local v8, tag:Ljava/lang/String;
    const-string v10, "wp"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 701
    const/4 v10, 0x0

    const-string v11, "width"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 702
    const/4 v10, 0x0

    const-string v11, "height"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 703
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 704
    const/4 v10, 0x0

    const-string v11, "component"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, comp:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    :goto_0
    iput-object v10, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 717
    .end local v0           #comp:Ljava/lang/String;
    .end local v8           #tag:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 718
    const/4 v7, 0x1

    move-object v5, v6

    .line 731
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v9           #type:I
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v5, :cond_2

    .line 732
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 738
    :cond_2
    :goto_2
    if-nez v7, :cond_3

    .line 739
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 740
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 741
    const-string v10, ""

    iput-object v10, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 743
    :cond_3
    return-void

    .line 705
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v0       #comp:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    .restart local v8       #tag:Ljava/lang/String;
    .restart local v9       #type:I
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 719
    .end local v0           #comp:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #type:I
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 720
    .local v1, e:Ljava/lang/NullPointerException;
    :goto_3
    const-string v10, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 721
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v10

    move-object v1, v10

    .line 722
    .local v1, e:Ljava/lang/NumberFormatException;
    :goto_4
    const-string v10, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 723
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v10

    move-object v1, v10

    .line 724
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v10, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 725
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v10

    move-object v1, v10

    .line 726
    .local v1, e:Ljava/io/IOException;
    :goto_6
    const-string v10, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 727
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v10

    move-object v1, v10

    .line 728
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_7
    const-string v10, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 734
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v10

    goto/16 :goto_2

    .line 727
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v10

    move-object v1, v10

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 725
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v10

    move-object v1, v10

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 723
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v10

    move-object v1, v10

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 721
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v10

    move-object v1, v10

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 719
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v10

    move-object v1, v10

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private static makeJournaledFile()Lcom/android/internal/util/JournaledFile;
    .locals 5

    .prologue
    .line 645
    const-string v0, "/data/system/wallpaper_info.xml"

    .line 646
    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private notifyCallbacksLocked()V
    .locals 4

    .prologue
    .line 622
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 623
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 625
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    :cond_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 633
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 634
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 635
    return-void

    .line 626
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private saveSettingsLocked()V
    .locals 8

    .prologue
    const-string v5, "wp"

    .line 650
    invoke-static {}, Lcom/android/server/WallpaperManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 651
    .local v1, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 653
    .local v3, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .local v4, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 655
    .local v2, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 656
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 658
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 659
    const/4 v5, 0x0

    const-string v6, "width"

    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 660
    const/4 v5, 0x0

    const-string v6, "height"

    iget v7, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 661
    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 662
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    .line 663
    const/4 v5, 0x0

    const-string v6, "component"

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 666
    :cond_0
    const/4 v5, 0x0

    const-string v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 668
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 669
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 670
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 681
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 671
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 673
    .local v0, e:Ljava/io/IOException;
    :goto_1
    if-eqz v3, :cond_1

    .line 674
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 679
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_0

    .line 676
    :catch_1
    move-exception v5

    goto :goto_2

    .line 671
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #stream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #stream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/WallpaperManagerService$WallpaperConnection;)V
    .locals 8
    .parameter "conn"

    .prologue
    .line 610
    :try_start_0
    iget-object v0, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    iget v6, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 614
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "WallpaperService"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    iget-boolean v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperUpdating:Z

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    .locals 19
    .parameter "componentName"

    .prologue
    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    move-object v13, v0

    if-eqz v13, :cond_2

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    move-object v13, v0

    if-nez v13, :cond_1

    .line 481
    if-nez p1, :cond_2

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 494
    :cond_2
    if-nez p1, :cond_5

    .line 495
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x1040018

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, defaultComponent:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 499
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 503
    :cond_3
    const-string v13, "ro.config.hw_CustomizeWallpaper"

    const-string v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 504
    .local v5, huaweiComponent:Ljava/lang/String;
    const-string v13, "0"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 506
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 510
    :cond_4
    if-nez p1, :cond_5

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 518
    .end local v3           #defaultComponent:Ljava/lang/String;
    .end local v5           #huaweiComponent:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/16 v14, 0x1080

    move-object v0, v13

    move-object/from16 v1, p1

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v11

    .line 520
    .local v11, si:Landroid/content/pm/ServiceInfo;
    const-string v13, "android.permission.BIND_WALLPAPER"

    iget-object v14, v11, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 521
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v11           #si:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v13

    move-object v4, v13

    .line 582
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown component "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 526
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11       #si:Landroid/content/pm/ServiceInfo;
    :cond_6
    const/4 v12, 0x0

    .line 528
    .local v12, wi:Landroid/app/WallpaperInfo;
    :try_start_1
    new-instance v7, Landroid/content/Intent;

    const-string v13, "android.service.wallpaper.WallpaperService"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    .local v7, intent:Landroid/content/Intent;
    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    move-object v13, v0

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v13, v7, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 533
    .local v9, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_7

    .line 534
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 535
    .local v10, rsi:Landroid/content/pm/ServiceInfo;
    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v14, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v14, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    if-eqz v13, :cond_8

    .line 538
    :try_start_2
    new-instance v12, Landroid/app/WallpaperInfo;

    .end local v12           #wi:Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v12, v13, v3}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 547
    .end local v10           #rsi:Landroid/content/pm/ServiceInfo;
    .restart local v12       #wi:Landroid/app/WallpaperInfo;
    :cond_7
    if-nez v12, :cond_9

    .line 548
    :try_start_3
    new-instance v13, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Selected service is not a wallpaper: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 539
    .end local v12           #wi:Landroid/app/WallpaperInfo;
    .restart local v10       #rsi:Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v13

    move-object v4, v13

    .line 540
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 541
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v13

    move-object v4, v13

    .line 542
    .local v4, e:Ljava/io/IOException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 533
    .end local v4           #e:Ljava/io/IOException;
    .restart local v12       #wi:Landroid/app/WallpaperInfo;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 555
    .end local v6           #i:I
    .end local v9           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10           #rsi:Landroid/content/pm/ServiceInfo;
    :cond_9
    new-instance v8, Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/server/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/WallpaperManagerService;Landroid/app/WallpaperInfo;)V

    .line 556
    .local v8, newConn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 557
    const-string v13, "android.intent.extra.client_label"

    const v14, 0x1040370

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 559
    const-string v13, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v14, v0

    const/4 v15, 0x0

    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.SET_WALLPAPER"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x1040371

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual {v13, v7, v8, v14}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v13

    if-nez v13, :cond_a

    .line 566
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to bind service: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 570
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked()V

    .line 571
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    .line 572
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 573
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 576
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    move-object v13, v0

    iget-object v14, v8, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v15, 0x7dd

    invoke-interface {v13, v14, v15}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 578
    :catch_3
    move-exception v13

    goto/16 :goto_0
.end method

.method public clearWallpaper()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked()V

    .line 338
    monitor-exit v0

    .line 339
    return-void

    .line 338
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearWallpaperComponentLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 587
    iput-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    .line 588
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 595
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 599
    :try_start_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 602
    :goto_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 603
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 604
    iput-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 606
    :cond_1
    return-void

    .line 600
    :catch_0
    move-exception v0

    goto :goto_1

    .line 592
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public clearWallpaperLocked()V
    .locals 6

    .prologue
    .line 342
    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    .line 343
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 344
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 346
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 348
    .local v2, ident:J
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 358
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v4, "WallpaperService"

    const-string v5, "Default wallpaper component not found!"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 356
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 867
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    :goto_0
    return-void

    .line 876
    :cond_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 877
    :try_start_0
    const-string v2, "Current Wallpaper Service state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
    const-string v2, "  mWidth="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 879
    const-string v2, " mHeight="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 880
    const-string v2, "  mName="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    const-string v2, "  mWallpaperComponent="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 882
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_1

    .line 883
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    .line 884
    .local v0, conn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    const-string v2, "  Wallpaper connection "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    const-string v2, "    mInfo.component="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 887
    const-string v2, "    mToken="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 888
    const-string v2, "    mService="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 889
    const-string v2, "    mEngine="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 890
    const-string v2, "    mLastDiedTime="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 891
    iget-wide v2, p0, Lcom/android/server/WallpaperManagerService;->mLastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 893
    .end local v0           #conn:Lcom/android/server/WallpaperManagerService$WallpaperConnection;
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 313
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 314
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 315
    return-void
.end method

.method public getHeightHint()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_0
    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    monitor-exit v0

    return v1

    .line 395
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .parameter "cb"
    .parameter "outParams"

    .prologue
    const/4 v5, 0x0

    .line 400
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 402
    if-eqz p2, :cond_0

    .line 403
    :try_start_0
    const-string v3, "width"

    iget v4, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    const-string v3, "height"

    iget v4, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    :cond_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 407
    sget-object v1, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    .line 408
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 409
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v5

    .line 416
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return-object v2

    .line 411
    .restart local v1       #f:Ljava/io/File;
    :cond_1
    const/high16 v3, 0x1000

    :try_start_2
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    :try_start_3
    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    .line 412
    .end local v1           #f:Ljava/io/File;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 414
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "WallpaperService"

    const-string v4, "Error getting wallpaper"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    monitor-exit v2

    move-object v2, v5

    goto :goto_0

    .line 417
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v0

    move-object v0, v1

    .line 425
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWidthHint()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    monitor-exit v0

    return v1

    .line 389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method restoreNamedResourceLocked()Z
    .locals 23

    .prologue
    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    const-string v19, "res:"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 795
    .local v16, resName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 796
    .local v12, pkg:Ljava/lang/String;
    const/16 v19, 0x3a

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 797
    .local v7, colon:I
    if-lez v7, :cond_0

    .line 798
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 801
    :cond_0
    const/4 v11, 0x0

    .line 802
    .local v11, ident:Ljava/lang/String;
    const/16 v19, 0x2f

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    .line 803
    .local v17, slash:I
    if-lez v17, :cond_1

    .line 804
    add-int/lit8 v19, v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 807
    :cond_1
    const/16 v18, 0x0

    .line 808
    .local v18, type:Ljava/lang/String;
    if-lez v7, :cond_2

    if-lez v17, :cond_2

    sub-int v19, v17, v7

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    .line 809
    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 812
    :cond_2
    if-eqz v12, :cond_8

    if-eqz v11, :cond_8

    if-eqz v18, :cond_8

    .line 813
    const/4 v15, -0x1

    .line 814
    .local v15, resId:I
    const/4 v14, 0x0

    .line 815
    .local v14, res:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 817
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, v19

    move-object v1, v12

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 818
    .local v6, c:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 819
    .local v13, r:Landroid/content/res/Resources;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 820
    if-nez v15, :cond_5

    .line 821
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " type="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ident="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 823
    const/16 v19, 0x0

    .line 848
    if-eqz v14, :cond_3

    .line 850
    :try_start_1
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 853
    :cond_3
    :goto_0
    if-eqz v9, :cond_4

    .line 854
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 856
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 862
    .end local v6           #c:Landroid/content/Context;
    .end local v7           #colon:I
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #ident:Ljava/lang/String;
    .end local v12           #pkg:Ljava/lang/String;
    .end local v13           #r:Landroid/content/res/Resources;
    .end local v14           #res:Ljava/io/InputStream;
    .end local v15           #resId:I
    .end local v16           #resName:Ljava/lang/String;
    .end local v17           #slash:I
    .end local v18           #type:Ljava/lang/String;
    :cond_4
    :goto_1
    return v19

    .line 826
    .restart local v6       #c:Landroid/content/Context;
    .restart local v7       #colon:I
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #ident:Ljava/lang/String;
    .restart local v12       #pkg:Ljava/lang/String;
    .restart local v13       #r:Landroid/content/res/Resources;
    .restart local v14       #res:Ljava/io/InputStream;
    .restart local v15       #resId:I
    .restart local v16       #resName:Ljava/lang/String;
    .restart local v17       #slash:I
    .restart local v18       #type:Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v14

    .line 827
    sget-object v19, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 828
    sget-object v19, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 830
    :cond_6
    new-instance v10, Ljava/io/FileOutputStream;

    sget-object v19, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 832
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .local v10, fos:Ljava/io/FileOutputStream;
    const v19, 0x8000

    :try_start_4
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object v5, v0

    .line 834
    .local v5, buffer:[B
    :goto_2
    invoke-virtual {v14, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, amt:I
    if-lez v4, :cond_9

    .line 835
    const/16 v19, 0x0

    move-object v0, v10

    move-object v1, v5

    move/from16 v2, v19

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    goto :goto_2

    .line 841
    .end local v4           #amt:I
    .end local v5           #buffer:[B
    :catch_0
    move-exception v19

    move-object/from16 v8, v19

    move-object v9, v10

    .line 842
    .end local v6           #c:Landroid/content/Context;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v13           #r:Landroid/content/res/Resources;
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Package name "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " not found"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 848
    if-eqz v14, :cond_7

    .line 850
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 853
    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    .line 854
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 856
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 862
    .end local v7           #colon:I
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #ident:Ljava/lang/String;
    .end local v12           #pkg:Ljava/lang/String;
    .end local v14           #res:Ljava/io/InputStream;
    .end local v15           #resId:I
    .end local v16           #resName:Ljava/lang/String;
    .end local v17           #slash:I
    .end local v18           #type:Ljava/lang/String;
    :cond_8
    :goto_5
    const/16 v19, 0x0

    goto :goto_1

    .line 839
    .restart local v4       #amt:I
    .restart local v5       #buffer:[B
    .restart local v6       #c:Landroid/content/Context;
    .restart local v7       #colon:I
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #ident:Ljava/lang/String;
    .restart local v12       #pkg:Ljava/lang/String;
    .restart local v13       #r:Landroid/content/res/Resources;
    .restart local v14       #res:Ljava/io/InputStream;
    .restart local v15       #resId:I
    .restart local v16       #resName:Ljava/lang/String;
    .restart local v17       #slash:I
    .restart local v18       #type:Ljava/lang/String;
    :cond_9
    :try_start_8
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Restored wallpaper: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    .line 840
    const/16 v19, 0x1

    .line 848
    if-eqz v14, :cond_a

    .line 850
    :try_start_9
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 853
    :cond_a
    :goto_6
    if-eqz v10, :cond_4

    .line 854
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 856
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 857
    .end local v4           #amt:I
    .end local v5           #buffer:[B
    .end local v10           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v20

    goto/16 :goto_1

    .line 843
    .end local v6           #c:Landroid/content/Context;
    .end local v13           #r:Landroid/content/res/Resources;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v19

    move-object/from16 v8, v19

    .line 844
    .local v8, e:Landroid/content/res/Resources$NotFoundException;
    :goto_7
    :try_start_b
    const-string v19, "WallpaperService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Resource not found: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 848
    if-eqz v14, :cond_b

    .line 850
    :try_start_c
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 853
    :cond_b
    :goto_8
    if-eqz v9, :cond_8

    .line 854
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 856
    :try_start_d
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_5

    .line 857
    .end local v8           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v19

    goto :goto_5

    .line 845
    :catch_4
    move-exception v19

    move-object/from16 v8, v19

    .line 846
    .local v8, e:Ljava/io/IOException;
    :goto_9
    :try_start_e
    const-string v19, "WallpaperService"

    const-string v20, "IOException while restoring wallpaper "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 848
    if-eqz v14, :cond_c

    .line 850
    :try_start_f
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 853
    :cond_c
    :goto_a
    if-eqz v9, :cond_8

    .line 854
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 856
    :try_start_10
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_5

    .line 848
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v19

    :goto_b
    if-eqz v14, :cond_d

    .line 850
    :try_start_11
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 853
    :cond_d
    :goto_c
    if-eqz v9, :cond_e

    .line 854
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 856
    :try_start_12
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 848
    :cond_e
    :goto_d
    throw v19

    .line 851
    :catch_5
    move-exception v20

    goto :goto_c

    .line 857
    :catch_6
    move-exception v20

    goto :goto_d

    .line 851
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_7
    move-exception v19

    goto/16 :goto_4

    .local v8, e:Landroid/content/res/Resources$NotFoundException;
    :catch_8
    move-exception v19

    goto :goto_8

    .local v8, e:Ljava/io/IOException;
    :catch_9
    move-exception v19

    goto :goto_a

    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #c:Landroid/content/Context;
    .restart local v13       #r:Landroid/content/res/Resources;
    :catch_a
    move-exception v20

    goto/16 :goto_0

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #amt:I
    .restart local v5       #buffer:[B
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v20

    goto :goto_6

    .line 848
    .end local v4           #amt:I
    .end local v5           #buffer:[B
    :catchall_1
    move-exception v19

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_b

    .line 845
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_c
    move-exception v19

    move-object/from16 v8, v19

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_9

    .line 843
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v19

    move-object/from16 v8, v19

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 841
    .end local v6           #c:Landroid/content/Context;
    .end local v13           #r:Landroid/content/res/Resources;
    :catch_e
    move-exception v19

    move-object/from16 v8, v19

    goto/16 :goto_3
.end method

.method public setDimensionHints(II)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 361
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 363
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    if-eq p2, v1, :cond_3

    .line 369
    :cond_2
    iput p1, p0, Lcom/android/server/WallpaperManagerService;->mWidth:I

    .line 370
    iput p2, p0, Lcom/android/server/WallpaperManagerService;->mHeight:I

    .line 371
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    .line 372
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_3

    .line 373
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 375
    :try_start_1
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService;->mWallpaperConnection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v1, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 379
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V

    .line 383
    :cond_3
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 377
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .parameter "name"

    .prologue
    .line 432
    const-string v3, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v3}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 433
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 434
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 436
    .local v0, ident:J
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 437
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 439
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v4}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V

    .line 440
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    monitor-exit v3

    return-object v2

    .line 444
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 446
    .end local v0           #ident:J
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 464
    const-string v2, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v2}, Lcom/android/server/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 465
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 466
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 468
    .local v0, ident:J
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 472
    monitor-exit v2

    .line 473
    return-void

    .line 470
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 472
    .end local v0           #ident:J
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method settingsRestored()V
    .locals 6

    .prologue
    const-string v5, ""

    .line 749
    const/4 v1, 0x0

    .line 750
    .local v1, success:Z
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 751
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->loadSettingsLocked()V

    .line 752
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 755
    :try_start_1
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 762
    :goto_0
    const/4 v1, 0x1

    .line 778
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 780
    if-nez v1, :cond_1

    .line 781
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore wallpaper: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const-string v2, ""

    iput-object v5, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    .line 783
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 786
    :cond_1
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 787
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/WallpaperManagerService;->saveSettingsLocked()V

    .line 788
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 789
    return-void

    .line 756
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 760
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 778
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 766
    :cond_2
    :try_start_5
    const-string v3, ""

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 768
    const/4 v1, 0x1

    .line 774
    :goto_2
    if-eqz v1, :cond_0

    .line 775
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mImageWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V

    goto :goto_1

    .line 771
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->restoreNamedResourceLocked()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    goto :goto_2

    .line 788
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3
.end method

.method public systemReady()V
    .locals 5

    .prologue
    const-string v2, "WallpaperService"

    .line 319
    iget-object v2, p0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 321
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService;->mNextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 332
    return-void

    .line 322
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 323
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "WallpaperService"

    const-string v4, "Failure starting previous wallpaper"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 326
    :catch_1
    move-exception v1

    .line 327
    .local v1, e2:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v3, "WallpaperService"

    const-string v4, "Failure starting default wallpaper"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    invoke-virtual {p0}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked()V

    goto :goto_0

    .line 331
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #e2:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .parameter "name"

    .prologue
    .line 450
    if-nez p1, :cond_0

    const-string p1, ""

    .line 452
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    const/high16 v3, 0x3800

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 454
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 459
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v2

    .line 456
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 457
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "WallpaperService"

    const-string v3, "Error setting wallpaper"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    const/4 v2, 0x0

    goto :goto_0
.end method
