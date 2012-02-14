.class Lcom/android/server/SmartcardSystemService$2;
.super Ljava/lang/Object;
.source "SmartcardSystemService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SmartcardSystemService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SmartcardSystemService;


# direct methods
.method constructor <init>(Lcom/android/server/SmartcardSystemService;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/SmartcardSystemService$2;->this$0:Lcom/android/server/SmartcardSystemService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/SmartcardSystemService$2;->this$0:Lcom/android/server/SmartcardSystemService;

    invoke-static {p2}, Landroid/smartcard/ISmartcardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/smartcard/ISmartcardService;

    move-result-object v1

    #setter for: Lcom/android/server/SmartcardSystemService;->smartcardService:Landroid/smartcard/ISmartcardService;
    invoke-static {v0, v1}, Lcom/android/server/SmartcardSystemService;->access$002(Lcom/android/server/SmartcardSystemService;Landroid/smartcard/ISmartcardService;)Landroid/smartcard/ISmartcardService;

    .line 86
    const-string v0, "SmartcardSystemService"

    const-string v1, "Smartcard system service onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/SmartcardSystemService$2;->this$0:Lcom/android/server/SmartcardSystemService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/SmartcardSystemService;->smartcardService:Landroid/smartcard/ISmartcardService;
    invoke-static {v0, v1}, Lcom/android/server/SmartcardSystemService;->access$002(Lcom/android/server/SmartcardSystemService;Landroid/smartcard/ISmartcardService;)Landroid/smartcard/ISmartcardService;

    .line 91
    const-string v0, "SmartcardSystemService"

    const-string v1, "Smartcard system service onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method
