.class final Landroid/content/ContentResolver$CursorWrapperInner;
.super Landroid/database/CursorWrapper;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorWrapperInner"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CursorWrapperInner"


# instance fields
.field private mCloseFlag:Z

.field private mContentProvider:Landroid/content/IContentProvider;

.field final synthetic this$0:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Landroid/content/IContentProvider;)V
    .locals 1
    .parameter
    .parameter "cursor"
    .parameter "icp"

    .prologue
    .line 1397
    iput-object p1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->this$0:Landroid/content/ContentResolver;

    .line 1398
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1395
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseFlag:Z

    .line 1399
    iput-object p3, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mContentProvider:Landroid/content/IContentProvider;

    .line 1400
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1404
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 1405
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->this$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1406
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseFlag:Z

    .line 1407
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1412
    :try_start_0
    iget-boolean v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseFlag:Z

    if-nez v0, :cond_0

    .line 1413
    invoke-virtual {p0}, Landroid/content/ContentResolver$CursorWrapperInner;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1418
    return-void

    .line 1416
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
