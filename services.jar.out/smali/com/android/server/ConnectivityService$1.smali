.class Lcom/android/server/ConnectivityService$1;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
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
    .line 1322
    iput-object p1, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mShouldShutdownMobile:Z
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->setMobileDataEnabled(Z)V

    .line 1327
    const-string v0, "ConnectivityService"

    const-string v1, "you have chose to shut down Mobile data service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/ConnectivityService;->mShouldShutdownMobile:Z
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$402(Lcom/android/server/ConnectivityService;Z)Z

    .line 1331
    iget-object v0, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/ConnectivityService;->mWifiToPdpDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$502(Lcom/android/server/ConnectivityService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1332
    return-void
.end method
