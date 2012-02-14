.class Landroid/widget/AbsListView$2;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 3262
    iput-object p1, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3264
    iget-object v0, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 3265
    iget-object v0, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 3266
    iget-object v0, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$2900(Landroid/widget/AbsListView;Z)V

    .line 3267
    iget-object v0, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPersistentDrawingCache:I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 3268
    iget-object v0, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;Z)V

    .line 3270
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3271
    iget-object v0, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3274
    :cond_1
    return-void
.end method
