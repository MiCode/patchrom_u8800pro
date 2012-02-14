.class Landroid/net/http/IdleCache$IdleReaper;
.super Ljava/lang/Thread;
.source "IdleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/IdleCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleReaper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/http/IdleCache;


# direct methods
.method private constructor <init>(Landroid/net/http/IdleCache;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Landroid/net/http/IdleCache$IdleReaper;-><init>(Landroid/net/http/IdleCache;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, check:I
    const-string v1, "IdleReaper"

    invoke-virtual {p0, v1}, Landroid/net/http/IdleCache$IdleReaper;->setName(Ljava/lang/String;)V

    .line 183
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 185
    iget-object v1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    monitor-enter v1

    .line 186
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 188
    :try_start_0
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_1
    :try_start_1
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    iget-boolean v2, v2, Landroid/net/http/IdleCache;->pageFinished:Z

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    invoke-virtual {v2}, Landroid/net/http/IdleCache;->clearTcpConnections()V

    .line 196
    :cond_0
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    #getter for: Landroid/net/http/IdleCache;->mShutdownOnPageFinish:Z
    invoke-static {v2}, Landroid/net/http/IdleCache;->access$100(Landroid/net/http/IdleCache;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    iget-boolean v2, v2, Landroid/net/http/IdleCache;->pageFinished:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroid/net/http/ConnectionThread;->sRunning:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_2

    .line 197
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    invoke-virtual {v2}, Landroid/net/http/IdleCache;->clear()V

    .line 207
    :cond_1
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    const/4 v3, 0x0

    #setter for: Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;
    invoke-static {v2, v3}, Landroid/net/http/IdleCache;->access$402(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper;)Landroid/net/http/IdleCache$IdleReaper;

    .line 208
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    iget-object v1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/net/http/IdleCache;->pageFinished:Z

    .line 216
    return-void

    .line 200
    :cond_2
    :try_start_2
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    #getter for: Landroid/net/http/IdleCache;->mCount:I
    invoke-static {v2}, Landroid/net/http/IdleCache;->access$200(Landroid/net/http/IdleCache;)I

    move-result v2

    if-nez v2, :cond_3

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_3
    const/4 v0, 0x0

    .line 204
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    #calls: Landroid/net/http/IdleCache;->clearIdle()V
    invoke-static {v2}, Landroid/net/http/IdleCache;->access$300(Landroid/net/http/IdleCache;)V

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 189
    :catch_0
    move-exception v2

    goto :goto_1
.end method
