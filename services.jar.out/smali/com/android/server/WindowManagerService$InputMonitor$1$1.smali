.class Lcom/android/server/WindowManagerService$InputMonitor$1$1;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WindowManagerService$InputMonitor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/WindowManagerService$InputMonitor$1;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService$InputMonitor$1;)V
    .locals 0
    .parameter

    .prologue
    .line 5465
    iput-object p1, p0, Lcom/android/server/WindowManagerService$InputMonitor$1$1;->this$2:Lcom/android/server/WindowManagerService$InputMonitor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5467
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor$1$1;->this$2:Lcom/android/server/WindowManagerService$InputMonitor$1;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputMonitor$1;->this$1:Lcom/android/server/WindowManagerService$InputMonitor;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFastPoweronlock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5468
    return-void
.end method
