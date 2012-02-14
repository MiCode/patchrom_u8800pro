.class Landroid/webkit/SubResourcesHistory$PeriodicWriter;
.super Ljava/lang/Thread;
.source "SubResourcesHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/SubResourcesHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeriodicWriter"
.end annotation


# instance fields
.field private mStoped:Z

.field final synthetic this$0:Landroid/webkit/SubResourcesHistory;


# direct methods
.method private constructor <init>(Landroid/webkit/SubResourcesHistory;)V
    .locals 1
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Landroid/webkit/SubResourcesHistory$PeriodicWriter;->this$0:Landroid/webkit/SubResourcesHistory;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/SubResourcesHistory$PeriodicWriter;->mStoped:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/SubResourcesHistory;Landroid/webkit/SubResourcesHistory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 294
    invoke-direct {p0, p1}, Landroid/webkit/SubResourcesHistory$PeriodicWriter;-><init>(Landroid/webkit/SubResourcesHistory;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 304
    const-string v0, "PeriodicWriter"

    invoke-virtual {p0, v0}, Landroid/webkit/SubResourcesHistory$PeriodicWriter;->setName(Ljava/lang/String;)V

    .line 305
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 307
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/webkit/SubResourcesHistory$PeriodicWriter;->mStoped:Z

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory$PeriodicWriter;->this$0:Landroid/webkit/SubResourcesHistory;

    #setter for: Landroid/webkit/SubResourcesHistory;->mPeriodicWriter:Landroid/webkit/SubResourcesHistory$PeriodicWriter;
    invoke-static {v0, v2}, Landroid/webkit/SubResourcesHistory;->access$102(Landroid/webkit/SubResourcesHistory;Landroid/webkit/SubResourcesHistory$PeriodicWriter;)Landroid/webkit/SubResourcesHistory$PeriodicWriter;

    .line 330
    :goto_1
    return-void

    .line 313
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Landroid/webkit/SubResourcesHistory;->access$200()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_2
    iget-boolean v0, p0, Landroid/webkit/SubResourcesHistory$PeriodicWriter;->mStoped:Z

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory$PeriodicWriter;->this$0:Landroid/webkit/SubResourcesHistory;

    #setter for: Landroid/webkit/SubResourcesHistory;->mPeriodicWriter:Landroid/webkit/SubResourcesHistory$PeriodicWriter;
    invoke-static {v0, v2}, Landroid/webkit/SubResourcesHistory;->access$102(Landroid/webkit/SubResourcesHistory;Landroid/webkit/SubResourcesHistory$PeriodicWriter;)Landroid/webkit/SubResourcesHistory$PeriodicWriter;

    goto :goto_1

    .line 322
    :cond_2
    invoke-static {}, Landroid/webkit/SubResourcesHistory;->access$300()Landroid/webkit/SubResourcesHistory;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/webkit/SubResourcesHistory;->access$400()I

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    const-string/jumbo v0, "webkit"

    const-string v1, "TCP pre-connection: periodic writer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory$PeriodicWriter;->this$0:Landroid/webkit/SubResourcesHistory;

    #getter for: Landroid/webkit/SubResourcesHistory;->mIsDbUpdateNeeded:Z
    invoke-static {v0}, Landroid/webkit/SubResourcesHistory;->access$500(Landroid/webkit/SubResourcesHistory;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-static {}, Landroid/webkit/SubResourcesHistory;->access$600()Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-static {}, Landroid/webkit/SubResourcesHistory;->access$300()Landroid/webkit/SubResourcesHistory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewDatabase;->setSubhostsData(Landroid/webkit/SubResourcesHistory;)V

    .line 326
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory$PeriodicWriter;->this$0:Landroid/webkit/SubResourcesHistory;

    const/4 v1, 0x0

    #calls: Landroid/webkit/SubResourcesHistory;->setIsDbUpdateNeeded(Z)V
    invoke-static {v0, v1}, Landroid/webkit/SubResourcesHistory;->access$700(Landroid/webkit/SubResourcesHistory;Z)V

    goto :goto_0

    .line 329
    :cond_3
    iget-object v0, p0, Landroid/webkit/SubResourcesHistory$PeriodicWriter;->this$0:Landroid/webkit/SubResourcesHistory;

    #setter for: Landroid/webkit/SubResourcesHistory;->mPeriodicWriter:Landroid/webkit/SubResourcesHistory$PeriodicWriter;
    invoke-static {v0, v2}, Landroid/webkit/SubResourcesHistory;->access$102(Landroid/webkit/SubResourcesHistory;Landroid/webkit/SubResourcesHistory$PeriodicWriter;)Landroid/webkit/SubResourcesHistory$PeriodicWriter;

    goto :goto_1

    .line 314
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public stopRequest()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/SubResourcesHistory$PeriodicWriter;->mStoped:Z

    .line 301
    return-void
.end method
