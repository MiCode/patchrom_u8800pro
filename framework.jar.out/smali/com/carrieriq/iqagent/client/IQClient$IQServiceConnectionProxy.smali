.class Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnectionProxy;
.super Ljava/lang/Object;
.source "IQClient.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carrieriq/iqagent/client/IQClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IQServiceConnectionProxy"
.end annotation


# instance fields
.field conn:Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;


# direct methods
.method constructor <init>(Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;)V
    .locals 0
    .parameter "conn"

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnectionProxy;->conn:Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;

    .line 374
    return-void
.end method

.method public static newInstance(Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;)Ljava/lang/Object;
    .locals 4
    .parameter "obj"

    .prologue
    .line 366
    invoke-static {}, Lcom/carrieriq/iqagent/client/IQClient;->access$000()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {}, Lcom/carrieriq/iqagent/client/IQClient;->access$000()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnectionProxy;

    invoke-direct {v2, p0}, Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnectionProxy;-><init>(Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "proxy"
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-static {}, Lcom/carrieriq/iqagent/client/IQClient;->access$100()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnectionProxy;->conn:Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;

    aget-object v1, p3, v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v0, v1, v2}, Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;->onServiceConnected(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 379
    :cond_1
    invoke-static {}, Lcom/carrieriq/iqagent/client/IQClient;->access$200()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnectionProxy;->conn:Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;->onServiceDisconnected(Ljava/lang/Object;)V

    goto :goto_0

    .line 381
    :cond_2
    invoke-static {}, Lcom/carrieriq/iqagent/client/IQClient;->access$300()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnectionProxy;->conn:Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 383
    :cond_3
    invoke-static {}, Lcom/carrieriq/iqagent/client/IQClient;->access$400()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnectionProxy;->conn:Lcom/carrieriq/iqagent/client/IQClient$IQServiceConnection;

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method
