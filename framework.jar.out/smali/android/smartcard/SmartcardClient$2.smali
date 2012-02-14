.class Landroid/smartcard/SmartcardClient$2;
.super Ljava/lang/Object;
.source "SmartcardClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/smartcard/SmartcardClient;-><init>(Landroid/content/Context;Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/smartcard/SmartcardClient;


# direct methods
.method constructor <init>(Landroid/smartcard/SmartcardClient;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    invoke-static {p2}, Landroid/smartcard/ISmartcardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/smartcard/ISmartcardService;

    move-result-object v1

    #setter for: Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;
    invoke-static {v0, v1}, Landroid/smartcard/SmartcardClient;->access$002(Landroid/smartcard/SmartcardClient;Landroid/smartcard/ISmartcardService;)Landroid/smartcard/ISmartcardService;

    .line 103
    iget-object v0, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    #getter for: Landroid/smartcard/SmartcardClient;->connectionListener:Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;
    invoke-static {v0}, Landroid/smartcard/SmartcardClient;->access$100(Landroid/smartcard/SmartcardClient;)Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    #getter for: Landroid/smartcard/SmartcardClient;->connectionListener:Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;
    invoke-static {v0}, Landroid/smartcard/SmartcardClient;->access$100(Landroid/smartcard/SmartcardClient;)Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;->serviceConnected()V

    .line 106
    :cond_0
    const-string v0, "SmartcardApi"

    const-string v1, "Smartcard service onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    .line 110
    iget-object v2, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    #getter for: Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;
    invoke-static {v2}, Landroid/smartcard/SmartcardClient;->access$200(Landroid/smartcard/SmartcardClient;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 111
    :try_start_0
    iget-object v3, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    #getter for: Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;
    invoke-static {v3}, Landroid/smartcard/SmartcardClient;->access$200(Landroid/smartcard/SmartcardClient;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/smartcard/CardChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .local v0, channel:Landroid/smartcard/CardChannel;
    :try_start_1
    invoke-virtual {v0}, Landroid/smartcard/CardChannel;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v3

    goto :goto_0

    .line 117
    .end local v0           #channel:Landroid/smartcard/CardChannel;
    :cond_0
    :try_start_2
    iget-object v3, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    #getter for: Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;
    invoke-static {v3}, Landroid/smartcard/SmartcardClient;->access$200(Landroid/smartcard/SmartcardClient;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 118
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    iget-object v2, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    const/4 v3, 0x0

    #setter for: Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;
    invoke-static {v2, v3}, Landroid/smartcard/SmartcardClient;->access$002(Landroid/smartcard/SmartcardClient;Landroid/smartcard/ISmartcardService;)Landroid/smartcard/ISmartcardService;

    .line 120
    iget-object v2, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    #getter for: Landroid/smartcard/SmartcardClient;->connectionListener:Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;
    invoke-static {v2}, Landroid/smartcard/SmartcardClient;->access$100(Landroid/smartcard/SmartcardClient;)Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p0, Landroid/smartcard/SmartcardClient$2;->this$0:Landroid/smartcard/SmartcardClient;

    #getter for: Landroid/smartcard/SmartcardClient;->connectionListener:Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;
    invoke-static {v2}, Landroid/smartcard/SmartcardClient;->access$100(Landroid/smartcard/SmartcardClient;)Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;->serviceDisconnected()V

    .line 123
    :cond_1
    const-string v2, "SmartcardApi"

    const-string v3, "Smartcard service onServiceDisconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 118
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method
