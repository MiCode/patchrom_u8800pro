.class Landroid/net/http/RequestQueue$1;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/http/RequestQueue;->commitPrioritiesForList(Ljava/util/LinkedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/http/RequestQueue;


# direct methods
.method constructor <init>(Landroid/net/http/RequestQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Landroid/net/http/RequestQueue$1;->this$0:Landroid/net/http/RequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 286
    check-cast p1, Landroid/net/http/Request;

    .end local p1
    iget v0, p1, Landroid/net/http/Request;->mPriority:I

    .line 287
    .local v0, r1:I
    check-cast p2, Landroid/net/http/Request;

    .end local p2
    iget v1, p2, Landroid/net/http/Request;->mPriority:I

    .line 289
    .local v1, r2:I
    if-ne v0, v1, :cond_1

    .line 290
    const/4 v2, 0x0

    .line 297
    :cond_0
    :goto_0
    return v2

    .line 291
    :cond_1
    if-ne v0, v2, :cond_2

    move v2, v3

    .line 292
    goto :goto_0

    .line 293
    :cond_2
    if-eq v1, v2, :cond_0

    .line 295
    if-lt v0, v1, :cond_0

    move v2, v3

    .line 297
    goto :goto_0
.end method
