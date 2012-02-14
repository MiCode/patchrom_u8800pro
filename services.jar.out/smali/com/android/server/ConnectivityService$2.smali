.class Lcom/android/server/ConnectivityService$2;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;->showSwitchToPdpWarning()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mSwitchToNet:Landroid/net/NetworkStateTracker;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;)Landroid/net/NetworkStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 1353
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/ConnectivityService;->mShouldShutdownMobile:Z
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$402(Lcom/android/server/ConnectivityService;Z)Z

    .line 1354
    const-string v0, "ConnectivityService"

    const-string v1, "you have chose to switch to Mobile data service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    return-void
.end method
