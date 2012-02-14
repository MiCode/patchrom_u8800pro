.class Landroid/webkit/UrlHistory$SubhostComparator;
.super Ljava/lang/Object;
.source "UrlHistory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/UrlHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubhostComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/webkit/Subhost;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/UrlHistory;


# direct methods
.method constructor <init>(Landroid/webkit/UrlHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Landroid/webkit/UrlHistory$SubhostComparator;->this$0:Landroid/webkit/UrlHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/webkit/Subhost;Landroid/webkit/Subhost;)I
    .locals 4
    .parameter "subA"
    .parameter "subB"

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/webkit/Subhost;->getWeight()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/webkit/Subhost;->getWeight()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/Subhost;->getWeight()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/webkit/Subhost;->getWeight()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 229
    const/4 v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    check-cast p1, Landroid/webkit/Subhost;

    .end local p1
    check-cast p2, Landroid/webkit/Subhost;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/webkit/UrlHistory$SubhostComparator;->compare(Landroid/webkit/Subhost;Landroid/webkit/Subhost;)I

    move-result v0

    return v0
.end method
