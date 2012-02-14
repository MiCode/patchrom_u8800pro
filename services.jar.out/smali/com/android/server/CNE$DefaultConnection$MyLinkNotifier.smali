.class Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;
.super Ljava/lang/Object;
.source "CNE.java"

# interfaces
.implements Landroid/net/LinkNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CNE$DefaultConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLinkNotifier"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/CNE$DefaultConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/CNE$DefaultConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->this$1:Lcom/android/server/CNE$DefaultConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    return-void
.end method


# virtual methods
.method public onBetterLinkAvail(Landroid/net/LinkInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->this$1:Lcom/android/server/CNE$DefaultConnection;

    iget-object v0, v0, Lcom/android/server/CNE$DefaultConnection;->mLinkProvider:Landroid/net/LinkProvider;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->this$1:Lcom/android/server/CNE$DefaultConnection;

    iget-object v0, v0, Lcom/android/server/CNE$DefaultConnection;->mLinkProvider:Landroid/net/LinkProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/LinkProvider;->switchLink(Landroid/net/LinkInfo;Z)Z

    .line 827
    iget-object v0, p0, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->this$1:Lcom/android/server/CNE$DefaultConnection;

    iget-object v0, v0, Lcom/android/server/CNE$DefaultConnection;->this$0:Lcom/android/server/CNE;

    invoke-virtual {p1}, Landroid/net/LinkInfo;->getNwId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/CNE;->notifyDefaultNwChange(I)V

    .line 829
    :cond_0
    return-void
.end method

.method public onGetLinkFailure(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 819
    return-void
.end method

.method public onLinkAvail(Landroid/net/LinkInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x1

    .line 802
    iget-object v0, p0, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->this$1:Lcom/android/server/CNE$DefaultConnection;

    iget-object v0, v0, Lcom/android/server/CNE$DefaultConnection;->mLinkProvider:Landroid/net/LinkProvider;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->this$1:Lcom/android/server/CNE$DefaultConnection;

    iget-object v0, v0, Lcom/android/server/CNE$DefaultConnection;->mLinkProvider:Landroid/net/LinkProvider;

    invoke-virtual {v0, p1, v1, v1}, Landroid/net/LinkProvider;->reportLinkSatisfaction(Landroid/net/LinkInfo;ZZ)Z

    .line 805
    iget-object v0, p0, Lcom/android/server/CNE$DefaultConnection$MyLinkNotifier;->this$1:Lcom/android/server/CNE$DefaultConnection;

    iget-object v0, v0, Lcom/android/server/CNE$DefaultConnection;->this$0:Lcom/android/server/CNE;

    invoke-virtual {p1}, Landroid/net/LinkInfo;->getNwId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/CNE;->notifyDefaultNwChange(I)V

    .line 807
    :cond_0
    return-void
.end method

.method public onLinkLost(Landroid/net/LinkInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 834
    return-void
.end method
