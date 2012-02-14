.class Landroid/webkit/LoadListener$1;
.super Ljava/lang/Object;
.source "LoadListener.java"

# interfaces
.implements Landroid/net/http/Headers$HeaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/LoadListener;


# direct methods
.method constructor <init>(Landroid/webkit/LoadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Landroid/webkit/LoadListener$1;->this$0:Landroid/webkit/LoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public header(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 386
    const/4 v1, 0x0

    .line 387
    .local v1, mWaitRoTime:I
    const/4 v0, 0x0

    .line 389
    .local v0, mOmaDownloadRoPush:Z
    const-string v2, "X-Oma-Drm-Separate-Delivery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 390
    const-string/jumbo v2, "webkit"

    const-string v3, "handleHeaders"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-eqz p2, :cond_0

    .line 392
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 394
    :cond_0
    const/16 v2, 0x19

    if-gt v1, v2, :cond_1

    if-gtz v1, :cond_2

    .line 396
    :cond_1
    const/16 v1, 0x19

    .line 398
    :cond_2
    if-lez v1, :cond_3

    .line 399
    iget-object v2, p0, Landroid/webkit/LoadListener$1;->this$0:Landroid/webkit/LoadListener;

    invoke-virtual {v2, v1}, Landroid/webkit/LoadListener;->downloadRoPush(I)V

    .line 402
    :cond_3
    return-void
.end method
