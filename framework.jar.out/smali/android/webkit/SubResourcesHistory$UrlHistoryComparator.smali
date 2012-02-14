.class Landroid/webkit/SubResourcesHistory$UrlHistoryComparator;
.super Ljava/lang/Object;
.source "SubResourcesHistory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/SubResourcesHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UrlHistoryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/webkit/UrlHistory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/SubResourcesHistory;


# direct methods
.method constructor <init>(Landroid/webkit/SubResourcesHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Landroid/webkit/SubResourcesHistory$UrlHistoryComparator;->this$0:Landroid/webkit/SubResourcesHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/webkit/UrlHistory;Landroid/webkit/UrlHistory;)I
    .locals 2
    .parameter "historyA"
    .parameter "historyB"

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/webkit/UrlHistory;->getUseCount()I

    move-result v0

    invoke-virtual {p2}, Landroid/webkit/UrlHistory;->getUseCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 340
    const/4 v0, 0x0

    .line 346
    :goto_0
    return v0

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/UrlHistory;->getUseCount()I

    move-result v0

    invoke-virtual {p2}, Landroid/webkit/UrlHistory;->getUseCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 344
    const/4 v0, 0x1

    goto :goto_0

    .line 346
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 336
    check-cast p1, Landroid/webkit/UrlHistory;

    .end local p1
    check-cast p2, Landroid/webkit/UrlHistory;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/webkit/SubResourcesHistory$UrlHistoryComparator;->compare(Landroid/webkit/UrlHistory;Landroid/webkit/UrlHistory;)I

    move-result v0

    return v0
.end method
