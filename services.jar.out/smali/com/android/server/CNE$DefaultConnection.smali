.class Lcom/android/server/CNE$DefaultConnection;
.super Ljava/lang/Object;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;
    }
.end annotation


# instance fields
.field mLinkNotifier:Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;

.field mLinkProvider:Landroid/net/LinkProvider;

.field mLinkReqs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/LinkProvider$LinkRequirement;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/CNE;


# direct methods
.method public constructor <init>(Lcom/android/server/CNE;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 749
    iput-object p1, p0, Lcom/android/server/CNE$DefaultConnection;->this$0:Lcom/android/server/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput-object v0, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkReqs:Ljava/util/Map;

    .line 751
    iput-object v0, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkProvider:Landroid/net/LinkProvider;

    .line 752
    return-void
.end method

.method public constructor <init>(Lcom/android/server/CNE;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/net/LinkProvider$LinkRequirement;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 755
    .local p2, linkReqs:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/LinkProvider$LinkRequirement;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/CNE$DefaultConnection;->this$0:Lcom/android/server/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput-object p2, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkReqs:Ljava/util/Map;

    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkProvider:Landroid/net/LinkProvider;

    .line 758
    return-void
.end method


# virtual methods
.method public endConnection()V
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkProvider:Landroid/net/LinkProvider;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkProvider:Landroid/net/LinkProvider;

    invoke-virtual {v0}, Landroid/net/LinkProvider;->releaseLink()Z

    .line 784
    :cond_0
    return-void
.end method

.method public startConnection()V
    .locals 5

    .prologue
    .line 766
    new-instance v1, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;

    invoke-direct {v1, p0}, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;-><init>(Lcom/android/server/CNE$DefaultConnection;)V

    iput-object v1, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkNotifier:Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;

    .line 768
    :try_start_0
    new-instance v1, Landroid/net/LinkProvider;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkReqs:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkNotifier:Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;

    invoke-direct {v1, v2, v3, v4}, Landroid/net/LinkProvider;-><init>(ILjava/util/Map;Landroid/net/LinkNotifier;)V

    iput-object v1, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkProvider:Landroid/net/LinkProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_0
    iget-object v1, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkProvider:Landroid/net/LinkProvider;

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/android/server/CNE$DefaultConnection;->mLinkProvider:Landroid/net/LinkProvider;

    invoke-virtual {v1}, Landroid/net/LinkProvider;->getLink()Z

    .line 776
    :cond_0
    return-void

    .line 770
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 771
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CNE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LinkProvider creation threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
