.class Landroid/media/MediaScanner$FileCacheEntry;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileCacheEntry"
.end annotation


# instance fields
.field mLastModified:J

.field mLastModifiedChanged:Z

.field mPath:Ljava/lang/String;

.field mRowId:J

.field mSeenInFileSystem:Z

.field mTableUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;JLjava/lang/String;J)V
    .locals 1
    .parameter "tableUri"
    .parameter "rowId"
    .parameter "path"
    .parameter "lastModified"

    .prologue
    const/4 v0, 0x0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    .line 368
    iput-wide p2, p0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 369
    iput-object p4, p0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 370
    iput-wide p5, p0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    .line 371
    iput-boolean v0, p0, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    .line 372
    iput-boolean v0, p0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    .line 373
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    return-object v0
.end method
