.class Landroid/webkit/DnsResolver$1;
.super Ljava/lang/Object;
.source "DnsResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/DnsResolver;->createDnsResolverThreadPool()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/DnsResolver;


# direct methods
.method constructor <init>(Landroid/webkit/DnsResolver;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x40

    const/4 v10, 0x1

    .line 115
    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    .line 117
    iget-object v8, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    const/16 v9, 0x8

    invoke-static {v9}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    #setter for: Landroid/webkit/DnsResolver;->mDnsResolverThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v8, v9}, Landroid/webkit/DnsResolver;->access$002(Landroid/webkit/DnsResolver;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 118
    iget-object v8, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    #setter for: Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;
    invoke-static {v8, v9}, Landroid/webkit/DnsResolver;->access$102(Landroid/webkit/DnsResolver;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, bResolvedPriorityHostNames:Z
    const/4 v1, 0x0

    .line 121
    .local v1, dnsQueryCounter:I
    const/4 v5, 0x0

    .line 122
    .local v5, numHosts:I
    :goto_0
    iget-object v8, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    #getter for: Landroid/webkit/DnsResolver;->mShutDownInProgress:Z
    invoke-static {v8}, Landroid/webkit/DnsResolver;->access$200(Landroid/webkit/DnsResolver;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 123
    iget-object v8, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    #getter for: Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;
    invoke-static {v8}, Landroid/webkit/DnsResolver;->access$100(Landroid/webkit/DnsResolver;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 124
    :try_start_0
    iget-object v9, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    #getter for: Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;
    invoke-static {v9}, Landroid/webkit/DnsResolver;->access$100(Landroid/webkit/DnsResolver;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 125
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    if-gtz v5, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 129
    const/4 v0, 0x0

    .line 130
    :try_start_1
    iget-object v8, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    const/4 v9, 0x1

    #setter for: Landroid/webkit/DnsResolver;->mDnsResolverThreadPoolRunning:Z
    invoke-static {v8, v9}, Landroid/webkit/DnsResolver;->access$302(Landroid/webkit/DnsResolver;Z)Z

    .line 131
    invoke-static {}, Landroid/webkit/DnsResolver;->access$400()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :try_start_2
    invoke-static {}, Landroid/webkit/DnsResolver;->access$400()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V

    .line 133
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 134
    :catch_0
    move-exception v8

    goto :goto_0

    .line 125
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    .line 138
    :cond_0
    iget-object v8, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    #getter for: Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;
    invoke-static {v8}, Landroid/webkit/DnsResolver;->access$100(Landroid/webkit/DnsResolver;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 139
    :try_start_5
    iget-object v9, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    #getter for: Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;
    invoke-static {v9}, Landroid/webkit/DnsResolver;->access$100(Landroid/webkit/DnsResolver;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 140
    .local v4, iterator:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    #getter for: Landroid/webkit/DnsResolver;->mDnsResolverThreadPoolRunning:Z
    invoke-static {v9}, Landroid/webkit/DnsResolver;->access$300(Landroid/webkit/DnsResolver;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-ge v1, v11, :cond_4

    .line 141
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 142
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    .local v3, hostName:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 144
    .local v6, priority:Ljava/lang/String;
    if-nez v0, :cond_2

    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    if-eqz v0, :cond_1

    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 147
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 148
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 149
    new-instance v7, Landroid/webkit/DnsResolver$1$1;

    invoke-direct {v7, p0, v3}, Landroid/webkit/DnsResolver$1$1;-><init>(Landroid/webkit/DnsResolver$1;Ljava/lang/String;)V

    .line 157
    .local v7, task:Ljava/lang/Runnable;
    iget-object v9, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    #getter for: Landroid/webkit/DnsResolver;->mDnsResolverThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v9}, Landroid/webkit/DnsResolver;->access$000(Landroid/webkit/DnsResolver;)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 164
    .end local v2           #entry:Ljava/util/Map$Entry;
    .end local v3           #hostName:Ljava/lang/String;
    .end local v4           #iterator:Ljava/util/Iterator;
    .end local v6           #priority:Ljava/lang/String;
    .end local v7           #task:Ljava/lang/Runnable;
    :catchall_2
    move-exception v9

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9

    .line 160
    .restart local v4       #iterator:Ljava/util/Iterator;
    :cond_4
    :try_start_6
    iget-object v9, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    #getter for: Landroid/webkit/DnsResolver;->mDnsResolverThreadPoolRunning:Z
    invoke-static {v9}, Landroid/webkit/DnsResolver;->access$300(Landroid/webkit/DnsResolver;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-lt v1, v11, :cond_6

    .line 161
    :cond_5
    iget-object v9, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    #getter for: Landroid/webkit/DnsResolver;->mHostNamesToBeResolved:Ljava/util/HashMap;
    invoke-static {v9}, Landroid/webkit/DnsResolver;->access$100(Landroid/webkit/DnsResolver;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 163
    :cond_6
    if-eqz v0, :cond_7

    const/4 v9, 0x0

    move v0, v9

    .line 164
    :goto_2
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    :cond_7
    move v0, v10

    .line 163
    goto :goto_2

    .line 167
    .end local v4           #iterator:Ljava/util/Iterator;
    :cond_8
    iget-object v8, p0, Landroid/webkit/DnsResolver$1;->this$0:Landroid/webkit/DnsResolver;

    #getter for: Landroid/webkit/DnsResolver;->mDnsResolverThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v8}, Landroid/webkit/DnsResolver;->access$000(Landroid/webkit/DnsResolver;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 168
    const/4 v8, 0x0

    invoke-static {v8}, Landroid/webkit/DnsResolver;->access$502(Landroid/webkit/DnsResolver;)Landroid/webkit/DnsResolver;

    .line 169
    return-void
.end method
