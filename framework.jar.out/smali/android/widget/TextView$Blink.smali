.class Landroid/widget/TextView$Blink;
.super Landroid/os/Handler;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Blink"
.end annotation


# instance fields
.field private mCancelled:Z

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 7133
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 7134
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TextView$Blink;->mView:Ljava/lang/ref/WeakReference;

    .line 7135
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 7161
    iget-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    if-nez v0, :cond_0

    .line 7162
    invoke-virtual {p0, p0}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7163
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    .line 7165
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 7138
    iget-boolean v3, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    if-eqz v3, :cond_1

    .line 7158
    :cond_0
    :goto_0
    return-void

    .line 7142
    :cond_1
    invoke-virtual {p0, p0}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7144
    iget-object v3, p0, Landroid/widget/TextView$Blink;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 7146
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7147
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7148
    .local v1, st:I
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7150
    .local v0, en:I
    if-ne v1, v0, :cond_0

    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    .line 7151
    #getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v2}, Landroid/widget/TextView;->access$300(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7152
    #calls: Landroid/widget/TextView;->invalidateCursorPath()V
    invoke-static {v2}, Landroid/widget/TextView;->access$1700(Landroid/widget/TextView;)V

    .line 7155
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    invoke-virtual {p0, p0, v3, v4}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method uncancel()V
    .locals 1

    .prologue
    .line 7168
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    .line 7169
    return-void
.end method
