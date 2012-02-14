.class Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;
.super Ljava/lang/Object;
.source "IQClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carrieriq/iqagent/client/IQClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IQServiceConnection"
.end annotation


# instance fields
.field client:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/carrieriq/iqagent/client/IQClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/carrieriq/iqagent/client/IQClient;)V
    .locals 1
    .parameter "_client"

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;->client:Ljava/lang/ref/WeakReference;

    .line 395
    return-void
.end method


# virtual methods
.method public onServiceConnected(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "className"
    .parameter "boundService"

    .prologue
    .line 398
    monitor-enter p0

    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;->client:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/IQClient;

    .line 400
    .local v0, iqClient:Lcom/carrieriq/iqagent/client/IQClient;
    if-eqz v0, :cond_1

    .line 401
    new-instance v1, Lcom/carrieriq/iqagent/client/proxy/IService;

    invoke-direct {v1, p2}, Lcom/carrieriq/iqagent/client/proxy/IService;-><init>(Ljava/lang/Object;)V

    #setter for: Lcom/carrieriq/iqagent/client/IQClient;->iqService:Lcom/carrieriq/iqagent/client/proxy/IService;
    invoke-static {v0, v1}, Lcom/carrieriq/iqagent/client/IQClient;->access$502(Lcom/carrieriq/iqagent/client/IQClient;Lcom/carrieriq/iqagent/client/proxy/IService;)Lcom/carrieriq/iqagent/client/proxy/IService;

    .line 403
    #getter for: Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;
    invoke-static {v0}, Lcom/carrieriq/iqagent/client/IQClient;->access$600(Lcom/carrieriq/iqagent/client/IQClient;)Lcom/carrieriq/iqagent/client/NativeClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 405
    #getter for: Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;
    invoke-static {v0}, Lcom/carrieriq/iqagent/client/IQClient;->access$600(Lcom/carrieriq/iqagent/client/IQClient;)Lcom/carrieriq/iqagent/client/NativeClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/carrieriq/iqagent/client/NativeClient;->release()V

    .line 406
    const/4 v1, 0x0

    #setter for: Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;
    invoke-static {v0, v1}, Lcom/carrieriq/iqagent/client/IQClient;->access$602(Lcom/carrieriq/iqagent/client/IQClient;Lcom/carrieriq/iqagent/client/NativeClient;)Lcom/carrieriq/iqagent/client/NativeClient;

    .line 409
    :cond_0
    invoke-static {p2}, Lcom/carrieriq/iqagent/client/NativeClient;->acquire(Ljava/lang/Object;)Lcom/carrieriq/iqagent/client/NativeClient;

    move-result-object v1

    #setter for: Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;
    invoke-static {v0, v1}, Lcom/carrieriq/iqagent/client/IQClient;->access$602(Lcom/carrieriq/iqagent/client/IQClient;Lcom/carrieriq/iqagent/client/NativeClient;)Lcom/carrieriq/iqagent/client/NativeClient;

    .line 410
    #getter for: Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;
    invoke-static {v0}, Lcom/carrieriq/iqagent/client/IQClient;->access$600(Lcom/carrieriq/iqagent/client/IQClient;)Lcom/carrieriq/iqagent/client/NativeClient;

    move-result-object v1

    if-nez v1, :cond_2

    .line 426
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 428
    :cond_1
    monitor-exit p0

    .line 429
    return-void

    .line 424
    :cond_2
    #calls: Lcom/carrieriq/iqagent/client/IQClient;->reregisterNativeEvents()V
    invoke-static {v0}, Lcom/carrieriq/iqagent/client/IQClient;->access$700(Lcom/carrieriq/iqagent/client/IQClient;)V

    goto :goto_0

    .line 428
    .end local v0           #iqClient:Lcom/carrieriq/iqagent/client/IQClient;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Ljava/lang/Object;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 432
    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;->client:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrieriq/iqagent/client/IQClient;

    .line 435
    .local v0, iqClient:Lcom/carrieriq/iqagent/client/IQClient;
    if-eqz v0, :cond_1

    .line 436
    #getter for: Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;
    invoke-static {v0}, Lcom/carrieriq/iqagent/client/IQClient;->access$600(Lcom/carrieriq/iqagent/client/IQClient;)Lcom/carrieriq/iqagent/client/NativeClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 437
    #getter for: Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;
    invoke-static {v0}, Lcom/carrieriq/iqagent/client/IQClient;->access$600(Lcom/carrieriq/iqagent/client/IQClient;)Lcom/carrieriq/iqagent/client/NativeClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/carrieriq/iqagent/client/NativeClient;->release()V

    .line 438
    const/4 v1, 0x0

    #setter for: Lcom/carrieriq/iqagent/client/IQClient;->nativeClient:Lcom/carrieriq/iqagent/client/NativeClient;
    invoke-static {v0, v1}, Lcom/carrieriq/iqagent/client/IQClient;->access$602(Lcom/carrieriq/iqagent/client/IQClient;Lcom/carrieriq/iqagent/client/NativeClient;)Lcom/carrieriq/iqagent/client/NativeClient;

    .line 440
    :cond_0
    const/4 v1, 0x0

    #setter for: Lcom/carrieriq/iqagent/client/IQClient;->iqService:Lcom/carrieriq/iqagent/client/proxy/IService;
    invoke-static {v0, v1}, Lcom/carrieriq/iqagent/client/IQClient;->access$502(Lcom/carrieriq/iqagent/client/IQClient;Lcom/carrieriq/iqagent/client/proxy/IService;)Lcom/carrieriq/iqagent/client/proxy/IService;

    .line 442
    :cond_1
    monitor-exit p0

    .line 443
    return-void

    .line 442
    .end local v0           #iqClient:Lcom/carrieriq/iqagent/client/IQClient;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
