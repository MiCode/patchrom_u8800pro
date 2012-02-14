.class Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientDeathHandler"
.end annotation


# instance fields
.field final mClient:Landroid/view/accessibility/IAccessibilityManagerClient;

.field final synthetic this$0:Lcom/android/server/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;)V
    .locals 0
    .parameter
    .parameter "client"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 137
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v1, v1, Lcom/android/server/AccessibilityManagerService;->mClients:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$ClientDeathHandler;->this$0:Lcom/android/server/AccessibilityManagerService;

    #getter for: Lcom/android/server/AccessibilityManagerService;->mClientDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$200(Lcom/android/server/AccessibilityManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
